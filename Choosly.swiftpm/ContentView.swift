import SwiftUI

struct ContentView: View {
    @State private var proceed = false

    var body: some View {
        return Group {
            if proceed == true
            {
                InfoView()
            } else
            {

                VStack
                {
                    
                    HStack{
                        
                        Image(systemName: "iphone")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.accentColor)
                            .multilineTextAlignment(.center)
                            .frame(width: .infinity, height: 70)
                            .padding(.bottom, 7)
                        
                    }
                    
                    Text("Choosly")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding (.bottom, 2)

                    Text("The utility that helps people who want to buy an iPhone")
                        .font(.title2)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)

                    Group {
                        Text("Click here for start!")
                            .padding()
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .background(Color .accentColor)
                        .cornerRadius(20)}


                    

                    .onTapGesture {
                    withAnimation(.easeIn(duration: 0.50)) {proceed = true}}}
                
                    .padding(.horizontal, 20)
                
            }
        }
    }
}
