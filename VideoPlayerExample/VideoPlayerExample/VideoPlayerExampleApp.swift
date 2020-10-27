//
//  VideoPlayerExampleApp.swift
//  VideoPlayerExample
//
//  Created by Nitin Bhatt on 10/25/20.
//

import SwiftUI

@main
struct VideoPlayerExampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
