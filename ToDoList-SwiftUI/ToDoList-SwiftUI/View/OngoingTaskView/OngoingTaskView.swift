//
//  OngoingTaskView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 13.12.2022.
//

import SwiftUI

struct OngoingTaskView: View {
    var selectedState: MenuSection = .ongoing
    @State private var sample = [
        "lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek", "Okaay","lol", "kek"
        ]
   
    var body: some View {
        List {
            ForEach(sample, id: \.self) { task in
                HStack {
                    OngoingTaskCell(taskName: task)
                }
            }
            .listRowBackground(Color(.appBackground))
        }
    }
}

//struct OngoingTaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        OngoingTaskView(selectedState: .ongoing)
//    }
//}
