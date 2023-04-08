import SwiftUI
struct iPhone13View: View {
    
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
                        
                        Image("iPhone13Mini")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 200)
                    }
                    
                    
                    VStack {
                        
                    Text("iPhone 13 Mini")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Text("2021")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 5)
                        
                    Text("Your new superpower in a super compact size")
                            .font(.title)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Color-iPhone13"))
                            .padding(.bottom, -5)
                        
                        
                    }
                    
                    Divider()
                        .padding()
                    
                    HStack {
                        VStack {
                            
                        Text("With chip")
                                .font(.caption)
                                .multilineTextAlignment(.center)
                        Text("A15 Bionic")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(LinearGradient(colors: [.orange, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
                        
                        VStack {
                            
                            Text ("And")
                                .font(.caption)
                                .multilineTextAlignment(.center)
                                .padding(.top, 1)
                            Text("Ceramic Shield")
                                .font(.title)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(LinearGradient(colors: [.orange, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
                        }
                    }
                    }
                    
                    Divider()
                        .padding()
                    
                    VStack{
                        Text("The iPhone 13 Mini is the perfect choice for those who prefer a **compact and lightweight** smartphone. Even with its small size, **the powerful A15 Bionic chip** provides **smooth performance** and **fast processing speed**. **The 📷 camera system** has been upgraded, with improved **low-light performance**, advanced features like 🌒 **Night Mode** and **Cinematic Mode**. The 🔋 **battery life** has also been **improved**,  with a battery life **up to 1.5 hours longer** than the previous model (iPhone 12 Mini). Additionally, the iPhone 13 Mini is 🌊 **water-resistant** and comes in a range of **stunning colors**. The iPhone 13 Mini starts at 💵 **$599**.")
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
