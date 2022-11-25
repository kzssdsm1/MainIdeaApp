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
                
                Button(action: {
                    isPresentedQuestionsView = true
                }, label: {
                    Text("もんだいをとく")
                })
                .navigationDestination(isPresented: $isPresentedQuestionsView) {
                    QuestionsView()
                }
                
                Button(action: {
                    isPresentedDescriptionView = true
                }, label: {
                    Text("アプリのつかいかた")
                })
                .navigationDestination(isPresented: $isPresentedDescriptionView) {
                    DescriptionView()
                }
            } // VStack
        } // NavigationStack
    } // body
}
//KodomoRounded-Light
