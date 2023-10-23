//
//  CategoryView.swift
//  BudgetwiseChallenge
//
//  Created by Angel Rincon on 10/22/23.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(Color(category.color))
                        .overlay {
                            Image(systemName: category.imageLink)
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.white)
                                .frame(width: 25, height: 25)
                        }
                }
                
                VStack(alignment: .leading) {
                    Text(category.categoryName.capitalized)
                        .frame(height: 20)
                        .font(.title3)
                        .fontWeight(.medium)
                    
                    Group {
                        Text("spent ")
                            .foregroundStyle(Color("accentGray")) +
                        Text("$\(category.spent, specifier: "%.0f") ")
                            .foregroundStyle(.green) +
                        Text("of $\(category.targetBudget, specifier: "%.0f")")
                            .foregroundStyle(Color("accentGray"))
                    }
                    .font(.headline)
                    .fontWeight(.medium)
                    
                }
                .frame(height: 40)
                
                Spacer()
                
                VStack {
                    Text("$\(category.targetBudget - category.spent, specifier: "%.0f")")
                        .frame(height: 20)
                        .foregroundStyle(.green)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text("left")
                        .foregroundStyle(Color("accentGray"))
                        .font(.footnote)
                        .fontWeight(.medium)
                }
                .frame(height: 40)
            }
            .padding(.horizontal, 10)
            
            ProgressView(value: Double(category.spent), total: Double(category.targetBudget))
                .scaleEffect(x: 1, y: 1.5, anchor: .center)
                .tint(Color(category.color))
        }
    }
}

#Preview {
    CategoryView(category: Category(categoryName: "food", imageLink: "fork.knife", color: "darkBlue", targetBudget: 100, spent: 20))
}
