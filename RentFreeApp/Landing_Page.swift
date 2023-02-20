//
//  Landing_Page.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 20/2/2023.
//

import SwiftUI

struct Landing_Page: View {
    var body: some View {
        ZStack{
            
            GeometryReader { geo in
                ZStack{
                    
                    Image("Account_Setup_Wallpaper")
                    
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.bottom)
                        .frame(width: geo.size.width, height: geo.size.height+39, alignment: .center)
                        .opacity(1.0)
                     
                }
            }
            
            
            Text("RentFree")
                .font(.system(size:45))
                .fontWeight(.heavy)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.123))
                .position(x: 130, y: 90)
            
            
            Text("Travel better with us!")
                .font(.system(size:25))
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.123))
                .position(x: 145, y: 140)
            
        }
    }
}

struct Landing_Page_Previews: PreviewProvider {
    static var previews: some View {
        Landing_Page()
    }
}
