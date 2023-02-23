//
//  QuestionContext.swift
//  MainIdeaApp
//
//  Created by 佐渡島和志 on 2023/02/23.
//

import Foundation
import SwiftUI

struct QuestionContext {
    static let questions = [question_1, question_2, question_3, question_4, question_5, question_6, question_7, question_8, question_9, question_10, question_11, question_12, question_13, question_14, question_15, question_16, question_17, question_18, question_19, question_20, question_21, question_22, question_23, question_24, question_25, question_26, question_27, question_28, question_29, question_30]
    
    // コウモリが逆さまにぶら下がっている
    static let question_1 = Question(
        answer: "コウモリが｜逆《さか》さまにぶら｜下《さ》がっている",
        answerWithRuby: "コウモリが｜逆《さか》さまにぶら｜下《さ》がっている",
        choices: ["コウモリには｜羽《はね》がある", "コウモリが｜逆《さか》さまにぶら｜下《さ》がっている"],
        image: Image("QuestionImage_1")
    )
    
    // セミの幼虫は土の中
    static let question_2 = Question(
        answer: "セミの｜幼虫《ようちゅう》は土の中",
        answerWithRuby: "セミの｜幼虫《ようちゅう》は｜土《つち》の｜中《なか》",
        choices: ["｜土《つち》の｜中《なか》は｜暗《くら》い", "｜草《くさ》は｜緑色《みどりいろ》", "セミの｜幼虫《ようちゅう》は土の中"],
        image: Image("QuestionImage_2")
    )
    
    // おもちゃ箱からクマのぬいぐるみを取り出した
    static let question_3 = Question(
        answer: "おもちゃ｜箱《ばこ》からクマのぬいぐるみを｜取《と》り｜出《だ》した",
        answerWithRuby: "おもちゃ｜箱《ばこ》からクマのぬいぐるみを｜取《と》り｜出《だ》した",
        choices: ["おもちゃ｜箱《ばこ》からクマのぬいぐるみを｜取《と》り｜出《だ》した", "おもちゃが｜沢山《たくさん》", "｜緑色《みどりいろ》の｜服《ふく》を｜着《き》た｜男《おとこ》の｜子《こ》"],
        image: Image("QuestionImage_3")
    )
    
    // おばあちゃんは白いネコをひざに乗せて微笑んでいる
    static let question_4 = Question(
        answer: "おばあちゃんは白いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる",
        answerWithRuby: "おばあちゃんは｜白《しろ》いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる",
        choices: ["｜白《しろ》いネコのしっぽは｜長《なが》い", "おばあちゃんの｜髪《かみ》の｜毛《け》は白い", "おばあちゃんは白いネコをひざに｜乗《の》せて｜微笑《ほほえ》んでいる"],
        image: Image("QuestionImage_4")
    )
    
    // 男の子がおいしそうにおにぎりを食べている
    static let question_5 = Question(
        answer: "｜男《おとこ》の｜子《こ》がおいしそうにおにぎりを｜食《た》べている",
        answerWithRuby: "｜男《おとこ》の｜子《こ》がおいしそうにおにぎりを｜食《た》べている",
        choices: ["｜男《おとこ》の｜子《こ》がおいしそうにおにぎりを｜食《た》べている", "食べかけのおにぎりがある", "男の子の｜口《くち》にご｜飯《はん》つぶが｜付《つ》いている"],
        image: Image("QuestionImage_5")
    )
    
    // 馬に乗った男の子
    static let question_6 = Question(
        answer: "馬に｜乗《の》った｜男《おとこ》の｜子《こ》",
        answerWithRuby: "｜馬《うま》に｜乗《の》った｜男《おとこ》の｜子《こ》",
        choices: ["｜馬《うま》が｜歩《ある》いている", "馬に｜乗《の》った｜男《おとこ》の｜子《こ》", "｜緑《みどり》の｜帽子《ぼうし》の男の子"],
        image: Image("QuestionImage_6")
    )
    
    // お医者さんにのどを診て貰っている男の子
    static let question_7 = Question(
        answer: "お｜医者《いしゃ》さんにのどを｜診《み》て｜貰《もら》っている｜男《おとこ》の｜子《こ》",
        answerWithRuby: "お｜医者《いしゃ》さんにのどを｜診《み》て｜貰《もら》っている｜男《おとこ》の｜子《こ》",
        choices: ["お｜医者《いしゃ》さんにのどを｜診《み》て｜貰《もら》っている｜男《おとこ》の｜子《こ》", "｜口《くち》を｜開《あ》けて｜足《あし》ぶらぶらしている子", "｜白衣《はくい》を｜着《き》ている、｜優《やさ》しいお医者さん"],
        image: Image("QuestionImage_7")
    )
    
    // 粘土で楽しそうに恐竜を作る男の子
    static let question_8 = Question(
        answer: "｜粘土《ねんど》で｜楽《たの》しそうに｜恐竜《きょうりゅう》を｜作《つく》る｜男《おとこ》の｜子《こ》",
        answerWithRuby: "粘土で｜楽《たの》しそうに恐竜を｜作《つく》る｜男《おとこ》の｜子《こ》",
        choices: ["｜机《つくえ》の｜上《うえ》に｜下敷《したじ》きを｜敷《し》いて｜粘土《ねんど》の｜恐竜《きょうりゅう》", "粘土で｜楽《たの》しそうに恐竜を｜作《つく》る｜男《おとこ》の｜子《こ》", "｜口《くち》を｜開《ひら》いた粘土の恐竜"],
        image: Image("QuestionImage_8")
    )
    
    // お友達と二人で恐竜を見つけた
    static let question_9 = Question(
        answer: "お｜友達《ともだち》と｜二人《ふたり》で恐竜を｜見《み》つけた",
        answerWithRuby: "お｜友達《ともだち》と｜二人《ふたり》で｜恐竜《きょうりゅう》を｜見《み》つけた",
        choices: ["｜帽子《ぼうし》が｜飛《と》んだ!", "｜湖《みずうみ》を｜泳《およ》ぐ｜恐竜《きょうりゅう》", "お｜友達《ともだち》と｜二人《ふたり》で恐竜を｜見《み》つけた"],
        image: Image("QuestionImage_9")
    )
    
    // やっと弟が寝たのに、お兄ちゃんが泣き出して困っているママ
    static let question_10 = Question(
        answer: "やっと｜弟《おとうと》が｜寝《ね》たのに、お｜兄《にい》ちゃんが｜泣《な》き｜出《だ》して｜困《こま》っているママ",
        answerWithRuby: "やっと｜弟《おとうと》が｜寝《ね》たのに、お｜兄《にい》ちゃんが｜泣《な》き｜出《だ》して｜困《こま》っているママ",
        choices: ["やっと｜弟《おとうと》が｜寝《ね》たのに、お｜兄《にい》ちゃんが｜泣《な》き｜出《だ》して｜困《こま》っているママ", "お兄ちゃんが泣いても、スヤスヤと｜眠《ねむ》る弟", "｜重《おも》い｜赤《あか》ちゃんを｜抱《だ》いているママ"],
        image: Image("QuestionImage_10")
    )
    
    // おばあちゃんは車いすで施設の人とお散歩
    static let question_11 = Question(
        answer: "おばあちゃんは車いすで｜施設《しせつ》の｜人《ひと》とお｜散歩《さんぽ》",
        answerWithRuby: "おばあちゃんは｜車《くるま》いすで｜施設《しせつ》の｜人《ひと》とお｜散歩《さんぽ》",
        choices: ["｜車《くるま》いすを｜押《お》す｜女性《じょせい》", "おばあちゃんはお｜出《で》かけする", "おばあちゃんは車いすで｜施設《しせつ》の｜人《ひと》とお｜散歩《さんぽ》"],
        image: Image("QuestionImage_11")
    )
    
    // 坂道をお母さんが子ども二人と楽しそうに登る
    static let question_12 = Question(
        answer: "｜坂道《さかみち》をお｜母《かあ》さんが子ども二人と楽しそうに｜登《のぼ》る",
        answerWithRuby: "｜坂道《さかみち》をお｜母《かあ》さんが｜子《こ》ども｜二人《ふたり》と｜楽《たの》しそうに｜登《のぼ》る",
        choices: ["｜子《こ》ども｜二人《ふたり》がヘルメットをかぶって｜楽《たの》しそうにしている", "｜三人《さんにん》｜乗《の》り｜自転車《じてんしゃ》", "｜坂道《さかみち》をお｜母《かあ》さんが子ども二人と楽しそうに｜登《のぼ》る"],
        image: Image("QuestionImage_12")
    )
    
    // パパと虫とり楽しいな
    static let question_13 = Question(
        answer: "パパと｜虫《むし》とり｜楽《たの》しいな",
        answerWithRuby: "パパと｜虫《むし》とり｜楽《たの》しいな",
        choices: ["｜夏《なつ》は｜帽子《ぼうし》をかぶってお｜出《で》かけ", "パパはボクより｜背《せ》が｜高《たか》い", "パパと｜虫《むし》とり｜楽《たの》しいな"],
        image: Image("QuestionImage_13")
    )
    
    // プリンを見て喜んでいる女の子
    static let question_14 = Question(
        answer: "プリンを｜見《み》て｜喜《よろこ》んでいる女の子",
        answerWithRuby: "プリンを｜見《み》て｜喜《よろこ》んでいる｜女《おんな》の｜子《こ》",
        choices: ["プリンがプルプル｜揺《ゆ》れている", "｜嬉《うれ》しくて｜顔《かお》が｜真《ま》っ｜赤《か》な｜女《おんな》の｜子《こ》", "プリンを｜見《み》て｜喜《よろこ》んでいる女の子"],
        image: Image("QuestionImage_14")
    )
    
    // 虫を見つけて怖がる男の子
    static let question_15 = Question(
        answer: "｜虫《むし》を｜見《み》つけて｜怖《こわ》がる｜男《おとこ》の｜子《こ》",
        answerWithRuby: "｜虫《むし》を｜見《み》つけて｜怖《こわ》がる｜男《おとこ》の｜子《こ》",
        choices: ["ボクは、お｜腹《なか》が｜痛《いた》い", "あ!クワガタだ、やったー", "｜虫《むし》を｜見《み》つけて｜怖《こわ》がる｜男《おとこ》の｜子《こ》"],
        image: Image("QuestionImage_15")
    )
    
    // 運動会で白組紅組に分かれて玉入れ
    static let question_16 = Question(
        answer: "｜運動会《うんどうかい》で｜白組《しろぐみ》｜紅組《あかぐみ》に｜分《わ》かれて｜玉《たま》｜入《い》れ",
        answerWithRuby: "｜運動会《うんどうかい》で｜白組《しろぐみ》｜紅組《あかぐみ》に｜分《わ》かれて｜玉《たま》｜入《い》れ",
        choices: ["｜赤《あか》も｜白《しろ》も｜同《おな》じくらい｜入《はい》ってる", "｜男《おとこ》の｜子《こ》が｜二人《ふたり》でバンザイ", "｜運動会《うんどうかい》で｜白組《しろぐみ》｜紅組《あかぐみ》に｜分《わ》かれて｜玉《たま》｜入《い》れ"],
        image: Image("QuestionImage_16")
    )
    
    // 家族でお出かけ、お外でお弁当を食べる
    static let question_17 = Question(
        answer: "｜家族《かぞく》でお｜出《で》かけ、お｜外《そと》でお｜弁当《べんとう》を｜食《た》べる",
        answerWithRuby: "｜家族《かぞく》でお｜出《で》かけ、お｜外《そと》でお｜弁当《べんとう》を｜食《た》べる",
        choices: ["｜石《いし》の｜上《うえ》に｜帽子《ぼうし》をかぶった｜三人《さんにん》", "｜家族《かぞく》でお｜出《で》かけ、お｜外《そと》でお｜弁当《べんとう》を｜食《た》べる", "ママはおにぎりが｜嫌《きら》い"],
        image: Image("QuestionImage_17")
    )
    
    // ママは窓を開けて部屋の換気をしている
    static let question_18 = Question(
        answer: "ママは窓を開けて｜部屋《へや》の｜換気《かんき》をしている",
        answerWithRuby: "ママは｜窓《まど》を｜開《あ》けて｜部屋《へや》の｜換気《かんき》をしている",
        choices: ["｜窓《まど》を｜開《あ》けると｜空《そら》が｜見《み》える", "｜体操《たいそう》する｜女《おんな》の｜人《ひと》", "ママは窓を開けて｜部屋《へや》の｜換気《かんき》をしている"],
        image: Image("QuestionImage_18")
    )
    
    // 家族でワールドカップを観戦する
    static let question_19 = Question(
        answer: "｜家族《かぞく》でワールドカップを｜観戦《かんせん》する",
        answerWithRuby: "｜家族《かぞく》でワールドカップを｜観戦《かんせん》する",
        choices: ["｜大《おお》きなテレビ", "｜家族《かぞく》でワールドカップを｜観戦《かんせん》する", "｜座《すわ》ってもボクが｜一番《いちばん》｜背《せ》が｜低《ひく》い"],
        image: Image("QuestionImage_19")
    )
    
    // 男の子と女の子二人で楽しそうに踊ってる
    static let question_20 = Question(
        answer: "｜男《おとこ》の｜子《こ》と｜女《おんな》の子｜二人《ふたり》で｜楽《たの》しそうに｜踊《おど》ってる",
        answerWithRuby: "｜男《おとこ》の｜子《こ》と｜女《おんな》の子｜二人《ふたり》で｜楽《たの》しそうに｜踊《おど》ってる",
        choices: ["｜男《おとこ》の｜子《こ》と｜女《おんな》の子｜二人《ふたり》で｜楽《たの》しそうに｜踊《おど》ってる", "女の子二人と男の子｜一人《ひとり》", "一人がグーで、二人がパーを｜出《だ》している"],
        image: Image("QuestionImage_20")
    )
    
    // こたつの上にミカン、ネコが気持ちよく温まっている
    static let question_21 = Question(
        answer: "こたつの｜上《うえ》にミカン、ネコが｜気持《きも》ちよく｜温《あたた》まっている",
        answerWithRuby: "こたつの｜上《うえ》にミカン、ネコが｜気持《きも》ちよく｜温《あたた》まっている",
        choices: ["こたつの｜上《うえ》にミカン、ネコが｜気持《きも》ちよく｜温《あたた》まっている", "ミカンはこたつの上にある", "ネコが｜寝《ね》ている"],
        image: Image("QuestionImage_21")
    )
    
    // 手に乗るインコをみて微笑む女性
    static let question_22 = Question(
        answer: "｜手《て》に｜乗《の》るインコを｜見《み》て｜微笑《ほほえ》む｜女性《じょせい》",
        answerWithRuby: "｜手《て》に｜乗《の》るインコを｜見《み》て｜微笑《ほほえ》む｜女性《じょせい》",
        choices: ["｜黄色《きいろ》いインコ", "｜帽子《ぼうし》をかぶった｜女《おんな》の｜人《ひと》", "｜手《て》に｜乗《の》るインコを｜見《み》て｜微笑《ほほえ》む｜女性《じょせい》"],
        image: Image("QuestionImage_22")
    )
    
    // 男の人が三匹の犬とお散歩
    static let question_23 = Question(
        answer: "｜男《おとこ》の｜人《ひと》が三匹の犬とお｜散歩《さんぽ》",
        answerWithRuby: "｜男《おとこ》の｜人《ひと》が｜三匹《さんびき》の｜犬《いぬ》とお｜散歩《さんぽ》",
        choices: ["｜三匹《さんびき》の｜犬《いぬ》", "｜男《おとこ》の｜人《ひと》が三匹の犬とお｜散歩《さんぽ》", "｜買《か》い｜物《もの》に｜行《い》く男の人"],
        image: Image("QuestionImage_23")
    )
    
    // 二人でお掃除
    static let question_24 = Question(
        answer: "｜二人《ふたり》でお｜掃除《そうじ》",
        answerWithRuby: "｜二人《ふたり》でお｜掃除《そうじ》",
        choices: ["｜二人《ふたり》でお｜掃除《そうじ》", "｜男子《だんし》と｜女子《じょし》", "ホウキとチリトリ"],
        image: Image("QuestionImage_24")
    )
    
    // 石鹸で手を洗う女の人
    static let question_25 = Question(
        answer: "｜石鹸《せっけん》で｜手《て》を｜洗《あら》う女の人",
        answerWithRuby: "｜石鹸《せっけん》で｜手《て》を｜洗《あら》う｜女《おんな》の｜人《ひと》",
        choices: ["ピンクのシャツの｜女《おんな》の｜人《ひと》", "｜石鹸《せっけん》で｜手《て》を｜洗《あら》う女の人", "手に｜泡《あわ》がいっぱい"],
        image: Image("QuestionImage_25")
    )
    
    // お父さんにベーゴマで勝って嬉しい
    static let question_26 = Question(
        answer: "お｜父《とう》さんにベーゴマで｜勝《か》って｜嬉《うれ》しい",
        answerWithRuby: "お｜父《とう》さんにベーゴマで｜勝《か》って｜嬉《うれ》しい",
        choices: ["ベーゴマがぶつかって｜落《お》ちた", "お｜父《とう》さんにベーゴマで｜勝《か》って｜嬉《うれ》しい", "あわてるお父さん"],
        image: Image("QuestionImage_26")
    )
    
    // 親子二人キャンプで楽しくバーベキュー
    static let question_27 = Question(
        answer: "｜親子《おやこ》｜二人《ふたり》キャンプで｜楽《たの》しくバーベキュー",
        answerWithRuby: "｜親子《おやこ》｜二人《ふたり》キャンプで｜楽《たの》しくバーベキュー",
        choices: ["｜親子《おやこ》｜二人《ふたり》キャンプで｜楽《たの》しくバーベキュー", "親子のそばに｜黄色《きいろ》いテントが｜立《た》っている", "二人の｜間《あいだ》に｜火《ひ》がついている"],
        image: Image("QuestionImage_27")
    )
    
    // 試験前にネコをひざの上に乗せて勉強を頑張っている
    static let question_28 = Question(
        answer: "｜試験《しけん》｜前《まえ》にネコをひざの上に｜乗《の》せて｜勉強《べんきょう》を｜頑張《がんば》っている",
        answerWithRuby: "｜試験《しけん》｜前《まえ》にネコをひざの｜上《うえ》に｜乗《の》せて｜勉強《べんきょう》を｜頑張《がんば》っている",
        choices: ["ひざの｜上《うえ》でネコが｜休《やす》んでいる", "スタンドライトが｜明《あか》るい", "｜試験《しけん》｜前《まえ》にネコをひざの上に｜乗《の》せて｜勉強《べんきょう》を｜頑張《がんば》っている"],
        image: Image("QuestionImage_28")
    )
    
    // 白い犬と子供が一緒に寝ている
    static let question_29 = Question(
        answer: "白い犬と子供が｜一緒《いっしょ》に｜寝《ね》ている",
        answerWithRuby: "｜白《しろ》い｜犬《いぬ》と｜子供《こども》が｜一緒《いっしょ》に｜寝《ね》ている",
        choices: ["｜大《おお》きな｜白《しろ》い｜犬《いぬ》", "｜緑《みどり》の｜服《ふく》を｜着《き》た犬より｜小《ちい》さい｜子供《こども》", "白い犬と子供が｜一緒《いっしょ》に｜寝《ね》ている"],
        image: Image("QuestionImage_29")
    )
    
    // 両親と一緒に七五三のお参り
    static let question_30 = Question(
        answer: "｜両親《りょうしん》と｜一緒《いっしょ》に｜七五三《しちごさん》のお｜参《まい》り",
        answerWithRuby: "｜両親《りょうしん》と｜一緒《いっしょ》に｜七五三《しちごさん》のお｜参《まい》り",
        choices: ["｜両親《りょうしん》と｜一緒《いっしょ》に｜七五三《しちごさん》のお｜参《まい》り", "お｜母《かあ》さんだけ｜帽子《ぼうし》をかぶっている", "お｜父《とう》さんが｜子供《こども》の｜肩《かた》に｜手《て》を｜置《お》いている"],
        image: Image("QuestionImage_30")
    )
}