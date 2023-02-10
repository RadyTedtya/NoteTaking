//
//  CreateNoteView.swift
//  NoteTaking
//
//  Created by Tedtya rady on 9/2/2023.
//

import Foundation
import SwiftUI

enum TabItems: String, CaseIterable, Identifiable {
    
    var id: Self {
        return self
    }
    
    case audio = "music.note"
    case photo = "photo"
    case reminder = "bell"
    case video = "video"
    
    var image: Image {
        switch self {
        case .audio:
            return Image(systemName: "music.note")
        case .photo:
            return Image(systemName: "photo")
        case .reminder:
            return Image(systemName: "bell")
        case .video:
            return Image(systemName: "video")
        }
    }
    
    
}

struct CreateNoteView: View {
    
    @ObservedObject var viewModel: ContentViewModel
    @Environment (\.presentationMode) var presentationMode
    public var test:String = dummyDescription_Half
    
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
        .padding(.horizontal)
        .padding(.bottom, 10)
        .frame(height: 100)
        .frame(maxWidth: .infinity, alignment: .leading)
        
        ZStack(alignment: .bottom) {
            ScrollView{
                VStack {
                    TextField(dummyDescription_Half, text: $viewModel.notes[0].description, axis: .vertical)
                        
                    Spacer()
                    Image("test")
                        .resizable()
                }
                .padding()
                
            }
            
            Spacer()
            HStack(alignment: .bottom) {
                Spacer()
                ForEach(TabItems.allCases) { item in
                    Button {
                        
                    } label: {
                        item.image
                    }
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60, alignment: .center)
            .background(Color.white)
            
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
