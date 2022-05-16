//
//  QuoteModel.swift
//  Quotes
//
//  Created by Mikaila Smith on 5/2/22.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }
}
