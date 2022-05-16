//
//  ContentView.swift
//  OttimoRistorante
//
//  Created by Mikaila Smith on 5/15/22.
//

import SwiftUI

struct ContentView: View {
    @State var locationIndex = "1"
    @State var orderIndex = "4"
    @State var dateSelection = Date()

    var body: some View {
        VStack {
            Text("Ottimo Ristorante")
                .font(.title)
            
            Spacer()
            
            HStack {
                Text("Location")
                    .font(.headline)
                
                Picker("Location:", selection: $locationIndex) {
                    Text("Atlanta").tag("1")
                    Text("Chicago").tag("2")
                    Text("Dallas").tag("3")
                    Text("New York City")
                }
                .pickerStyle(MenuPickerStyle())
            }
            
            Spacer()
            
            VStack {
                Text("Order:")
                    .font(.headline)
                
                Picker("Order:", selection: $orderIndex) {
                    Text("Nachos").tag("1")
                    Text("Grilled salmon salad").tag("2")
                    Text("Pad thai").tag("3")
                    Text("Fish tacos").tag("4")
                    Text("Turkey burger").tag("5")
                    Text("Poutine").tag("6")
                    Text("Potato leek soup").tag("7")
                }
                .pickerStyle(WheelPickerStyle())
            }
            
            Spacer()
            
            DatePicker("Date:", selection: $dateSelection)
                .font(.headline)
            
            Spacer()
            
            Button {
                locationIndex = String(Int.random(in: 1...3))
                orderIndex = String(Int.random(in: 1...7))
                dateSelection = Date.now
            } label: {
                Text("Pick for me!")
            }
            
            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
