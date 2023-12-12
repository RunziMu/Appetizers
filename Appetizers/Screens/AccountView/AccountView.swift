//
//  AccountView.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-05.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                        .autocorrectionDisabled(true)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .autocorrectionDisabled(true)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                    DatePicker("Date of birth", selection: $viewModel.user.birthdate, displayedComponents: .date)
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
