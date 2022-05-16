//
//  BookContentView.swift
//  Library
//
//  Created by Mikaila Smith on 5/15/22.
//

import SwiftUI

struct BookContentView: View {
    @EnvironmentObject var model:BookModel
    @State var page = 0
    var book:Book
    
    var body: some View {
        TabView {
            ForEach(book.content.indices) { i in
                VStack {
                    Text(book.content[i]).tag(i)
                    Spacer()
                    Text("\(i)")
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookContentView(book: model.books[0])
    }
}
