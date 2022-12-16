//
//  OngoingTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 13.12.2022.
//

import SwiftUI

struct OngoingTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    var body: some View {
        List {
            ForEach(realmManager.tasks, id: \._id) { task in
                HStack {
                    OngoingTaskCell(taskName: task.title)
                }
            }
            .onAppear{
                UITableView().backgroundColor = .appBackground
            }
            .listRowBackground(Color(.appBackground))
        }
    }
}

//struct OngoingTaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        OngoingTaskView(selectedState: .ongoing)
//    }
//}
