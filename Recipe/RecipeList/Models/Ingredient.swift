//
//  Ingredient.swift
//  RecipeList
//
//  Created by Mikaila Smith on 5/8/22.
//

import Foundation

class Ingredient: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
