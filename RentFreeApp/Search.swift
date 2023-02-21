//
//  ContentView.swift
//  RentFreeApp
//
//  Created by Moonoo Cha on 13/2/2023.
//

import SwiftUI
import MapKit
import UIKit
/*
class ViewController: UIViewController{
    
    @IBOutlet weak var birthDateTxt: UITextField!
}
*/
struct Search: View {
    
    @State var location: String=""
    
    @State var startdate: Date = Date()
    @State var enddate: Date = Date()
    
    @State private var region =
        MKCoordinateRegion(center:CLLocationCoordinate2D(latitude:-33.80038111388358, longitude: 151.0711902132999), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.1))
    
    var body: some View {
        VStack {
            
            Text("I'm staying at...")
                .font(.system(size: 20))
            Form {
                
                TextField(text: $location, prompt: Text("Sydney, Eastern Suburbs")){
                    
                    //i dont know what this does?
                    Text("Location")
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                    
                }
                .padding(.all)
                
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blue, lineWidth: 1)
                  
                )
                
                Map(coordinateRegion: $region)
                    .frame(height: 320)
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.white, lineWidth: 1)
                        
                    )
                    .listRowSeparator(.hidden)
                    .padding(.bottom, 20.0)
                
                Text("I'm staying for...")
                    .listRowSeparator(.hidden)
                
                DatePicker("Start Date", selection: $startdate)
                    .listRowSeparator(.hidden)
                    .labelsHidden()
                        .frame(width: 290, height: 20, alignment: .center)
                
                Text("To:")
                    .listRowSeparator(.hidden)
                
                DatePicker("End Date", selection: $enddate)
                    .listRowSeparator(.hidden)
                    .labelsHidden()
                    .frame(width: 290, height: 20, alignment: .center)
                        
            }
            
            .scrollContentBackground(.hidden)

            
            Button("Next"){
                print("Button tapped!")
            }
            
        }
    }
}

struct Struct_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}

