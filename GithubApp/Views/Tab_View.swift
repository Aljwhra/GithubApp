//
//  Tab_View.swift
//  GithubApp
//
//  Created by Aljwhra Alnasser on 25/10/2023.
//

import SwiftUI

struct Tab_View: View {
    var body: some View {
        TabView{
            Home_View()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Explore_View()
                .tabItem {
                    Image(systemName: "circle.hexagongrid.fill")
                    Text("Explore")
                }
            
            ProfileView()
                .tabItem {
                   Image(systemName: "person.circle")
                    Text("Profile")
                }
            
        }
    }
}

struct Tab_View_previews: PreviewProvider{
    static var previews: some View {
        Tab_View()
    }
}
