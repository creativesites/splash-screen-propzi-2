//
//  ImageView.swift
//  splash old
//
//  Created by Winston T Chikazhe on 22/12/2020.
//

import SwiftUI

struct ImageView: View {
    var imageString: String
    var textString: String
    var body: some View {
        ZStack {
            
            VStack {
                /*
                HStack{
                    LogoView()
                }
                .padding()  */
                Image(imageString)
                        .resizable()
                        //.aspectRatio(contentMode: .fill)
                    .clipped()
                    .padding()
                    //.frame(width: 240, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .frame(minWidth: 240, idealWidth: 300, maxWidth: 300, minHeight: 240, idealHeight: 300, maxHeight: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(textString)
                    .font(.system(size: 18, weight: .bold))
                    .modifier(CustomFontModifier(size: 18))
                    .multilineTextAlignment(.center)
                
            }
        }
        //.frame(width: 320, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .frame(minWidth: 320, idealWidth: 400, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 300, idealHeight: 500, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(imageString: "searchDollar", textString: "Check your home value \nquickly and easily online")
    }
}
