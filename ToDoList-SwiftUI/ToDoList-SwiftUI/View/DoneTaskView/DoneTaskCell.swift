//
//  DoneTaskCell.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 13.12.2022.
//

import SwiftUI

struct DoneTaskCell: View {
    @State  var taskName: String
    var body: some View {
        HStack(spacing: 0) {
            Button(action: ok) {
                Label("", systemImage: "checkmark.seal.fill")
                    .foregroundColor(.green)
                    
            }
            //task name label
            Text(taskName)
                .font(Font.custom("San Fransico", size: 17))
        }
    }
}

struct DoneTaskCell_Previews: PreviewProvider {
    static var previews: some View {
        DoneTaskCell(taskName: "Task Name")
    }
}
