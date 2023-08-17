//
//  ScheduleView.swift
//  OpenHealth
//
//  Created by scholar on 8/17/23.
//

import SwiftUI
struct ScheduleView: View {
  @State private var isOn = false
  @State private var isClicked = false
  @State private var sixWeeks = "6 weeks"
  var body: some View {
    NavigationStack {
      VStack {
        HStack {
          Text("Patient name: ")
            .font(.callout)
          Spacer()
          Text("Bobette Bob")
            .font(.headline)
        }.padding()
        Text("Upcoming appointments").padding()
        HStack {
          Text("August 19, 2023: Physical Check-Up with: ")
          Text("Dr. Smith")
            .fontWeight(.bold)
            .foregroundColor(Color.purple)
          Toggle(isOn: $isOn) {
            Text("Patient reviewed")
          }
          .toggleStyle(iOSCheckboxToggleStyle())
          .tint(.blue)
        }
        Text("Missed appointments").padding()
        HStack {
          Text("July 4, 2023: Pelvic Exam")
          Spacer()
          Button("Reschedule") {
          }
        }
        HStack {
          Text("Patient has not rescheduled appointment in \(sixWeeks) so patient has recieved Chat GPT generated text message at: 1-PAT-IENT")
            .font(.subheadline)
            .foregroundColor(Color.purple)
          Image(systemName: "checkmark.square").foregroundColor(Color.blue)
          NavigationLink(destination: MessageView()){
            Text("Review messages")
              .foregroundColor(Color.pink)
          }
        }
        Text("Avaliable Results").padding()
        HStack {
          Text("August 10, 2023: MRI Neck and Larynx")
          Toggle(isOn: $isOn) {
            Text("Patient reviewed")
          }
          .toggleStyle(iOSCheckboxToggleStyle())
        }
        HStack {
          Text("Patient has not examined results in 1 WEEK. As results are critical, Dr. Doe has been requested to call patient.")
            .font(.subheadline)
            .foregroundColor(Color.purple)
            .padding(5.0)
          Spacer()
          Image(systemName: "square").foregroundColor(Color.blue)
          Text("   ")
        }
        HStack {
          Text("View AI-generated call script")
          NavigationLink(destination: PrevResults()){
            Text("Script")
              .foregroundColor(Color.pink)
          }
        }
      }.padding()
    }.padding()
  }
}
struct CheckboxToggleStyle: ToggleStyle {
  func makeBody(configuration: Configuration) -> some View {
    // 1
    Button(action: {
      // 2
      configuration.isOn.toggle()
    }, label: {
      HStack {
        // 3
        Image(systemName: configuration.isOn ? "checkmark.square" : "square")
        configuration.label
      }
    })
  }
}
struct ScheduleView_Previews: PreviewProvider {
  static var previews: some View {
    ScheduleView()
  }
}
