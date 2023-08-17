//
//  LogIn.swift
//  OpenHealth
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct LogIn: View {
    @State private var name = ""
    @State private var date = ""
    @State private var textTitle = "What is your name?"
    @State private var update = false
    public var patient = ""
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
                .foregroundColor(Color(hue: 0.695, saturation: 0.737, brightness: 0.83))
            
            TextField("Enter your name", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
                .padding()
            
            
            NavigationLink(destination: PatientView()) {
                Text("Submit")
                //textTitle = "Welcome, \(name)!"
            }
            
        }
        .padding()
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
