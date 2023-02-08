//
//  SignUpView.swift
//  NoteTaking
//
//  Created by Tedtya rady on 8/2/2023.
//

import Foundation
import SwiftUI

struct SignUpView: View {
    
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        
        VStack(alignment: .leading , spacing: 25) {
            
            Text("Welcome to Note App")
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 70)
            
            
            TextField("Username", text: $username)
            TextField("Email", text: $email)
            TextField("password", text: $password)
            
            Button {
                print("Sign Up")
            } label: {
                Text("Sign Up")
                    .frame(width: 100)
                    .padding()
                    .background(Color.primaryColor)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            
            HStack {
                Text("Already had an account ? ")
                NavigationLink {
                    LoginView()
                } label: {
                    Text("Sign In")
                        .foregroundColor(Color.blue)
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
