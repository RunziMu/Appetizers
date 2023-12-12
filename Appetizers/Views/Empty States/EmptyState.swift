//
//  EmptyState.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-11.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let mainMessage: String
    let subMessge: String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 100)
                    .foregroundColor(.gray)
                    .fontWeight(.light)
                Text(mainMessage)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text(subMessge)
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(imageName: "bag", mainMessage: "Your bag is empty.", subMessge: "Continue browsing the Appetizer Home Menu.")
}
