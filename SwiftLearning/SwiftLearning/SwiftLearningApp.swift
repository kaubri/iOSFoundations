//
//  SwiftLearningApp.swift
//  SwiftLearning
//
//  Created by Mikaila Smith on 5/16/22.
//

import SwiftUI

@main
struct SwiftLearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
