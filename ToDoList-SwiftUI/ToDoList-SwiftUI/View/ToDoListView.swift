//
//  ToDoListView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 06.12.2022.
//

import SwiftUI
import RealmSwift

struct ToDoListView: View {
    @StateObject var realmManager = RealmManager()
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
            .onAppear {
                UISegmentedControl.appearance().selectedSegmentTintColor = .white
                UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.black], for: .selected)
                UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.white], for: .normal)
                UISegmentedControl.appearance().backgroundColor = .black
            }
            NavigationStack {
                ZStack {
                    switch selectedView {
                    case .ongoing:
                        OngoingTaskView()
                            .environmentObject(realmManager)
                    case .done:
                        DoneTaskView()
                            .environmentObject(realmManager)
                    }
                }
                .frame(width: 400)
                .navigationTitle("Tasks")
                .scrollContentBackground(.hidden)
                .background(Color(.appBackground))
            }
            if self.showNewTaskForm {
                ZStack {
                    AddTaskButton(action: {
                        showNewTaskForm.toggle()
                    })
                    NewTaskView(calendarAction: blanc, dismissView: dismiss)
                        .environmentObject(realmManager)
                }
                .fixedSize(horizontal: false, vertical: true)
                .frame(height: 100)
            } else {
                ZStack {
                    AddTaskButton(action: {
                        showNewTaskForm.toggle()
                    })
                    NewTaskView(calendarAction: blanc, dismissView: dismiss)
                        .environmentObject(realmManager)
                        .hidden()
                }
                .fixedSize()
                .frame(height: 50)
            }
        }
        .padding()
        .background(Color.appBackground)
    }
    
    private func dismiss() {
        showNewTaskForm.toggle()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
            .environmentObject(RealmManager())
    }
}
func blanc() {
    print(Realm.Configuration.defaultConfiguration.fileURL!)
}
