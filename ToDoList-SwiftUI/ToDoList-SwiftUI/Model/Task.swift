//
//  Task.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 16.12.2022.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var title = ""
    @Persisted var dateOfAdding = Date()
    @Persisted var completed = false
    @Persisted var deadlineDate: Date?
    @Persisted var doneAt: Date?
    @Persisted var shortDescription: String?
}
