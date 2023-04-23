import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Lessons")) {
                    NavigationLink {
                        Introduction()
                    } label: {
                        Label("Introduction", systemImage: "megaphone")
                    }
                    NavigationLink {
                        SIPRealLife()
                    } label: {
                        Label("SIP in real life", systemImage: "person.line.dotted.person")
                    }
                    NavigationLink {
                        SIPTechnical()
                    } label: {
                        Label("SIP technical", systemImage: "phone.arrow.up.right")
                    }
                    NavigationLink {
                        CallTracing()
                    } label: {
                        Label("Tracing calls", systemImage: "rectangle.and.text.magnifyingglass")
                    }
                    NavigationLink {
                        DataTransfer()
                    } label: {
                        Label("Data tranfer", systemImage: "shippingbox.and.arrow.backward")
                    }
                    NavigationLink {
                        FutureOfTelephony()
                    } label: {
                        Label("Future of telephony", systemImage: "timelapse")
                    }
                }
                Section(header: Text("AR scenes")) {
                    NavigationLink {
                        SIPGuide()
                    } label: {
                        Label("SIP AR example", systemImage: "arkit")
                    }
                    NavigationLink {
                        DataTransferGuide()
                    } label: {
                        Label("AR data transfer example", systemImage: "arkit")
                    }
                }
                
            }
            .listStyle(.automatic)
            .navigationTitle("Telephony Guide")
            
            Text("Select a lesson")
        }
    }
}



