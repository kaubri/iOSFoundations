//
//  ContentView.swift
//  Library
//
//  Created by Mikaila Smith on 5/15/22.
//

import SwiftUI

struct LibraryListView: View {
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(model.books) { b in
                        NavigationLink {
                            BookDetailView(book: b)
                        } label: {
                            BookCardView(book: b)
                                .padding(.top, 10)
                                .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationTitle("My Library")
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct LibraryListView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryListView()
            .environmentObject(BookModel())
    }
}
