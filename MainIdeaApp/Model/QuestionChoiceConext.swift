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
        answer: "コウモリには｜羽《はね》がある",
        choices: ["コウモリには｜足《あし》が3｜本《ぼん》ある", "コウモリには｜羽《はね》がある", "コウモリには｜目《め》がない"]
    )
    
    // コウモリが逆さまにぶら下がっている
    static let batIsHangingUpsideDown = QuestionChoice(
        answer: "コウモリが｜逆《さか》さまにぶら下《さ》がっている",
        choices: ["コウモリが｜逆《さか》さまにぶら下《さ》がっている", "コウモリが｜空《そら》を｜飛《と》んでいる", "コウモリが｜歌《うた》っている"])
    
    // 土の中はくらい
    static let underTheGroundIsDark = QuestionChoice(
        answer: "｜土《つち》の｜中《なか》は｜暗《くら》い",
        choices: ["｜土《つち》の｜中《なか》は｜暗《くら》い", "土の中は｜青《あお》い", "土の中は｜広《ひろ》い"]
    )
    
    // 草はみどり色
    static let grassIsGreen = QuestionChoice(
        answer: "草は｜緑《みどり》色",
        choices: ["｜草《くさ》はオレンジ｜色《いろ》", "草が｜燃《も》えている", "草は｜緑《みどり》色"]
    )
    
    // セミの幼虫は土の中
    static let cicadaLarvaeUnderTheGround = QuestionChoice(
        answer: "セミの幼虫は｜土《つち》の中",
        choices: ["セミが｜空《そら》を｜飛《と》んでいる", "セミの｜幼虫《ようちゅう》は｜海《うみ》の｜中《なか》", "セミの幼虫は｜土《つち》の中"]
    )
    
    // おもちゃ箱からクマのぬいぐるみをとりだした
    static let tookTheTeddyBearOutOfTheToyChest = QuestionChoice(
        answer: "おもちゃ箱からクマのぬいぐるみを取り出した",
        choices: ["おもちゃ｜箱《はこ》からうさぎのぬいぐるみを｜取《と》り｜出《だ》した", "おもちゃ箱からクマのぬいぐるみを取り出した", "タンスからクマのぬいぐるみを取り出した"]
    )
    
    // おもちゃがたくさん
    static let lotsOfToys = QuestionChoice(
        answer: "おもちゃがたくさん",
        choices: ["おもちゃがたくさん", "おもちゃが｜少《すく》ない", "お｜菓子《かし》がたくさん"]
    )
    
    // みどり色の服を着た男の子
    static let boyDressedInGreen = QuestionChoice(
        answer: "｜緑色《みどりいろ》の｜服《ふく》を｜着《き》た｜男《おとこ》の｜子《こ》",
        choices: ["｜緑色《みどりいろ》の｜服《ふく》を｜着《き》た｜男《おとこ》の｜子《こ》", "｜赤《あか》色の服を着た男の子", "緑色の服を着たおじいさん"]
    )
    
    // 白いネコのしっぽは長い
    static let whiteCatsHaveLongTails = QuestionChoice(
        answer: "白いネコのしっぽは長い",
        choices: ["｜黒《くろ》いネコのしっぽは｜長《なが》い", "｜白《しろ》いネコはしっぽがない", "白いネコのしっぽは長い"]
    )
    
    // おばあちゃんのかみの毛は白い
    static let onesGrandmothersHairIsWhite = QuestionChoice(
        answer: "おばあちゃんの｜髪《かみ》の｜毛《け》は｜白《しろ》い",
        choices: ["おばあちゃんの｜髪《かみ》の｜毛《け》は｜白《しろ》い", "おばあちゃんの髪の毛は｜茶色《ちゃいろ》い", "おばあちゃんの髪の毛は｜赤《あか》い"]
    )
    
    // おばあちゃんは白いネコをひざに乗せて微笑んでいる
    static let grandmaIsSmilingWithCats = QuestionChoice(
        answer: "おばあちゃんは白いネコをひざに乗せて微笑んでいる",
        choices: ["おばあちゃんは｜白《しろ》いネコを｜持《も》ち｜上《あ》げている", "おばあちゃんは白いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる", "おばあちゃんは｜黒《くろ》いネコをひざに乗せて微笑んでいる"]
    )
    
    // 男の子がおいしそうにおにぎりを食べている
    static let aBoyIsEatingARiceBall = QuestionChoice(
        answer: "男の子がおいしそうにおにぎりを食べている",
        choices: ["男の子がおいしそうにパンを食べている", "男の子がおいしそうにおにぎりを食べている", "男の子が踊っている"]
    )
    
    // 男の子がよろこんでいる
    static let theBoyIsHappy = QuestionChoice(
        answer: "男の子が喜んでいる",
        choices: ["男の子が悲しんでいる", "おばあさんが喜んでいる", "男の子が喜んでいる"]
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
        answer: "緑色のぼうしの男の子",
        choices: ["緑色のぼうしの男の子", "赤色のぼうしの男の子", "緑色のズボンの男の子"]
    )
    
    // お医者さんにのどを診てもらっている男の子
    static let boyAndDoctor = QuestionChoice(
        answer: "お医者さんにのどを診てもらっている男の子",
        choices: ["お医者さんに腕を診てもらっている男の子", "お医者さんにのどを診てもらっている男の子", "お医者さんとじゃんけんをしている男の子"]
    )
}
