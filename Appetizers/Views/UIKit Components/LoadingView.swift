//
//  LoadingView.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-07.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
 
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
//        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

struct LoadingView: View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            ProgressView()
                .scaleEffect(2)
                .tint(.gray)
        }
    }
}
