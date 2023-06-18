//
//  ContentView.swift
//  RecipesApp2
//
//  Created by Mary Thorpe on 6/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabBar()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
