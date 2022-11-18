//
//  Spotify_App.swift
//  Spotify+
//
//  Created by Shivani on 10/27/22.
//
import SwiftUI

@main
struct Spotify_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
