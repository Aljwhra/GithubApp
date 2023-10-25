//
//  Home_View.swift
//  GithubApp
//
//  Created by Aljwhra Alnasser on 24/10/2023.
//

import SwiftUI

struct Home_View: View {
    
    // Search
    @State private var searchBar = ""
    
    
    var items: [(Image, String , Color)] = [
        (Image(systemName: "dot.square"), "Issues" , .green),
        (Image(systemName: "slider.horizontal.2.square"), "Pull Requests", .blue),
        (Image(systemName: "bubble"), "Discussions", .purple),
        (Image(systemName: "aspectratio"), "Projects", .white),
        (Image(systemName: "book.closed"), "Repositories", .gray),
        (Image(systemName: "building.2"), "Organizations", .orange),
        (Image(systemName: "star.square"), "Starred", .yellow)
    ]
    
    
    var body: some View {
        
        NavigationStack{
            VStack{
                ScrollView{
                    
                    MyWorkView()
                    
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
                    
                    FavoritesView()
                    ShortcutsView()
                    
                }
                .padding()
                .background(.black)
                .navigationTitle("Home")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: {}){
                            Image(systemName: "plus.circle")
                        }
                    }
                }
                .searchable(text: $searchBar , prompt: "search" )
                
            }
        } // End_NavigationStack
    }
}


struct Home_View_previews: PreviewProvider{
    static var previews: some View {
        Home_View()
    }
}


struct MyWorkView: View {
    var body: some View {
        HStack{
            Text("My Work")
                .font(.title).bold()
                .foregroundColor(.white)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "ellipsis")
                    .font(.title).bold()
                    .foregroundColor(.gray)
            })
        } // End_ HStack
        .padding(.bottom,10)
    }
}


struct FavoritesView: View {
    var body: some View {
        HStack{
            Text("Favorites")
                .font(.title).bold()
                .foregroundColor(.white)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "ellipsis")
                    .font(.title).bold()
                    .foregroundColor(.gray)
            })
        }
        
        VStack(spacing: 15){
            Text("Add favorite repositories here to have quick access at any time, without having to search")
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            
            Button(action: {}, label: {
                Text("Add Favorites")
                    .font(.title3).bold()
                    .foregroundColor(.blue)
                    .padding()
                    .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                    .background(.mygray)
                    .cornerRadius(10)
                
            })
            
        }// End_VStack
        
        .padding()
        .background(
            Rectangle()
                .cornerRadius(20)
                .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                .foregroundColor(Color.gray.opacity(0.20))
        )
        
    }
}


struct ShortcutsView: View {
    var body: some View {
        HStack{
            Text("Shortcuts")
                .font(.title).bold()
                .foregroundColor(.white)
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "ellipsis")
                    .font(.title).bold()
                    .foregroundColor(.gray)
            })
        }
        
        
        VStack(spacing: 15){
            
            HStack{
                
               
                    Image(systemName: "smallcircle.filled.circle")
                    
                        .scaledToFit()
                        .font(.title)
                        .frame(width: 40,height: 40)
                        .foregroundColor(.green)
                        .background(.green.opacity(0.3))
                        .cornerRadius(40)
                       
                    Image(systemName: "slider.vertical.3")
                    .scaledToFit()
                    .font(.title2)
                    .frame(width: 40,height: 40)
                    .foregroundColor(.blue)
                    .background(.blue.opacity(0.3))
                    .cornerRadius(40)
                
                    Image(systemName: "bubble")
                    .scaledToFit()
                    .font(.title2)
                    .frame(width: 40,height: 40)
                    .foregroundColor(.purple)
                    .background(.purple.opacity(0.3))
                    .cornerRadius(40)
                
                    Image(systemName: "building.2")
                    .scaledToFit()
                    .font(.title2)
                    .frame(width: 40,height: 40)
                    .foregroundColor(.orange)
                    .background(.orange.opacity(0.3))
                    .cornerRadius(40)
                
                    Image(systemName: "person.2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                        .foregroundColor(.red)
                }
        
            
            Text("The things you need, one tap away Fast access to your lists of Issues, Pull Requests, or Discussions.")
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            
            Button(action: {}, label: {
                Text("Get started")
                    .font(.title3).bold()
                    .foregroundColor(.blue)
                    .padding()
                    .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                    .background(.mygray)
                    .cornerRadius(10)
                
            })
            
        }// End_VStack
        
        .padding()
        .background(
            Rectangle()
                .cornerRadius(20)
                .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
                .foregroundColor(Color.gray.opacity(0.20))
        )
        
        
    }
}
