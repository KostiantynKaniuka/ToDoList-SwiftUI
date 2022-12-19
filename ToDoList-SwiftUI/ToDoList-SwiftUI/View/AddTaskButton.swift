//
//  AddTaskButton.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 11.12.2022.
//

import SwiftUI

struct AddTaskButton: View {
    var action: () -> Void
    var body: some View {
        ZStack {
            Button(action: self.action , label: {
                Image(systemName: "plus")
                    .tint(.white)
                    .frame(width: 60, height: 60)
                    .symbolRenderingMode(.hierarchical)
            }) .clipShape(Circle())
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .shadow(color: Color.black.opacity(1), radius: 3.0)
                .padding(.bottom, 20)
        }
    }
}
