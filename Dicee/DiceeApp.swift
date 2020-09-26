//
//  DiceeApp.swift
//  Dicee
//
//  Created by Ahmet Yusuf Basaran on 26.09.2020.
//

import SwiftUI

@main
struct DiceeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(leftDiceNumber: 3, rightDiceNumber: 5)
        }
    }
}
