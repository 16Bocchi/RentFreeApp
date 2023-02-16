////
////  ListingsView.swift
////  RentFreeApp
////
////  Created by Daniel Braithwaite on 15/2/2023.
////
//
//import SwiftUI
//import CoreData
//
//struct ListingsView: View {
//    @State var location: String = ""
//    @State var rating: Float = Float()
//    @State var price: Float = Float()
//
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(entity: Listings.entity(), sortDescriptors: [])
//    private var listings: FetchedResults<Listings>
//
//
//
//    var body: some View {
//        NavigationView{
//            VStack{
//                TextField("Location", text: $location)
//                TextField("Rating", value: $rating, format: .number)
//                TextField("Price per night", value: $price, format: .number)
//                HStack {
//                    Spacer()
//                    Button("Add") {
//
//                    }
//                    Spacer()
//                    Button("Clear") {
//                        location = ""
//                        //                    rating
//                        //                    price
//                    }
//                    Spacer()
//                }
//                .padding()
//                .frame(maxWidth: .infinity)
//
//                List{
//                    ForEach(listings){listings in
//                        HStack{
//                            Text(listings.location ?? "not found")
//                            Spacer()
//                            Text(listings.rating ?? "not found")
//                            //                        Spacer()
//                            //                        Text(listings.price ?? "not found")
//                        }
//                    }
//                }
//                .navigationTitle("Listings")
//            }
//        }
//    }
//}
//
//struct ListingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListingsView()
//    }
//}
