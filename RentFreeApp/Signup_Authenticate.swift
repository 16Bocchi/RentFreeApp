//
//  SignUp_Authenticate.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 21/2/2023.
//

import SwiftUI

struct SignUp_Authenticate: View {
    
    @State var email: String=""
    @State var password: String=""
    
    @State var isChecked:Bool = false
    func toggle(){isChecked = !isChecked}
    
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
                        .blur(radius:10)
                }
            }
            
            RoundedRectangle(cornerRadius: 50)
                .fill(.white)
                .opacity(0.93)
                .frame(width:340, height:600)
            
            /*---------------------------------------*/
            
            VStack{
                Text("Enable two-factor authentication?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.123))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 50.0)
                
                /*---------------------------------------*/
                
                NavigationLink(
                    destination: TwoFac_Selected(),
                    label: {
                        Text("Yes")
                            .font(.system(size:25))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .imageScale(.large)
                            .frame(width:150, height:70)
                            .background(
                                Capsule()
                                    .fill(Color("AccentColor"))
                                    .frame (width:150,height:70))
                    })
                
                /*---------------------------------------*/
                
                NavigationLink(
                    destination: TwoFac_Selected(),
                    label: {
                        Text("Maybe later")
                            .font(.system(size:25))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .imageScale(.large)
                            .frame(width:200, height:70)
                            .background(
                                Capsule()
                                    .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.811))
                                    .frame (width:200,height:70))
                    })
                .padding(25.0)
            }
        }
    }
}

struct SignUp_Authenticate_Previews: PreviewProvider {
    static var previews: some View {
        SignUp_Authenticate()
    }
}
