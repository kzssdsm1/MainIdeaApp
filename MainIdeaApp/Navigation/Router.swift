//
//  Router.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/04/05.
//

import SwiftUI

final class Router: ObservableObject {
    @Published var navigationPath = [ViewRoute]()
    
    func navigationTo(_ route: ViewRoute) {
        guard !navigationPath.contains(route) else { return }
        
        navigationPath.append(route)
    }
    
    func backToHome() {
        navigationPath = []
    }
    
    func backToPrevious() {
        navigationPath.removeLast()
    }
    
    @ViewBuilder
    func buildView(route: ViewRoute) -> some View {
        switch route {
        case .questions:
            QuestionListView()
        case .result(let userAnswers, let questions):
            ResultView(viewModel: ResultViewModel(userAnswers: userAnswers, questions: questions))
        case .description:
            DescriptionView()
        case .exampleResult(let userAnswer, let question):
            ExampleResultView(viewModel: ExampleResultViewModel(userAnswer: userAnswer, question: question))
        }
    }
}
