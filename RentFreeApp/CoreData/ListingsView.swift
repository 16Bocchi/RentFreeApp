//
//  ListingsView.swift
//  RentFreeApp
//
//  Created by Daniel Braithwaite on 15/2/2023.
//

import SwiftUI
import CoreData

struct ListingsView: View {
    @State var location: String = ""
    @State var rating: String = ""
    @State var price: String = ""
    @State private var showingAlert = false
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: Listing.entity(), sortDescriptors: [])
    private var listings: FetchedResults<Listing>
    
    private func addProduct(){
        withAnimation{
            let listing = Listing(context: viewContext)
            if(rating.isFloat()){
                listing.rating = rating
            } else{
                self.showingAlert.toggle()
                return
            }

            if(price.isFloat()){
                listing.price = price
            } else{
                self.showingAlert.toggle()
                return
            }
            if(rating.isFloat() && price.isFloat()){
                listing.location = location
                saveContext()
            }




        }
        
    }

    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Location", text: $location)
                TextField("Rating", text: $rating)
                TextField("Price per night", text: $price)
                HStack {
                    Spacer()
                    Button("Add") {
                        addProduct()
                    }
                    Spacer()
                    Button("Clear") {
                        location = ""
                        rating = ""
                        price = ""
                    }
                    Spacer()
                    NavigationLink(destination: ResultsView(name: location, viewContext: viewContext)) {
                        Text("Find")
                    }
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                
                
                
                List{
//                  Text("Hiiii")
                    ForEach(listings) { listing in
                        HStack{
                            Text(listing.location ?? "Not found")
                            Spacer()
                            Text(listing.rating ?? "Not found")
                            Spacer()
                            Text(listing.price ?? "Not found")
                        }
                    }
                    .onDelete(perform: deleteProducts)
                }
                .navigationTitle("Property database")
            }
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showingAlert){
            Alert(
                title: Text("Invalid Entry"),
                message: Text("Please input a valid number")
            )
        }
        }
    }

    
    
    private func saveContext(){
        do {
            try viewContext.save()
        } catch{
            let error = error as NSError
            fatalError("An error occured: \(error)")
        }
    }
    
    private func deleteProducts(offsets: IndexSet){
        withAnimation {
            offsets.map {listings[$0] }.forEach(viewContext.delete)
                saveContext()
            }
    }
        
}


struct ListingsView_Previews: PreviewProvider {
    static var previews: some View {
        ListingsView()
    }
}

struct ResultsView: View{
    var name: String
    var viewContext: NSManagedObjectContext
    @State var matches: [Listing]?
    
    var body: some View{
        return VStack{
            List{
                ForEach(matches ?? []){match in
                    HStack{
                        Text(match.location ?? "Not Found")
                        Spacer()
                        Text(match.rating ?? "Not Found")
                        Spacer()
                        Text(match.price ?? "Not found")
                    }
                }
            }
            .navigationTitle("Results")
        }
        .task{
            let fetchRequest: NSFetchRequest<Listing> = Listing.fetchRequest()
            
            fetchRequest.entity = Listing.entity()
            fetchRequest.predicate = NSPredicate(
                format: "location CONTAINS %@", name
            )
            matches = try? viewContext.fetch(fetchRequest)
        }
    }
}

extension String{
    func isFloat() -> Bool {

        if let floatValue = Float(self) {
            return true
        }
        return false
    }
}
