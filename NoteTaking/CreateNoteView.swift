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
    
    var body: some View {
        VStack {
            //        TextField("My Note", text: )
            Text("My Notes")
                .font(.system(size: 25))
            
            HStack {
//                TextField("24 Nov 2020, ", text: )
//                TextField("02:38 PM", text: )
                Text("24 Nov 2020, ")
                Text("02:38 PM")
            }
        }
        
        VStack {
            Text("")
        }
        
        
            
    }
}
