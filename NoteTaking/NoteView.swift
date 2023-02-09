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
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 50))

                VStack(alignment: .leading) {
                    Text("Title")
                    Text("6 Aug 2020, 07:49 PM")
                }
            }
            
            Image("test")
                .resizable()
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(dummyDescription_Half)
                .multilineTextAlignment(.leading)
            
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding()
    }
}

struct NoteView_Preview: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
