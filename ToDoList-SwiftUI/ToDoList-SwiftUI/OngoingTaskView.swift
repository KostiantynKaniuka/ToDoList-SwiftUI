//
//  ContentView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 06.12.2022.
//

import SwiftUI

struct OngoingTaskView: View {
    @State private var sample = ["lol", "kek", "Okaay"]
    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    ForEach(sample, id: \.self) { task in
                        OngoingTaskCell(taskName: task)
                    }
                    .listRowBackground(Color(.appBackground))
                }
            }
            .padding(.top)
            .navigationTitle("Tasks")
            .scrollContentBackground(.hidden)
            .background( Color(.appBackground))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OngoingTaskView()
    }
}

