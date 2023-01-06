//
//  ContentView.swift
//  ConverThermo
//
//  Created by cemajo on 04/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var slider = 0.0
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 25.0)
            Text("ConverThermo")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(Color("Text"))
                .padding()
            Spacer()
            Slider (value: $slider, in: -50...1000, step: 1, onEditingChanged: {
                editing in isEditing = editing
            })
            .padding()
            Spacer()
            Text(String(slider) + "°C")
                .foregroundColor(Color("Text"))
                .font(.title)
                .padding()
            Spacer()
            Text(String((slider*9/5)+32) + "°F")
                .foregroundColor(Color("Text"))
                .font(.title)
                .padding()
            Spacer()
        }
        .background(Color("Background"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
