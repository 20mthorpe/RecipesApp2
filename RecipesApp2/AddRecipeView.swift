//
//  AddRecipeView.swift
//  RecipesApp2
//
//  Created by Mary Thorpe on 6/17/23.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @State private var name: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var selectedCategory: Category = .lun
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory){
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Ingredients")){
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Directions")){
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    NavigationLink(isActive: $navigateToRecipe){
                        RecipeView(recipe: recipesVM.recipes[(recipesVM.recipes.count - 1)])
                    } label: {
                        
                        
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        .disabled(name.isEmpty)
                    }
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        let recipe = Recipe(name: name, image: "", ingredients: ingredients, directions: directions, category: selectedCategory.rawValue)
        
        recipesVM.addRecipe(recipe: recipe)
    }
}

