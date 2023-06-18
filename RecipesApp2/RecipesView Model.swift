//
//  RecipesView Model.swift
//  RecipesApp2
//
//  Created by Mary Thorpe on 6/17/23.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
