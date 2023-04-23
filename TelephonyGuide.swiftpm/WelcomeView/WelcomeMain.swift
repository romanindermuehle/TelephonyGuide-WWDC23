//
//  WelcomeView.swift
//  Telephony
//
//  Created by Roman Indermühle on 07.04.23.
//

import SwiftUI

struct WelcomeMain: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        VStack(alignment: .center) {
            
            TitleView().padding()
            
            Spacer()
            
            InformationContainerView().padding(.bottom)
            
            Spacer()
            
            Button {
                isOnboarding = false
            } label: {
                Text("Let's start")
                    .frame(width: 250, height: 50)
                    .foregroundColor(.white)
                    .background(.primary)
                    .cornerRadius(13)
            }
        }.padding()
    }
}
struct WelcomeMain_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeMain()
    }
}
