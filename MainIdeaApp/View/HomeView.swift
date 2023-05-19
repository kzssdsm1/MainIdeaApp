//
//  HomeView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/11/10.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var router: Router
    
    private let screenWidth = CGFloat(UIScreen.main.bounds.width)
    private let screenHeight = CGFloat(UIScreen.main.bounds.height)
    private let homeImageName = QuestionContext.questions.randomElement()!.imageName
    
    private var textFontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return 50
        } else {
            return 30
        }
    }
    private var titleFontSize: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return 60
        } else {
            return 30
        }
    }
    
    var body: some View {
        RoutingView {
            VStack(spacing: 0) {
                Spacer(minLength: 100)
                
                Text("メインアイデアアプリ")
                    .font(.custom("Tanuki-Permanent-Marker", size: titleFontSize))
                    .foregroundColor(.lightGray)
                    .opacity(0.8)
                
                Image(homeImageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: screenWidth * 0.5, height: screenHeight * 0.5)
                    .foregroundColor(.lightGray)
                
                Spacer(minLength: 20)
                
                Button(action: {
                    router.navigationTo(.questions)
                }, label: {
                    Text("もんだいをとく")
                        .font(.custom("Tanuki-Permanent-Marker", size: textFontSize))
                        .foregroundColor(.lightGray)
                        .opacity(0.8)
                })
                .padding(.bottom, screenHeight * 0.05)
                
                Button(action: {
                    router.navigationTo(.description)
                }, label: {
                    Text("アプリのつかいかた")
                        .font(.custom("Tanuki-Permanent-Marker", size: textFontSize))
                        .foregroundColor(.lightGray)
                        .opacity(0.8)
                })
                
                Spacer(minLength: 0)
                
                Spacer(minLength: 0)
                
                Spacer(minLength: 120)
            } // VStack
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.kokubanColor.edgesIgnoringSafeArea(.all))
        } // RoutingView
    } // body
}
