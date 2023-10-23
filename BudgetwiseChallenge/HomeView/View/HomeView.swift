//
//  HomeView.swift
//  BudgetwiseChallenge
//
//  Created by Angel Rincon on 10/23/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack {
            
            ScrollView {
                
                VStack {
                    HomeBackgroundView()
                    
                    MonthlyBudgetView()
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 2)
                        .padding(.horizontal, 20)
                        .padding(.top, -60)
                    
                }
            }
            .ignoresSafeArea()
            
            FloatingButtonView()
            
        }
        
    }
}

#Preview {
    HomeView()
}
