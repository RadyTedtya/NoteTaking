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
    
    init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.primaryColor)
        UISegmentedControl.appearance().backgroundColor = UIColor(Color.white)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    
    var body: some View {
        
        ZStack {
            VStack {
                Picker("select note", selection: $viewModel.selectedNoteType) {
                    ForEach(NoteType.allCases) {
                        Text($0.rawValue.capitalized)
                    }
                    .foregroundColor(Color.secondaryTextColor)
                }
                .frame(alignment: .top)
                .pickerStyle(.segmented)
                
                ScrollView {
                    VStack {
                        ForEach(0..<4) {_ in
                            NoteView()
                        }
                    }
                    .padding()
                }
            }
            
            
            VStack(alignment:.trailing) {
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink {
                        CreateNoteView(viewModel: viewModel)
                    } label: {
                        HStack{
                            Text("+")
                                .font(.system(size: 22))
                            Text("Create")
                                .font(.system(size: 18))
                        }
                        .padding()
                        .padding(.horizontal)
                        .foregroundColor(Color.white)
                        .background(Color.primaryColor)
                        .clipShape(RoundedRectangle(cornerRadius: 28))
                        .shadow(radius: 15)
                    }
                    
                }
            }
            .padding(.trailing, 15)
        }
        .searchable(text: $viewModel.searchText, prompt: "Search Anything")
        .navigationBarItems(leading: Text("My Note")
            .font(.system(size: 20))
            .padding(), trailing: Image(systemName: "person.circle.fill")
            .frame(width: 30, height: 30)
            .padding()
        )
        
    }
    
    
    
    
    
    
    
    
}






