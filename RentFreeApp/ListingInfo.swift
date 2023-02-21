//
//  ListingInfo.swift
//  RentFreeApp
//
//  Created by Alice Purnama Sari on 22/2/2023.
//

import SwiftUI

struct ListingInfo: View {
    private var numberOfImages = 5
    var body: some View {
        
        
        VStack{
            VStack(alignment: .leading, spacing: 50){
                
                Button {
                }label: {
                    Label {
                        Text("Back")
                            .fontWeight(.semibold)
                    } icon: {
                        Image(systemName: "chevron.left")
                            .font(.title2.bold())
                    }
                    .foregroundColor(.primary)
                }
                Text("3 Bedroom Apartment")
                    .font(.title)
                    .fontWeight(.bold)
                
                
            }
            
            
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            ScrollView{
                TabView {
                    ForEach(0..<numberOfImages) { num in
                        Image("\(num)")
                            .resizable()
                            .scaledToFill()
                            .tag(num)
                    }
                }.tabViewStyle(PageTabViewStyle())
                    .frame(width: 400, height: 250)
                
                    .padding()
                
                HStack{
                    Image("face")
                        .resizable()
                        .frame(width:60, height: 60)
                        .clipShape(Circle())
                        .padding(.leading, -20.0)
                    
                    VStack{
                        Text("  Uploaded by John Doe          ")
                            .fontWeight(.bold)
                        Text("Joined 6th of Februray 2023")
                            .foregroundColor(.gray)
                        Text("Verified ✅                             ")
                            .foregroundColor(.gray)
                        Text(" 33% Checklist filled                ")
                            .foregroundColor(.gray)
                    }
                }
                
                VStack{
                    Text("Location")
                        .fontWeight(.bold)
                        .padding(.leading,-160)
                        .padding(.top)
                    Text("42 Wallaby Way")
                        .padding(.leading, -160)
                    Text("Edgecliff, Sydney")
                        .padding(.leading,-160)
                    Text("NSW 2028")
                        .padding(.leading, -160)
                    Text("Price")
                        .padding(.top, 5)
                        .fontWeight(.bold)
                        .padding(.leading,-160)
                    Text("$120/night")
                        .padding(.leading,-160)
                    
                    Text("Description")
                        .fontWeight(.bold)
                        .padding(.top,5)
                        .padding(.leading,-160)
                    Text("From the moment you step inside this warm, inviting and renovated ground floor apartment you will be impressed.")
                        .padding(.horizontal, 50.0)
                    Text("Features:")
                        .padding(.leading,-160)
                        .padding(.top,5)
                    Text("- Light & bright throughout")
                        .padding(.leading,-110)
                    
                }
                VStack{
                    Text("- Freshly painted")
                        .padding(.leading,-158)
                    Text("- New timber floors")
                        .padding(.leading,-158)
                    Text("- Separate kitchen with meals area")
                        .padding(.leading, -55.0)
                    Text("Renter has allowed:")
                        .fontWeight(.bold)
                        .padding(.top,5)
                        .padding(.leading,-160)
                    Text("✅ Wi-Fi")
                        .padding(.leading,-160)
                        .padding(.top,1)
                    Text("✅ Television")
                        .padding(.leading,-160)
                        .padding(.top,1)
                    Text("✅ Air Conditioning")
                        .padding(.leading,-160)
                        .padding(.top,1)
                    Text("✅ Pets")
                        .padding(.leading,-160)
                        .padding(.top,1)
                    Text("✅ Parking")
                        .padding(.leading,-160)
                        .padding(.top,1)
                    Text("Reviews")
                        .fontWeight(.bold)
                        .padding(.top,5)
                        .padding(.leading,-160)
                }
                VStack{
                    HStack{
                        Image(systemName: "star.fill")
                            .padding(.leading,-150)
                            .padding(.top,1)
                        Image(systemName: "star.fill")
                            .padding(.leading,-139)
                            .padding(.top,1)
                        Image(systemName: "star.fill")
                            .padding(.leading,-129)
                            .padding(.top,1)
                        Image(systemName: "star.fill")
                            .padding(.leading,-119)
                            .padding(.top,1)
                        Image(systemName: "star")
                            .padding(.leading,-109)
                            .padding(.top,1)
                        
                    }
                }
                
            }
            HStack{
                Button(action:{
                }, label: {
                    Text("Reserve")
                        .font(.body)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal,35)
                        .background(
                            Capsule()
                        )
                    
                })
                .padding(.top,20)
                .padding(.leading,35)
                
                Spacer()
                
                Button(action:{
                }, label: {
                    Circle()
                        .frame(width:60, height:60)
                        .overlay(
                            Image(systemName:"bubble.left.fill")
                                .font(.title)
                                .foregroundColor(.white)
                            )
                    
                })
                .padding(.trailing, 30.0)
            }
        }
    }
}
struct ListingInfo_Previews: PreviewProvider {
    static var previews: some View {
        ListingInfo()
    }
}
