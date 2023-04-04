//
//  Router.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/04/05.
//

import SwiftUI

final class Router: ObservableObject {
    @Published var navigationPath = [ViewRoute]()
    
    func setNavigationPath(_ route: ViewRoute) {
        guard !navigationPath.contains(route) else { return }
        
        navigationPath.append(route)
    }
    
    func view(route: ViewRoute) -> AnyView {
        AnyView(buildView(route: route))
    }
    
    @ViewBuilder
    private func buildView(route: ViewRoute) -> some View {
        switch route {
        case .questions:
            QuestionListView()
        case .result(let userAnswers, let questions):
            ResultView(viewModel: ResultViewModel(userAnswers: userAnswers, questions: questions))
        case .description:
            DescriptionView()
        }
    }
}
