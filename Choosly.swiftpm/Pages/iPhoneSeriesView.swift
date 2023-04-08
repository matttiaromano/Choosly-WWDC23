import SwiftUI

struct iPhoneSeriesView: View {
    @State private var goBack = false
    @State private var goToiPhone13 = false
    @State private var goToiPhone14 = false
    @State private var goToiPhoneSE = false
    @State private var goToiPhone14Pro = false


    var body: some View {
        return Group {
            if goBack {
                InfoView()
            }
            else if goToiPhone13 {
                iPhone13View()
            }
            else if goToiPhone14 {
                iPhone14View()
            }
            else if goToiPhoneSE {
                iPhoneSEView()
            }
            else if goToiPhone14Pro {
                iPhone14ProView()
            }
            else {
                VStack {
                    Text("Click on one of these iPhones to see more details")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                        .padding()
                        .padding(.top, 5)
                    List {
                        Group {


                            iPhoneLabel(title: "iPhone 13 Mini", description: "For who want a compact and lightweight smartphone, but still a wonderful iPhone.", icon: "iphone.gen2")


                        }
                            .onTapGesture {
                            withAnimation(.easeIn(duration: 0.50)) {
                                goToiPhone13 = true
                            }
                        }

                            .padding()
                        
                        
                        Group {


                            iPhoneLabel(title: "iPhone 14 & 14 Plus", description: "The very latest iPhone, presented in September 2022, in magnificent colors.", icon: "iphone.gen2")
                                .onTapGesture {
                                withAnimation(.easeIn(duration: 0.50)) {
                                    goToiPhone14 = true
                                }
                            }
                        }
                            .padding()
                        
                        
                        Group {


                            iPhoneLabel(title: "iPhone 14 Pro & 14 Pro Max", description: "For Professionals, for Creators, for those who need the maximum expression of power.", icon: "iphone")
                                .onTapGesture {
                                withAnimation(.easeIn(duration: 0.50)) {
                                    goToiPhone14Pro = true
                                }
                            }
                        }
                            .padding()
                        
                        
                        Group {


                            iPhoneLabel(title: "iPhone SE (3rd Generation)", description: "For those who like TouchID, who like the old aspect ratio, and for those who want an iPhone at a very affordable price.", icon: "iphone.gen1")
                                .onTapGesture {
                                withAnimation(.easeIn(duration: 0.50)) {
                                    goToiPhoneSE = true
                                }
                            }
                        }
                            .padding()

                    }

                    
                    
                        Group {
                        Button("Go Back") {
                            withAnimation(.easeIn(duration: 0.50)) {
                                goBack = true
                            }
                        }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color .accentColor)
                            .cornerRadius(20)
                    }
                        .padding(.vertical, 10)
                }
            }
        }
    }
}
