import SwiftUI

struct ContentView: View {
    @State private var isLoading: Bool = true
    var body: some View {
        ZStack {
            Color(hex: "ADE2FF")
                .ignoresSafeArea(.all)
            
                    if !isLoading {
                        MainView()
                    }
                    if isLoading {
                        LoadingView()
                    }
                }
                .onAppear {
                    loadData()
                }
            }
    private func loadData() {
           DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
               // Once data is "loaded", hide the loading view
               isLoading = false
           }
       }
   }
