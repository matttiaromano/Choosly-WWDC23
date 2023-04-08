import SwiftUI
import AVKit

struct iPhone14View: View {
    
    @State private var goBack = false
    @State private var renderTime: Double = 0

    
    
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
                        Image("iPhone14")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 200)
                    }
                        
                        VStack {
                            
                            
                            Text("iPhone 14 & iPhone 14 Plus")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                            Text("2022")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.secondary)
                                .padding(.bottom, 5)
                            
                            Text("Wonderfull.")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("Color-iPhone14-Y"))

                            
                        }
                        
                        Divider()
                            .padding()
                        
                        HStack {
                            VStack {
                                
                                Text("Available in 2 dimensions")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                                Text("6.1 inches and 6.7 inches")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(LinearGradient(colors: [.init("Color1-Gradient-14"), .init("Color2-Gradient-14"), .init("Color3-Gradient-14")], startPoint: .topLeading, endPoint: .bottomTrailing))
                                
                                VStack {
                                    
                                    Text ("With the all new")
                                        .font(.caption)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 1)
                                    Text("Action Mode")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.center)
                                        .foregroundStyle(LinearGradient(colors: [.init("Color1-Gradient-14"), .init("Color2-Gradient-14"), .init("Color3-Gradient-14")], startPoint: .topLeading, endPoint: .bottomTrailing))
                                }
                            }
                        }
                        
                        Divider()
                            .padding()
                        
                        VStack{
                            Text("Apple launched the **iPhone 14** and **iPhone 14 Plus** in September 2022, two models that feature **significant improvements** in 📷 camera technology and 💥 safety capabilities. Both models are 🌊 **IP68** rated for water and dust resistance and have an aluminum design and Ceramic Shield front glass. They feature a dual-camera system that includes **Optical Image Stabilization**, with the all new 🏃‍♂️ **Action Mode**, 🌒 Night Mode, and Dolby Vision HDR video recording. The **iPhone 14** has a 📱 **6.1-inch** display, while the **iPhone 14 Plus** has a larger **6.7-inch** screen and 🔋 **longer battery life**. Both models have 📡 **5G** support. **iPhone 14** starts at 💵 **$799** while **iPhone 14 Plus** starts at 💵 **$899**. The new yellow joins the iPhone 14 lineup, and both models will be available in six colors, including midnight, starlight, (PRODUCT)RED, blue, purple, and yellow.")
                                .multilineTextAlignment(.center)
                        }
                        
                        Divider()
                            .padding()
                        
                        VStack{
                            
                            Text ("If you believe that this iPhone is not for you 👇")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                            

                                Text("Go back!")
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
