//
//  RoutingView.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/04/05.
//

import SwiftUI

struct RoutingView<Content>: View where Content: View {
    @EnvironmentObject private var router: Router
    
    private let content: Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationStack(path: $router.navigationPath) {
            content
                .navigationDestination(for: ViewRoute.self) { route in
                    router.buildView(route: route)
                }
        }
    }
}
