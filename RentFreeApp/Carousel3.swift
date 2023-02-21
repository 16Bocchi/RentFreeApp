//
//  Carousel3.swift
//  RentFreeApp
//
//  Created by Alice Purnama Sari on 22/2/2023.
//

import SwiftUI

struct Carousel3: View {
    private var numberOfImages = 5
    var body: some View {
        
        ScrollView{
            TabView {
                ForEach(0..<numberOfImages) { num in
                    Image("r\(num)")
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
                    Image("face3")
                        .resizable()
                        .frame(width:50, height: 50)
                        .clipShape(Circle())
                    
                    
                    VStack{
                        HStack {
                            Text("  $100 per night                 ")
                                .fontWeight(.bold)
                            Image(systemName: "bed.double.fill")
                            Text("2")
                            Image(systemName:"bathtub.fill")
                            Text("1")
                        }
                        
                        Text(" 52 Kerryanne Street        ")
                            .padding(.trailing, 100.0)
                    }
                    
                }
            }
            
            
        }
        
        
    }
}

struct Carousel3_Previews: PreviewProvider {
    static var previews: some View {
        Carousel3()
    }
}
