//
//  RentOrStay.swift
//  RentFree
//
//  Created by Wong Shiun Yee on 16/2/2023.
//

import SwiftUI

struct RoundedRectangle: Shape {
    var cornerRadius: CGFloat

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}

struct StayInView: View {
    var body: some View {
        Text("Stay In View")
    }
}

struct RentOrStayView: View {
    @State private var showRentOut = false
    @State private var showStayIn = false
    var body: some View {
        VStack {
                    Text("I'm Looking To ...")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
            Button(action: {
                       self.showStayIn.toggle()
            }) {
                ZStack {
                    
                    Image("stayIn")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .frame(width: 320, height: 320)
                    Text("Stay In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 200.0)
                        .frame(width: nil)
                        .padding(.top, 100)
                }}
            .sheet(isPresented: $showStayIn) {
                        StayInView()
                    }
            Button(action: {
                       self.showRentOut.toggle()
            }) {
                ZStack {
                    Image("rentOut")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                    .frame(width: 320, height: 320)
                    Text("Rent Out")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(.leading, 150.0)
                        .padding(.bottom, 240)
                }}
            .fullScreenCover(isPresented: $showRentOut) {
                        Login_Account()
                    }
            
        }
    }
}

struct RentOrStay_Previews: PreviewProvider {
    static var previews: some View {
        RentOrStayView()
    }
}
