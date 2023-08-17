//
//  VolunteerView.swift
//  OpenHealth
//
//  Created by scholar on 8/15/23.
//
import SwiftUI
struct VolunteerView: View {
  @State private var toggle1 = false
  @State private var toggle2 = false
  var body: some View {
    VStack {
    VStack {
      Group {
        VStack {
          Image("name")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
              //.frame(width: 175, height: 175)
          Image("icon")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 120)
          Text("Previous Appt on 7/16/23")
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
        }
        .padding(.top, 20)
        Text("Tests scheduled")
          .font(.title)
          .fontWeight(.regular)
          .multilineTextAlignment(.leading)
          .padding(.leading, -139.0)
          .padding(3)
      }
        VStack {
          Toggle(isOn: $toggle1) {
            Text("Basic metabloic panel blood test")
              .font(.title3)
              .fontWeight(.semibold)
              .padding(.trailing)
          }
          .frame(height: nil)
          .toggleStyle(iOSCheckboxToggleStyle())
          .padding(.leading, 38)
        }
        Toggle(isOn: $toggle2) {
          Text("Xray of pelvis and left femur")
            .font(.title3)
            .fontWeight(.semibold)
            .padding(.trailing)
        }
        .frame(height: nil)
        .toggleStyle(iOSCheckboxToggleStyle())
        .padding(9)
        Text("Basic metabolic panel test results from 7/6/23")
          .font(.title2)
          .fontWeight(.heavy)
          .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
        Text("Chloride - 21")
          .font(.title2)
          .multilineTextAlignment(.leading)
          .padding(1)
        Text("RBC - 500")
          .font(.title2)
          .padding(1)
        Text("Carbon Dioxide - 16")
          .font(.title2)
          .padding(1)
      }
      .padding(2)
      HStack {
        NavigationLink(destination: ScheduleView()){
          Text("Schedule and review results")
            .frame(width: 180, height: 65)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
            .cornerRadius(10.0)
        }
        
          Text("Ask a volunteer for help")
              .multilineTextAlignment(.center)
            .frame(width: 180, height: 65)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
            .cornerRadius(10.0)
        }
       Text("Next Appointment on 9/14/23")
            .font(.title2)
            .fontWeight(.heavy)
            .foregroundColor(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
        
        Text("What to expect")
          .frame(width: 180, height: 40)
          .fontWeight(.bold)
          .foregroundColor(Color.white)
          .background(Color(hue: 0.662, saturation: 0.806, brightness: 0.797))
          .cornerRadius(10.0)
      }
    }
  }

  struct VolunteerView_Previews: PreviewProvider {
    static var previews: some View {
      VolunteerView()
    }
  }
