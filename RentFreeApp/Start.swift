//
//  ContentView.swift
//  RentFreeApp
//
//  Created by Daniel Braithwaite on 15/2/2023.
//

import SwiftUI

struct Start: View {
    var body: some View {
        NavigationView{
            VStack{
                Landing_Page()
                    .offset(y: 30)
                //.navigationTitle("RentFree")
                
                NavigationLink(
                    destination: Create_Account(),
                    label: {
                        Text("Let's get started!")
                            .font(.system(size:25))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .imageScale(.large)
                            .frame(width:280, height:70)
                            .background(
                                Capsule()
                                    .fill(Color("AccentColor"))
                                    .frame(width:280, height:70)
                            )
                    })
                .offset(y:-90)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}
