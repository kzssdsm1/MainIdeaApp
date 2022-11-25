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
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                
                Button(action: {
                    isPresentedQuestionsView = true
                }, label: {
                    Text("もんだいをとく")
                        .font(.custom("KodomoRounded-Light", size: screenWidth * 0.1))
                        .foregroundColor(.lightGray)
                })
                .navigationDestination(isPresented: $isPresentedQuestionsView) {
                    QuestionsView()
                }
                .padding(.bottom, screenHeight * 0.05)
                
                Button(action: {
                    isPresentedDescriptionView = true
                }, label: {
                    Text("アプリのつかいかた")
                        .font(.custom("KodomoRounded-Light", size: screenWidth * 0.1))
                        .foregroundColor(.lightGray)
                })
                .navigationDestination(isPresented: $isPresentedDescriptionView) {
                    DescriptionView()
                }
            } // VStack
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
        } // NavigationStack
    } // body
}
//KodomoRounded-Light
