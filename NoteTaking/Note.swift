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
    var description: String
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

var dummyDescription = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"

var dummyDescription_Half = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo."

var dummyNote: Note = .init(id: 1, title: "Tedtya's Note", type: .imageNote, description: dummyDescription, date: getDate(), time: getTime(), image: "test.png", video: "")

