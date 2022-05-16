//
//  BookCardView.swift
//  Library
//
//  Created by Mikaila Smith on 5/15/22.
//

import SwiftUI

struct BookCardView: View {
    var book:Book
    @State var isFavorite = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 10, x: -5, y: -5)
            
            VStack (alignment: .leading){
                HStack {
                    Text(book.title)
                        .font(.title)
                        .bold()
                    
                    if isFavorite {
                        Image(systemName: "star.fill")
                            .resizable()
                            .foregroundColor(.yellow)
                            .frame(width: 30, height: 30)
                    }
                }
                .onAppear {
                    isFavorite = book.isFavourite
                }
                
                Text(book.author)
                    .italic()
                
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
        }
    }
}

struct BookCardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookCardView(book: model.books[0])
    }
}
