//
//  FriendsView.swift
//  VkAppSwiftUI
//
//  Created by Павел Шатунов on 20.12.2021.
//

import SwiftUI

struct FriendsView: View {
    @State private var friends: [Friend] = []
    var body: some View {
        List(friends) { item in
            FriendCell(friend: item)
        }
        .navigationBarHidden(false)
        .navigationTitle("Friends")
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button(action: add, label: {
                    Image(systemName: "plus")
                })
            }
        }
    }
    
    private func add() {
        let friend = Friend(name: "Zhora", image: "sunlight")
    
    self.friends.append(friend)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FriendsView()
        }
    }
}
