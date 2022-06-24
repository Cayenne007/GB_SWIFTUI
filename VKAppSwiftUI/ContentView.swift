//
//  ContentView.swift
//  VKAppSwiftUI
//
//  Created by Cayenne on 24.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var login = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            
            VStack {
                LinearGradient(
                    colors: [.red, .blue, .green, .yellow],
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .mask  {
                    Text("VK APP")
                        .font(Font.system(size: 46, weight: .bold))
                                .multilineTextAlignment(.center)
                }
                .frame(height: 100)
                TextField("Логин", text: $login)
                TextField("Пароль", text: $password)
                Button("Войти") {
                    logIn()
                }
                .frame(maxWidth: 200)
                .buttonStyle(.borderedProminent)
                
            }
            .padding()
            .textFieldStyle(.roundedBorder)
        }
    }
    
}

extension ContentView {
    func logIn() {
        print("login")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
