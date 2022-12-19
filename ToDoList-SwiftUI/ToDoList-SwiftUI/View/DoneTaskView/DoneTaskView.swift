//
//  DoneTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 13.12.2022.
//

import SwiftUI
import RealmSwift

struct DoneTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @ObservedResults(Task.self, where: ( { $0.completed == true } )) var doneTasks
    var body: some View {
        if doneTasks.isEmpty {
            Color.appBackground
        } else {
            List {
                ForEach(doneTasks, id: \._id) { task in
                        DoneTaskCell(taskName: task.title)
                        .swipeActions {
                            Button {
                                realmManager.deleteTask(id: task._id)
                            } label: {
                                Image(systemName: "trash")
                            }
                            .tint(.red)
                        }
                }
                .onAppear{
                    UITableView().backgroundColor = .appBackground
                }
                .listRowBackground(Color(.appBackground))
            }
        }
    }
}
