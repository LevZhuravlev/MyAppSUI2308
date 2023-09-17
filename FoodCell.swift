//
//  FoodCell.swift
//  MyAppSUI2308
//
//  Created by Журавлев Лев on 17.09.2023.
//

import SwiftUI

struct FoodCell: View {
    @StateObject var food: Food
    
    var body: some View {
        NavigationLink(
            destination:
                Text(food.name)
                .font(.title)
                .frame(width: 60.0, height: 60.0),
            isActive: $food.isActive,
            label: {
                Text(food.name)
            }
        )
    }
}

struct FoodCell_Previews: PreviewProvider {
    static var previews: some View {
        FoodCell(
            food:
                Food(name: "🍎")
        )
    }
}

