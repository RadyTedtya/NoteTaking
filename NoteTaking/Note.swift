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
    let timeFormatter = DateFormatter()
    timeFormatter.timeStyle = .short
    let timeString = timeFormatter.string(from: Date())
    return timeString
}

func getDate() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    let dateString = dateFormatter.string(from: Date())
    return dateString
    
}

    var dummyNote: Note = .init(id: 1, title: "Tedtya's Note", type: .imageNote, description: "test test", date: getDate(), time: getTime(), image: "test", video: "")


