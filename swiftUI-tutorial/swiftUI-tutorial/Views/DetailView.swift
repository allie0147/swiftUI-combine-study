//
//  DetailView.swift
//  swiftUI-tutorial
//
//  Created by AllieKim on 2023/01/26.
//

import SwiftUI

struct DetailView: View {
    var scrum: DailyScrum

    var body: some View {
        List {
            Section {
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background { scrum.theme.mainColor }
                        .cornerRadius(4)
                }
            } header: {
                Text("Meeting Info")
            }
            Section {
                ForEach(scrum.attendees) {
//                    Label($0.name)
//                    Text($0.name)
                }
            } header: {
                Text("Attendees")
            }

        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
