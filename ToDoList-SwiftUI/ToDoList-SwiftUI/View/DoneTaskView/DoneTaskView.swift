//
//  DoneTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 13.12.2022.
//

import SwiftUI

struct DoneTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    var body: some View {
        List {
            ForEach(realmManager.tasks, id: \._id) { task in
                HStack {
                    DoneTaskCell(taskName: task.title)
                }
            }
            .onAppear{
                UITableView().backgroundColor = .appBackground
            }
            .listRowBackground(Color(.appBackground))
            
        }
    }
}

