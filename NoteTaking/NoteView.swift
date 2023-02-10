//
//  NoteView.swift
//  NoteTaking
//
//  Created by Tedtya rady on 9/2/2023.
//

import Foundation
import SwiftUI

struct NoteView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "bell.circle.fill")
                    .font(.system(size: 50))
                    .foregroundColor(Color.primaryColor)

                VStack(alignment: .leading) {
                    Text("Title")
                        .font(.system(size: 15))
                        .padding(.bottom, 5)
                    Text("6 Aug 2020, 07:49 PM")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .padding(.bottom, 10)
            
            .overlay(   Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.gray.opacity(0.2)),
                        alignment: .bottom
            )
            
            Image("test")
                .resizable()
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.bottom)
            
            Text(dummyDescription_Half)
                .multilineTextAlignment(.leading)
                .font(.system(size: 12, design: .rounded))
                .lineSpacing(8)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.bottom, 10)

    }
}

struct NoteView_Preview: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
