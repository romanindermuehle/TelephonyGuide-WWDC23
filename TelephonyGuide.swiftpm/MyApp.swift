import SwiftUI

@main
struct MyApp: App {
    @AppStorage("isOnboarding") var isWelcome = true
    @State var isShowingPopover = false
    var body: some Scene {
        WindowGroup {
            if isWelcome {
                ContentView()
                    .onAppear {
                        isShowingPopover = true
                    }
                    .sheet(isPresented: $isShowingPopover){
                        WelcomeMain()
                    }
            } else {
                ContentView()
            }
        }
    }
}

