//
//  Quote.swift
//  Quotes
//
//  Created by Mikaila Smith on 5/2/22.
//

import Foundation

class Quote: Identifiable, Decodable {
    var id:UUID?
    var author:String
    var image:String
    var snippet:String
    var quote:String
}
