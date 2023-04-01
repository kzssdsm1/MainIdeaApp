//
//  NavigationManager.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/04/01.
//

import SwiftUI

final class NavigationManager: ObservableObject {
    @Published var navigationPath = NavigationPath()
}
