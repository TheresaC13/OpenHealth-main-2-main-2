//
//  MessageView.swift
//  OpenHealth
//
//  Created by scholar on 8/17/23.
//

import SwiftUI
struct MessageView: View {
  var body: some View {
    VStack {
      Button("Dear Bobette Bobby, I wanted to personally reach out to you as your physician to remind you that we have received the test results from the pelvic exam you underwent on July 4, 2023.") {
      }.buttonStyle(.borderedProminent)
      Spacer()
      Button(" I am pleased to inform you that we have thoroughly reviewed your test results and everything appears to be within normal limits. This is a positive indicator that your pelvic exam did not reveal any significant abnormalities or concerns.") {
      }.buttonStyle(.borderedProminent)
      Spacer()
      Button("Should you have any questions or require further information regarding your test results, please do not hesitate to contact our office. We are here to provide you with the necessary guidance and address any concerns you may have.") {
      }.buttonStyle(.borderedProminent)
      Spacer()
      Button("Thank you for entrusting us with your healthcare. We appreciate the opportunity to be a part of your journey towards better health.") {
      }.buttonStyle(.borderedProminent)
      Spacer()
      Button("Warm Regards, Dr. Doe") {
      }.buttonStyle(.borderedProminent)
      Spacer()
    }
  }
}
struct MessageView_Previews: PreviewProvider {
  static var previews: some View {
    MessageView()
  }
}
