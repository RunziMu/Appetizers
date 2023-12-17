//
//  OrderView.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-05.
//

import SwiftUI

struct OrderView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack{
                    List {
                        ForEach(order.items){ appetizer in
                            AppetizerListCell(appetizer: appetizer)                            
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    Button {
                        print("Check Out Button Tapped")
                    } label: {
                        
                            Label("$\(order.totalPrice, specifier: "%.2f") - Check Out", systemImage: "creditcard.circle")
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .padding(.bottom, 20)
                }
                if order.items.isEmpty {
                        EmptyState(imageName: "bag", mainMessage:  "Your bag is empty.", subMessge: "Continue browsing the Appetizer Home Menu.")
                }
            }
            .navigationTitle("Your Orders")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    OrderView()
}
