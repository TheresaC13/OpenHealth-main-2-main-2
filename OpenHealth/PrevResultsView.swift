//
//  PrevResultsView.swift
//  OpenHealth
//
//  Created by scholar on 8/17/23.
//

import SwiftUI
struct PrevResults: View {
  @State private var name = "Bobette Bob"
  var body: some View {
    VStack {
        HStack {
          Text("Patient name: ")
                .font(.title2)
           
            
          Spacer()
          Text("Katie Smith")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                .underline()

        }.padding()
      Text("Follow-Up Call Script - MRI Results")
            .font(.title3)
            .fontWeight(.heavy)
            .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
      HStack {
        Text("Dr. Doe")
          .fontWeight(.bold)
          .frame(width: 70, height: 40)
          .fontWeight(.bold)
          .foregroundColor(Color.white)
          .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
          .cornerRadius(10.0)
        Text("Good morning, Katie Smith.                  ")
      }
      HStack {
        Text("Ms.S")
          .fontWeight(.bold)
          .frame(width: 70, height: 40)
          .fontWeight(.bold)
          .foregroundColor(Color.white)
          .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
          .cornerRadius(10.0)
        Text("I'm doing alright. Thank you for calling.  ")
      }
      HStack {
          Text("")
        Text("Dr. Doe")
          .fontWeight(.bold)
          .frame(width: 70, height: 40)
          .fontWeight(.bold)
          .foregroundColor(Color.white)
          .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
          .cornerRadius(10.0)
        Text("I'm glad to hear that. I wanted to discuss the results of your recent MRI test. Your MRI shows a few findings that may require further discussion and explanation.                            ")
      }
      HStack {
        Text("Ms.S")
              .fontWeight(.bold)
              .frame(width: 70, height: 40)
              .fontWeight(.bold)
              .foregroundColor(Color.white)
              .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
              .cornerRadius(10.0)
          
        Text("I appreciate your thoroughness, Doctor. What do the results suggest?")
      }
      HStack {
          Text("")
        Text("Dr. Doe")
              .fontWeight(.bold)
              .frame(width: 70, height: 40)
              .fontWeight(.bold)
              .foregroundColor(Color.white)
              .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
              .cornerRadius(10.0)
        Text("I recommend that you retrieve a copy of the MRI report and images from the imaging center. Once you have them, we'll schedule an appointment at your earliest convenience to discuss everything in detail.")
      }
      HStack {
          Text("")
        Text("Ms.S")
              .fontWeight(.bold)
              .frame(width: 70, height: 40)
              .fontWeight(.bold)
              .foregroundColor(Color.white)
              .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
              .cornerRadius(10.0)
        Text("Understood, Doctor. I'll contact the imaging center as soon as possible and let your office know once I receive the report and images.")
      }
      HStack {
          Text("")
        Text("Dr. Doe")
              .fontWeight(.bold)
              .frame(width: 70, height: 40)
              .fontWeight(.bold)
              .foregroundColor(Color.white)
              .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
              .cornerRadius(10.0)
        Text("In the meantime, it's crucial that you continue to follow any prescribed medications or treatments. If you experience any sudden changes in your symptoms or have any concerns, please don't hesitate to reach out.")
      }
    }
  }
}
struct PrevResults_Previews: PreviewProvider {
  static var previews: some View {
    PrevResults()
  }
}







