//
//  ButtonView.swift
//  splash old
//
//  Created by Winston T Chikazhe on 23/12/2020.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
          Button(action: {
              print("button tapped!")
          }) {
              HStack {
                  
                  Text("Get Started")
                    .font(.system(size: 18, weight: .bold))
                    .modifier(CustomFontModifier(size: 18))
              }
          }
          .buttonStyle(GradientBackgroundStyle())
          HStack {
              Text("Already a member?")
                 .font(.system(size: 20))
                //.fontWeight()
                  .padding(.leading, 30)
              
            Button(action: {
                        print("Log in now")
                    }) {
                        HStack {
                            
                            Text("Log in")
                                .foregroundColor(Color(#colorLiteral(red: 0.2685751915, green: 0.8209512234, blue: 0.7121270299, alpha: 1)))
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                                 .padding(.leading, 10)
                        }
            }
          }
          .padding(.top, 20)
          .padding(.leading, -20)
        }
        .padding(.top, 10)
        
    }
}

struct ButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

struct GradientBackgroundStyle: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 200, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
            .foregroundColor(.white)
            .background(Color(#colorLiteral(red: 0.2685751915, green: 0.8209512234, blue: 0.7121270299, alpha: 1)))
            .cornerRadius(20)
            .padding(.horizontal, 20)
    }
}
