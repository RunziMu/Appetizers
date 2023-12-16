//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-07.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(fromURLString urlString: String){
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct AppetizerRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        (imageLoader.image ?? Image("food-placeholder"))
            .resizable()
            .onAppear() {
                imageLoader.load(fromURLString: urlString)
            }
    }
}
