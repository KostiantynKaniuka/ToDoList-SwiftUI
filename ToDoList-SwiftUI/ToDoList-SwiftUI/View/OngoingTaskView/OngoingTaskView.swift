//
//  OngoingTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 13.12.2022.
//

import SwiftUI
import RealmSwift

struct OngoingTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @ObservedResults(Task.self,where: ( { $0.completed == false } )) var newTasks
    
    var body: some View {
        if newTasks.isEmpty {
            Color.appBackground
        } else {
            List {
                ForEach(newTasks, id: \._id) { task in
                    OngoingTaskCell(taskName: task.title, doneButtonTapped: {
                        realmManager.updateTask(id: task._id, completed: true, date: Date())
                    })
                    .swipeActions {
                        Button {
                            realmManager.deleteTask(id: task._id)
                        } label: {
                            Image(systemName: "trash")
                        }
                        .tint(.red)
                    }
                }
                .onAppear {
                    UITableView().backgroundColor = .appBackground
                }
                .listRowBackground(Color(.appBackground))
            }
        }
    }
}
