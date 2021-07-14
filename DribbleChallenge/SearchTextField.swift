//
//  SearchTextField.swift
//  DribbleChallenge
//
//  Created by Karin Prater on 14.07.21.
//

import SwiftUI

struct SearchTextField: View {
    
    @State private var text: String = ""
    
    var body: some View {
        
        HStack {
            TextField("Search for 3D products", text: $text)
                .modifier(GrayBodyStyle())
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color("AccentColor"))
            
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color("BackgroundFields")))
    }
}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextField()
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background1"))
        
            .previewLayout(.fixed(width: 400, height: 100.0))
    }
}
