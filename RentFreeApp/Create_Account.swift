//
//  Create_Account.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 21/2/2023.
//

import SwiftUI

struct Create_Account: View {
    
    @State var email: String=""
    @State var password: String=""
    
    var body: some View {
        
        NavigationView{
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
                    Text("Create your account!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.123))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 50.0)
                    
                    /*---------------------------------------*/
                    
                    TextField(text: $email, prompt:
                                
                                (Text("janedoe@gmail.com"))
                              
                    ){
                        
                    }
                    .padding(.leading, 70.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.blue, lineWidth: 1)
                            .frame(width:300, height:40)
                    )
                    
                    /*---------------------------------------*/
                    
                    SecureField(text: $password, prompt:
                                    
                                    (Text("Password"))
                                
                    ){
                        
                    }
                    .offset(y:34)
                    .padding([.leading, .bottom], 70.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.blue, lineWidth: 1)
                            .frame(width:300, height:40)
                    )
                    
                    /*---------------------------------------*/
            
            NavigationLink(
                destination: Signup_Authenticate(),
                    label: {
                        Text("Sign up")
                            .font(.system(size:25))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .imageScale(.large)
                            .frame(width:230, height:70)
                            .background(
                                Capsule()
                                    .fill(Color("AccentColor"))
                                        .frame (width:230,height:70)
                                )
                    })
                    
                    Text("Or...")
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.123))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 20.0)
                    
                    /*---------------------------------------*/
                    
            NavigationLink(
                destination: Login_Account(), 
                    label: {
                        Text("Login")
                            .font(.system(size:25))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .imageScale(.large)
                            .frame(width:230, height:70)
                            .background(
                                Capsule()
                                    .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.768))
                                        .frame (width:230,height:70))
                                })
                }
            }
        }
    }
}

struct Create_Account_Previews: PreviewProvider {
    static var previews: some View {
        Create_Account()
    }
}
