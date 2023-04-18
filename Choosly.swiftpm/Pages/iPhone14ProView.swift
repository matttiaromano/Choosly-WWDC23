import SwiftUI
import AVKit

struct iPhone14ProView: View {
    
    @State private var goBack = false
    @State private var renderTime: Double = 0
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "iPhone14Pro-Dynamic", withExtension: "mp4")!)
    @Environment(\.colorScheme) var colorScheme: ColorScheme
         
    var body: some View
    {
        return Group
        {
            if goBack
            {
                iPhoneSeriesView()
            } else
            {
                
                ScrollView {
                    
                    HStack {
                        if colorScheme == .light
                        {
                            HStack {
                                Image("iPhone14Pro")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: .infinity, height: 200)
                            }
                        } else
                        {
                            
                            VStack {
                                VideoPlayer(player: player)
                                    .frame(width: .infinity, height: 200, alignment: .center)
                                    .onAppear(){
                                        player.isMuted = true
                                        player .play()}
                                    .onDisappear(){
                                        player .pause()}
                                Text("Click on the video to turn on the audio")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.secondary)
                                    .padding(.top, 2)
                                    .padding(.bottom, -5)
                                
                                Divider()
                                    .padding(.top, 10)
                            }
                            
                        }
                    }
                        
                        
                        
                        VStack {
                            
                            Text("iPhone 14 Pro & iPhone 14 Pro Max")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                            Text("2022")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.secondary)
                                .padding(.bottom, 5)
                            
                            Text("Pro. Beyond.")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(LinearGradient(colors: [.init("Color1-Gradient-14Pro"), .init("Color2-Gradient-14Pro")], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .padding(.bottom, -5)
                            
                            
                        }
                        
                        Divider()
                            .padding()
                        
                        HStack {
                            VStack {
                                
                                Text("Coming with the new")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                                Text("Dynamic Island")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(LinearGradient(colors: [.init("Color1-Gradient-14Pro"), .init("Color2-Gradient-14Pro")], startPoint: .topLeading, endPoint: .bottomTrailing))
                                
                                VStack {
                                    
                                    Text ("And the first ever")
                                        .font(.caption)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 1)
                                    Text("48MP camera")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.center)
                                        .foregroundStyle(LinearGradient(colors: [.init("Color1-Gradient-14Pro"), .init("Color2-Gradient-14Pro")], startPoint: .topLeading, endPoint: .bottomTrailing))

                                }
                            }
                        }
                        
                        Divider()
                            .padding()
                        
                        VStack{
                            Text("The **iPhone 14 Pro** and **14 Pro Max** are Apple's **latest offerings for professional consumers**. The **iPhone 14 Pro** and **iPhone 14 Pro Max** feature an 📷 **innovative 48MP camera**, the new **Dynamic Island**, 🆘 **Emergency SOS via satellite**, and 💥 **Crash Detection**. The **A16 Bionic chip** is Apple's **first 4-nanometer processor**. The **iPhone 14 Pro Max**, compared to the iPhone 14 Pro, has a 📱 **larger 6.7-inch** screen that is **brighter than ever**. Both models feature **Always-On-Display feature**, **ProMotion technology**, and **excellent 🔋 battery life**. The **iPhone 14 Pro** starts at 💵 **$999**, while the **iPhone 14 Pro Max** starts at 💵 **$1099**. Customers can save up to $800 with **Apple's Trade In program**.")
                                .multilineTextAlignment(.center)
                        }
                        
                        Divider()
                            .padding()
                        
                        VStack{
                            
                            Text ("If you believe that this iPhone is not for you 👇")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                            

                                Text("Go back")
                                    .padding()
                                    .padding(.horizontal, 50)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .background(Color .accentColor)
                                    .cornerRadius(20)

                            .onTapGesture {
                                withAnimation(.easeOut(duration: 0.50)){
                                    goBack = true
                                }
                            }
                            
                            Spacer()
                            
                        }
                    }
                    
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                }
            }
        }
    }
