//
//  CarouselHome.swift
//  RentFreeApp
//
//  Created by Alice Purnama Sari on 22/2/2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
         
             VStack(alignment: .leading, spacing: 50){
                 
                 Button {
                 }label: {
                     Label {
                         Text("Back")
                             .fontWeight(.semibold)
                     } icon: {
                         Image(systemName: "chevron.left")
                             .font(.title2.bold())
                                   }
                                 .foregroundColor(.primary)
                 }
                 Text("Listings found in Sydney")
                     .font(.title)
                     .fontWeight(.bold)
                
                 
             }
             
             
             .frame(maxWidth: .infinity, alignment: .leading)
             .padding()
            
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
