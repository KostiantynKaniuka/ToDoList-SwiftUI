//
//  DateView.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 13.01.2023.
//

import SwiftUI

struct DateView: View {
    @State private var deadlineDate = Date()
    var dissmisView: () -> Void
    
    var body: some View {
        ZStack {
            Color
                .white
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Button (action: self.dissmisView) {
                        Text("Save")
                    }
                    .tint(.black)
                    DatePicker( "", selection: $deadlineDate, in: Date()..., displayedComponents: .date)
                        .padding()
                }
                .padding()
            }
        }
    }
}
