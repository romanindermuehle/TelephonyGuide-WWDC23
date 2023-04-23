//
//  SipTechnical.swift
//  Telephony
//
//  Created by Roman Indermühle on 07.04.23.
//

import SwiftUI

struct SIPTechnical: View {
    @State var showPreview = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(.indigo)
                        .frame(width: 80, height: 80)
                        .cornerRadius(20)
                    Image(systemName: "phone.arrow.up.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }.padding()
                Spacer()
                VStack(alignment: .leading, spacing: 5) {
                    Text("""
            SIP, or Session Initiation Protocol, is a communication protocol developed by the IETF in 1996. It enables the establishment, management and termination of sessions between participants in a network, making it an essential element of IP telephony and other multimedia applications.
            """)
                    Text("""
            SIP is an open standard that provides a flexible and scalable solution for enabling communication between different devices and applications. By integrating communication channels such as voice, video, and messaging into a single platform, businesses can streamline communication and increase productivity.
            """)
                    Text("""
            SIP is also a component of UCC(Unified Communication and Collaboration) systems, which integrate communication functions into a single platform. This allows businesses to save time and costs by providing employees with an integrated communication experience.
            """)
                    Text("""
            SIP is easy to implement and manage and provides excellent flexibility and interoperability. It is highly secure, with built-in authentication and encryption features to protect against unauthorized access and data breaches.
            
            """)
                    Text("""
            Overall, SIP is a versatile and powerful protocol that is essential for modern communication and collaboration solutions. With its flexibility, scalability, and interoperability, it has become the standard for signaling multimedia sessions in IP networks and is widely used by businesses of all sizes around the world.
            """)
                    Spacer()
                    TestYourKnowledge3().padding(.top)
                }
                .font(.body)
                .fixedSize(horizontal: false, vertical: true)
                .padding()
                VStack {
                    Spacer()
                    Button {
                        showPreview = true
                    }label: {
                        Label("SIP AR example", systemImage: "arkit")
                            .frame(width: 250, height: 50)
                            .foregroundColor(.white)
                            .background(.primary)
                            .cornerRadius(13)
                    }.sheet(isPresented: $showPreview) {
                        VStack {
                            Spacer()
                            Button("Close") {
                                showPreview = false
                            }
                        }
                        SIPGuide()
                    }
                }.padding()
            }.navigationTitle("SIP technical")
        }
    }
}

struct SIPTechnical_Previews: PreviewProvider {
    static var previews: some View {
        SIPTechnical()
    }
}
