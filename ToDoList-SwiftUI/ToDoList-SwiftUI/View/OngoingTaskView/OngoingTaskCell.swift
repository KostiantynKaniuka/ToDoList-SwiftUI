//
//  OngoingTaskCell.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 11.12.2022.
//

import SwiftUI

struct OngoingTaskCell: View {
    @EnvironmentObject var realmManager: RealmManager
    @State  var taskName: String
    var doneButtonTapped: () -> Void
    
    var body: some View {
        HStack (spacing: 0) {
            //done button
            Button(action: doneButtonTapped) {
                Label("", systemImage: "circle.circle")
            }
            //task name label
            Text(taskName)
                .font(Font.custom("San Fransico", size: 17))
        }
    }
}
