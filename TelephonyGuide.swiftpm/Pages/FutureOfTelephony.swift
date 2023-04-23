import SwiftUI

struct FutureOfTelephony: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(.indigo)
                    .frame(width: 80, height: 80)
                    .cornerRadius(20)
                Image(systemName: "timelapse")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }.padding()
            Spacer()
            VStack(alignment: .leading, spacing: 5) {
                Text("SIP has undergone steady development in recent years and will continue to play an important role in telephony in the future. Its open architecture allows for easy integration into existing networks and systems, enabling seamless communication between different devices and applications. SIP telephony is increasingly being used in businesses and public institutions to provide flexible and cost-effective communication solutions.")
                    .font(.body)
                Text("The future of telephony will also be influenced by other technologies such as Artifical Intelligence and Cloud Computing. The integration of SIP with these technologies will enable improved performance and quality in telephony.")
                    .font(.body)
                Text("Overall, SIP provides a solid foundation for telephony and will continue to play an important role in the future. With the proliferation of IP telephony, the importance of SIP in telephony will continue to grow.")
                    .font(.body)
                    .padding(.bottom)
                Text("I wish my learn app was able to provide you with a rough overview of SIP and how it works. Thank you for using it and I'm sure you have learned something valuable from the app.")
                    .font(.body)
                Spacer()
            }.padding()
        }.navigationTitle("Future of Telephony")
    } 
}

struct FutureOfTelephony_Previews: PreviewProvider {
    static var previews: some View {
        FutureOfTelephony()
    }
}

