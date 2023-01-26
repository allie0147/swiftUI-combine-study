//
//  swiftUI_tutorialApp.swift
//  swiftUI-tutorial
//
//  Created by AllieKim on 2023/01/26.
//

import SwiftUI

@main
struct swiftUI_tutorialApp: App {
    var body: some Scene {
        WindowGroup {
            CardView(scrum: DailyScrum(title: "Daily", attendees: [""], lengthInMinutes: 1, theme: .yellow))
        }
    }
}
