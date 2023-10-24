//
//  Explore_View.swift
//  GithubApp
//
//  Created by Aljwhra Alnasser on 25/10/2023.
//

import SwiftUI

struct Explore_View: View {
    
    // Search
    @State private var searchBar = ""
    
    
    var items: [(Image, String , Color)] = [
        (Image(systemName: "flame.fill"), "Trending Repositories" , .purple),
        (Image(systemName: "face.smiling.inverse"), "Awesome Lists", .brown)
    ]
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    
                   
                    HStack{
                        Text("Discover")
                        .font(.title).bold()
                        .foregroundColor(.white)
                        Spacer()
                    }
                    
                    VStack{
                        ForEach(items, id: \.1) { item in
                            MyList(image: item.0, title: item.1, color: item.2)
                        }
                    }
                    .padding()
                    .background(
                        Rectangle()
                            .cornerRadius(20)
                            .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                            .foregroundColor(Color.gray.opacity(0.20))
                    )
                    
                    ActivityView()
                    
                }
                .padding()
                .background(.black)
                .navigationTitle("Explore")
                .searchable(text: $searchBar , prompt: "search" )
                
            } // End_NavigationStack
        }
    }
}

#Preview {
    Explore_View()
}


struct ActivityView: View {
    var body: some View {
        HStack{
            Text("Activity")
                .font(.title).bold()
                .foregroundColor(.white)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease")
                    .font(.title).bold()
                    .foregroundColor(.gray)
            })
        }
        
        
        VStack(spacing: 25){
            
            HStack{
                    Image(systemName: "atom")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60,height: 60)
                        .foregroundColor(.blue)
           
                }
        
            Text("Explore GitHub")
                .foregroundColor(.white)
                .font(.title2).bold()
            
            Text("Star repositories and follow contributors to receive personalized suggestions.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                
            
        }// End_VStack
        
        .padding()
        .background(
            ZStack{
            Rectangle()
                
                .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
              //  .foregroundColor(Color.gray.opacity(0.20))
                LinearGradient(gradient: Gradient(colors: [Color.color1,Color.color2, Color.color3]), startPoint: .leading, endPoint: .trailing)
            } .cornerRadius(20)
        )
        
        
    }
}
