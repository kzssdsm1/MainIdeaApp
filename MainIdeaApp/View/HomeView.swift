//
//  HomeView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/11/10.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var navManager: NavigationManager
    
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
                    navManager.setNavigationPath(.questions)
                }, label: {
                    Text("もんだいをとく")
                        .font(.custom("Tanuki-Permanent-Marker", size: screenWidth * 0.1))
                        .foregroundColor(.lightGray)
                        .opacity(0.8)
                })
                .padding(.bottom, screenHeight * 0.05)
                
                Button(action: {
                    navManager.setNavigationPath(.description)
                }, label: {
                    Text("アプリのつかいかた")
                        .font(.custom("Tanuki-Permanent-Marker", size: screenWidth * 0.1))
                        .foregroundColor(.lightGray)
                        .opacity(0.8)
                })
                
                Spacer(minLength: 0)
                
                Spacer(minLength: 0)
                
                Spacer(minLength: 0)
            } // VStack
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .questions: QuestionListView()
                case .description: DescriptionView()
                case .result: ResultView()
                }
            }
        } // NavigationStack
    } // body
}
