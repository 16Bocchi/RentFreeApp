//
//  ContentView.swift
//  RentFreeApp
//
//  Created by Daniel Braithwaite on 15/2/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            NavigationLink(destination: {
                Rent_Details()
                //ImagePicker()
            }, label: {
                Text("Press Me")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ListingsView()
        ContentView()
    }
}
