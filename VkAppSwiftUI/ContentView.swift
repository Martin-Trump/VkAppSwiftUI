//
//  ContentView.swift
//  VkAppSwiftUI
//
//  Created by Павел Шатунов on 29.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image("vk")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: geometry.size.width, maxHeight: geometry.size.height)

            }
                VStack() {
                    VStack(alignment: .center) {
                            TextField("Почта или телефон", text: $login).textFieldStyle(RoundedBorderTextFieldStyle())
                                
                            SecureField("Пароль", text: $password).textFieldStyle(RoundedBorderTextFieldStyle())
                                
                    }.padding(25)
                    Button(action: self.onLoginPressed) {
                            HStack {
                                Text("Log in")
                                Image(systemName: "checkmark.circle.fill")
                            }
                        }.padding(.top, 5)
                        .disabled(password.isEmpty || login.isEmpty)
                }
            }.onTapGesture {
                UIApplication.shared.endEditing()
                    }
        }
    private func onLoginPressed() {
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
