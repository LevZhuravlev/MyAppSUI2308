//
//  DashboardScreen.swift
//  MyAppSUI2308
//
//  Created by Журавлев Лев on 07.09.2023.
//

import SwiftUI

struct DashboardScreen: View {
    
    @Binding var selectedTab: Int
    @EnvironmentObject var foodListModel: FoodListModel
    
    var body: some View {
        VStack {
            Text("DashboardScreen")
            .font(.largeTitle)
            
            Button("open second tab") {
                selectedTab = 1                
                foodListModel.foods[2].isActive = true
            }.padding(20)
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    
    @State static var selectedTab: Int = 0
    
    static var previews: some View {
        DashboardScreen(selectedTab: $selectedTab)
    }
}
