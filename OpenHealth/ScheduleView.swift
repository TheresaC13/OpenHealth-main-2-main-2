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
                .font(.title3)
          Spacer()
          Text("Bobette Bob")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
        }
        
          Text("Upcoming Appointments:").font(.title2).fontWeight(.semibold).foregroundColor(Color(hue: 0.713, saturation: 1.0, brightness: 0.702)).padding(10)
        
          HStack {
              Text("8/29/23: Physical Exam with Dr. Smith ")
                 
         
              Toggle(isOn: $isClicked) {
            Text("Patient reviewed")
          }
          .toggleStyle(iOSCheckboxToggleStyle())
          .tint(.blue)
          .frame(width: 200, height: 40)
          .fontWeight(.bold)
          .foregroundColor(Color.white)
          .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
          .cornerRadius(10.0)
        }
        Text("Missed appointments")
              .font(.title2).fontWeight(.semibold).foregroundColor(Color(hue: 0.713, saturation: 1.0, brightness: 0.702)).padding(10)
          
        HStack {
          Text("July 4, 2023: Pelvic Exam")
          Spacer()
          Button("Reschedule") {
          }.frame(width: 120, height: 40)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                .cornerRadius(10.0)
        }
        HStack {
          Text("Patient has not rescheduled appointment in \(sixWeeks) so patient has recieved Chat GPT generated text message at: 1-PAT-IENT")
            .font(.subheadline)
            .foregroundColor(Color.purple)
            HStack {
                Image(systemName: "checkmark.square")
                    .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                NavigationLink(destination: MessageView()){
                    Text("Review messages")
                        .frame(width: 100, height: 60)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                        .cornerRadius(10.0)
                }
            }
        }
        Text("Avaliable Results").padding()
        HStack {
          Text("August 10, 2023: MRI Neck and Larynx")
          Toggle(isOn: $isOn) {
            Text("Patient reviewed")
                  .frame(width: 150, height: 40)
                  .fontWeight(.bold)
                  .foregroundColor(Color.white)
                  .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                  .cornerRadius(10.0)
          }
          .toggleStyle(iOSCheckboxToggleStyle())
          .frame(width: 200, height: 40)
          .fontWeight(.bold)
          .foregroundColor(Color.white)
          .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
          .cornerRadius(10.0)
        }
        HStack {
          Text("Patient has not examined results in 1 WEEK. As results are critical, Dr. Doe has been requested to call patient.")
            .font(.subheadline)
            .foregroundColor(Color.purple)
            .padding(5.0)
          Spacer()
          Image(systemName: "square").foregroundColor(Color.white)
                .frame(width: 30, height: 30)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                .cornerRadius(10.0)
          Text("   ")
        }
        HStack {
          Text("View AI-generated call script")
          NavigationLink(destination: PrevResults()){
            Text("Script")
              .frame(width: 80, height: 30)
              .fontWeight(.bold)
              .foregroundColor(Color.white)
              .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
              .cornerRadius(10.0)
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
