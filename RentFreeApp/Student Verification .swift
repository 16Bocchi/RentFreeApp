//
//  Student Verification .swift
//  RentFreeApp
//
//  Created by Sheba Thomas  on 15/2/2023.
//

import SwiftUI

struct Student_Verification_: View {
    var body: some View {
        VStack {
            Text("Verify your Student ID")
                .font(.largeTitle)
            .fontWeight(.bold)
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
        }
       
    }
}

struct Student_Verification__Previews: PreviewProvider {
    static var previews: some View {
        Student_Verification_()
    }
}
