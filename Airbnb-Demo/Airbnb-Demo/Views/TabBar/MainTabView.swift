//
//  MainTabView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 29.10.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            WhishListView()
                .tabItem { Label("Whishlist", systemImage: "heart") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView()
}
