//
//  MyList.swift
//  GithubApp
//
//  Created by Aljwhra Alnasser on 25/10/2023.
//

import SwiftUI

struct MyList: View {
    
    var image : Image
    var title : String
    var color : Color
    
    var body: some View {
            
            HStack(spacing: 15){
              //  Image(systemName: "dot.square")
                image
                    
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40)
                    .foregroundColor(color)
                   
                Text(title)
                    .foregroundColor(.white)
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                })
            }
            
            Divider()
                .foregroundColor(.white)
                .padding(.leading,30)

    }
}

#Preview {
    MyList(image: Image(systemName: "bubble"), title: "fjh", color: .black)
}
