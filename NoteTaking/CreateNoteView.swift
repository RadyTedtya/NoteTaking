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
        
        ScrollView{
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
            .padding(.horizontal)
            .padding(.bottom, 10)
            .frame(height: 100)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView {
                VStack {
                    TextField(dummyDescription_Half, text: $viewModel.notes[0].description, axis: .vertical)

                    Spacer()
//                    Image("test")
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 50)
                }
                .frame(maxHeight: .infinity)
                .padding()
            }
            
//            HStack(alignment: .bottom) {
//                Spacer()
//                ForEach(0..<4) { index in
//                    Button {
//
//                    } label: {
//                        Image(systemName: "music.note")
//                    }
//                    Spacer()
//
//                }
//            }
//            .frame(maxWidth: .infinity)
//            .frame(height: 100, alignment: .center)
//            .background(Color.gray.opacity(0.1))
            
            
            
            
            .navigationBarItems(trailing: Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "checkmark")
                    .font(.system(size: 20))
                    .foregroundColor(Color.primaryColor)
            }
            )
        }}
}
