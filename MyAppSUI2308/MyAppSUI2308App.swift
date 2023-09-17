//
//  MyAppSUI2308App.swift
//  MyAppSUI2308
//
//  Created by Журавлев Лев on 07.09.2023.
//

import SwiftUI

@main
struct MyAppSUI2308App: App {
    
    @StateObject var foodListModel = FoodListModel()
    @State var tabSelection: Int = 0
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(tabSelection: $tabSelection)
                .environmentObject(foodListModel)
        }
    }
}
