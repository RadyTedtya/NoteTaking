//
//  CreateNoteView.swift
//  NoteTaking
//
//  Created by Tedtya rady on 9/2/2023.
//

import Foundation
import SwiftUI

struct CreateNoteView: View {
    
    @ObservedObject var viewModel: ContentViewModel
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField(dummyNote.title, text: $viewModel.notes[0].title)
            .font(.system(size: 25))
            
            
            HStack {
                TextField(dummyNote.date, text: $viewModel.notes[0].date)
                    .foregroundColor(Color.gray)
                TextField(dummyNote.time, text: $viewModel.notes[0].time)
                    .foregroundColor(Color.gray)
            }
        }
        .padding()
        .frame(height: 100)
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Spacer()
        VStack {
            Text("Descriptionf")
        }
        
        .navigationBarItems(trailing: Button {
            
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "checkmark")
                .font(.system(size: 20))
                .foregroundColor(Color.primaryColor)
        }
        )
    }
}
