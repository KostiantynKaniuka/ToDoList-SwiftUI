//
//  OngoingTaskCell.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 11.12.2022.
//

import SwiftUI

struct OngoingTaskCell: View {
    @State  var taskName: String
    
    var body: some View {
        HStack {
            //done button
            Button(action: ok) {
                Label("", systemImage: "circle.circle")
            }
            //task name label
            Text(taskName)
                .font(Font.custom("San Fransico", size: 17))
        }
    }
}

struct OngoingTaskCell_Previews: PreviewProvider {
    static var previews: some View {
        OngoingTaskCell(taskName: "Task Name")
    }
}

func ok() {
//
}
