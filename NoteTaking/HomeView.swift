//
//  HomeView.swift
//  NoteTaking
//
//  Created by Tedtya rady on 3/2/2023.
//

import Foundation
import SwiftUI


struct HomeView: View {
    
    @ObservedObject var viewModel: ContentViewModel = .init()
    
    
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    
                }
                .padding()
                
                
                
                
                
            }
        }.navigationBarItems(leading:
                                Text("My Note")
            .font(.system(size: 20))
            .padding(),
                             trailing:
                                Image(systemName: "person.circle.fill")
                                    .frame(width: 30, height: 30)
                                    .padding()
        )
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
