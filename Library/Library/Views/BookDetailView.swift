//
//  BookDetailView.swift
//  Library
//
//  Created by Mikaila Smith on 5/15/22.
//

import SwiftUI

struct BookDetailView: View {
    @State var bookRating = 3
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Amazing Words")
                Text("Read Now!")
                
                NavigationLink(destination: BookContentView(), label: {
                    Image(systemName: "book")
                })
                
                Text("Mark for later!")
                Image(systemName: "star")
                Text("Rate Amazing Words")
                Picker("a", selection: $bookRating) {
                    Text("1")
                    Text("2")
                    Text("3")
                    Text("4")
                    Text("5")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}
