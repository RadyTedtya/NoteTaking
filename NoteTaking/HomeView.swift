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
    //    @State var searchText: String
    
    
    init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
        
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.primary)
        UISegmentedControl.appearance().backgroundColor = UIColor(Color.white)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    
    var body: some View {
        ZStack(alignment: .top) {
            Picker("select note", selection: $viewModel.selectedNoteType) {
                ForEach(AllNoteType.allCases) {
                    Text($0.rawValue.capitalized)
                    
                }
            }
            .frame(alignment: .top)
            .pickerStyle(.segmented)
            
            ScrollView {
                VStack {
                    
                }
                .frame(maxWidth: .infinity)
                .padding()
            }
            
            Button {
                print("test")
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 45))
                    .foregroundColor(Color.primaryColor)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(.bottom, 30)
            
            .searchable(text: $viewModel.searchText)
            .navigationBarItems(leading: Text("My Note")
                .font(.system(size: 20))
                .padding(), trailing: Image(systemName: "person.circle.fill")
                .frame(width: 30, height: 30)
                .padding()
            )
            
        }
    }
    
}




