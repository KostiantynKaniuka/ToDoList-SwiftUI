//
//  ContentView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 06.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack {
                List {
                    HStack {
                        Button(action: ok) {
                            Label("", systemImage: "circle.circle")
                        }
                        Text("Task Name")
                            .font(Font.custom("San Fransico", size: 17))
                    }
                    .listRowBackground(Color(red: 211/255, green: 211/255, blue: 211/255))
                }
                .navigationTitle("Tasks")
            }
        }
    }
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
func ok() {
    //
}
