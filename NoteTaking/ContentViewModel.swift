//
//  ContentViewModel.swift
//  NoteTaking
//
//  Created by Tedtya rady on 4/2/2023.
//

import Foundation
import UIKit


class ContentViewModel: ObservableObject{
    
    @Published var searchText: String = ""
    @Published var selectedNoteType: NoteType = .allNotes
    @Published var notes: [Note] = [dummyNote, dummyNote]
    
}

enum NoteType: String, CaseIterable, Identifiable {
    case allNotes = "All Notes", reminderNote, audioNote, imageNote
    var id: Self {
        return self
    }
    var image: UIImage {
        switch self {
        case .reminderNote:
            return UIImage(systemName: "bell.circle.fill")!
        case .audioNote:
            return UIImage(systemName: "music.mic.circle.fill")!
        case .imageNote:
            return UIImage(systemName: "photo.circle.fill")!
        case .allNotes:
            return UIImage(systemName: "photo")!
        }
    }
}

