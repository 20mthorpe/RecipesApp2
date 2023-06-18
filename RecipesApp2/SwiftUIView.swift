//
//  SwiftUIView.swift
//  RecipesApp2
//
//  Created by Mary Thorpe on 6/17/23.
//

import SwiftUI

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    
    
    var body: some View {
        Vstack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
            } placeholder: {
                Image(systemName: "photo")
            }
        }
        .frame(width: 160, height: 217, alignment: .top)
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[0])
    }
}
