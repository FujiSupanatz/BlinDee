import SwiftUI

struct LoadingView: View {
    @State private var scale: CGFloat = 1.0
    @State private var opacity: Double = 1.0
    
    var body: some View {
        VStack {
            // Image (Logo)
            Image("logoapppng")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150) // Adjust size to your needs
            // Loading Text Animation
            Text("BlinDee")
                .font(.system(size: 55, weight: .bold)) // Set desired font style
                .foregroundColor(.blue) // Customize text color
                .scaleEffect(scale) // Apply scale animation
                .opacity(opacity) // Apply opacity animation
                .onAppear {
                
                    withAnimation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
                        scale = 1.2 // Scale up the text slightly
                        opacity = 0.5 // Fade out the text slightly
                    }
                }
        }
    }
}

#Preview {
    LoadingView()
}
