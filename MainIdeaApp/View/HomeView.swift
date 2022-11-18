//
//  HomeView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/11/10.
//

import SwiftUI

struct HomeView: View {
    @State private var isActiveDescriptionView = false
    @State private var path: [NavigationDestination] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 0) {
                Image(systemName: "questionmark.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80)
                    .padding(.bottom)
            } // VStack
        } // NavigationStack
    } // body
}
