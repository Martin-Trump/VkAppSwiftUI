//
//  GroupCell.swift
//  VkAppSwiftUI
//
//  Created by Павел Шатунов on 06.12.2021.
//

import SwiftUI


struct GroupCell: View {
    var body: some View {
        HStack(spacing: 20) {
            ImageBuilder {
                Image("sunlight")
            }
            TextBuilder{
                Text("Моя группа")
            }
        }
    }
    
}

struct GroupCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupCell()
    }
}
