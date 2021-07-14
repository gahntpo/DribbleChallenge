//
//  WelcomeHeader.swift
//  DribbleChallenge
//
//  Created by Karin Prater on 14.07.21.
//

import SwiftUI

struct WelcomeHeader: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
            Text("Good morning,")
                    .modifier(Header2())
                Text("Shaileen")
                    .modifier(Header1())
                
            }
            Spacer()
            
            Image("profileImage")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
        }
    }
}

struct WelcomeHeader_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeHeader()
    }
}
