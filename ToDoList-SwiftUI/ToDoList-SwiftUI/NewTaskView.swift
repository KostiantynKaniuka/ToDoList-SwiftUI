//
//  NewTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 11.12.2022.
//

import SwiftUI

struct NewTaskView: View {
    @State private var newTaskName: String = ""
    var body: some View {
        ZStack {
            Color(UIColor.AddNewTaskScreenColor)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                VStack {
                    TextField(
                        "Enter new task",
                        text: $newTaskName
                    ).padding(20)
                        .textFieldStyle(.roundedBorder)
                    HStack(alignment: .center, spacing: 60) {
                        //save task button
                        Button(action: okk) {
                            Text("Save")
                                .foregroundColor(.white)
                        }.buttonStyle(.borderedProminent)
                            .tint(.black)
                            .padding(.leading, 20)
                            .padding(.bottom, 10)
                        //deadlinelabel
                        Text("Select eadline>")
                            .font(Font.custom("San Francisco", size: 17))
                        //calendarButton
                        Button(action: okk) {
                            Image(systemName: "calendar")
                                .tint(.black)
                        }
                    }
                }
                .background(Color.white)
                .frame(height: 100, alignment: .leading)
            }
        }
    }}
    
    


struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
 
func okk() {
    //
}
