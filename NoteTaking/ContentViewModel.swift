//
//  ContentViewModel.swift
//  NoteTaking
//
//  Created by Tedtya rady on 4/2/2023.
//

import Foundation


class ContentViewModel: ObservableObject{
    
    @Published var searchText: String = ""
    @Published var selectedNoteType: AllNoteType = .allNotes
    
}



enum AllNoteType: String, CaseIterable, Identifiable {
    case allNotes = "All Notes", reminder, audio, images
    var id: Self {
        return self
    }
}

