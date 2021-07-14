//
//  CardPicker.swift
//  DribbleChallenge
//
//  Created by Karin Prater on 14.07.21.
//

import SwiftUI

enum SearchFilter: String, CaseIterable {
    case recent = "Recent"
    case trending = "Trending"
    case popular = "Popular"
    case premium = "Premium"
}


struct CardPicker: View {
    @State private var selection: SearchFilter = .recent
    
    var body: some View {
        HStack {
            ForEach(SearchFilter.allCases, id: \.self) { filter in
                CardPickerItem(searchFiler: filter, selection: selection)
                    .onTapGesture {
                        selection = filter
                    }
                
                
                if filter != .premium {
                    Spacer()
                }
            }
        }
        
    }
}

struct CardPickerItem: View {
    
    let searchFiler: SearchFilter
    let selection: SearchFilter
    
    var imageName: String {
        switch searchFiler {
        case .recent:
            return "clock"
        case .trending:
            return "flame"
        case .popular:
            return  "crown"
        case .premium:
            return "diamond"
        }
    }
    
    var backgroundColor: Color {
        searchFiler == selection ? Color("Secondary") : Color("BackgroundFields")
    }
    
    var tintColor: Color {
        searchFiler == selection ? Color("Secondary") : Color.gray
    }
    
    
    var body: some View {
        VStack {
            
            Image(systemName: imageName)
                .padding()
                .foregroundColor(selection == searchFiler ? Color.white : Color.gray)
                .background(RoundedRectangle(cornerRadius: 10).fill( backgroundColor))
            
            Text(searchFiler.rawValue)
                .foregroundColor(tintColor)
                .modifier(FootNote())
               
            
        }
    }
}

struct CardPicker_Previews: PreviewProvider {
    static var previews: some View {
        CardPicker()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background1"))
        
        
//        CardPickerItem(searchFiler: .premium, selection: .recent)
//            .previewLayout(.fixed(width: 200, height: 200))
//
//        CardPickerItem(searchFiler: .popular, selection: .popular)
//            .previewLayout(.fixed(width: 200, height: 200))
    }
}
