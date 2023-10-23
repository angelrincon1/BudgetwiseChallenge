//
//  FloatingButtonView.swift
//  BudgetwiseChallenge
//
//  Created by Angel Rincon on 10/23/23.
//

import SwiftUI

struct FloatingButtonView: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                ZStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundStyle(Color("lightPurple"))
                    
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                        .foregroundStyle(.white)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 5)
            }
        }
    }
}

#Preview {
    FloatingButtonView()
}
