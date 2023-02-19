//
//  Listing Details.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 20/2/2023.
//

import SwiftUI

struct Listing_Details: View {
    
    @State private var apartmentno: String = ""
    @State private var streetaddress: String = ""
    @State private var suburb: String = ""
    @State private var city: String = ""
    @State private var state: String = ""
    @State private var country: String = ""
    
    var body: some View {
    
        VStack{
            
            Text("Listing Address...")
            
                .font(.system(size: 30, weight: .heavy, design: .default))
                .multilineTextAlignment(.center)
                .padding(.all)
                .listRowSeparator(.hidden)
            
            HStack(){
                Text("Apartment Number:")
                    .multilineTextAlignment(.center)
                    .padding(.leading, -110.0)
                
                TextField(
                        "Optional",
                        text: $apartmentno
                        
                ).frame(width: CGFloat(80), height: CGFloat(30), alignment: .center)
                    .padding(4.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.blue, lineWidth: 1)
                    )
                    
            }
            
            HStack(){
                Text("Street Address:")
                    .multilineTextAlignment(.center)
                    .padding(.leading, -8)
                
                TextField(
                        "123 Street St",
                        text: $streetaddress
                ).frame(width: CGFloat(200), height: CGFloat(30), alignment: .center)
                
                    .padding(4)
                    .padding(.leading)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.blue, lineWidth: 1))
            }
            
            HStack(){
                Text("Suburb:")
                    .padding(.leading, -85.0)
                
                TextField(
                        "Edgecliff",
                        text: $suburb
                ).frame(width: CGFloat(150), height:
                            CGFloat(30), alignment: .center)
                
                .padding(4)
                .padding(.leading)
                .overlay(
                    (RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blue, lineWidth: 1))
                )
            }
            
            HStack(){
                Text("City:")
                    .padding(.leading, -85.0)
                
                TextField(
                    "Sydney",
                    text: $city
                ).frame(width: CGFloat(150), height:
                            CGFloat(30), alignment: .center)
                .padding(4)
                .padding(.leading)
                .overlay(
                    (RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blue, lineWidth: 1))
                )
            }
            
            HStack(){
                Text("State:")
                    .padding(.leading, -85.0)
                
                TextField(
                    "NSW",
                    text: $state
                ).frame(width: CGFloat(150), height:
                            CGFloat(30), alignment: .center)
                .padding(4)
                .padding(.leading)
                .overlay(
                    (RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blue, lineWidth: 1))
                )
            }
            
            HStack(){
                Text("Country:")
                    .padding(.leading, -85.0)
                
                TextField(
                    "Australia",
                    text: $country
                ).frame(width: CGFloat(150), height:
                            CGFloat(30), alignment: .center)
                .padding(4)
                .padding(.leading)
                .overlay(
                    (RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blue, lineWidth: 1))
                )
            }
            NavigationView{
                NavigationLink(destination: {
                    Rent_Details() //change to the next page
                }, label: {
                    Text("Next")
                })
            }.padding().frame(height: 100.0).navigationBarHidden(true)
        }
    }
}

struct Listing_Details_Previews: PreviewProvider {
    static var previews: some View {
        Listing_Details()
    }
}
