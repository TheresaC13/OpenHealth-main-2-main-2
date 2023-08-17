//
//  ContentView.swift
//  OpenHealth
//
//  Created by scholar on 8/15/23.
//

import SwiftUI
  


struct ContentView: View {
    
    @State private var selection = "English"
    let colors = ["English", "Spanish", "Russian", "Mandarin", "Portugese"]

    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image("name")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 175, height: 175)
                        .padding(.leading, -110.0)
                    Image("icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 64.0, height: 64.0)
                
                }
                
                Spacer()
              
                NavigationLink (destination: LogIn()) {
                    Text("Volunteer View")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .frame(width: 200, height: 50)
                .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                .foregroundColor(Color.white)
                .cornerRadius(50)
                .padding(.bottom)
                
                NavigationLink (destination: PatientLogin()) {
                    Text("Patient View")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                }
                .frame(width: 200, height: 50)
                .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                .foregroundColor(Color.white)
                .cornerRadius(50)
                .padding(.bottom)
                
                Text("Sign Up")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 200, height: 50)
                    .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                    .foregroundColor(Color.white)
                    .cornerRadius(50)
                
                Spacer()
                    .frame(height: 270)
                HStack {
                    VStack {
                        Text("Selected Language: \(selection)")
                        
                        Picker("Select a paint color", selection: $selection) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                      
                        

                        
                    }
                    Image(systemName: "globe")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.blue)
                        .frame(width: 50)
                }
             

                
            }
            // .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
