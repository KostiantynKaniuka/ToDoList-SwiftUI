//
//  ContentView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 06.12.2022.
//

import SwiftUI

struct OngoingTaskView: View {
    @State private var showingSheet = false
    @State private var sample = [
        "lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek"
    ]
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    
                    List {
                        ForEach(sample, id: \.self) { task in
                            HStack {
                                OngoingTaskCell(taskName: task)
                            }
                        }
                        .listRowBackground(Color(.appBackground))
                    }
                    Spacer()
                    AddTaskButton(action: {
                        showingSheet.toggle()
                    })
                }.sheet(isPresented: $showingSheet) {
                NewTaskView()
                }
            }
            .padding(.top)
            .navigationTitle("Tasks")
            .scrollContentBackground(.hidden)
            .background( Color(.appBackground))
        }
    }}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OngoingTaskView()
    }
}
