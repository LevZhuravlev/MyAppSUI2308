//
//  FoodScreen.swift
//  MyAppSUI2308
//
//  Created by Журавлев Лев on 07.09.2023.
//

import SwiftUI

class Food: Identifiable, ObservableObject {
    
    @Published var isActive: Bool = false
    var id: UUID = .init()
    let name: String
    internal init(name: String) {
        self.name = name
    }
}

final class FoodListModel: ObservableObject {
            
    @Published var isSheetShowed: Bool = false
    @Published var foods = ["🍏", "🍎", "🍒", "🍊", "🍌"].map {
        Food(name: $0)
    }
}

struct FoodScreen: View {

    @EnvironmentObject var foodListVM: FoodListModel
    
    // Пременная окружения (примерно то же самое что сервис для DI)
    @Environment(\.presentationMode) var presentationMode
    @State private var isSidebarActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                // все что мы пишем  в лист превращается в cell
                List {
                    ForEach(0..<foodListVM.foods.count) { index in
                        FoodCell(food: foodListVM.foods[index])
                    }
                }
                
                Spacer()
                
                HStack {
                    Button ("Sheet") {
                        foodListVM.isSheetShowed.toggle()
                    }.sheet(isPresented: $foodListVM.isSheetShowed) {
                        Text("Hello")
                    }.padding(.horizontal)
                }
                                
                .navigationTitle(Text("FoodScreen"))
                .navigationBarTitleDisplayMode(.automatic)
            }
        }
    }
}


struct FoodScreen_Previews: PreviewProvider {
    static var previews: some View {
        FoodScreen()
    }
}


