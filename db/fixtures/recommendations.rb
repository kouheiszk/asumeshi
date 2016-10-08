Recommendation.seed do |r|
  r.id = 1
  r.name_ja = "ハンバーグ"
end
r1 = Recommendation.find(1)
[54,3,27].each do |k_id|
  r1.klasses << Klass.find(k_id) unless r1.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 2
  r.name_ja = "豆腐ハンバーグ"
end
r2 = Recommendation.find(2)
[54,28,27,45].each do |k_id|
  r2.klasses << Klass.find(k_id) unless r2.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 3
  r.name_ja = "餃子"
end
r3 = Recommendation.find(3)
[54,10,36,47].each do |k_id|
  r3.klasses << Klass.find(k_id) unless r3.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 4
  r.name_ja = "手羽先餃子"
end
r4 = Recommendation.find(4)
[53,5,10,54].each do |k_id|
  r4.klasses << Klass.find(k_id) unless r4.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 5
  r.name_ja = "水餃子"
end
r5 = Recommendation.find(5)
[54,10,36,47].each do |k_id|
  r5.klasses << Klass.find(k_id) unless r5.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 6
  r.name_ja = "肉じゃが"
end
r6 = Recommendation.find(6)
[4,2,3,52,51].each do |k_id|
  r6.klasses << Klass.find(k_id) unless r6.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 7
  r.name_ja = "ビーフカレー"
end
r7 = Recommendation.find(7)
[51,3,4,2].each do |k_id|
  r7.klasses << Klass.find(k_id) unless r7.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 8
  r.name_ja = "チキンカレー"
end
r8 = Recommendation.find(8)
[53,3,47].each do |k_id|
  r8.klasses << Klass.find(k_id) unless r8.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 9
  r.name_ja = "ポークカレー"
end
r9 = Recommendation.find(9)
[52,3,4,2].each do |k_id|
  r9.klasses << Klass.find(k_id) unless r9.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 10
  r.name_ja = "グリーンカレー"
end
r10 = Recommendation.find(10)
[3,53,13,15,31,21].each do |k_id|
  r10.klasses << Klass.find(k_id) unless r10.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 11
  r.name_ja = "キーマカレー"
end
r11 = Recommendation.find(11)
[54,2,3,11,47].each do |k_id|
  r11.klasses << Klass.find(k_id) unless r11.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 12
  r.name_ja = "スープカレー"
end
r12 = Recommendation.find(12)
[53,12,27,3,13,40].each do |k_id|
  r12.klasses << Klass.find(k_id) unless r12.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 13
  r.name_ja = "牛丼"
end
r13 = Recommendation.find(13)
[51,3].each do |k_id|
  r13.klasses << Klass.find(k_id) unless r13.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 14
  r.name_ja = "豚丼"
end
r14 = Recommendation.find(14)
[52,3].each do |k_id|
  r14.klasses << Klass.find(k_id) unless r14.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 15
  r.name_ja = "親子丼"
end
r15 = Recommendation.find(15)
[53,27,3].each do |k_id|
  r15.klasses << Klass.find(k_id) unless r15.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 16
  r.name_ja = "カツ丼"
end
r16 = Recommendation.find(16)
[52,27,3].each do |k_id|
  r16.klasses << Klass.find(k_id) unless r16.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 17
  r.name_ja = "タコライス"
end
r17 = Recommendation.find(17)
[34,12,13,54,73].each do |k_id|
  r17.klasses << Klass.find(k_id) unless r17.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 18
  r.name_ja = "ビビンバ"
end
r18 = Recommendation.find(18)
[51,2,9].each do |k_id|
  r18.klasses << Klass.find(k_id) unless r18.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 19
  r.name_ja = "ハヤシライス"
end
r19 = Recommendation.find(19)
[3,51,12,6].each do |k_id|
  r19.klasses << Klass.find(k_id) unless r19.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 20
  r.name_ja = "海鮮丼"
end
r20 = Recommendation.find(20)
[55,62,70].each do |k_id|
  r20.klasses << Klass.find(k_id) unless r20.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 21
  r.name_ja = "生姜焼き"
end
r21 = Recommendation.find(21)
[52,21,3,5].each do |k_id|
  r21.klasses << Klass.find(k_id) unless r21.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 22
  r.name_ja = "唐揚げ"
end
r22 = Recommendation.find(22)
[53].each do |k_id|
  r22.klasses << Klass.find(k_id) unless r22.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 23
  r.name_ja = "タコの唐揚げ"
end
r23 = Recommendation.find(23)
[71].each do |k_id|
  r23.klasses << Klass.find(k_id) unless r23.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 24
  r.name_ja = "ゲソの唐揚げ"
end
r24 = Recommendation.find(24)
[70].each do |k_id|
  r24.klasses << Klass.find(k_id) unless r24.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 25
  r.name_ja = "ぶり大根"
end
r25 = Recommendation.find(25)
[59,35].each do |k_id|
  r25.klasses << Klass.find(k_id) unless r25.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 26
  r.name_ja = "鯖の味噌煮"
end
r26 = Recommendation.find(26)
[57,21].each do |k_id|
  r26.klasses << Klass.find(k_id) unless r26.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 27
  r.name_ja = "鮭のムニエル"
end
r27 = Recommendation.find(27)
[55].each do |k_id|
  r27.klasses << Klass.find(k_id) unless r27.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 28
  r.name_ja = "あさりの酒蒸し"
end
r28 = Recommendation.find(28)
[22].each do |k_id|
  r28.klasses << Klass.find(k_id) unless r28.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 29
  r.name_ja = "しじみの味噌汁"
end
r29 = Recommendation.find(29)
[22].each do |k_id|
  r29.klasses << Klass.find(k_id) unless r29.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 30
  r.name_ja = "アヒージョ"
end
r30 = Recommendation.find(30)
[24,69,71,6,25].each do |k_id|
  r30.klasses << Klass.find(k_id) unless r30.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 31
  r.name_ja = "カルパッチョ"
end
r31 = Recommendation.find(31)
[23,55,33].each do |k_id|
  r31.klasses << Klass.find(k_id) unless r31.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 32
  r.name_ja = "焼き魚"
end
r32 = Recommendation.find(32)
[57,55,59,60,61].each do |k_id|
  r32.klasses << Klass.find(k_id) unless r32.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 33
  r.name_ja = "鮭のホイル焼き"
end
r33 = Recommendation.find(33)
[55,3,6].each do |k_id|
  r33.klasses << Klass.find(k_id) unless r33.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 34
  r.name_ja = "だし巻き卵・卵焼き"
end
r34 = Recommendation.find(34)
[27].each do |k_id|
  r34.klasses << Klass.find(k_id) unless r34.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 35
  r.name_ja = "茶碗蒸し"
end
r35 = Recommendation.find(35)
[27,53,69,6].each do |k_id|
  r35.klasses << Klass.find(k_id) unless r35.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 36
  r.name_ja = "オムレツ"
end
r36 = Recommendation.find(36)
[54,3,27].each do |k_id|
  r36.klasses << Klass.find(k_id) unless r36.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 37
  r.name_ja = "かに玉"
end
r37 = Recommendation.find(37)
[26,27].each do |k_id|
  r37.klasses << Klass.find(k_id) unless r37.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 38
  r.name_ja = "ニラ玉"
end
r38 = Recommendation.find(38)
[10,27].each do |k_id|
  r38.klasses << Klass.find(k_id) unless r38.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 39
  r.name_ja = "レタスチャーハン"
end
r39 = Recommendation.find(39)
[34,27].each do |k_id|
  r39.klasses << Klass.find(k_id) unless r39.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 40
  r.name_ja = "五目炒飯"
end
r40 = Recommendation.find(40)
[27,69,49,52,45].each do |k_id|
  r40.klasses << Klass.find(k_id) unless r40.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 41
  r.name_ja = "キムチチャーハン"
end
r41 = Recommendation.find(41)
[36,52,3].each do |k_id|
  r41.klasses << Klass.find(k_id) unless r41.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 42
  r.name_ja = "おにぎり"
end
r42 = Recommendation.find(42)
[55,62].each do |k_id|
  r42.klasses << Klass.find(k_id) unless r42.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 43
  r.name_ja = "カルボナーラ"
end
r43 = Recommendation.find(43)
[52,27,73,32].each do |k_id|
  r43.klasses << Klass.find(k_id) unless r43.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 44
  r.name_ja = "ミートソース"
end
r44 = Recommendation.find(44)
[54,12,3].each do |k_id|
  r44.klasses << Klass.find(k_id) unless r44.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 45
  r.name_ja = "ペペロンチーノ"
end
r45 = Recommendation.find(45)
[52,47].each do |k_id|
  r45.klasses << Klass.find(k_id) unless r45.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 46
  r.name_ja = "ラザニア"
end
r46 = Recommendation.find(46)
[3,54,12,73].each do |k_id|
  r46.klasses << Klass.find(k_id) unless r46.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 47
  r.name_ja = "味噌煮込みうどん"
end
r47 = Recommendation.find(47)
[52,27,6,2,45].each do |k_id|
  r47.klasses << Klass.find(k_id) unless r47.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 48
  r.name_ja = "カレーうどん"
end
r48 = Recommendation.find(48)
[52,3,45].each do |k_id|
  r48.klasses << Klass.find(k_id) unless r48.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 49
  r.name_ja = "きつねうどん"
end
r49 = Recommendation.find(49)
[45,46,28].each do |k_id|
  r49.klasses << Klass.find(k_id) unless r49.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 50
  r.name_ja = "たぬきうどん"
end
r50 = Recommendation.find(50)
[45].each do |k_id|
  r50.klasses << Klass.find(k_id) unless r50.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 51
  r.name_ja = "きつね蕎麦"
end
r51 = Recommendation.find(51)
[45,46,28].each do |k_id|
  r51.klasses << Klass.find(k_id) unless r51.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 52
  r.name_ja = "たぬき蕎麦"
end
r52 = Recommendation.find(52)
[45].each do |k_id|
  r52.klasses << Klass.find(k_id) unless r52.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 53
  r.name_ja = "焼きそば"
end
r53 = Recommendation.find(53)
[52,2,3,9,5].each do |k_id|
  r53.klasses << Klass.find(k_id) unless r53.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 54
  r.name_ja = "お好み焼き"
end
r54 = Recommendation.find(54)
[5,45,39,52].each do |k_id|
  r54.klasses << Klass.find(k_id) unless r54.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 55
  r.name_ja = "たこ焼き"
end
r55 = Recommendation.find(55)
[71,45,5].each do |k_id|
  r55.klasses << Klass.find(k_id) unless r55.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 56
  r.name_ja = "味噌汁"
end
r56 = Recommendation.find(56)
[35,72,22,6,28,45].each do |k_id|
  r56.klasses << Klass.find(k_id) unless r56.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 57
  r.name_ja = "豚汁"
end
r57 = Recommendation.find(57)
[52,2,4,30,3,28].each do |k_id|
  r57.klasses << Klass.find(k_id) unless r57.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 58
  r.name_ja = "けんちん汁"
end
r58 = Recommendation.find(58)
[35,37,2,30,45,28].each do |k_id|
  r58.klasses << Klass.find(k_id) unless r58.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 59
  r.name_ja = "ポトフ"
end
r59 = Recommendation.find(59)
[4,2,3,52].each do |k_id|
  r59.klasses << Klass.find(k_id) unless r59.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 60
  r.name_ja = "おでん"
end
r60 = Recommendation.find(60)
[35,52,31,30,27].each do |k_id|
  r60.klasses << Klass.find(k_id) unless r60.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 61
  r.name_ja = "すき焼き"
end
r61 = Recommendation.find(61)
[51,30,45,6,28,36].each do |k_id|
  r61.klasses << Klass.find(k_id) unless r61.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 62
  r.name_ja = "キムチ鍋"
end
r62 = Recommendation.find(62)
[52,45,36,28,6,48].each do |k_id|
  r62.klasses << Klass.find(k_id) unless r62.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 63
  r.name_ja = "ポテトサラダ"
end
r63 = Recommendation.find(63)
[4,2,18,27,3].each do |k_id|
  r63.klasses << Klass.find(k_id) unless r63.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 64
  r.name_ja = "かぼちゃのサラダ"
end
r64 = Recommendation.find(64)
[14,73,34].each do |k_id|
  r64.klasses << Klass.find(k_id) unless r64.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 65
  r.name_ja = "サンドイッチ"
end
r65 = Recommendation.find(65)
[12,52,34,73,27].each do |k_id|
  r65.klasses << Klass.find(k_id) unless r65.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 66
  r.name_ja = "ゴーヤチャンプル"
end
r66 = Recommendation.find(66)
[1,28,27,52].each do |k_id|
  r66.klasses << Klass.find(k_id) unless r66.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 67
  r.name_ja = "チリコンカン"
end
r67 = Recommendation.find(67)
[7,54,3,47,11,12].each do |k_id|
  r67.klasses << Klass.find(k_id) unless r67.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 68
  r.name_ja = "コーンスープ"
end
r68 = Recommendation.find(68)
[19].each do |k_id|
  r68.klasses << Klass.find(k_id) unless r68.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 69
  r.name_ja = "リゾット"
end
r69 = Recommendation.find(69)
[6,52,73].each do |k_id|
  r69.klasses << Klass.find(k_id) unless r69.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 70
  r.name_ja = "ピザ"
end
r70 = Recommendation.find(70)
[12,73,52,11].each do |k_id|
  r70.klasses << Klass.find(k_id) unless r70.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 71
  r.name_ja = "坦々麺"
end
r71 = Recommendation.find(71)
[46,9,54].each do |k_id|
  r71.klasses << Klass.find(k_id) unless r71.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 72
  r.name_ja = "ラーメン"
end
r72 = Recommendation.find(72)
[52,9,27,31,45].each do |k_id|
  r72.klasses << Klass.find(k_id) unless r72.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 73
  r.name_ja = "冷やし中華"
end
r73 = Recommendation.find(73)
[52,18,27,53].each do |k_id|
  r73.klasses << Klass.find(k_id) unless r73.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 74
  r.name_ja = "クラムチャウダー"
end
r74 = Recommendation.find(74)
[22,4,2,3].each do |k_id|
  r74.klasses << Klass.find(k_id) unless r74.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 75
  r.name_ja = "つみれ汁"
end
r75 = Recommendation.find(75)
[56,60,58].each do |k_id|
  r75.klasses << Klass.find(k_id) unless r75.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 76
  r.name_ja = "エビチリ"
end
r76 = Recommendation.find(76)
[69].each do |k_id|
  r76.klasses << Klass.find(k_id) unless r76.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 77
  r.name_ja = "ビーフシチュー"
end
r77 = Recommendation.find(77)
[51,4,2,3].each do |k_id|
  r77.klasses << Klass.find(k_id) unless r77.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 78
  r.name_ja = "シチュー"
end
r78 = Recommendation.find(78)
[53,52,4,2,3,73].each do |k_id|
  r78.klasses << Klass.find(k_id) unless r78.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 79
  r.name_ja = "ポークピカタ"
end
r79 = Recommendation.find(79)
[52,27,73].each do |k_id|
  r79.klasses << Klass.find(k_id) unless r79.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 80
  r.name_ja = "バンバンジー"
end
r80 = Recommendation.find(80)
[53,18].each do |k_id|
  r80.klasses << Klass.find(k_id) unless r80.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 81
  r.name_ja = "コールスロー"
end
r81 = Recommendation.find(81)
[5,2,3,19].each do |k_id|
  r81.klasses << Klass.find(k_id) unless r81.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 82
  r.name_ja = "八宝菜"
end
r82 = Recommendation.find(82)
[2,52,45,6,69,70,36].each do |k_id|
  r82.klasses << Klass.find(k_id) unless r82.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 83
  r.name_ja = "青椒肉絲"
end
r83 = Recommendation.find(83)
[11,15,51].each do |k_id|
  r83.klasses << Klass.find(k_id) unless r83.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 84
  r.name_ja = "大学芋"
end
r84 = Recommendation.find(84)
[38].each do |k_id|
  r84.klasses << Klass.find(k_id) unless r84.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 85
  r.name_ja = "ロールキャベツ"
end
r85 = Recommendation.find(85)
[5,52,3].each do |k_id|
  r85.klasses << Klass.find(k_id) unless r85.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 86
  r.name_ja = "筑前煮"
end
r86 = Recommendation.find(86)
[53,37,6,2,31].each do |k_id|
  r86.klasses << Klass.find(k_id) unless r86.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 87
  r.name_ja = "春巻き"
end
r87 = Recommendation.find(87)
[54,2,31,6,10].each do |k_id|
  r87.klasses << Klass.find(k_id) unless r87.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 88
  r.name_ja = "ミネストローネ"
end
r88 = Recommendation.find(88)
[52,3,2,4,5,12].each do |k_id|
  r88.klasses << Klass.find(k_id) unless r88.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 89
  r.name_ja = "ナムル"
end
r89 = Recommendation.find(89)
[2,9,46,41].each do |k_id|
  r89.klasses << Klass.find(k_id) unless r89.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 90
  r.name_ja = "ラタトゥイユ"
end
r90 = Recommendation.find(90)
[16,52,6,36,12].each do |k_id|
  r90.klasses << Klass.find(k_id) unless r90.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 91
  r.name_ja = "アボカドと豆のサラダ"
end
r91 = Recommendation.find(91)
[8,33].each do |k_id|
  r91.klasses << Klass.find(k_id) unless r91.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 92
  r.name_ja = "オクラと大根のサラダ"
end
r92 = Recommendation.find(92)
[17,35].each do |k_id|
  r92.klasses << Klass.find(k_id) unless r92.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 93
  r.name_ja = "モロヘイヤのおひたし"
end
r93 = Recommendation.find(93)
[20].each do |k_id|
  r93.klasses << Klass.find(k_id) unless r93.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 94
  r.name_ja = "パエリア"
end
r94 = Recommendation.find(94)
[24,15,53,70,69,47,3].each do |k_id|
  r94.klasses << Klass.find(k_id) unless r94.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 95
  r.name_ja = "納豆チャーハン"
end
r95 = Recommendation.find(95)
[29,27].each do |k_id|
  r95.klasses << Klass.find(k_id) unless r95.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 96
  r.name_ja = "焼き芋"
end
r96 = Recommendation.find(96)
[38].each do |k_id|
  r96.klasses << Klass.find(k_id) unless r96.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 97
  r.name_ja = "山かけ丼"
end
r97 = Recommendation.find(97)
[62,39].each do |k_id|
  r97.klasses << Klass.find(k_id) unless r97.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 98
  r.name_ja = "セロリの漬物"
end
r98 = Recommendation.find(98)
[42].each do |k_id|
  r98.klasses << Klass.find(k_id) unless r98.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 99
  r.name_ja = "バーニャカウダ"
end
r99 = Recommendation.find(99)
[43,35,2,18].each do |k_id|
  r99.klasses << Klass.find(k_id) unless r99.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 100
  r.name_ja = "焼売"
end
r100 = Recommendation.find(100)
[49,54,3].each do |k_id|
  r100.klasses << Klass.find(k_id) unless r100.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 101
  r.name_ja = "クレソンのおひたし"
end
r101 = Recommendation.find(101)
[50].each do |k_id|
  r101.klasses << Klass.find(k_id) unless r101.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 102
  r.name_ja = "舌平目のムニエル"
end
r102 = Recommendation.find(102)
[63].each do |k_id|
  r102.klasses << Klass.find(k_id) unless r102.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 103
  r.name_ja = "カレイの煮付け"
end
r103 = Recommendation.find(103)
[64].each do |k_id|
  r103.klasses << Klass.find(k_id) unless r103.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 104
  r.name_ja = "わかさぎの南蛮漬け"
end
r104 = Recommendation.find(104)
[65,3,2,11].each do |k_id|
  r104.klasses << Klass.find(k_id) unless r104.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 105
  r.name_ja = "たらのホイル焼き"
end
r105 = Recommendation.find(105)
[66,45,6,36,28].each do |k_id|
  r105.klasses << Klass.find(k_id) unless r105.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 106
  r.name_ja = "うな重"
end
r106 = Recommendation.find(106)
[67].each do |k_id|
  r106.klasses << Klass.find(k_id) unless r106.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 107
  r.name_ja = "カツオのたたき"
end
r107 = Recommendation.find(107)
[68,45].each do |k_id|
  r107.klasses << Klass.find(k_id) unless r107.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 108
  r.name_ja = "アクアパッツァ"
end
r108 = Recommendation.find(108)
[44,22,3,66,16,12,5].each do |k_id|
  r108.klasses << Klass.find(k_id) unless r108.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 109
  r.name_ja = "かぼちゃコロッケ"
end
r109 = Recommendation.find(109)
[14,2].each do |k_id|
  r109.klasses << Klass.find(k_id) unless r109.klasses.pluck(:id).include?(k_id)
end
