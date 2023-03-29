//
//  ResultView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/24.
//

import SwiftUI

struct ResultView: View {
    @StateObject var viewModel: ResultViewModel
    @State private var showingImageOpacity = false
    
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    
    var body: some View {
        VStack(spacing: 0) {
            if viewModel.isShowingResultImage {
                Image(viewModel.getImageNameForScore())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: screenHeight * 0.45)
                    .opacity(showingImageOpacity ? 1 : 0)
                    .padding()
                    .onAppear {
                        withAnimation {
                            showingImageOpacity = true
                        } // withAnimation
                    } // onAppear
            } else {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(height: screenHeight * 0.45)
                    .padding()
            }
            
            RubyLabelRepresentable(
                attributedText: "｜君《きみ》の｜得点《とくてん》".createRuby(color: UIColor(.offWhite)),
                font: UIFont(name: "Tanuki-Permanent-Marker", size: 27)!,
                textColor: UIColor(.offWhite),
                textAlignment: .center
            )
            .opacity(0.8)
            .padding()
            
            Text("\(viewModel.displayedUserScore)点")
                .foregroundColor(.offWhite)
                .font(.custom("Tanuki-Permanent-Marker", size: 30))
                .opacity(0.8)
                .onAppear {
                    withAnimation {
                        viewModel.presentScoreWithAnimation()
                    } // withAnimation
                } // onAppear
        } // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
    } // body
}
