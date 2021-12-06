//
//  ViewModifiers.swift
//  VkAppSwiftUI
//
//  Created by Павел Шатунов on 06.12.2021.
//

import SwiftUI

struct ImageView: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .cornerRadius(40)
            .background(Circle()
                            .fill(Color.white)
                            .shadow(color: Color.blue, radius: 40))
            
    }
}

struct NameField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
    }
}
