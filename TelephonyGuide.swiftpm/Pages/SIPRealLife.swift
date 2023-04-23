//
//  SipRealLife.swift
//  Telephony
//
//  Created by Roman Indermühle on 07.04.23.
//

import SwiftUI

struct SlidesInfo: Hashable {
    let title: String
    let subtitle: String
}
struct SIPRealLife: View {
    let slidesInfo = [
        SlidesInfo(title: "Slide 1", subtitle: "This is Jenny. She is at a loss and needs help, so she decides to ask someone who can help her."),
        SlidesInfo(title: "Slide 2", subtitle: """
    She remembers she could ask her colleague Luke. She starts the conversation with "Hey Luke," sending an "invitation signal" to Luke. In this example, of course, the "invitation signal" is not transmitted by a message but in the form of an audio signal.
    """),
        SlidesInfo(title: "Slide 3", subtitle: """
                   Luke has received the signal and sends back an "OK response signal" with "Hey Jenny, what's up?". This confirms that Luke has received the "invitation signal" from Jenny.
                   """),
        SlidesInfo(title: "Slide 4", subtitle: "After these two signals, the conversation can begin. The connection is established, so to speak. Now, Luke and Jenny communicate together and audio signals are sent back and forth."),
        SlidesInfo(title: "Slide 5", subtitle: "Audio signals are also sent back and forth here, so the two can communicate with each other."),
        SlidesInfo(title: "Slide 6", subtitle: """
    Jenny is happy because she has solved her problem and thanks Luke. Now, Jenny says goodbye and sends a "Bye signal" to Luke that she would like to end the conversation.
    """),
        SlidesInfo(title: "Slide 7", subtitle: """
    Luke also says goodbye and immediately sends an "OK response signal" to confirm that he has received Jenny's "Bye signal". Accordingly, the conversation is successfully completed.
    """)
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(.indigo)
                        .frame(width: 80, height: 80)
                        .cornerRadius(20)
                    Image(systemName: "person.line.dotted.person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }.padding()
                Spacer()
                VStack(alignment: .leading, spacing: 5) {
                    Text("Let's start from scratch. SIP(Session Initiation Protocol) is simply a protocol used to establish a communication session. However, the principle of SIP can not only be viewed from a technical perspective but also in everyday life.")
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: true)
                    Text("Let's take a look at an example using the slides to illustrate it a bit.")
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: true)
                    VStack {
                        TabView {
                            VStack {
                                Image("Slide1")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                Text("Decide to ask for help")
                                    .font(.caption)
                            }.frame(width: 350)
                            VStack {
                                Image("Slide2")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                Text("Send invitation signal")
                                    .font(.caption)
                            }.frame(width: 350)
                            VStack {
                                Image("Slide3")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                Text("Confirm inviation")
                                    .font(.caption)
                            }.frame(width: 350)
                            VStack {
                                Image("Slide4")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                Text("Connection is ready to speak")
                                    .font(.caption)
                            }.frame(width: 350)
                            VStack {
                                Image("Slide5")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                Text("Two way communication takes place")
                                    .font(.caption)
                            }.frame(width: 350)
                            VStack {
                                Image("Slide6")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                Text("Send bye signal")
                                    .font(.caption)
                            }.frame(width: 350)
                            VStack {
                                Image("Slide7")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                Text("Confirm bye signal")
                                    .font(.caption)
                            }.frame(width: 350)
                            VStack {
                                Image("Slide8")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                Text("Call terminated")
                                    .font(.caption)
                            }.frame(width: 350)
                        }
                        .tabViewStyle(.page)
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 350, maxHeight: 450)
                    }
                    ForEach(slidesInfo, id: \.self) { slidesInfo in
                        Spacer()
                        Text(slidesInfo.title)
                            .font(.headline)
                            .fixedSize(horizontal: false, vertical: true)
                        Text(slidesInfo.subtitle)
                            .font(.body)
                            .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    Text("Now it should be clearer what the SIP protocol is. In the next lesson, we will take a closer look at how the SIP protocol works technically.")
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                    TestYourKnowledge2().padding(.top)
                }.padding()
            }.navigationTitle("SIP in real life")
        }
    }
}

struct SIPRealLife_Previews: PreviewProvider {
    static var previews: some View {
        SIPRealLife()
    }
}
