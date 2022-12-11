//
//  ContentView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 06.12.2022.
//

import SwiftUI

struct OngoingTaskView: View {
    @State private var sample = ["lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek"]
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
        
                    List {
                        ForEach(sample, id: \.self) { task in
                            HStack {
                                OngoingTaskCell(taskName: task)
                                NavigationLink("", destination: NewTaskView())                            }
                        }
                        .listRowBackground(Color(.appBackground))
                    }
                    Spacer()
                    AddTaskButton(action: blank)
                        .padding(.bottom, 30)
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

func blank() {
    //
}
