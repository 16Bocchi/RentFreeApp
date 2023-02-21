//
//  Carousel4.swift
//  RentFreeApp
//
//  Created by Alice Purnama Sari on 22/2/2023.
//

import SwiftUI

struct Carousel4: View {
    private var numberOfImages = 5
    var body: some View {
        
        ScrollView{
            TabView {
                ForEach(0..<numberOfImages) { num in
                    Image("z\(num)")
                        .resizable()
                        .scaledToFill()
                        .tag(num)
                }
            }.tabViewStyle(PageTabViewStyle())
                .frame(width: 400, height: 250)
            ZStack{
                Rectangle()
                    .fill(.gray)
                    .opacity(0.2)
                    .frame(width: 400, height: 80)
                
                HStack{
                    Image("face4")
                        .resizable()
                        .frame(width:50, height: 50)
                        .clipShape(Circle())
                    
                    
                    VStack{
                        HStack {
                            Text("  $50 per night                 ")
                                .fontWeight(.bold)
                            Image(systemName: "bed.double.fill")
                            Text("1")
                            Image(systemName:"bathtub.fill")
                            Text("1")
                        }
                        
                        Text(" 33 Capper Street            ")
                            .padding(.trailing, 100.0)
                    }
                    
                }
            }
            
            
        }
        
        
    }
}

struct Carousel4_Previews: PreviewProvider {
    static var previews: some View {
        Carousel4()
    }
}
