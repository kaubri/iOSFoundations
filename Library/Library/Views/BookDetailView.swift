//
//  BookDetailView.swift
//  Library
//
//  Created by Mikaila Smith on 5/15/22.
//

import SwiftUI

struct BookDetailView: View {
    @EnvironmentObject var model: BookModel
    @State var bookRating = 3
    @State var markForLater = false;
    var book:Book
    
    var body: some View {
        VStack {
            Text("Read Now!")
                .font(.title)
                .padding(.top, 20)
            
            NavigationLink(destination: BookContentView(book: book), label: {
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            })
            
            Text("Mark for later!")
                .font(.headline)
                .padding(.top, 20)
            
            Button(action: {
                markForLater = model.updateFavourite(bookId: book.id)!
            }) {
                Image(systemName: markForLater ? "star.fill" : "star")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25, alignment: .center)
                    .padding(.bottom, 50)
                    .foregroundColor(.yellow)
            }
            
            Text("Rate \(book.title)")
                .font(.headline)
            
            Picker("", selection: $bookRating) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 300)
            .onChange(of: bookRating) { newValue in
                model.updateRating(bookId: book.id, rating: bookRating)
            }
            
            Spacer()
        }
        .onAppear {
            bookRating = book.rating
            markForLater = book.isFavourite
        }
        .navigationTitle(book.title)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookDetailView(book: model.books[0])
    }
}
