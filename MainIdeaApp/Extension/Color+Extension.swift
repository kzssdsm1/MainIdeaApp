//
//  Color+Extension.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/11/25.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
    
    // 暗めの灰色
    static let darkGray = Color(hex: "5c5c5c")
    
    // 明るめの灰色
    static let lightGray = Color(hex: "d1d1d1")
    
    // 黒板の色
    static let kokubanColor = Color(hex: "00552e")
    
    // 淡い緑色
    static let paleGreen = Color(hex: "c0d985")
    
    // 淡いピンク色
    static let palePink = Color(hex: "FFC1C1")
    
    // 円熟した橙色
    static let matureOrange = Color(hex: "542d00")
    
    static let offWhite = Color(hex: "f8f8f8")
    
    // チョークブルー
    static let chalkBlue = Color(hex: "68A9CF")
    
    // チョークピンク
    static let chalkPink = Color(hex: "f7abad")
}
