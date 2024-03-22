//
//  OnboardingView.swift
//  EMTestTaskApp
//
//  Created by admin on 21.03.2024.
//

import SwiftUI

struct OnboardingView: View {
    var doneRequested: () -> ()
    
    var body: some View {
        TabView {
            ScaledIcon(name: "paperplane.circle.fill")
                .tag(0)
            ScaledIcon(name: "arrowshape.turn.up.forward.fill")
                .tag(1)
            ScaledIcon(name: "paperclip.circle")
                .tag(2)
            Button("Закончили онбоардинг") {
                doneRequested()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.gray.ignoresSafeArea(.all))
    }
}

#Preview {
    OnboardingView(doneRequested: {})
}
