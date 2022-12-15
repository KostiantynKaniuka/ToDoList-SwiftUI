//
//  ToDoListView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 06.12.2022.
//

import SwiftUI

struct ToDoListView: View {
    @State private var selectedView: MenuSection = .ongoing
    @State private var showNewTaskForm = false

    var body: some View {
        VStack(spacing: 0) {
            Picker("", selection: $selectedView) {
                ForEach(MenuSection.allCases, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .frame(width: 150)
            .pickerStyle(.segmented)
            NavigationStack {
                ZStack {
                    switch selectedView {
                    case .ongoing:
                        OngoingTaskView()
                    case .done:
                        DoneTaskView()
                    }
                    VStack {
                        Spacer()
                        ZStack {
                            AddTaskButton(action: {
                                showNewTaskForm.toggle()
                            })
                            if self.showNewTaskForm {
                                NewTaskView(calendarAction: blanc, saveButtonAction: dismiss)
                            } else {
                                NewTaskView(calendarAction: blanc, saveButtonAction: blanc).hidden()
                            }
                        }.fixedSize()
                    }
                }
                .navigationTitle("Tasks")
                .scrollContentBackground(.hidden)
                .background( Color(.appBackground))
            }
        }
        .padding()
        .background( Color(.appBackground))
    }
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .white
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.black], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.white], for: .normal)
        UISegmentedControl.appearance().backgroundColor = .black
    }
        
        private func dismiss() {
            showNewTaskForm.toggle()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
func blanc() {
   //
}
