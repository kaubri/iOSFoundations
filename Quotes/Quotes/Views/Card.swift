//
//  Card.swift
//  Quotes
//
//  Created by Mikaila Smith on 5/3/22.
//

import SwiftUI

struct Card: View {
    var quote: Quote
    
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .scaledToFill()
            
            VStack(alignment: .leading, spacing: 10.0) {
                Text(quote.snippet)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Text("- " + quote.author)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
            }
        }
        .foregroundColor(Color.white)
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(20)
        .padding([.leading, .trailing])
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        Card(quote: model.quotes[0])
    }
}
