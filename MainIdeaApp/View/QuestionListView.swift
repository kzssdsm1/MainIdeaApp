//
//  QuestionListView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/15.
//

import SwiftUI

struct QuestionListView: View {
    @StateObject private var viewModel = QuestionListViewModel()
    
    var body: some View {
        ScrollViewReader { proxy in
            VStack(spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<5) { index in
                        VStack {
                            QuestionView(viewModel: viewModel, viewId: index)
                            
                            HStack {
                                if index != 0 {
                                    Button(action: {
                                        proxy.scrollTo(index - 1)
                                    }, label: {
                                        RubyLabelRepresentable(
                                          attributedText: "|一《ひと》つ|前《まえ》の|問題《もんだい》へ".createRuby(),
                                          font: .systemFont(ofSize: 24),
                                          textColor: .black,
                                          textAlignment: .center
                                        )
                                    })
                                    .padding()
                                }
                                
                                if index != 4 {
                                    
                                }
                            } // HStack
                            
                            Divider()
                        } // VStack
                        .id(index)
                    } //ForEach
                } // ScrollView
            } // VStack
        } // ScrolViewReader
    }
}
