//
//  ScrollHome.swift
//  RentFreeApp
//
//  Created by Alice Purnama Sari on 21/2/2023.
//

import SwiftUI

struct Home: View {
    
    @State var currentIndex: Int = 0
    @State var posts: [Post] = []

    var body: some View {
       
        VStack(spacing: 10){
            
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
            
            SnapCarousel(spacing:0, index: $currentIndex, items: posts)
            {post in
                
                GeometryReader{proxy in
                    
                    let size = proxy.size
                    
                    Image(post.postImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width, height: 200)
                    /*
                        .overlay{
                                Rectangle().stroke(.white, lineWidth: )
                        }
                        .shadow(radius:10)
                     */
                }
            }
            .padding(.vertical, 30)
        }
        .frame(maxHeight: .infinity,alignment: .top)
        .onAppear {
            for index in 1...5{
                posts.append(Post(postImage: "post\(index)"))
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
