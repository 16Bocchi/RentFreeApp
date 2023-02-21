//
//  Carousel2.swift
//  RentFreeApp
//
//  Created by Alice Purnama Sari on 22/2/2023.
//

import SwiftUI

struct Carousel2: View {
    private var numberOfImages = 5
    var body: some View {
        
        ScrollView{
            TabView {
                ForEach(0..<numberOfImages) { num in
                    Image("p\(num)")
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
                    Image("face2")
                        .resizable()
                        .frame(width:50, height: 50)
                        .clipShape(Circle())
                    
                    
                    VStack{
                        HStack {
                            Text("  $200 per night                ")
                                .fontWeight(.bold)
                            Image(systemName: "bed.double.fill")
                            Text("5")
                            Image(systemName:"bathtub.fill")
                            Text("4")
                        }
                        
                        Text(" 65 Tennyson Street        ")
                            .padding(.trailing, 100.0)
                    }
                    
                }
            }
            
            
        }
        
        
    }
}

                    
                    struct Carousel2_Previews: PreviewProvider {
                        static var previews: some View {
                            Carousel2()
                        }
                    }
                
