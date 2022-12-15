//
//  NewTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 11.12.2022.
//

import SwiftUI

struct NewTaskView: View {
    @FocusState private var textFieldIsFocused: Bool
    @State private var newTaskName: String = ""
    var calendarAction: () -> Void
    var saveButtonAction: () -> Void
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                VStack {
                    //MARK: - TextField
                    TextField("Enter the task", text: $newTaskName)
                        .focused($textFieldIsFocused)
                        .frame(width: 300, height: 40)
                        .textFieldStyle(.plain)
                        .padding(.horizontal)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 2)
                        ).padding()
                        .background(Color(.white))
                    //MARK: - Save and Calendar buttons
                    HStack(spacing: 60) {
                        //save task button
                        Button(action: saveButtonAction) {
                            Text("Save")
                        }.buttonStyle(.borderedProminent)
                            .tint(.black)
                            .padding(.leading, 20)
                            .padding(.bottom, 10)
                        //deadlinelabel
                        Text("Select eadline>")
                            .font(Font.custom("San Francisco", size: 17))
                            .foregroundColor(.gray)
                        //calendarButton
                        Button(action: calendarAction) {
                            Image(systemName: "calendar")
                                .tint(.black)
                        }
                        .padding()
                    }
                    .frame(width: 400.0)
                    .background(Color(.white))
                }
                .background(Color(.white))
                .frame( width: 400.0, height: 100)
            }
            .background(Color(.white))
        }.onAppear(perform: { textFieldIsFocused = true })
    }
}
