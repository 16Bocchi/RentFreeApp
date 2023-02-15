//
//  RentFreeAppApp.swift
//  RentFreeApp
//
//  Created by Daniel Braithwaite on 15/2/2023.
//

import SwiftUI

@main
struct RentFreeAppApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
