//
//  NewTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 11.12.2022.
//

import SwiftUI

struct NewTaskView: View {
    //@Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @Environment(\.dismiss) var dismiss
    @State private var newTaskName: String = ""
    var calendarAction: () -> Void
    var body: some View {
        VStack {
            Spacer()
            VStack {
                TextField("Enter the task", text: $newTaskName)
                    .frame(width: 300, height: 40)
                    .textFieldStyle(.plain)
                    .padding(.horizontal)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 2)
                        
                    )
                    .padding()
                    .background(Color.white)
                
                HStack(alignment: .center, spacing: 60) {
                    //save task button
                    Button(action: { dismiss()}) {
                        Text("Save")
                            .foregroundColor(.white)
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
                }
            }
            .background(Color.white)
            .frame(height: 100, alignment: .leading)
        }
    }
}
