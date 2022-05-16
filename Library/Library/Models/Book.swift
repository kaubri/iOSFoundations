//
//  Book.swift
//  Library
//
//  Created by Mikaila Smith on 5/15/22.
//

import Foundation

class Book: Identifiable, Decodable {
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
}
