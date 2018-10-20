//
//  Date+Helpers.swift
//  Todo
//
//  Created by Ahmed Meguid on 10/16/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import Foundation

func dateFromString(_ date: String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    return dateFormatter.date(from: date)
}

func stringFromDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    return dateFormatter.string(from: date)
}
