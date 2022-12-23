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
    
    // おもちゃがたくさん
    static let lotsOfToys = QuestionChoice(
        answer: "おもちゃがたくさん",
        choices: ["おもちゃがたくさん", "おもちゃがすくない", "お菓子がたくさん"]
    )
    
    // みどり色の服を着た男の子
    static let boyDressedInGreen = QuestionChoice(
        answer: "みどり色の服を着た男の子",
        choices: ["みどり色の服を着た男の子", "あか色の服を着た男の子", "みどり色の服を着たおじいさん"]
    )
    
    // 白いネコのしっぽは長い
    static let whiteCatsHaveLongTails = QuestionChoice(
        answer: "白いネコのしっぽは長い",
        choices: ["黒いネコのしっぽは長い", "白いネコはしっぽがない", "白いネコのしっぽは長い"]
    )
    
    // おばあちゃんのかみの毛は白い
    static let onesGrandmothersHairIsWhite = QuestionChoice(
        answer: "おばあちゃんのかみの毛は白い",
        choices: ["おばあちゃんのかみの毛は白い", "おばあちゃんのかみの毛は茶色い", "おばあちゃんのかみの毛は赤い"]
    )
    
    // おばあちゃんは白いネコをひざに乗せて微笑んでいる
    static let grandmaIsSmilingWithCats = QuestionChoice(
        answer: "おばあちゃんは白いネコをひざに乗せて微笑んでいる",
        choices: ["おばあちゃんは白いネコを持ち上げている", "おばあちゃんは白いネコをひざに乗せて微笑んでいる", "おばあちゃんは黒いネコをひざに乗せて微笑んでいる"]
    )
    
    // 男の子がおいしそうにおにぎりを食べている
    static let aBoyIsEatingARiceBall = QuestionChoice(
        answer: "男の子がおいしそうにおにぎりを食べている",
        choices: ["男の子がおいしそうにパンを食べている", "男の子がおいしそうにおにぎりを食べている", "男の子が踊っている"]
    )
    
    // 男の子がよろこんでいる
    static let theBoyIsHappy = QuestionChoice(
        answer: "男の子がよろこんでいる",
        choices: ["男の子が悲しんでいる", "おばあさんがよろこんでいる", "男の子がよろこんでいる"]
    )
    
    // 男の子の口にご飯つぶがついている
    static let riceCrumbsOnABoysMouth = QuestionChoice(
        answer: "男の子の口にご飯つぶがついている",
        choices: ["男の子の口にご飯つぶがついている", "男の子の耳にご飯つぶがついている", "男の子の口にパンくずがついている"]
    )
    
    // 馬が歩いている
    static let horseIsWalking = QuestionChoice(
        answer: "馬が歩いている",
        choices: ["犬が歩いている", "馬が眠っている", "馬が歩いている"]
    )
    
    // 馬に乗った男の子
    static let aBoyOnAHorse = QuestionChoice(
        answer: "馬に乗った男の子",
        choices: ["自転車に乗った男の子", "馬に乗った男の子", "馬に乗ったおじいちゃん"]
    )
    
    // みどりのぼうしの男の子
    static let BoyInGreenHat = QuestionChoice(
        answer: "みどりのぼうしの男の子",
        choices: ["みどりのぼうしの男の子", "あかいろのぼうしの男の子", "みどりのズボンの男の子"]
    )
    
    // お医者さんにのどを診てもらっている男の子
    static let boyAndDoctor = QuestionChoice(
        answer: "お医者さんにのどを診てもらっている男の子",
        choices: ["お医者さんにうでを診てもらっている男の子", "お医者さんにのどを診てもらっている男の子", "お医者さんとじゃんけんをしている男の子"]
    )
}
