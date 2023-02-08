//
//  ContentView.swift
//  NoteTaking
//
//  Created by Tedtya rady on 3/2/2023.

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
                
            Text("Hello, world!")
                .font(.system(size: 35))
                .padding(.top, 100)
                .padding()
            
            Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.")
                .multilineTextAlignment(TextAlignment.leading)
                .padding()
            
            ZStack(alignment: .trailing) {
                Image("test.png")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 400)
//                    .foregroundColor(Color.blue)
//                    .background(Color.red)
//
                
                NavigationLink {
                    HomeView()
                } label: {
                    HStack {
                        Text("Lets Start ")
                        Image(systemName: "arrow.right")
                    }
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 28))
                }
                .padding(.trailing, 20)
                
            }
            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
