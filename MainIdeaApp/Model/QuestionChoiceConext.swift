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
    
    // 帽子が飛んだ!
    static let flyingCap = QuestionChoice(
        answer: "｜帽子《ぼうし》が｜飛《と》んだ!",
        choices: ["｜帽子《ぼうし》が｜飛《と》んだ!", "｜靴下《くつした》が飛んだ!", "｜手袋《てぶくろ》が飛んだ!"]
    )
    
    // 湖を泳ぐ恐竜
    static let lakeSwimmingDinosaur = QuestionChoice(
        answer: "｜湖《みずうみ》を｜泳《およ》ぐ恐竜",
        choices: ["｜空《そら》を｜飛《と》ぶ｜恐竜《きょうりゅう》", "｜湖《みずうみ》を｜泳《およ》ぐ恐竜", "｜陸《りく》を｜歩《ある》くライオン"]
    )
    
    // お友達と2人で恐竜を見つけた
    static let friendDuoDiscoverDinosaur = QuestionChoice(
        answer: "お友達と二人で恐竜を見つけた",
        choices: ["お｜友達《ともだち》と｜四人《よにん》で｜恐竜《きょうりゅう》を｜見《み》つけた", "お友達と｜二人《ふたり》でうさぎを見つけた", "お友達と二人で恐竜を見つけた"]
    )
    
    // やっと弟が寝たのに、お兄ちゃんが泣き出して困っているママ
    static let brotherSleepCryMother = QuestionChoice(
        answer: "やっと｜弟《おとうと》が｜寝《ね》たのに、お｜兄《にい》ちゃんが｜泣《な》き｜出《だ》して｜困《こま》っているママ",
        choices: ["やっと｜弟《おとうと》が｜寝《ね》たのに、お｜兄《にい》ちゃんが｜泣《な》き｜出《だ》して｜困《こま》っているママ", "やっと弟が寝たのに、｜犬《いぬ》がほえ｜出《だ》して困っているママ", "お兄ちゃんは｜大人《おとな》しくしている"]
    )
    
    // お兄ちゃんが泣いても、スヤスヤと寝る弟
    static let brotherCryingSleeping = QuestionChoice(
        answer: "お兄ちゃんが｜泣《な》いても、スヤスヤと寝る弟",
        choices: ["お｜兄《にい》ちゃんが｜笑《わら》っていても、スヤスヤと｜寝《ね》る｜弟《おとうと》", "お兄ちゃんが｜泣《な》いても、スヤスヤと寝る弟", "ママが｜歌《うた》っていても、スヤスヤと寝る弟"]
    )
    
    // 重い赤ちゃんを抱いているママ
    static let heavyBabyHoldingMother = QuestionChoice(
        answer: "｜重《おも》い｜赤《あか》ちゃんを｜抱《だ》いているママ",
        choices: ["｜重《おも》い｜赤《あか》ちゃんを｜抱《だ》いているママ", "重い｜犬《いぬ》を抱いているママ", "重い赤ちゃんを抱いているお｜兄《にい》ちゃん"]
    )
    
    // 車椅子を押す女性
    static let womanPushWheelchair = QuestionChoice(
        answer: "｜車椅子《くるまいす》を｜押《お》す｜女性《じょせい》",
        choices: ["｜車椅子《くるまいす》を｜押《お》す｜女性《じょせい》", "ソリを｜引《ひ》く女性", "車椅子を押すおじいちゃん"]
    )
    
    // おばあちゃんがお出かけする
    static let grandmotherIsGoingOut = QuestionChoice(
        answer: "おばあちゃんがお出かけする",
        choices: ["おじいちゃんがお｜出《で》かけする", "おばあちゃんがお出かけする", "おばあちゃんがトランプで｜遊《あそ》ぶ"]
    )
    
    // おばあちゃんは車椅子で施設の人とお散歩
    static let grandmotherWheelchairWalking = QuestionChoice(
        answer: "おばあちゃんは車椅子で施設の人とお散歩",
        choices: ["おじいちゃんは｜車椅子《くるまいす》で｜施設《しせつ》の人とお｜散歩《さんぽ》", "おばあちゃんが｜一人《ひとり》でお散歩", "おばあちゃんは車椅子で施設の人とお散歩"]
    )
    
    // 坂道を自転車で登るのは辛い
    static let uphillBicycleClimbHard = QuestionChoice(
        answer: "｜坂道《さかみち》を｜自転車《じてんしゃ》で｜登《のぼ》るのは｜辛《つら》い",
        choices: ["｜坂道《さかみち》を｜自転車《じてんしゃ》で｜登《のぼ》るのは｜辛《つら》い", "坂道を｜自動車《じどうしゃ》で登るのは辛い", "｜下《くだ》り｜坂《ざか》を自転車で｜走《はし》るのは｜楽《らく》"]
    )
    
    // 三人乗り自転車
    static let trioBicycle = QuestionChoice(
        answer: "｜三人《さんにん》乗り自転車",
        choices: ["｜一人《ひとり》｜乗《の》り｜自転車《じてんしゃ》", "｜二人《ふたり》乗り自転車", "｜三人《さんにん》乗り自転車"]
    )
    
    // 坂道を三人乗りでも楽に登る
    static let uphillTrioClimbEasy = QuestionChoice(
        answer: "坂道を｜三人《さんにん》乗りでも楽に登る",
        choices: ["｜坂道《さかみち》を｜二人《ふたり》｜乗《の》りでも｜楽《らく》に｜登《のぼ》る", "坂道を｜三人《さんにん》乗りでも楽に登る", "｜平《たい》らな道を｜楽《らく》に｜走《はし》る"]
    )
    
    // 夏は帽子をかぶってお出かけ
    static let summerCapGoingOut = QuestionChoice(
        answer: "｜夏《なつ》は｜帽子《ぼうし》をかぶってお｜出《で》かけ",
        choices: ["｜夏《なつ》は｜帽子《ぼうし》をかぶってお｜出《で》かけ", "夏は帽子をかぶらずにお出かけ", "夏はセーターを｜着《き》てお出かけ"]
    )
    
    // パパはボクより背が高い
    static let fatherIsTallerThanMe = QuestionChoice(
        answer: "パパはボクより背が｜高《たか》い",
        choices: ["パパはボクより｜背《せ》が｜低《ひく》い", "パパはボクより背が｜高《たか》い", "パパとボクは背が｜同《おな》じ"]
    )
    
    // パパと虫取り楽しいな
    static let insectCatchingWithFather = QuestionChoice(
        answer: "パパと｜虫取《むしと》り｜楽《たの》しいな",
        choices: ["パパと｜虫取《むしと》り｜楽《たの》しいな", "パパと｜魚釣《さかなつ》り楽しいな", "パパとかけっこ楽しいな"]
    )
    
    // プリンがプルプル揺れている
    static let shakingPudding = QuestionChoice(
        answer: "プリンがプルプル揺れている",
        choices: ["ソフトクリームがプルプル｜揺《ゆ》れている", "ケーキがプルプル揺ゆれている", "プリンがプルプル揺れている"]
    )
}
