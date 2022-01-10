//
//  MyPage.swift
//  VkAppSwiftUI
//
//  Created by Павел Шатунов on 06.12.2021.
//

import SwiftUI

struct Friend: Identifiable {
    var id: String {
        return name
    }
    
     let name: String
     let image: String
}

struct FriendCell: View {
     let friend: Friend
    
    var body: some View {
        HStack(spacing: 20) {
            ImageBuilder {
                Image(friend.image)
            }
            TextBuilder {
                Text(friend.name)
            }
        }
    }
    
}

//struct UserCell_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendCell()
//    }
//}
