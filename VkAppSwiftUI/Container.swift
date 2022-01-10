//
//  Container.swift
//  VkAppSwiftUI
//
//  Created by Павел Шатунов on 16.12.2021.
//

import Foundation
import SwiftUI

struct ContainerView: View {
    @State private var showMainMenu: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LogInView(isLoggedIn: $showMainMenu)
                
                NavigationLink(destination: FriendsView(), isActive: $showMainMenu)
                {
                    EmptyView()
                }
            }
        }
    }
}
