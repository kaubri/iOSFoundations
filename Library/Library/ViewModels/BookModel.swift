//
//  BookModel.swift
//  Library
//
//  Created by Mikaila Smith on 5/16/22.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
    func updateRating(bookId: Int, rating: Int) {
        if let index = books.firstIndex(where: { $0.id == bookId}) {
            books[index].rating = rating
        }
    }
    
    func updateFavourite(bookId: Int) -> Bool? {
        if let index = books.firstIndex(where: { $0.id == bookId }) {
            books[index].isFavourite.toggle()
            return books[index].isFavourite
        }
        
        return nil
    }
}
