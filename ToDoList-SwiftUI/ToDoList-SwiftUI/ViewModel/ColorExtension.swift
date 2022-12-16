//
//  ColorExtension.swift
//  ToDoList-SwiftUI
//
//  Created by Kostiantyn Kaniuka on 11.12.2022.
//

import SwiftUI


extension Color {
    public static var appBackground: Color {
        return  Color(UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1))
    }
}

extension UIColor {
    static let appBackground = UIColor(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
    static let AddNewTaskScreenColor = UIColor.init(white: 0.3, alpha: 0.4)
}
