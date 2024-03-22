//
//  ScaledIconView.swift
//  EMTestTaskApp
//
//  Created by admin on 21.03.2024.
//

import SwiftUI

struct ScaledIcon: View {
    var name: String
    
    var body: some View {
        Image(systemName: name)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    ScaledIcon(name: "arrowshape.turn.up.forward")
}
