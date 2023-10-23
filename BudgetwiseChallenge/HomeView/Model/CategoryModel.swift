//
//  CategoryModel.swift
//  BudgetwiseChallenge
//
//  Created by Angel Rincon on 10/22/23.
//

import Foundation

struct Category: Identifiable, Equatable {
    let id = UUID()
    let categoryName: String
    let imageLink: String
    var color: String
    var targetBudget: Double
    var spent: Double
}

var sampleCategories = [Category(categoryName: "food", imageLink: "fork.knife", color: "darkBlue", targetBudget: 100, spent: 10), Category(categoryName: "shopping", imageLink: "cart", color: "lightBlue", targetBudget: 100, spent: 20), Category(categoryName: "transportation", imageLink: "car", color: "yellow", targetBudget: 100, spent: 20), Category(categoryName: "education", imageLink: "graduationcap", color: "teal", targetBudget: 100, spent: 40)]
