//
//  ContentView.swift
//  MyAppSUI2308
//
//  Created by Журавлев Лев on 07.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var tabSelection: Int
    
    var body: some View {
        TabView(selection: $tabSelection) {
            DashboardScreen(selectedTab: $tabSelection)
                .tag(0)
                .tabItem {
                    HStack {
                        Image(systemName: "star")
                        Text("Dashboard")
                    }
                }
                                     
            FoodScreen()
                .tag(1)
                .tabItem {
                    VStack {
                        Image(systemName: "bag")
                        Text("Food")
                    }
                }
                
            ModalScreen()
                .tag(2)
                .tabItem {
                    VStack {
                        Image(systemName: "arrowshape.turn.up.right.fill")
                        Text("Modal screen")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
        
    @State static var tabSelection: Int = 1
    
    static var previews: some View {
        ContentView(tabSelection: $tabSelection)
    }
}
