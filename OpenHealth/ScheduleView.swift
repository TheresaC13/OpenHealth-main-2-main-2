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
                .font(.title2)
           
            
          Spacer()
          Text("Bobette Bob")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                .underline()

        }
        
          Text("Upcoming Appointments:").font(.title2).fontWeight(.semibold).foregroundColor(Color(hue: 0.713, saturation: 1.0, brightness: 0.702)).padding(10)
        
          HStack {
              Text("8/29/23: Physical Exam with Dr. Smith ")
                  .font(.body)
                  
                 
         
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
          Text("7/4/23: Blood Draw")
                .font(.body)
            
          Spacer()
          Button("Reschedule") {
          }.frame(width: 120, height: 40)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                .cornerRadius(10.0)
        }
        HStack {
          Text("Patient has been contacted by Chat GPT generated texts at 1-PAT-IENT, to reschedule within the next \(sixWeeks) ")
                .font(.body)
                .foregroundColor(Color(hue: 0.779, saturation: 1.0, brightness: 0.625))
            HStack {
                Image(systemName: "checkmark.square")
                    .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                NavigationLink(destination: MessageView()){
                    Text("Messages Reviewed")
                        .frame(width: 100, height: 60)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                        .cornerRadius(10.0)
                }
                .frame(width: 100, height: 60)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                .cornerRadius(10.0)
            }
        }
        Text("Avaliable Results").padding()
              .font(.title2).fontWeight(.semibold).foregroundColor(Color(hue: 0.713, saturation: 1.0, brightness: 0.702)).padding(10)
          
        HStack {
          Text("8/10/23: Cardiac MRI")
                .padding(.trailing)
                .font(.body)
            
            
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
          Text("Patient has not examined results in TWO WEEKS. As results are critical, Dr. Smith has been requested to call patient")
                .font(.body)
                .foregroundColor(Color(hue: 0.779, saturation: 1.0, brightness: 0.625))
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
          Text("View AI-generated call script:")
                .font(.body)
                .multilineTextAlignment(.leading)
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
