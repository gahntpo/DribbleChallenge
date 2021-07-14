//
//  ContentView.swift
//  DribbleChallenge
//
//  Created by Karin Prater on 14.07.21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "Secondary")
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
        UITabBar.appearance().isTranslucent = false
    }
    
    @State private var selection: Int = 1
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .background(Color("Background1").edgesIgnoringSafeArea(.all))
                .tag(1)
                .tabItem {
                    Image(systemName: "house")
                    if selection == 1 {
                        Text("o")
                    }
                }
            
            Text("Heart")
                .tag(2)
                .tabItem {
                    Image(systemName: "heart")
                    if selection == 2 {
                        Text("o")
                    }
                }
            
            Text("cubic")
                .tag(3)
                .tabItem {
                    Image(systemName: "cube")
                    if selection == 3 {
                        Text("o")
                    }
                }
            
            Text("person")
                .tag(4)
                .tabItem {
                    Image(systemName: "person")
                    if selection == 4 {
                        Text("o")
                    }
                }
            
        }
        .accentColor(Color.white)
    
       // .tabViewStyle(PageTabViewStyle())
        
        .background(Color("Background1"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 8")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12 Pro")
            ContentView()
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityMedium)
                .previewDevice("iPhone 12 Pro")
           
        }
    }
}
