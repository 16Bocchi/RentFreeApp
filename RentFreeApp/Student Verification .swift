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
            VStack {
                VStack {
                    VStack {
                        VStack {
                            VStack {
                                VStack {
                                    
                                    
                                    Text("Verify your Student ID")
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                
                                        Form {
                                            Section {
                                                TextField("First Name"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(""))
                                                
                                                TextField("Last Name"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(""))
                                            }
                                            Section {
                                                TextField("Country"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(""))
                                                TextField("Name of University / College"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(""))
                                                TextField("Student Email"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(""))
                                                TextField("Expected Graduation Date DD/MM/YYYY"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(""))
                                                
                                            }
                                            VStack {
                                                Button("Verify") {
                                                }
                                            
                                            
                                        }
                                    }}
                            }}
                    }
                    //
                    //        .overlay(
                    //               RoundedRectangle(cornerRadius: 15
                    //                   .stroke(Color.blue,lineWidth: 1))
                    
                    //                .padding()
                    //                .textFieldStyle(RoundedBorderTextFieldStyle(Color.blue))
                }
            }
        }
        
    }
    
    
    struct Student_Verification__Previews: PreviewProvider {
        static var previews: some View {
            Student_Verification_()
        }
    }}
