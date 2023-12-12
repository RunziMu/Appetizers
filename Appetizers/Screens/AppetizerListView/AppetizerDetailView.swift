//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Runzi Mu on 2023-12-08.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    
    @Binding var isShowingDetail : Bool
    
    var body: some View {
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack (spacing: 40){
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Proteins", value: appetizer.protein)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                }
                .padding(.top)
            }
            Spacer()
            Button {
                order.add(appetizer)
                withAnimation {
                    isShowingDetail = false
                }
            } label: {
                //                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                Label("$\(appetizer.price, specifier: "%.2f")", systemImage: "bag.badge.plus")
                //                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .font(.title3)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .padding(.bottom, 23)
        }
        .frame(width: 300, height: 535)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .shadow(radius: 10)
        .overlay(Button{
            withAnimation {
                isShowingDetail = false
            }
        }
                 label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing:5){
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
