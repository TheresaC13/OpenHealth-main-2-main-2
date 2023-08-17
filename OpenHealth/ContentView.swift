//
//  ContentView.swift
//  OpenHealth
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
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
                
                NavigationLink (destination: VolunteerView()) {
                    Text("Patient View")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .frame(width: 200, height: 50)
                .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                .foregroundColor(Color.white)
                .cornerRadius(50)
                
                Text("Sign Up")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 200, height: 50)
                    .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                    .foregroundColor(Color.white)
                    .cornerRadius(50)
                
                Spacer()
                    .frame(height: 270)
               
                
                
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
