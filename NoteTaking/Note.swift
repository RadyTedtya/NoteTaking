//
//  Note.swift
//  NoteTaking
//
//  Created by Tedtya rady on 9/2/2023.
//

import Foundation

struct Note: Identifiable {
    var id: Int
    var title: String!
    var type: NoteType
    var description: String?
    var date: String
    var time: String
    var image: String
    var video: String?
        
    
    
}

func getTime() -> String {
    let formatter = DateFormatter()
    formatter.timeStyle = .short
    let dateString = formatter.string(from: Date())
    return dateString
}

    var dummyNote: Note = .init(id: 1, title: "Tedtya's Note", type: .imageNote, description: "test test", date: getTime(), time: getTime(), image: "test", video: "")


