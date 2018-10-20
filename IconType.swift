//
//  IconType.swift
//  Todo
//
//  Created by Ahmed Meguid on 10/16/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import Foundation

enum IconType: String {
    case child = "child-selected"
    case phone = "phone-selected"
    case shopCart = "shopping-cart-selected"
    case travel = "travel-selected"
    
    func getSelectedIndex() -> Int {
        switch self {
        case .child:
            return 0
        case .phone:
            return 1
        case .shopCart:
            return 2
        case .travel:
            return 3
        }
    }
}

func getType(by index: Int) -> IconType {
    if index == 0 {
        return .child
    } else if index == 1 {
        return .phone
    } else if index == 2 {
        return .shopCart
    } else if index == 3 {
        return .travel
    }
    return .child
}
