//
//  MonthlyOverallBudgetProgressView.swift
//  BudgetwiseChallenge
//
//  Created by Angel Rincon on 10/22/23.
//

import SwiftUI

struct MonthlyOverallBudgetProgressView: View {
    var spent: Double
    var budget: Double
    
    var body: some View {
        ProgressView(value: spent, total: budget)
            .scaleEffect(x: 1, y: 8, anchor: .center)
            .tint(Color("lightPurple"))
            .frame(height: 30)
            .cornerRadius(10)
    }
}

#Preview {
    MonthlyOverallBudgetProgressView(spent: 800, budget: 2000)
}
