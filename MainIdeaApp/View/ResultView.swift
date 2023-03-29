//
//  ResultView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/24.
//

import SwiftUI

struct ResultView: View {
    @StateObject var viewModel: ResultViewModel
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        VStack(spacing: 0) {
            if viewModel.isShowingResultImage {
                Image(viewModel.getImageNameForScore())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: screenHeight * 0.45)
                    .transition(.opacity)
                    .animation(.easeIn)
                    .padding()
            }
            
            Text(String(viewModel.displayedUserScore))
                .onAppear {
                    withAnimation {
                        viewModel.presentScoreWithAnimation()
                    } // withAnimation
                } // onAppear
        } // VStack
    } // body
}
