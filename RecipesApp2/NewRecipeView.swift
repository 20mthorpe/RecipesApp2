//
//  NewRecipeView.swift
//  RecipesApp2
//
//  Created by Mary Thorpe on 6/17/23.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Add recipe manually"){
                showAddRecipe = true
            }
            .navigationTitle("New Recipe")
        }
        .sheet(isPresented: $showAddRecipe){
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
