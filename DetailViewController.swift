//
//  DetailViewController.swift
//  Todo
//
//  Copyright © 2016 YiGu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var childButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var shoppingCartButton: UIButton!
    @IBOutlet weak var travelButton: UIButton!
    @IBOutlet weak var todoTitleLabel: UITextField!
    @IBOutlet weak var todoDatePicker: UIDatePicker!
    
    var todo: ToDoItem?
    var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        buttons = [childButton, phoneButton, shoppingCartButton, travelButton]
        if let todo = todo {
            setupUIforView(todo: todo)
        } else {
            setupUIforAdd()
        }
    }
    
    func setupUIforView(todo: ToDoItem) {
        self.title = "Edit Todo"
        selectButton(from: buttons, image: todo.image)
        todoTitleLabel.text = todo.title
        todoDatePicker.setDate(todo.date, animated: false)
    }
    
    func setupUIforAdd() {
        title = "New Todo"
        childButton.isSelected = true
    }

    @IBAction func selectAction(_ button: UIButton) {
        reset(sender: button, buttons: buttons)
    }
    
    @IBAction func tapDone(_ sender: AnyObject) {
        updateUIDone(todo: todo, buttons: buttons, field: todoTitleLabel, datePicker: todoDatePicker)
        let _ = navigationController?.popToRootViewController(animated: true)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
