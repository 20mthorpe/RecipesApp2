//
//  CategoriesView.swift
//  RecipesApp2
//
//  Created by Mary Thorpe on 6/17/23.
//

import SwiftUI

struct CategoriesView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        ScrollView {
                            RecipeList(recipes: recipesVM.recipes.filter{ $0.category == category.rawValue})
                        }
                        .navigationTitle(category.rawValue)
                    } label: {
                        Text(category.rawValue)
                    }
                }
            }
            Text("Home")
                .navigationTitle("Categories")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .environmentObject(RecipesViewModel())
    }
}
