//
//  ContentView.swift
//  VkAppSwiftUI
//
//  Created by Павел Шатунов on 29.11.2021.
//

import SwiftUI

struct LogInView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var showIncorrectWarning = false
    @Binding var isLoggedIn: Bool 
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
                            TextField("Почта или телефон", text: $login)
                                
                            SecureField("Пароль", text: $password)
                                
                    }.padding(25).textFieldStyle(RoundedBorderTextFieldStyle()).autocapitalization(.none)
                    Button(action: self.verifyLogin) {
                            HStack {
                                Text("Log in")
                                Image(systemName: "checkmark.circle.fill")
                            }
                        }.padding(.top, 5)
                        .disabled(password.isEmpty || login.isEmpty)
                }
            }.onTapGesture {
                UIApplication.shared.endEditing()
            }.alert(isPresented: $showIncorrectWarning, content: {Alert(title: Text("Error"), message: Text("Incorrect Login or Password"))})
        }
    private func verifyLogin() {
        if login == "k" && password == "k" {
            isLoggedIn = true
            
        } else {
            showIncorrectWarning = true
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView(isLoggedIn: .constant(false))
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
