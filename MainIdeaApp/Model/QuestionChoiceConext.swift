//
//  QuestionChoiceConext.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/12/16.
//

import Foundation

struct QuestionChoiceContext {
    // コウモリには羽根がある
    static let batHasWings = QuestionChoice(
        answer: "コウモリには羽根がある",
        choices: ["コウモリには足が3本ある", "コウモリには羽根がある", "コウモリには目がない"]
    )
    
    // コウモリが逆さまにぶら下がっている
    static let batIsHangingUpsideDown = QuestionChoice(
        answer: "コウモリが逆さまにぶら下がっている",
        choices: ["コウモリが逆さまにぶら下がっている", "コウモリが空を飛んでいる", "コウモリが歌っている"])
    
    // 土の中はくらい
    static let underTheGroundIsDark = QuestionChoice(
        answer: "土の中はくらい",
        choices: ["土の中はくらい", "土の中はあお色", "土の中は広い"]
    )
    
    // 草はみどり色
    static let grassIsGreen = QuestionChoice(
        answer: "草はみどり色",
        choices: ["草はオレンジ色", "草が燃えている", "草はみどり色"]
    )
    
    // セミの幼虫は土の中
    static let cicadaLarvaeUnderTheGround = QuestionChoice(
        answer: "セミの幼虫は土の中",
        choices: ["セミが空を飛んでいる", "セミの幼虫は海の中", "セミの幼虫は土の中"]
    )
    
    // おもちゃ箱からクマのぬいぐるみをとりだした
    static let tookTheTeddyBearOutOfTheToyChest = QuestionChoice(
        answer: "おもちゃ箱からクマのぬいぐるみをとりだした",
        choices: ["おもちゃ箱からうさぎのぬいぐるみをとりだした", "おもちゃ箱からクマのぬいぐるみをとりだした", "タンスからクマのぬいぐるみをとりだした"]
    )
}
