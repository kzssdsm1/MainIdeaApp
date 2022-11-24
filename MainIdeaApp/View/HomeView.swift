//
//  HomeView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/11/10.
//

import SwiftUI

struct HomeView: View {
    @State private var isPresentedDescriptionView = false
    @State private var isPresentedQuestionsView = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Button("もんだいへ") {
                    isPresentedQuestionsView = true
                }
                .navigationDestination(isPresented: $isPresentedQuestionsView) {
                    QuestionsView()
                }
                
                Button("アプリのつかいかた") {
                    isPresentedDescriptionView = true
                }
                .navigationDestination(isPresented: $isPresentedDescriptionView) {
                    DescriptionView()
                }
            } // VStack
        } // NavigationStack
    } // body
}
//KodomoRounded-Light
