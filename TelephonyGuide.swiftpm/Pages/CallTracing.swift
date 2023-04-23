//
//  SwiftUIView.swift
//  
//
//  Created by Roman Indermühle on 13.04.23.
//

import SwiftUI

struct CallTracing: View {
    @State var showingPopover1 = false
    @State var showingPopover2 = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(.indigo)
                        .frame(width: 80, height: 80)
                        .cornerRadius(20)
                    Image(systemName: "rectangle.and.text.magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }.padding()
                Spacer()
                VStack(alignment: .leading, spacing: 5) {
                    Text("To trace calls, i.e. to track their history and content, there are various tools and protocols available that can be used. Available tools include Wireshark, SIPp, and sngrep.")
                        .font(.body)
                    Text("Wireshark is a popular network protocol analysis tool that also supports SIP protocols. With this tool, you can capture, filter, and analyze network traffic to obtain information about SIP messages and calls.")
                        .font(.body)
                    Spacer()
                }.padding()
                VStack(alignment: .center) {
                    Image("Wireshark")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .frame(width: 650)
                    Text("Image: Wireshark")
                        .font(.caption)
                        .frame(width: 650, alignment: .leading)
                        .padding(.bottom)
                    HStack {
                        Button {
                            showingPopover1 = true
                        } label: {
                            Label("Show SIP trace", systemImage: "text.bubble")
                                .frame(width: 250, height: 50)
                                .foregroundColor(.white)
                                .background(.primary)
                                .cornerRadius(13)
                        }.popover(isPresented: $showingPopover1) {
                            Image("SipTrace")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(15)
                                .frame(width: 350, height: 350)
                        }
                        Button {
                            showingPopover2 = true
                        } label: {
                            Label("Show invite message", systemImage: "message")
                                .frame(width: 250, height: 50)
                                .foregroundColor(.white)
                                .background(.primary)
                                .cornerRadius(13)
                        }.popover(isPresented: $showingPopover2) {
                            Image("InviteMessage")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(15)
                                .frame(width: 350, height: 350)
                        }
                    }
                }.padding()
                VStack(alignment: .leading, spacing: 5) {
                    Text("SIPp is an open-source tool that can be used to generate SIP calls and simulate SIP endpoint behaviors. It can also be used for monitoring and tracing SIP calls.")
                        .font(.body)
                    Text("Sngrep is an interactive tool for monitoring SIP calls that provides a real-time overview of SIP messages and calls. It can also be used to search for specific calls and trace connection issues.")
                        .font(.body)
                    Text("To trace calls, these tools can be used to analyze network traffic and track SIP calls. It is important to select the network segment in which the calls are taking place and ensure that you capture all necessary protocols and ports to obtain a complete overview.")
                        .font(.body)
                        .padding(.bottom)
                    Spacer()
                    TestYourKnowledge4().padding(.top)
                }.padding()
            }.navigationTitle("Call tracing")
        }
    }
}

struct CallTracing_Previews: PreviewProvider {
    static var previews: some View {
        CallTracing()
    }
}
