//
//  NavigationManager.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/03/10.
//

import Foundation

final class NavigationManager: ObservableObject {
    @Published var path = [Int]()
    
    func goToNextView(currentId: Int) {
        let appendId = currentId + 1
        
        path.append(appendId)
        print(path)
    }
    
    func returnToPreviousView() {
        path.removeLast()
        print(path)
    }
}
