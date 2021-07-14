//
//  HomeView.swift
//  DribbleChallenge
//
//  Created by Karin Prater on 14.07.21.
//

import SwiftUI

struct HomeView: View {
    
    let horizontalPadding: CGFloat = 30
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                WelcomeHeader()
                    .padding(.horizontal, horizontalPadding)
                
                SearchTextField()
                    .padding(.horizontal, horizontalPadding)
                
                CardPicker()
                    .padding(.horizontal, horizontalPadding)
                    .padding(.vertical)
                
                Text("Recommended Products")
                    .modifier(Header3())
                    .padding(.horizontal, horizontalPadding)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    LazyHStack(spacing: 20) {
                        CardView(product: Product.example1())
                            .padding(.leading, 30)
                        CardView(product: Product.example2())
                            .padding(.trailing, 30)
                    }
                    
                }.frame(height: 350)
            }.padding(.vertical)
        }
       
            
    
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .frame(maxHeight: .infinity)
            .background( Color("Background1"))
    }
}
