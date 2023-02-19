//
//  ImagePicker.swift
//  RentFreeApp
//
//  Created by Daniel Braithwaite on 17/2/2023.
//

/*

import SwiftUI
import PhotosUI

struct ImagePicker: View {
    
    @State var maxSelection: [PhotosPickerItem] = []
    @State var selectedItems: [UIImage] = []
    
    var body: some View {
        VStack{
            if selectedItems.count > 0{
                ScrollView(.horizontal){
                    HStack{
                        ForEach(selectedItems, id: \.self){
                            img in Image(uiImage: img)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 120)
                        }
                    }
                }
            }
        }
        
        PhotosPicker(selection: $selectedItems, matching: .images, photoLibrary: .shared()){
            Text("Select some photos")
        }
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker()
    }
}
*/
