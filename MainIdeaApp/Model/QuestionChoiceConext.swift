//
//  QuestionChoiceConext.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2022/12/16.
//

import Foundation

struct QuestionChoiceContext {
    // コウモリが逆さまにぶら下がっている
    static let batsHangingUpsideDown = QuestionChoice(
        answer: "コウモリが｜逆《さか》さまにぶら｜下《さ》がっている",
        answerWithRuby: "コウモリが｜逆《さか》さまにぶら｜下《さ》がっている",
        choices: ["コウモリには｜羽《はね》がある", "コウモリが｜逆《さか》さまにぶら｜下《さ》がっている"]
    )
    
    // セミの幼虫は土の中
    static let cicadaLarvaeAreInTheGround = QuestionChoice(
        answer: "セミの｜幼虫《ようちゅう》は土の中",
        answerWithRuby: "セミの｜幼虫《ようちゅう》は｜土《つち》の｜中《なか》",
        choices: ["｜土《つち》の｜中《なか》は｜暗《くら》い", "｜草《くさ》は｜緑色《みどりいろ》", "セミの｜幼虫《ようちゅう》は土の中"]
    )
    
    // おもちゃ箱からクマのぬいぐるみを取り出した
    static let aBoyTookATeddyBearOutOfHisToyBox = QuestionChoice(
        answer: "おもちゃ｜箱《ばこ》からクマのぬいぐるみを｜取《と》り｜出《だ》した",
        answerWithRuby: "おもちゃ｜箱《ばこ》からクマのぬいぐるみを｜取《と》り｜出《だ》した",
        choices: ["おもちゃ｜箱《ばこ》からクマのぬいぐるみを｜取《と》り｜出《だ》した", "おもちゃが｜沢山《たくさん》", "｜緑色《みどりいろ》の｜服《ふく》を｜着《き》た｜男《おとこ》の｜子《こ》"]
    )
    
    // おばあちゃんは白いネコをひざに乗せて微笑んでいる
    static let grandmaIsSmilingWithAWhiteCatOnHerLap = QuestionChoice(
        answer: "おばあちゃんは白いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる",
        answerWithRuby: "おばあちゃんは｜白《しろ》いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる",
        choices: ["｜白《しろ》いネコのしっぽは｜長《なが》い", "おばあちゃんの｜髪《かみ》の｜毛《け》は白い", "おばあちゃんは白いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる"]
    )
    
    // 男の子がおいしそうにおにぎりを食べている
    static let aBoyIsEatingARiceBallDeliciously = QuestionChoice(
        answer: "｜男《おとこ》の｜子《こ》がおいしそうにおにぎりを｜食《た》べている",
        answerWithRuby: "｜男《おとこ》の｜子《こ》がおいしそうにおにぎりを｜食《た》べている",
        choices: ["｜男《おとこ》の｜子《こ》がおいしそうにおにぎりを｜食《た》べている", "食べかけのおにぎりがある", "男の子の｜口《くち》にご｜飯《はん》つぶが｜付《つ》いている"]
    )
    
    // 馬に乗った男の子
    static let aBoyIsRidingAHorse = QuestionChoice(
        answer: "馬に｜乗《の》った｜男《おとこ》の｜子《こ》",
        answerWithRuby: "｜馬《うま》に｜乗《の》った｜男《おとこ》の｜子《こ》",
        choices: ["｜馬《うま》が｜歩《ある》いている", "馬に｜乗《の》った｜男《おとこ》の｜子《こ》", "｜緑《みどり》の｜帽子《ぼうし》の男の子"]
    )
}
