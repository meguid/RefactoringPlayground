//
//  TodoUILogic.swift
//  Todo
//
//  Created by Ahmed Meguid on 10/16/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import UIKit

func reset(sender: UIButton, buttons: [UIButton]) {
    buttons.filter({$0 != sender}).forEach({$0.isSelected = false})
}

func selectButton(from buttons: [UIButton], image: String) {
    let type = IconType.init(rawValue: image) ?? .child
    let selectedButton = type.getSelectedIndex()
    buttons[selectedButton].isSelected = true
}

func updateUIDone(todo:ToDoItem?, buttons: [UIButton], field: UITextField, datePicker: UIDatePicker) {
    let image = getSelectedButtonImage(from: buttons)
    if let todo = todo {
        updateTodo(todo, image, title: field.text!, date: datePicker.date)
    } else {
        newTodo(image, title: field.text!, date: datePicker.date)
    }
}

private func getSelectedButtonImage(from buttons: [UIButton]) -> String {
    let selectedButton = getSelectedButton(from: buttons)
    let type = getType(by: selectedButton)
    return type.rawValue
}

private func getSelectedButton(from buttons: [UIButton]) -> Int {
    for i in 0..<buttons.count {
        if buttons[i].isSelected {
            return i
        }
    }
    return 0
}

func newTodo(_ image: String, title: String, date: Date) {
    todos.append(ToDoItem(id: UUID().uuidString, image: image, title: title, date: date))
}

func updateTodo(_ todo: ToDoItem, _ image: String, title: String, date: Date) {
    todo.image = image
    todo.title = title
    todo.date = date
}
