//
//  LoginView.swift
//  NoteTaking
//
//  Created by Tedtya rady on 8/2/2023.
//

import Foundation
import SwiftUI


struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading , spacing: 25) {
            
            Text("Welcome to Note App")
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 70)
            
            TextField("Username", text: $username)
            TextField("password", text: $password)
            
            Button {
                print("Login")
            } label: {
                Text("Login")
                    .frame(width: 100)
                    .padding()
                    .background(Color.primaryColor)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            
            HStack {
                NavigationLink {
                    
                } label: {
                    Text("Sign Up")
                        .foregroundColor(Color.blue)
                }
                Spacer()
                NavigationLink {
                    
                } label: {
                    Text("Forgot Password")
                        .foregroundColor(Color.blue)
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
        .padding()
        
        
    }
    
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
