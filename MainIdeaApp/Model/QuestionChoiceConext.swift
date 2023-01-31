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
        answer: "｜白《しろ》いネコはしっぽがない",
        choices: ["｜黒《くろ》いネコのしっぽは｜長《なが》い", "｜白《しろ》いネコはしっぽがない", "白いネコのしっぽは長い"]
    )
    
    // おばあちゃんのかみの毛は白い
    static let onesGrandmothersHairIsWhite = QuestionChoice(
        answer: "おばあちゃんの｜髪《かみ》の｜毛《け》は｜白《しろ》い",
        choices: ["おばあちゃんの｜髪《かみ》の｜毛《け》は｜白《しろ》い", "おばあちゃんの髪の毛は｜茶色《ちゃいろ》い", "おばあちゃんの髪の毛は｜赤《あか》い"]
    )
    
    // おばあちゃんは白いネコをひざに乗せて微笑んでいる
    static let grandmaIsSmilingWithCats = QuestionChoice(
        answer: "おばあちゃんは白いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる",
        choices: ["おばあちゃんは｜白《しろ》いネコを｜持《も》ち｜上《あ》げている", "おばあちゃんは白いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる", "おばあちゃんは｜黒《くろ》いネコをひざに乗せて微笑んでいる"]
    )
    
    // 男の子がおいしそうにおにぎりを食べている
    static let aBoyIsEatingARiceBall = QuestionChoice(
        answer: "男の子がおいしそうにおにぎりを食べている",
        choices: ["｜男《おとこ》の｜子《こ》がおいしそうにパンを｜食《た》べている", "男の子がおいしそうにおにぎりを食べている", "男の子が｜踊《おど》っている"]
    )
    
    // 男の子がよろこんでいる
    static let theBoyIsHappy = QuestionChoice(
        answer: "男の子が喜んでいる",
        choices: ["｜男《おとこ》の｜子《こ》が｜悲《かな》しんでいる", "おばあさんが｜喜《よろこ》んでいる", "男の子が喜んでいる"]
    )
    
    // 男の子の口にご飯つぶがついている
    static let riceCrumbsOnABoysMouth = QuestionChoice(
        answer: "｜男《おとこ》の｜子《こ》の｜口《くち》にご｜飯《はん》つぶがついている",
        choices: ["｜男《おとこ》の｜子《こ》の｜口《くち》にご｜飯《はん》つぶがついている", "男の子の｜耳《みみ》にご飯つぶがついている", "男の子の口にパンくずがついている"]
    )
    
    // 馬が歩いている
    static let horseIsWalking = QuestionChoice(
        answer: "馬が歩いている",
        choices: ["｜犬《いぬ》が｜歩《ある》いている", "｜馬《うま》が｜眠《ねむ》っている", "馬が歩いている"]
    )
    
    // 馬に乗った男の子
    static let aBoyOnAHorse = QuestionChoice(
        answer: "｜馬《うま》に乗った男の子",
        choices: ["｜自転車《じてんしゃ》に｜乗《の》った｜男《おとこ》の｜子《こ》", "｜馬《うま》に乗った男の子", "馬に乗ったおじいちゃん"]
    )
    
    // みどりのぼうしの男の子
    static let BoyInGreenHat = QuestionChoice(
        answer: "｜緑色《みどりいろ》のぼうしの｜男《おとこ》の｜子《こ》",
        choices: ["｜緑色《みどりいろ》のぼうしの｜男《おとこ》の｜子《こ》", "｜赤《あか》色のぼうしの男の子", "緑色のズボンの男の子"]
    )
    
    // お医者さんにのどを診てもらっている男の子
    static let boyAndDoctor = QuestionChoice(
        answer: "お医者さんにのどを診てもらっている男の子",
        choices: ["お｜医者《いしゃ》さんに｜腕《うで》を｜診《み》てもらっている｜男《おとこ》の｜子《こ》", "お医者さんにのどを診てもらっている男の子", "お医者さんとじゃんけんをしている男の子"]
    )
    
    // 口をあけて足ぶらぶらしている子
    static let mouseLegChild = QuestionChoice(
        answer: "｜口《くち》をあけて｜足《あし》ぶらぶらしている｜子《こ》",
        choices: ["｜口《くち》をあけて｜足《あし》ぶらぶらしている｜子《こ》", "手を｜挙《あ》げている子", "｜立《た》っている子"]
    )
    
    // 白衣を着ている優しいお医者さん
    static let whiteKindDoctor = QuestionChoice(
        answer: "白衣を着ている優しいお｜医者《いしゃ》さん",
        choices: ["｜白衣《はくい》を｜着《き》ている｜優《やさ》しい｜八百屋《やおや》さん", "白衣を着ている優しいお｜医者《いしゃ》さん", "セーターを着ている優しいお医者さん"]
    )
    
    // 机の上に下敷きしいて粘土の恐竜
    static let deskClayDinosaur = QuestionChoice(
        answer: "机の上に下敷きしいて｜粘土《ねんど》の｜子犬《こいぬ》",
        choices: ["｜机《つくえ》の｜上《うえ》に｜下敷《したじ》きしいて｜折《お》り｜紙《がみ》の｜恐竜《きょうりゅう》", "机の上に下敷きしいて｜粘土《ねんど》の｜子犬《こいぬ》" ,"机の上に下敷きしいて粘土の恐竜"]
    )
    
    // 粘土で楽しそうに恐竜を作る男の子
    static let clayDinosaurBoy = QuestionChoice(
        answer: "｜粘土《ねんど》で｜楽《たの》しそうに｜恐竜《きょうりゅう》を｜作《つく》る｜男《おとこ》の｜子《こ》",
        choices: ["｜粘土《ねんど》で｜楽《たの》しそうに｜恐竜《きょうりゅう》を｜作《つく》る｜男《おとこ》の｜子《こ》", "粘土で楽しそうに｜猫《ねこ》を作る男の子", "粘土で楽しそうに猫を作るおじいちゃん"]
    )
    
    // 口を開いた粘土の恐竜
    static let mouseCloseDinosaur = QuestionChoice(
        answer: "口を開いた粘土の恐竜",
        choices: ["｜口《くち》を｜閉《と》じた｜粘土《ねんど》の｜恐竜《きょうりゅう》", "口を｜開《ひら》いた粘土の｜子豚《こぶた》", "口を開いた粘土の恐竜"]
    )
}
