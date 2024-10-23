import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ZStack{
                Color(hex: "ADE2FF")
                    .ignoresSafeArea(.all)
                ContentView()
                    
            }
        }
    }
    
}
