//
//  LogoView.swift
//  splash old
//
//  Created by Winston T Chikazhe on 22/12/2020.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("Propzi Logo")
            .resizable()
            //.frame(width: 100, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .frame(minWidth: 100, idealWidth: 167, maxWidth: 167, minHeight: 60, idealHeight: 100, maxHeight: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
