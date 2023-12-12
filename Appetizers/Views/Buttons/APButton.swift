//
//  APButton.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-09.
//

import SwiftUI

//struct APButton: View {
//    
//    let title: LocalizedStringKey
//    let sysImage: String!
//    let width: Double
//    let height: Double
//    var body: some View {
//        Button {
//            print("APButton Tapped")
//        } label: {
//            Label(title, systemImage: sysImage)
//                .frame(width: width, height: height)
//        }
//        .buttonStyle(.borderedProminent)
//        .controlSize(.large)
//        .padding(.bottom, 20)
//    }
//}

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test")
}
