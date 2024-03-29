//
//  NewTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 11.12.2022.
//

import SwiftUI

struct NewTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @FocusState private var textFieldIsFocused: Bool
    @State private var newTaskName: String = ""
    @State private var showCalendarForm = false
    
    var dismissView: () -> Void
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                ZStack {
                    if showCalendarForm {
                        VStack {
                            //MARK: - TextField
                            TextField("Enter the task", text: $newTaskName, onCommit: dismissView)
                                .focused($textFieldIsFocused)
                                .frame(width: 300, height: 40)
                                .textFieldStyle(.plain)
                                .padding(.horizontal)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .padding()
                                .background(Color(.white))
                            //MARK: - Save and Calendar buttons
                            HStack(spacing: 60) {
                                //save task button
                                Button(action: {
                                    realmManager.addTask(title: newTaskName, deadlineDate: nil, shortDescription: nil)
                                    dismissView()
                                }) {
                                    Text("Save")
                                }
                                .disabled(newTaskName.isEmpty)
                                .buttonStyle(.borderedProminent)
                                .tint(.black)
                                .padding(.leading, 20)
                                .padding(.bottom, 10)
                                //deadlinelabel
                                Text("Select eadline>")
                                    .font(Font.custom("San Francisco", size: 17))
                                    .foregroundColor(.gray)
                                //calendarButton
                                Button(action: openOrCloseCalendar) {
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
                        DateView(dissmisView: openOrCloseCalendar)
                    } else {
                        VStack {
                            //MARK: - TextField
                            TextField("Enter the task", text: $newTaskName, onCommit: dismissView)
                                .focused($textFieldIsFocused)
                                .frame(width: 300, height: 40)
                                .textFieldStyle(.plain)
                                .padding(.horizontal)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .padding()
                                .background(Color(.white))
                            //MARK: - Save and Calendar buttons
                            HStack(spacing: 60) {
                                //save task button
                                Button(action: {
                                    realmManager.addTask(title: newTaskName, deadlineDate: nil, shortDescription: nil)
                                    dismissView()
                                }) {
                                    Text("Save")
                                }
                                .disabled(newTaskName.isEmpty)
                                .buttonStyle(.borderedProminent)
                                .tint(.black)
                                .padding(.leading, 20)
                                .padding(.bottom, 10)
                                //deadlinelabel
                                Text("Select eadline>")
                                    .font(Font.custom("San Francisco", size: 17))
                                    .foregroundColor(.gray)
                                //calendarButton
                                Button(action: openOrCloseCalendar) {
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
                        DateView(dissmisView: openOrCloseCalendar)
                            .hidden()
                    }
                }
                .background(Color(.white))
            }
            .onAppear(perform: { textFieldIsFocused = true })
        }
    }
    
    private func openOrCloseCalendar() {
        showCalendarForm.toggle()
    }
}
