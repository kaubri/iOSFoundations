//
//  RecipeTabView.swift
//  RecipeList
//
//  Created by Mikaila Smith on 5/8/22.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            RecipeFeaturedView().tabItem {
                VStack {
                    Image(systemName: "star.fill")
                    Text("Featured")
                }
            }
            
            RecipeListView().tabItem {
                Image(systemName: "list.bullet")
                Text("List")
            }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
