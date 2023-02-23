//
//  ListingDetails.swift
//  RentFreeApp
//
//  Created by Wong Shiun Yee on 21/2/2023.
//


import SwiftUI

struct ListingDetailsPage: View {
    @State private var typeOfParking = 0
    @State private var typeOfRoom = 0
    @State var startDate: Date = Date()
    @State var endDate: Date = Date()
    @State private var noOfBed = "1"
    @State private var noOfBedroom = "1"
    @State private var noOfToilet = "1"
    @State private var noOfParking = "1"
    let currentDate = Date()
    var minDate: Date {
           return Calendar.current.date(byAdding: .day, value: 2, to: startDate)!
       }
    let options = ["Single Room", "Entire Place", "Student Accomadation"]
    let parking = ["No", "Yes", "On Street "]
    
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
                    Text("Listing Details")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .foregroundColor(Color.black)
                        .offset(y:-30)
                    ZStack{
                        RoundedRectangle(cornerRadius:20)
                            .frame(width: 330, height: 580)
                            .padding(.top, -5)
                            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95) .opacity(0.9))
                            .offset(y:-30)
                            .blur(radius: 2)
                        
                        VStack {
                            HStack {
                                Text("Type of Room: ")
                                    .fontWeight(.bold)
                                Text(options[typeOfRoom])
                            }
                           
                                Picker(selection: $typeOfRoom, label: Text("")) {
                                    ForEach(Array(options.enumerated()), id: \.offset) { index, option in
                                        Text(option)
                                    }
                                }
                               
                            HStack {
                                Text("Available from :")
                                    .padding(.top,15)
                                    .fontWeight(.bold)
                                
                                
                                DatePicker("Start Date", selection: $startDate,in: currentDate..., displayedComponents: [.date])
                                    .labelsHidden()
                                    .frame(width: 170, height: 20, alignment: .center)
                                    .padding(.top,15)                            }
                            HStack{
                                Text("To :")
                                    .padding(.leading, 97)
                                    .fontWeight(.bold)
                                    .padding(.top,15)
                                    
                                
                                
                                DatePicker("Start Date", selection: $endDate,in: minDate... , displayedComponents: [.date])
                                    .labelsHidden()
                                    .frame(width: 170, height: 20, alignment: .center)
                                    .padding(.top,15)
                            }
                            HStack {
                                Text("Beds :")
                                    .fontWeight(.bold)
                                    .padding(.leading, -20.0)
                                    .padding(.top, 10)
                                    
                                    
                                VStack(alignment: .center, spacing: 8) {
                                    GroupBox{
                                        Menu(noOfBed) {
                                            Button("1") { noOfBed = "1" }
                                            Button("2") { noOfBed = " 2" }
                                            Button("3") { noOfBed = " 3" }
                                            Button("4") { noOfBed = " 4" }
                                            Button("5") { noOfBed = " 5" }
                                            Button("6") { noOfBed = " 6" }
                                            Button("7") { noOfBed = " 7" }
                                            Button("8") { noOfBed = " 8" }
                                            Button("9") { noOfBed = " 9" }
                                            Button("10") { noOfBed = " 10" }
                                            
                                        }
                                        
                                        .frame(width: 40, height: 5)
                                        .alignmentGuide(.firstTextBaseline) { d in
                                            d[.top] + (d.height - d[.bottom]) / 2
                                        }
                                       
                                        
                                    }

                                }
                                    .padding(.top, 10)
                                    .padding(.leading,20)
                                
                            }
                                .padding(.leading, 20)
                            HStack {
                                Text("Bedrooms :")
                                    .fontWeight(.bold)
                                    .padding(.leading, -20.0)
                                    
                                    
                                    
                                VStack(alignment: .center, spacing: 8) {
                                    GroupBox{
                                        Menu(noOfBedroom) {
                                            Button("1") { noOfBedroom = "1" }
                                            Button("2") { noOfBedroom = " 2" }
                                            Button("3") { noOfBedroom = " 3" }
                                            Button("4") { noOfBedroom = " 4" }
                                            Button("5") { noOfBedroom = " 5" }
                                            Button("6") { noOfBedroom = " 6" }
                                            Button("7") { noOfBedroom = " 7" }
                                            Button("8") { noOfBedroom = " 8" }
                                            Button("9") { noOfBedroom = " 9" }
                                            Button("10") { noOfBedroom = " 10" }
                                            
                                        }
                                        
                                        .frame(width: 40, height: 5)
                                        .alignmentGuide(.firstTextBaseline) { d in
                                            d[.top] + (d.height - d[.bottom]) / 2
                                        }
                                       
                                        
                                    }

                                }
                                    .padding(.top, 3)
                                    .padding(.leading,20)
                                    
                                        
                                    
                                
                            }
                                .padding(.leading, -20)
                               
                            HStack {
                                Text("Toilets :")
                                    .fontWeight(.bold)
                                    .padding(.leading, -20.0)
                                    
                                    
                                    
                                VStack(alignment: .center, spacing: 8) {
                                    GroupBox{
                                        Menu(noOfToilet) {
                                            Button("1") { noOfToilet = "1" }
                                            Button("2") { noOfToilet = " 2" }
                                            Button("3") { noOfToilet = " 3" }
                                            Button("4") { noOfToilet = " 4" }
                                            Button("5") { noOfToilet = " 5" }
                                            Button("6") { noOfToilet = " 6" }
                                            Button("7") { noOfToilet = " 7" }
                                            Button("8") { noOfToilet = " 8" }
                                            Button("9") { noOfToilet = " 9" }
                                            Button("10") { noOfToilet = " 10" }
                                            
                                        }
                                        
                                        .frame(width: 40, height: 5)
                                        .alignmentGuide(.firstTextBaseline) { d in
                                            d[.top] + (d.height - d[.bottom]) / 2
                                        }
                                       
                                        
                                    }

                                }
                                    .padding(.top, 3)
                                    .padding(.leading,20)
                            }
                                .padding(.leading, 10)
                                .padding(.bottom,5)
                            HStack {
                                Text("Parking: ")
                                    .fontWeight(.bold)
                                Text(parking[typeOfParking])
                            }
                           
                                Picker(selection: $typeOfParking, label: Text("")) {
                                    ForEach(Array(parking.enumerated()), id: \.offset) { index, option in
                                        Text(option)
                                    }
                                }
                            if typeOfParking == 1{
                                HStack {
                                    Text("No of Parking :")
                                        .fontWeight(.bold)
                                        .padding(.leading, -20.0)
                                        
                                        
                                        
                                    VStack(alignment: .center, spacing: 8) {
                                        GroupBox{
                                            Menu(noOfParking) {
                                                Button("1") { noOfParking = "1" }
                                                Button("2") { noOfParking = " 2" }
                                                Button("3") { noOfParking = " 3" }
                                                Button("4") { noOfParking = " 4" }
                                                Button("5") { noOfParking = " 5" }
                                            
                                                
                                            }
                                            
                                            .frame(width: 40, height: 5)
                                            .alignmentGuide(.firstTextBaseline) { d in
                                                d[.top] + (d.height - d[.bottom]) / 2
                                            }
                                           
                                            
                                        }

                                    }
                                        .padding(.top, 3)
                                        .padding(.leading,20)
                                }
                                    .padding(.leading, -35)
                                    .padding(.bottom,5)
                            }
                               
                            
                        }
                        .frame(width:310)
                        .pickerStyle(SegmentedPickerStyle())
                        .offset(y:-80)
                        
                        NavigationLink(
                            destination: Listing_Address(),
                            label: {
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
                        .offset(y:200)
                        
                        
                    }
                    //            .background(Image("landingPage")
                    //                .resizable()
                    //                .scaledToFill()
                    //                .frame(maxWidth: .infinity,maxHeight: .infinity)
                    //                .edgesIgnoringSafeArea(.bottom))
                }
            }
        }
    }
}
        
        
        struct ListingDetailsPagePage_Previews: PreviewProvider {
            static var previews: some View {
                ListingDetailsPage()
            }
        }
    
