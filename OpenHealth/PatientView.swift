//
//  PatientView.swift
//  OpenHealth
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct PatientView: View {
    @State private var isOn = false
    @State private var On = false
    //@State private var patientBob = Patient(dates1: ["2014-05-20", "2014-05-20"], name1: "Bob")
    public var ptName = ""
    var body: some View {
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
            //Spacer()
            
            
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
            //.padding(.bottom)
            VStack {
                Text("HIPAA received")
                    .font(.title)
                    .foregroundColor(Color(hue: 0.616, saturation: 0.833, brightness: 0.634))
                
                VStack {
                    
                    Text("Our Mission")
                        .font(.title)
                        .frame(width: 400, height: 50)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    Text("OpenHealth's volunteer network connects student volunteers to elderly patients to offer them assistance in understanding their care.")
                    
                    
                        .frame(width: 375, height: 75)
                        .padding([.leading, .bottom, .trailing])
                    //.padding(.leading, .trailing, .bottom)
                        .foregroundColor(Color.white)
                }
                .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
                Spacer()
                
                Toggle(isOn: $isOn) {
                    Text("Patient reviewed")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                    
                }
                .frame(height: nil)
                .toggleStyle(iOSCheckboxToggleStyle())
                
                Toggle(isOn: $On) {
                    Text("Accompany Amelia to her doctor's appt at 3PM")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                    
                }
                .frame(height: nil)
                .toggleStyle(iOSCheckboxToggleStyle())
                Spacer()
            }
            
        }
    }
}
struct iOSCheckboxToggleStyle: ToggleStyle {
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




/* class Patient {
    var dates : Array<String>
    var name : String
    
    init(dates1 : Array<String>, name1 : String) {
        dates = dates1
        name = name1
    }
    
    func getPtName() -> String {
        return "Welcome \(name) !!"
    }
}
*/


struct PatientView_Previews: PreviewProvider {
    static var previews: some View {
        PatientView()
    }
}


