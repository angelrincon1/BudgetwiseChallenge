//
//  HomeBackgroundView.swift
//  BudgetwiseChallenge
//
//  Created by Angel Rincon on 10/23/23.
//

import SwiftUI

struct HomeBackgroundView: View {
    var body: some View {
        VStack {
            ZStack {
                UnevenRoundedRectangle(bottomLeadingRadius: 20, bottomTrailingRadius: 20)
                    .frame(height: 150)
                    .foregroundStyle(Color("lightPurple"))
                
                HStack {
                    Text("Monthly Budget")
                        .font(.title3)
                    
                    Image(systemName: "chevron.down")
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                        .padding(.horizontal, 5)
                    
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 5)
                        .rotationEffect(.degrees(-90))
                }
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .padding(.top, 10)
                .padding(.horizontal, 25)
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    HomeBackgroundView()
}
