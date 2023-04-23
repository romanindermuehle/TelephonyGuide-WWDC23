//
//  DataTransfer.swift
//  Telephony
//
//  Created by Roman Indermühle on 07.04.23.
//

import SwiftUI

struct DataTransfer: View {
    @State var showPreview = false
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(.indigo)
                    .frame(width: 80, height: 80)
                    .cornerRadius(20)
                Image(systemName: "shippingbox.and.arrow.backward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }.padding()
            Spacer()
            VStack(alignment: .leading, spacing: 5) {
                Text("In telephony, data transmission occurs through the digital signaling of ones and zeros, also known as binary code. The audio files transmitted during a call are converted into digital signals and then sent in the form of data packets.")
                    .font(.body)
                Text("To ensure the privacy and security of phone calls, data transmission is encrypted. This means that the data is transformed into a form that can only be decrypted with a key. In this way, third parties cannot intercept or eavesdrop on the content of the conversation.")
                    .font(.body)
                Text("Most telephone companies use encryption technologies such as the Advanced Encryption Standard (AES) to secure data transmission. Once the encrypted data arrives at the recipient, it is decrypted with the appropriate key to restore the original audio file.")
                    .font(.body)
                Text("Overall, data transmission in phone calls is a complex process that is secured through encryption technologies to protect user privacy.")
                    .font(.body)
                    .padding(.bottom)
                TestYourKnowledge5().padding(.top)
                Spacer()
            }.padding()
            VStack {
                Button {
                    showPreview = true
                }label: {
                    Label("AR data transfer example", systemImage: "arkit")
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
                    DataTransferGuide()
                }
            }.padding()
        }.navigationTitle("Data transfer")
    }
}

struct DataTransfer_Previews: PreviewProvider {
    static var previews: some View {
        DataTransfer()
    }
}
