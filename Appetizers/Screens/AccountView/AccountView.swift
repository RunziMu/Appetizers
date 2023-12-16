//
//  AccountView.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-05.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personal Info"), footer: Text("You must be at least 18 to register. [Learn more...](https://www.ontario.ca/page/alcohol-use-and-safe-drinking)")){
                    
                    TextField("First Name", text: $viewModel.user.firstName)
                        .autocorrectionDisabled(true)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit {
                            focusedTextField = .lastName
                        }
                        .submitLabel(.next)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .onSubmit {
                            focusedTextField = .email
                        }
                        .submitLabel(.next)
                        .autocorrectionDisabled(true)
                        .focused($focusedTextField, equals: .lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .onSubmit {
                            focusedTextField = nil
                        }
                        .submitLabel(.continue)
                        .focused($focusedTextField, equals: .email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
//                    DatePicker("Date of birth", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    DatePicker("Date of birth",
                               selection: $viewModel.user.birthdate,
                               in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo,
                               displayedComponents: .date)
                }
                
                Section(header:Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequet Refills", isOn: $viewModel.user.frequentRefills)
                }
                
                Section(header:Text("Action")){
                    Button{
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
            }
            .navigationTitle("Account")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button ("Dismiss") {
                        focusedTextField = nil
                    }
                }
            }
        }
        
        .onAppear{
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
