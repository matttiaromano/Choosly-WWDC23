import SwiftUI

struct InfoView: View {
    @State private var proceed = false
    
    var body: some View {
        if proceed
        {
            iPhoneSeriesView ()
        } else
        {
            ScrollView {
                
                HStack {
                    
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .multilineTextAlignment(.center)
                    .frame(width: .infinity, height: 40)}
                
                VStack {
                    
                    Text("About me")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding (.bottom, 2)
                    
                    Text("I am an Italian High School Student with the passion for computer science and coding. I try to create simple but very functional products that can be used by anyone, without distinctions 🌈")
                    .multilineTextAlignment(.center)}
                
                Divider()
                    .padding()
                
                
                HStack {
                    
                    Image(systemName: "swift")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .multilineTextAlignment(.center)
                    .frame(width: .infinity, height: 40)}
                
                VStack {
                    
                    Text("About this app")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding (.bottom, 2)
                    
                    Text("The goal of this app is help people to find the perfect iPhone 📱 for them, taking into consideration their various necessities. This app was created by Mattia Romano for the Apple WWDC23 Swift Student Challenge 🧑🏻‍💻. It was entirely programmed with Xcode in the Swift programming language. This year's WWDC is near ⌚️, and I'm sure there will be some exciting new features")
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 7)
                    
                    
                    Text("Click the button below to join in the app 👇")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 7)}
                    
                    Text("Go ahead")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color .accentColor)
                        .cornerRadius(20)
                        .multilineTextAlignment(.center)
                
                .onTapGesture{
                    withAnimation(.easeIn(duration: 0.50)) {
                        proceed = true
                    }
                }
                
                Spacer ()
                
                Divider()
                    .padding()
                
                Text("Some contents in this application are owned by Apple Inc.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
            }
                        
            .padding(.horizontal, 20)
            .padding(.top, 10)
        }
    }
}
