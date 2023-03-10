//
//  TestView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/10.
//

import SwiftUI

struct TestView: View {
    @EnvironmentObject private var navManager: NavigationManager
    
    let viewId: Int
    
    var body: some View {
        VStack(spacing: 0) {
            
            HStack {
                Button(action: {
                    navManager.returnToPreviousView()
                }, label: {
                    Text("前の問題へ")
                })
                .opacity(navManager.path.count < 2 ? 0 : 1)
                
                Spacer()
                
                Button(action: {
                    navManager.goToNextView(currentId: viewId)
                }, label: {
                    Text("次の問題へ")
                })
            } // HStack
            
        } // VStack
    } // body
}
