//
//  MyPage.swift
//  VkAppSwiftUI
//
//  Created by Павел Шатунов on 06.12.2021.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 20) {
            ImageBuilder {
                Image("sunlight")
            }
            TextBuilder {
                Text("Павел Шатунов")
            }
        }
    }
    
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
