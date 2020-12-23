//
//  OnboardingView.swift
//  splash old
//
//  Created by Winston T Chikazhe on 22/12/2020.
//

import SwiftUI

struct OnboardingView: View {
    var subviews = [
            UIHostingController(rootView: ImageView(imageString: "searchDollar", textString: "Check your home value quickly and easily online")),
            UIHostingController(rootView: ImageView(imageString: "Mortgages", textString: "Browse mortgages and loans that lower your housing costs")),
            UIHostingController(rootView: ImageView(imageString: "alt", textString: "Get Propzi alerts on developments and renovations in your area"))
        ]
    @State var currentPageIndex = 0
    var body: some View {
        VStack {
            LogoView()
                .padding(.top, 20)
                //.frame(height: 70)
                .frame(minWidth: 100, idealWidth: 167, maxWidth: 167, minHeight: 70, idealHeight: 167, maxHeight: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Spacer()
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews)
                //.frame(height: 300)
                .frame(minWidth: 300, idealWidth: 350, maxWidth: 350, minHeight: 300, idealHeight: 400, maxHeight: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack {
                PageControl(numberOfPages: subviews.count, currentPageIndex: $currentPageIndex)
                //Spacer()
                
            }
            .padding()
            .frame(height: 20)
            Spacer()
            
            ButtonView()
                .padding(.bottom, 20)
        }
        
                
    }
}

struct ButtonContent: View {
    var body: some View {
        Image(systemName: "arrow.right")
        .resizable()
        .foregroundColor(.white)
        .frame(width: 30, height: 30)
        .padding()
        .background(Color.orange)
        .cornerRadius(30)
    }
}
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
