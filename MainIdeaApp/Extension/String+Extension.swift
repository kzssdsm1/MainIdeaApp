//
//  String+Extension.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/01/06.
//

import UIKit

extension String {
    func createRuby(color: UIColor = .black) -> NSAttributedString {
        let textWithRuby = replacingOccurrences(of: "(｜.+?《.+?》)", with: ",$1,", options: .regularExpression)
            .components(separatedBy: ",")
            .map { component -> NSAttributedString in
                guard component.range(of: "｜(.+?)《(.+?)》", options: .regularExpression, range: nil, locale: nil) != nil else {
                    return NSAttributedString(string: component)
                }

                let baseText = component.replacingOccurrences(of: "｜(.+?)《.+?》", with: "$1", options: .regularExpression)
                let rubyText = component.replacingOccurrences(of: "｜.+?《(.+?)》", with: "$1", options: .regularExpression)

                let rubyAttribute: [CFString: Any] = [
                    kCTRubyAnnotationSizeFactorAttributeName: 0.5,
                    kCTForegroundColorAttributeName: color
                ]
                // 必要に応じて属性を設定する
                let rubyAnnotation = CTRubyAnnotationCreateWithAttributes(
                    .auto, .auto, .before, rubyText as CFString, rubyAttribute as CFDictionary
                )

                return NSAttributedString(string: baseText,
                                          attributes: [kCTRubyAnnotationAttributeName as NSAttributedString.Key: rubyAnnotation])
            }
            .reduce(NSMutableAttributedString()) {
                $0.append($1)
                return $0
            }

        return textWithRuby
    }
}
