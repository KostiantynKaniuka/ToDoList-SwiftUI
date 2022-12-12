//
//  ContentView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 06.12.2022.
//

import SwiftUI

struct OngoingTaskView: View {
    @State private var showNewTaskForm = false
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
                    ZStack {
                        AddTaskButton(action: {
                                showNewTaskForm.toggle()
                        })
                        if self.showNewTaskForm {
                            NewTaskView(calendarAction: blanc)
                            
                                  } else {
                                      NewTaskView(calendarAction: blanc).hidden()
                                  }
                    }.fixedSize()
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
func blanc() {
   //
}
