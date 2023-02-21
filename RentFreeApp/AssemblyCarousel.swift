//
//  AssemblyCarousel.swift
//  RentFreeApp
//
//  Created by Alice Purnama Sari on 22/2/2023.
//

import SwiftUI

struct AssemblyCarousel: View {
    private var numberOfImages = 5
    var body: some View {
        VStack{
            
            Home()
            
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
                ZStack{
                    Rectangle()
                        .fill(.gray)
                        .opacity(0.2)
                        .frame(width: 400, height: 80)
                    
                    HStack{
                        Image("face")
                            .resizable()
                            .frame(width:50, height: 50)
                            .clipShape(Circle())
                        
                        VStack{
                            HStack {
                                Text("   $120 per night               ")
                                    .fontWeight(.bold)
                                Image(systemName: "bed.double.fill")
                                Text("3")
                                Image(systemName:"bathtub.fill")
                                Text("2")
                            }
                            
                            Text("   42 Wallaby Way ")
                                .padding(.trailing, 150.0)
                        }
                        
                    }
                }
                
                Carousel2()
                Carousel3()
                Carousel4()
            }
            
            
        }
    }
    
    
    
    struct AssemblyCarousel_Previews: PreviewProvider {
        static var previews: some View {
            AssemblyCarousel()
        }
    }
}
