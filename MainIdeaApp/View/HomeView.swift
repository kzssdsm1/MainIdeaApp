//
//  HomeView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/11/10.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var navManager: NavigationManager
    
    @State private var isPresentedDescriptionView = false
    @State private var isPresentedQuestionsView = false
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        NavigationStack(path: $navManager.navigationPath) {
            VStack(spacing: 0) {
                Spacer(minLength: 0)
                
                Image(systemName: "questionmark.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: screenWidth * 0.4, height: screenWidth * 0.4)
                    .foregroundColor(.lightGray)
                
                Spacer(minLength: 0)
                
                Button(action: {
                    navManager.navigationPath.append(NavigationIdentifier.questions)
                }, label: {
                    Text("もんだいをとく")
                        .font(.custom("Tanuki-Permanent-Marker", size: screenWidth * 0.1))
                        .foregroundColor(.lightGray)
                        .opacity(0.8)
                })
                .navigationDestination(for: NavigationIdentifier.self) { _ in
                    QuestionListView()
                }
                .padding(.bottom, screenHeight * 0.05)
                
                Button(action: {
                    navManager.navigationPath.append(1)
                }, label: {
                    Text("アプリのつかいかた")
                        .font(.custom("Tanuki-Permanent-Marker", size: screenWidth * 0.1))
                        .foregroundColor(.lightGray)
                        .opacity(0.8)
                })
                .navigationDestination(for: Int.self) { _ in
                    DescriptionView()
                }
                
                Spacer(minLength: 0)
                
                Spacer(minLength: 0)
                
                Spacer(minLength: 0)
            } // VStack
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
        } // NavigationStack
    } // body
}
