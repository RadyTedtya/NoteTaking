//
//  ContentViewModel.swift
//  NoteTaking
//
//  Created by Tedtya rady on 4/2/2023.
//

import Foundation
import UIKit
import SwiftUI


class ContentViewModel: ObservableObject{
    
    @Published var searchText: String = ""
    @Published var selectedNoteType: NoteType = .allNotes
    @Published var notes: [Note] = [dummyNote, dummyNote]
    
}

enum NoteType: String, CaseIterable, Identifiable {
    
    case allNotes = "All Notes"
    case reminderNote = "reminder"
    case audioNote = "audio"
    case imageNote = "image"
    case videoNote = "video"
    
    var id: Self {
        return self
    }
    
    var image: UIImage {
        switch self {
        case .allNotes:
//            return Image(systemName: "photo").foregroundColor(Color.primaryColor) as! UIImage
            return UIImage(systemName: "photo")!
        case .reminderNote:
//            return Image(systemName: "bell.circle.fill").foregroundColor(Color.primaryColor) as! UIImage
            return UIImage(systemName: "bell.circle.fill")!
        case .audioNote:
            return UIImage(systemName: "music.mic.circle.fill")!
        case .imageNote:
            return UIImage(systemName: "photo.circle.fill")!
        case .videoNote:
            return UIImage(systemName: "video.circle.fill")!
        }
    }
}

