//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-09.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .opacity(0.8)
            Image(systemName: "xmark")
                .foregroundStyle(Color(.black))
                .imageScale(.medium)
                .frame(width: 44, height: 44)
        }
    }
}

#Preview {
    XDismissButton()
}
