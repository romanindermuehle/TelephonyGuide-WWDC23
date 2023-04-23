//
//  SwiftUIView.swift
//  
//
//  Created by Roman Indermühle on 09.04.23.
//

import SwiftUI

struct InformationContainerView: View {
    var body: some View {
        VStack(alignment: .leading) {
            InformationDetailView(
                title: "Learn SIP",
                subTitle: "In this course, you will learn the basics of telephony. Since this topic would be very extensive, I have it brought down to the most important.",
                imageName: "graduationcap.fill"
            )
            InformationDetailView(
                title: "Experiences",
                subTitle: "Two lessons do also have an interactive AR scene.",
                imageName: "arkit"
            )
            InformationDetailView(
                title: "Test your knowledge",
                subTitle: """
                On each lesson page, there is a button called "Test your knowledge". There you can check if you have understood it correctly.
                """,
                imageName: "brain.head.profile"
            )
        }.padding(.horizontal)
        
    }
}

struct InformationContainerView_Previews: PreviewProvider {
    static var previews: some View {
        InformationContainerView()
    }
}
