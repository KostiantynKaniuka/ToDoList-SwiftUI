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
        HStack(spacing: 10) {
            Image(systemName: "checkmark.seal.fill")
                .foregroundColor(Color(.systemGreen))
            //task name label
            Text(taskName)
                .font(Font.custom("San Fransico", size: 17))
        }
    }
}
