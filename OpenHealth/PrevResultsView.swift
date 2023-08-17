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
      Text("Title: Follow-Up Call Script - MRI Results")
        .font(.headline)
        .fontWeight(.bold)
        .foregroundColor(Color.purple).padding()
      HStack {
        Text("Dr. Doe")
          .fontWeight(.bold)
        Text("Good morning, \(name).")
      }
      HStack {
        Text("Ms.Bob")
          .fontWeight(.bold)
        Text("I'm doing alright. Thank you for calling.")
      }
      HStack {
        Text("Dr. Doe")
          .fontWeight(.bold)
        Text("I'm glad to hear that. I wanted to discuss the results of your recent MRI test. I want to emphasize that it's important for us to review these results together, as they will help us determine the next steps in your treatment. Your MRI shows a few findings that may require further discussion and explanation.")
      }
      HStack {
        Text("Ms.Bob")
          .fontWeight(.bold)
        Text("I appreciate your thoroughness, Doctor. What do the results suggest?")
      }
      HStack {
        Text("Dr. Doe")
          .fontWeight(.bold)
        Text("I recommend that you retrieve a copy of the MRI report and images from the imaging center. This will allow us to discuss the specifics during our next appointment.To obtain these, you'll need to contact the imaging center where you had the MRI done. They should be able to assist you with the process of accessing the report and images. Once you have them, please let my office know, and we'll schedule an appointment at your earliest convenience to discuss everything in detail.")
      }
      HStack {
        Text("Ms.Bob")
          .fontWeight(.bold)
        Text("Understood, Doctor. I'll contact the imaging center as soon as possible and let your office know once I receive the report and images.")
      }
      HStack {
        Text("Dr. Doe")
          .fontWeight(.bold)
        Text("In the meantime, it's crucial that you continue to follow any prescribed medications or treatments. If you experience any sudden changes in your symptoms or have any concerns, please don't hesitate to reach out to our office. Our team is here to support you throughout this process.")
      }
    }
  }
}
struct PrevResults_Previews: PreviewProvider {
  static var previews: some View {
    PrevResults()
  }
}







