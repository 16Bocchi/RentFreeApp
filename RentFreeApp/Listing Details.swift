//
//  Listing Details.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 20/2/2023.
//

import SwiftUI

struct Listing_Address: View {
    
    @State private var apartmentno: String = ""
    @State private var streetaddress: String = ""
    @State private var suburb: String = ""
    @State private var city: String = ""
    @State private var state: String = ""
    @State private var country: String = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                GeometryReader { geo in
                    ZStack{
                        
                        Image("Listing_Wallpaper")
                        
                            .resizable()
                            .frame(width: geo.size.width, height: geo.size.height+70)
                            .edgesIgnoringSafeArea(.bottom)
                        
                        
                    }
                }
                VStack{
                    
                    Text("Listing Address")
                    
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .foregroundColor(Color.black)
                        .offset(y:-30)
                    ZStack{
                        RoundedRectangle(cornerRadius:20)
                            .frame(width: 330, height: 500)
                            .padding(.top, -5)
                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95) .opacity(0.9))
                            .offset(y:-30)
                            .blur(radius: 2)
                        VStack {
                            HStack(){
                                Text("Apartment Number :")
                                    .multilineTextAlignment(.center)
                                    .padding(.leading, -20.0)
                                
                                TextField(
                                    "Optional",
                                    text: $apartmentno
                                    
                                )//.keyboardType(.default)
                                .frame(width: CGFloat(100), height: CGFloat(30), alignment: .center)
                                .padding(4.0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 1)
                                )
                                
                            }
                            
                            HStack(){
                                Text("Street Address :")
                                    .multilineTextAlignment(.center)
                                    .padding(.leading,-20)
                                
                                TextField(
                                    "123 Street St",
                                    text: $streetaddress
                                ).frame(width: CGFloat(135), height: CGFloat(30), alignment: .center)
                                
                                    .padding(4)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.blue, lineWidth: 1))
                            }
                            
                            HStack(){
                                Text("Suburb :")
                                    .padding(.leading, -20.0)
                                
                                TextField(
                                    "Edgecliff",
                                    text: $suburb
                                ).frame(width: CGFloat(174), height:
                                            CGFloat(30), alignment: .center)
                                
                                .padding(4)
                                .padding(.leading)
                                .overlay(
                                    (RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 1))
                                )
                            }
                            
                            HStack(){
                                Text("City :")
                                    .padding(.leading, -20.0)
                                
                                TextField(
                                    "Sydney",
                                    text: $city
                                ).frame(width: CGFloat(200), height:
                                            CGFloat(30), alignment: .center)
                                .padding(4)
                                .padding(.leading)
                                .overlay(
                                    (RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 1))
                                )
                            }
                            
                            HStack(){
                                Text("State :")
                                    .padding(.leading, -20.0)
                                
                                TextField(
                                    "NSW",
                                    text: $state
                                ).frame(width: CGFloat(190), height:
                                            CGFloat(30), alignment: .center)
                                .padding(4)
                                .padding(.leading)
                                .overlay(
                                    (RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 1))
                                )
                            }
                            
                            HStack(){
                                Text("Country :")
                                    .padding(.leading, -20.0)
                                
                                TextField(
                                    "Australia",
                                    text: $country
                                ).frame(width: CGFloat(170), height:
                                            CGFloat(30), alignment: .center)
                                .padding(4)
                                .padding(.leading)
                                .overlay(
                                    (RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 1))
                                )
                            }
                        }
                        .offset(y:-100)
                    }
                                NavigationLink(destination: {
                                    Rent_Details() //change to the next page
                                }, label: {
                                    Text("Next")
                                        .font(.system(size:25))
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.center)
                                        .imageScale(.large)
                                        .frame(width:150, height:70)
                                       
                                        .background(
                                            Capsule()
                                                .fill(Color("AccentColor"))
                                                    .frame (width:150,height:60))
                                          
                                })
                                .offset(y:-170)
                        }
                        
                        
                    }
            
        }.navigationBarBackButtonHidden(true)
    }
    
}

struct Listing_Details_Previews: PreviewProvider {
    static var previews: some View {
        Listing_Address()
    }
}
