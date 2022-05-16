//
//  QuoteView.swift
//  Quotes
//
//  Created by Mikaila Smith on 5/2/22.
//

import SwiftUI

struct QuoteView: View {
    var quote: Quote
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(quote.author)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
            Text(quote.quote)
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteView(quote: model.quotes[0])
    }
}
