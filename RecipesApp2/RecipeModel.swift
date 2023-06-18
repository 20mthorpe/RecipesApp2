//
//  RecipeModel.swift
//  RecipesApp2
//
//  Created by Mary Thorpe on 6/17/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    
    var id: String {self.rawValue}
    
    case breakf = "Breakfast"
    case msnack = "Morning Snack"
    case lun = "Lunch"
    case asnack = "Afternoon Snack"
    case din = "Dinner"
    case nsnack = "Night Snack"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    
}

extension Recipe{
    static let all: [Recipe] = [
    
        Recipe(
            name: "Chicken Tacos", image: "https://therecipecritic.com/wp-content/uploads/2022/11/shredded-chicken-tacos-2-750x1000.jpg", ingredients: "Chicken, Tortilla", directions: "Put together", category: "Dinner"),
        Recipe(
            name: "Pita Sandwich", image: "https://www.thecookierookie.com/wp-content/uploads/2014/05/Chicken-avocado-pitas-8.jpg", ingredients: "Chicken, Pita", directions: "Put together", category: "Lunch")
        
    ]
}
