//
//  HomeUIView.swift
//  logbook-ios
//
//  Created by Nuriansyah Malik on 27/12/22.
//

import SwiftUI

struct HomeUIView: View {
    @State private var selectedTab: Tabs = .home
    var body: some View {
        TabView(selection: $selectedTab){
            ListHomeUIView()
                .tabItem{
                    Image(systemName: "house.fill")
                }
            ListUIView()
                .tabItem {
                    Image(systemName: "list.clipboard")
                }
            ProfileUIView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }
        .navigationBarBackButtonHidden()
    }
}

struct HomeUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeUIView()
    }
}
enum Tabs: String {
    case home
    case list
    case profile
}
