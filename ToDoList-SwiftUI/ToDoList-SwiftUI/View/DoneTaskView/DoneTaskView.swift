//
//  DoneTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 13.12.2022.
//

import SwiftUI

struct DoneTaskView: View {
    var selectedState: MenuSection = .done
    @State private var sample = [
        "lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek"
        ]
    var body: some View {
        List {
            ForEach(sample, id: \.self) { task in
                HStack {
                    DoneTaskCell(taskName: task)
                }
            }
            .listRowBackground(Color(.appBackground))
        }
    }
}
