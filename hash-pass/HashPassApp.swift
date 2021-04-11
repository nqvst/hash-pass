//
//  HashPassApp.swift
//  hash-pass
//
//  Created by Jack Enqvist on 2021-04-11.
//

import SwiftUI
import Foundation

@main
struct MyApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
