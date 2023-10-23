//
//  MonthlyBudgetView.swift
//  BudgetwiseChallenge
//
//  Created by Angel Rincon on 10/22/23.
//

import SwiftUI

struct MonthlyBudgetView: View {
    @State var date = "selection"
    
    var body: some View {
        VStack(alignment: .center) {
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 100, height: 25)
                .foregroundStyle(.green)
                .opacity(0.25)
                .overlay {
                    HStack {
                        Text("April 2022")
                        
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 8)
                    }
                    .foregroundStyle(.green)
                    .font(.subheadline)
                }
                .padding(.top, 10)
                .padding(.vertical, 20)
            
            
            HStack {
                //Spent amount
                VStack {
                    Text("Spent")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundStyle(Color("accentGray"))
                    
                    Text("$800")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                
                Spacer()
                
                Rectangle()
                    .frame(width: 1, height: 35)
                    .padding(.horizontal, 10)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                //Available amount
                VStack {
                    Text("Available")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundStyle(Color("accentGray"))
                    
                    Text("$1200")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.green)
                }
                
                Spacer()
                
                Rectangle()
                    .frame(width: 1, height: 35)
                    .padding(.horizontal, 10)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                //Total budget
                VStack {
                    Text("Budget")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundStyle(Color("accentGray"))
                    
                    Text("$2000")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
            }
            .frame(height: 40)
            .padding(.horizontal, 20)
            
            //Overall progress view
            MonthlyOverallBudgetProgressView(spent: 800, budget: 2000)
                .padding(.horizontal)
                .padding(.top, 20)
                .padding(.bottom, 10)
            
            //Category view
            VStack {
                ForEach(sampleCategories) { category in
                    CategoryView(category: category)
                        .padding(.vertical, 13)
                }
            }
            .padding(.bottom, 15)
        }
        .background(.white)
    }
}

#Preview {
    MonthlyBudgetView()
}
