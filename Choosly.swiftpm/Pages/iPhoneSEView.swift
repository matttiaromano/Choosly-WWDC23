import SwiftUI
struct iPhoneSEView: View {
    
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
                        
                        Image("iPhoneSE")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 200)
                    }
                    
                    
                    VStack {
                        
                    Text("iPhone SE (3rd Generation)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Text("2022")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 5)
                        
                    Text("A powerful smartphone in an iconic design")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(LinearGradient(colors: [.init("Color1-Gradient-SE"), .init("Color2-Gradient-SE")], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .padding(.bottom, -5)
                        
                        
                    }
                    
                    Divider()
                        .padding()
                    
                    HStack {
                        VStack {
                            
                        Text("With the ")
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        Text("TouchID")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(LinearGradient(colors: [.init("Color1-Gradient-SE"), .init("Color2-Gradient-SE")], startPoint: .topLeading, endPoint: .bottomTrailing))
                        
                        VStack {
                            
                            Text ("And, now on iPhone SE")
                                .font(.caption)
                                .multilineTextAlignment(.center)
                                .padding(.top, 1)
                            Text("5G connectivity")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(LinearGradient(colors: [.init("Color1-Gradient-SE"), .init("Color2-Gradient-SE")], startPoint: .topLeading, endPoint: .bottomTrailing))
                        }
                    }
                    }
                    
                    Divider()
                        .padding()
                    
                    VStack{
                        Text("The **iPhone SE** (third generation) is an **affordable option** for who want an iPhone without 💸 spending too much. It is powered by the powerful **A15 Bionic chip** also seen in the iPhone 13, which offers **best-in-class performance**, and also 📡 **5G** connectivity. The phone has an 📷 **improved camera** with features such as  🌇 **Smart HDR 4** and **Deep Fusion** for **amazing photos**. A unique feature of the iPhone SE is its **smaller form factor**, which might appeal to users who prefer a more compact phone with a **physical home button** and **Touch ID**, instead of the new FaceID. However, the phone's 📱 display is smaller and has large frames; it also does **not support** 5G mmWave or 🌒 Night Mode for the camera. The **iPhone SE** (third generation) starts at 💵 $429.")
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
