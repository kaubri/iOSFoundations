//
//  ContentView.swift
//  Quotes
//
//  Created by Mikaila Smith on 5/2/22.
//

import SwiftUI

struct QuotesListView: View {
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(model.quotes) { q in
                        NavigationLink(destination: QuoteView(quote: q), label: { Card(quote: q) })
                    }
                }
            }.navigationBarTitle("Quotes")
        }
    }
}

struct QuotesListView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesListView()
    }
}
