//
//  Create_Account.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 21/2/2023.
//

import SwiftUI
import UIKit

struct Login_Account: View {
    
    @State var emailText: String=""
    @State var password: String=""
    @State private var showAlert = false
    @State var incorrectText: String=""
    @State var navDisabled = false
    
    @State var isChecked:Bool = false
    func toggle(){isChecked = !isChecked}
    
    /*------------Check if email is valid------------*/
    
    func checkValid(_ sender: Any){
        let email = isValidEmail(testStr: emailText)
        if email == false{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                incorrectText = ""
            }
            incorrectText = "This email is invalid."
            emailText = ""
        }
    }
    
    /*----------------Regex stuff----------------*/
    
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    /*-------Check if text fields are filled in -----------*/
    
    func checkFilled(){
        
        if emailText.isEmpty || password.isEmpty {
            let navDisabled = true
        }else{
            let navDisabled = false
        }
    }
    
    func someFunc(){
        print("ASFAGSDINFIADFJIOSDGJAEIODJGsOS")
    }
    
    /*---------------------------------------*/
    
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
                Text("Welcome back!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.123))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 50.0)
                
                /*---------------------------------------*/
                
                TextField(text: $emailText, prompt:
                            
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
                
                Text(incorrectText)
                    .padding(.bottom)
                    .foregroundColor(Color.red)
                
                /*---------------------------------------*/
                
                HStack{
                    Button(action:  toggle){
                        Image(systemName: isChecked ? "checkmark.square" : "square")
                    }
                    
                    Text("Keep me logged in")
                }
                
                /*---------------------------------------*/
                
                
                NavigationLink(
                    destination: TwoFac_Selected().onAppear{
                        self.someFunc()
                        checkValid(Any.self)
                    },
                    label: {
                        Text("Login")
                            .font(.system(size:25))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .imageScale(.large)
                            .frame(width:230, height:70)
                            .background(
                                Capsule()
                                    .fill(Color("AccentColor"))
                                    .frame (width:230,height:70))
                    })
                .padding(25.0)
            }
        }
    }
    
    struct Login_Account_Previews: PreviewProvider {
        static var previews: some View {
            Login_Account()
        }
    }
}
