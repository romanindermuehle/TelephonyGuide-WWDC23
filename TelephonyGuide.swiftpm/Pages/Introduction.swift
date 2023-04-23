//
//  Intro.swift
//  Telephony
//
//  Created by Roman Indermühle on 07.04.23.
//

import SwiftUI

struct Introduction: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(.indigo)
                    .frame(width: 80, height: 80)
                    .cornerRadius(20)
                Image(systemName: "megaphone")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }.padding()
            Spacer()
            VStack(alignment: .leading, spacing: 5) {
                Label {
                    Text("What is SIP?")
                        .font(.headline)
                } icon: {
                    Image(systemName: "circle.fill")
                        .font(.system(size: 10))
                }
                Label {
                    Text("What is SIP used for?")
                        .font(.headline)
                } icon: {
                    Image(systemName: "circle.fill")
                        .font(.system(size: 10))
                }
                Label {
                    Text("How should I best start learning?")
                        .font(.headline)
                } icon: {
                    Image(systemName: "circle.fill")
                        .font(.system(size: 10))
                }
                Label {
                    Text("Isn't it already outdated?")
                        .font(.headline)
                } icon: {
                    Image(systemName: "circle.fill")
                        .font(.system(size: 10))
                }.padding(.bottom)
                Text("Are you currently asking yourself these questions and not getting any further? Nowadays, there is information on SIP like sand on the beach. However, it is difficult to find a course or article that quickly and easily explains the fundamental aspects of the SIP protocol. When I started, I didn't have much luck either. Of course, this topic is also very complex if you want to understand how everything works.")
                    .font(.body)
                    .padding(.bottom)
                Text("When I realized that it wasn't easy to get into this topic, I made it my goal to develop a learning app. This app should provide a quick overview of telephony and specifically the SIP protocol in a short amount of time. Of course, the app is reduced to the most important aspects, but there is still a lot more that would be interesting to explore. Even if you don't have the opportunity to experiment at home, my app offers two AR(Augmented Reality) scenes where you can experience telephony interactively.")
                    .font(.body)
                    .padding(.bottom)
                TestYourKnowledge1().padding(.top)
                Spacer()
            }.padding()
        } .navigationTitle("Introduction")
    }
}

struct Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Introduction()
    }
}
