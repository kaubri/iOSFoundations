//
//  Recipe.swift
//  RecipeList
//
//  Created by Mikaila Smith on 5/1/22.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id:UUID?
    
    // You can exclude listing properties that you aren't interested in decoding
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var highlights:[String]
    var ingredients:[Ingredient]
    var directions:[String]
}
