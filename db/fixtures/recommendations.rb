Recommendation.seed do |r|
  r.id = 1
  r.name_ja = "ハンバーグ"
  r.url = "http://cookpad.com/recipe/4103734"
  r.image_url = "https://img.cpcdn.com/recipes/4103734/280/e87e25d67f01756dd6d1f4c86c5b8ab7.jpg?u=6515003&p=1475541749"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13022039/dtlmap/"
end
r1 = Recommendation.find(1)
[54,3,27].each do |k_id|
  r1.klasses << Klass.find(k_id) unless r1.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 2
  r.name_ja = "豆腐ハンバーグ"
  r.url = "http://cookpad.com/recipe/4086306"
  r.image_url = "https://img.cpcdn.com/recipes/4086306/280/62e3f93d00184ea2a1dd52603c6d97c6.jpg?u=1887695&p=1474640508"
  r.shop_url = ""
end
r2 = Recommendation.find(2)
[54,28,27,45].each do |k_id|
  r2.klasses << Klass.find(k_id) unless r2.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 3
  r.name_ja = "餃子"
  r.url = "http://cookpad.com/recipe/4071352"
  r.image_url = "https://img.cpcdn.com/recipes/4071352/280/0775a94239208351445a8934d3e7ae4e.jpg?u=15472989&p=1473913073"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13197937/dtlmap/"
end
r3 = Recommendation.find(3)
[54,10,36,47].each do |k_id|
  r3.klasses << Klass.find(k_id) unless r3.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 4
  r.name_ja = "手羽先餃子"
  r.url = "http://cookpad.com/recipe/3974218"
  r.image_url = "https://img.cpcdn.com/recipes/3974218/280/d2c8f2f232c05d399b53a04a5ac47afb.jpg?u=9830097&p=1468403965"
  r.shop_url = ""
end
r4 = Recommendation.find(4)
[53,5,10,54].each do |k_id|
  r4.klasses << Klass.find(k_id) unless r4.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 5
  r.name_ja = "水餃子"
  r.url = "http://cookpad.com/recipe/4084718"
  r.image_url = "https://img.cpcdn.com/recipes/4084718/280/4001742dafcfda858395c377c5d7754e.jpg?u=10173236&p=1474557006"
  r.shop_url = ""
end
r5 = Recommendation.find(5)
[54,10,36,47].each do |k_id|
  r5.klasses << Klass.find(k_id) unless r5.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 6
  r.name_ja = "肉じゃが"
  r.url = "http://cookpad.com/recipe/4095480"
  r.image_url = "https://img.cpcdn.com/recipes/4095480/280/71bcfc0b5fdfa33c3745db0440d1a899.jpg?u=9157729&p=1475109339"
  r.shop_url = ""
end
r6 = Recommendation.find(6)
[4,2,3,52,51].each do |k_id|
  r6.klasses << Klass.find(k_id) unless r6.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 7
  r.name_ja = "ビーフカレー"
  r.url = "http://cookpad.com/recipe/3981131"
  r.image_url = "https://img.cpcdn.com/recipes/3981131/280/42798139bc6e7219a3e88824bc12ff99.jpg?u=11923148&p=1468758688"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13041111/dtlmap/"
end
r7 = Recommendation.find(7)
[51,3,4,2].each do |k_id|
  r7.klasses << Klass.find(k_id) unless r7.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 8
  r.name_ja = "チキンカレー"
  r.url = "http://cookpad.com/recipe/4057487"
  r.image_url = "https://img.cpcdn.com/recipes/4057487/280/c7a07833cad767eabdbc0a71521cd159.jpg?u=7704126&p=1473333416"
  r.shop_url = ""
end
r8 = Recommendation.find(8)
[53,3,47].each do |k_id|
  r8.klasses << Klass.find(k_id) unless r8.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 9
  r.name_ja = "ポークカレー"
  r.url = "http://cookpad.com/recipe/3403228"
  r.image_url = "https://img.cpcdn.com/recipes/3403228/280/d7c62aced7f2073c1c63b105c41e8082.jpg?u=4893214&p=1442151312"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13027436/dtlmap/"
end
r9 = Recommendation.find(9)
[52,3,4,2].each do |k_id|
  r9.klasses << Klass.find(k_id) unless r9.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 10
  r.name_ja = "グリーンカレー"
  r.url = "http://cookpad.com/recipe/4049438"
  r.image_url = "https://img.cpcdn.com/recipes/4049438/280/b585bb2945be128f501f924a5ac432df.jpg?u=14308141&p=1472797725"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13023842/dtlmap/"
end
r10 = Recommendation.find(10)
[3,53,13,15,31,21].each do |k_id|
  r10.klasses << Klass.find(k_id) unless r10.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 11
  r.name_ja = "キーマカレー"
  r.url = "http://cookpad.com/recipe/3854335"
  r.image_url = "https://img.cpcdn.com/recipes/3854335/280/b63519b82da45a5ef340ba7655434510.jpg?u=13069153&p=1463144888"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13041111/dtlmap/"
end
r11 = Recommendation.find(11)
[54,2,3,11,47].each do |k_id|
  r11.klasses << Klass.find(k_id) unless r11.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 12
  r.name_ja = "スープカレー"
  r.url = "http://cookpad.com/recipe/3970514"
  r.image_url = "https://img.cpcdn.com/recipes/3970514/280/9329467651971e2188067ccec15620eb.jpg?u=13875371&p=1468487346"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13041111/dtlmap/"
end
r12 = Recommendation.find(12)
[53,12,27,3,13,40].each do |k_id|
  r12.klasses << Klass.find(k_id) unless r12.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 13
  r.name_ja = "牛丼"
  r.url = "http://cookpad.com/recipe/4012653"
  r.image_url = "https://img.cpcdn.com/recipes/4012653/280/313cfb045d3dcddc01cec322ad6f9af3.jpg?u=14808962&p=1470574504"
  r.shop_url = ""
end
r13 = Recommendation.find(13)
[51,3].each do |k_id|
  r13.klasses << Klass.find(k_id) unless r13.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 14
  r.name_ja = "豚丼"
  r.url = "http://cookpad.com/recipe/3757967"
  r.image_url = "https://img.cpcdn.com/recipes/3757967/280/41f5be86825a1d07eb39382d3ac8ad4e.jpg?u=13890988&p=1458348814"
  r.shop_url = ""
end
r14 = Recommendation.find(14)
[52,3].each do |k_id|
  r14.klasses << Klass.find(k_id) unless r14.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 15
  r.name_ja = "親子丼"
  r.url = "http://cookpad.com/recipe/4107072"
  r.image_url = "https://img.cpcdn.com/recipes/4107072/280/a5b49c0ed2b4552326223a2124a726eb.jpg?u=15303568&p=1475664384"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13004605/dtlmap/"
end
r15 = Recommendation.find(15)
[53,27,3].each do |k_id|
  r15.klasses << Klass.find(k_id) unless r15.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 16
  r.name_ja = "カツ丼"
  r.url = "http://cookpad.com/recipe/3473377"
  r.image_url = "https://img.cpcdn.com/recipes/3473377/280/e357990740b5522cb604c6247fe8d7b2.jpg?u=12682740&p=1445515653"
  r.shop_url = "https://www.hotpepper.jp/strJ000684519/map/?vos=nhppalsa000013"
end
r16 = Recommendation.find(16)
[52,27,3].each do |k_id|
  r16.klasses << Klass.find(k_id) unless r16.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 17
  r.name_ja = "タコライス"
  r.url = "http://cookpad.com/recipe/4020317"
  r.image_url = "https://img.cpcdn.com/recipes/4020317/280/471963f3b0b53b1ed2a6dd91975aa90a.jpg?u=63286&p=1471084933"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13172140/dtlmenu/"
end
r17 = Recommendation.find(17)
[34,12,13,54,73].each do |k_id|
  r17.klasses << Klass.find(k_id) unless r17.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 18
  r.name_ja = "ビビンバ"
  r.url = "http://cookpad.com/recipe/4016370"
  r.image_url = "https://img.cpcdn.com/recipes/4016370/280/6abcf5ad0800b1798ba2692f578b7033.jpg?u=11875812&p=1470811500"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13178659/dtlmap/"
end
r18 = Recommendation.find(18)
[51,2,9].each do |k_id|
  r18.klasses << Klass.find(k_id) unless r18.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 19
  r.name_ja = "ハヤシライス"
  r.url = "http://cookpad.com/recipe/3762045"
  r.image_url = "https://img.cpcdn.com/recipes/3762045/280/4cefd3107a9b899c82c4bb77aaf94590.jpg?u=13901824&p=1458545972"
  r.shop_url = ""
end
r19 = Recommendation.find(19)
[3,51,12,6].each do |k_id|
  r19.klasses << Klass.find(k_id) unless r19.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 20
  r.name_ja = "海鮮丼"
  r.url = "http://cookpad.com/recipe/3293264"
  r.image_url = "https://img.cpcdn.com/recipes/3293264/280/4cd662c3709d074d2be56cec681b0a5b.jpg?u=4865857&p=1440680010"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13158074/dtlmap/"
end
r20 = Recommendation.find(20)
[55,62,70].each do |k_id|
  r20.klasses << Klass.find(k_id) unless r20.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 21
  r.name_ja = "生姜焼き"
  r.url = "http://cookpad.com/recipe/4064046"
  r.image_url = "https://img.cpcdn.com/recipes/4064046/280/674031186b19240eebfed2af3583c7b9.jpg?u=11926103&p=1473569016"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13129312/dtlmap/"
end
r21 = Recommendation.find(21)
[52,21,3,5].each do |k_id|
  r21.klasses << Klass.find(k_id) unless r21.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 22
  r.name_ja = "唐揚げ"
  r.url = "http://cookpad.com/recipe/4098177"
  r.image_url = "https://img.cpcdn.com/recipes/4098177/280/b848dccc5d59babbbf2e9d69979848d9.jpg?u=4370898&p=1475312003"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13197937/dtlmap/"
end
r22 = Recommendation.find(22)
[53].each do |k_id|
  r22.klasses << Klass.find(k_id) unless r22.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 23
  r.name_ja = "タコの唐揚げ"
  r.url = "http://cookpad.com/recipe/3771841"
  r.image_url = "https://img.cpcdn.com/recipes/3771841/280/ae4f689619c768ae1cb2611667a5f293.jpg?u=12917037&p=1458990825"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13027268/dtlmap/"
end
r23 = Recommendation.find(23)
[71].each do |k_id|
  r23.klasses << Klass.find(k_id) unless r23.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 24
  r.name_ja = "ゲソの唐揚げ"
  r.url = "http://cookpad.com/recipe/590407"
  r.image_url = "https://img.cpcdn.com/recipes/590407/280/d9bdf5263fa18fe79882a1bb4c79046e.jpg?u=542997&p=1214420340"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13057202/dtlmap/"
end
r24 = Recommendation.find(24)
[70].each do |k_id|
  r24.klasses << Klass.find(k_id) unless r24.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 25
  r.name_ja = "ぶり大根"
  r.url = "http://cookpad.com/recipe/4057568"
  r.image_url = "https://img.cpcdn.com/recipes/4057568/280/5eddd412bc7596dc831e503327d2b511.jpg?u=4882417&p=1473225103"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13002068/dtlmap/"
end
r25 = Recommendation.find(25)
[59,35].each do |k_id|
  r25.klasses << Klass.find(k_id) unless r25.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 26
  r.name_ja = "鯖の味噌煮"
  r.url = "http://cookpad.com/recipe/4038554"
  r.image_url = "https://img.cpcdn.com/recipes/4038554/280/360ed47928ee17947ca007aff8df309a.jpg?u=14522317&p=1472195732"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13080656/dtlmap/"
end
r26 = Recommendation.find(26)
[57,21].each do |k_id|
  r26.klasses << Klass.find(k_id) unless r26.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 27
  r.name_ja = "鮭のムニエル"
  r.url = "http://cookpad.com/recipe/3906369"
  r.image_url = "https://img.cpcdn.com/recipes/3906369/280/b6b8d815f681c25fc47be7a2042f28cb.jpg?u=2866692&p=1465302112"
  r.shop_url = ""
end
r27 = Recommendation.find(27)
[55].each do |k_id|
  r27.klasses << Klass.find(k_id) unless r27.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 28
  r.name_ja = "あさりの酒蒸し"
  r.url = "http://cookpad.com/recipe/4085813"
  r.image_url = "https://img.cpcdn.com/recipes/4085813/280/cf3eaef77227f0e7cd66e1330657f25c.jpg?u=15524238&p=1474623606"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13002068/dtlmap/"
end
r28 = Recommendation.find(28)
[22].each do |k_id|
  r28.klasses << Klass.find(k_id) unless r28.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 29
  r.name_ja = "しじみの味噌汁"
  r.url = "http://cookpad.com/recipe/4000423"
  r.image_url = "https://img.cpcdn.com/recipes/4000423/280/86bb4ac53bd5a7d420c474ee15cf1bd1.jpg?u=11241046&p=1469854883"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13018553/dtlmap/"
end
r29 = Recommendation.find(29)
[22].each do |k_id|
  r29.klasses << Klass.find(k_id) unless r29.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 30
  r.name_ja = "アヒージョ"
  r.url = "http://cookpad.com/recipe/4098570"
  r.image_url = "https://img.cpcdn.com/recipes/4098570/280/7ad3bcbb6d76592df9459c4374e9ea7c.jpg?u=7809204&p=1475240208"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13122562/dtlmap/"
end
r30 = Recommendation.find(30)
[24,69,71,6,25].each do |k_id|
  r30.klasses << Klass.find(k_id) unless r30.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 31
  r.name_ja = "カルパッチョ"
  r.url = "http://cookpad.com/recipe/4071979"
  r.image_url = "https://img.cpcdn.com/recipes/4071979/280/a74a8b07172c901c1c4f7fb067bcbc57.jpg?u=8526222&p=1473934473"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13051377/dtlmap/"
end
r31 = Recommendation.find(31)
[23,55,33].each do |k_id|
  r31.klasses << Klass.find(k_id) unless r31.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 32
  r.name_ja = "焼き魚"
  r.url = "http://cookpad.com/recipe/3713186"
  r.image_url = "https://img.cpcdn.com/recipes/3713186/280/e87e4ec612e9d1df7449daa8904cd6be.jpg?u=1883838&p=1459045515"
  r.shop_url = "https://tabelog.com/tokyo/A1310/A131001/13186565/dtlmap/"
end
r32 = Recommendation.find(32)
[57,55,59,60,61].each do |k_id|
  r32.klasses << Klass.find(k_id) unless r32.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 33
  r.name_ja = "鮭のホイル焼き"
  r.url = "http://cookpad.com/recipe/4103333"
  r.image_url = "https://img.cpcdn.com/recipes/4103333/280/9204f02265ac4f7bcc3350f141f03c9c.jpg?u=4575278&p=1475489609"
  r.shop_url = ""
end
r33 = Recommendation.find(33)
[55,3,6].each do |k_id|
  r33.klasses << Klass.find(k_id) unless r33.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 34
  r.name_ja = "だし巻き卵・卵焼き"
  r.url = "http://cookpad.com/recipe/3988486"
  r.image_url = "https://img.cpcdn.com/recipes/3988486/280/a18d6acd46e4102b2bc860dc2f6fcf7f.jpg?u=2300141&p=1469159103"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13186381/dtlmap/"
end
r34 = Recommendation.find(34)
[27].each do |k_id|
  r34.klasses << Klass.find(k_id) unless r34.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 35
  r.name_ja = "茶碗蒸し"
  r.url = "http://cookpad.com/recipe/4098281"
  r.image_url = "https://img.cpcdn.com/recipes/4098281/280/2fd40a7f1ab519d0deef190a8c337ed0.jpg?u=7605184&p=1475230895"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13157628/dtlmap/"
end
r35 = Recommendation.find(35)
[27,53,69,6].each do |k_id|
  r35.klasses << Klass.find(k_id) unless r35.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 36
  r.name_ja = "オムレツ"
  r.url = "http://cookpad.com/recipe/4036489"
  r.image_url = "https://img.cpcdn.com/recipes/4036489/280/a92de9d3fda402e1c21cbe2bbf8896a4.jpg?u=13466102&p=1472077011"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13048928/dtlmap/"
end
r36 = Recommendation.find(36)
[54,3,27].each do |k_id|
  r36.klasses << Klass.find(k_id) unless r36.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 37
  r.name_ja = "かに玉"
  r.url = "http://cookpad.com/recipe/4034054"
  r.image_url = "https://img.cpcdn.com/recipes/4034054/280/4987a67a532b6d9f3630782685d3b556.jpg?u=14975924&p=1471936087"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13136424/dtlmap/"
end
r37 = Recommendation.find(37)
[26,27].each do |k_id|
  r37.klasses << Klass.find(k_id) unless r37.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 38
  r.name_ja = "ニラ玉"
  r.url = "http://cookpad.com/recipe/4075364"
  r.image_url = "https://img.cpcdn.com/recipes/4075364/280/02c990a1fe20e88e465738546884fabe.jpg?u=10367910&p=1474108122"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13142582/dtlmap/"
end
r38 = Recommendation.find(38)
[10,27].each do |k_id|
  r38.klasses << Klass.find(k_id) unless r38.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 39
  r.name_ja = "レタスチャーハン"
  r.url = "http://cookpad.com/recipe/3949242"
  r.image_url = "https://img.cpcdn.com/recipes/3949242/280/413877bb6ce05ccd3fdaa266dc920157.jpg?u=12294938&p=1467199301"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13013212/dtlmap/"
end
r39 = Recommendation.find(39)
[34,27].each do |k_id|
  r39.klasses << Klass.find(k_id) unless r39.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 40
  r.name_ja = "五目炒飯"
  r.url = "http://cookpad.com/recipe/3517783"
  r.image_url = "https://img.cpcdn.com/recipes/3517783/280/234020236556d0463b259e35619b3b26.jpg?u=13537880&p=1447553801"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13136096/dtlmap/"
end
r40 = Recommendation.find(40)
[27,69,49,52,45].each do |k_id|
  r40.klasses << Klass.find(k_id) unless r40.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 41
  r.name_ja = "キムチチャーハン"
  r.url = "http://cookpad.com/recipe/4110611"
  r.image_url = "https://img.cpcdn.com/recipes/4110611/280/acfb07cfae3879d94583cd64f104d3c2.jpg?u=4376699&p=1475847261"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13172892/dtlmap/"
end
r41 = Recommendation.find(41)
[36,52,3].each do |k_id|
  r41.klasses << Klass.find(k_id) unless r41.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 42
  r.name_ja = "おにぎり"
  r.url = "http://cookpad.com/recipe/3890882"
  r.image_url = "https://img.cpcdn.com/recipes/3890882/280/fa1e0943bfb07081249e79d8a04ccc86.jpg?u=1665967&p=1466016213"
  r.shop_url = ""
end
r42 = Recommendation.find(42)
[55,62].each do |k_id|
  r42.klasses << Klass.find(k_id) unless r42.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 43
  r.name_ja = "カルボナーラ"
  r.url = "http://cookpad.com/recipe/4093301"
  r.image_url = "https://img.cpcdn.com/recipes/4093301/280/d31cbf16da6936abd505f85951bb04ab.jpg?u=15312212&p=1475038317"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13003190/dtlmap/"
end
r43 = Recommendation.find(43)
[52,27,73,32].each do |k_id|
  r43.klasses << Klass.find(k_id) unless r43.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 44
  r.name_ja = "ミートソース"
  r.url = "http://cookpad.com/recipe/4083180"
  r.image_url = "https://img.cpcdn.com/recipes/4083180/280/fd20af5dacb549374e95c063c2c5d26f.jpg?u=9002487&p=1474506999"
  r.shop_url = "https://tabelog.com/tokyo/A1317/A131709/13197042/dtlmap/"
end
r44 = Recommendation.find(44)
[54,12,3].each do |k_id|
  r44.klasses << Klass.find(k_id) unless r44.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 45
  r.name_ja = "ペペロンチーノ"
  r.url = "http://cookpad.com/recipe/4083122"
  r.image_url = "https://img.cpcdn.com/recipes/4083122/280/cfb08bb1fcc2079bf9a22e465bc9005b.jpg?u=13168823&p=1474504066"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13143336/dtlmap/"
end
r45 = Recommendation.find(45)
[52,47].each do |k_id|
  r45.klasses << Klass.find(k_id) unless r45.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 46
  r.name_ja = "ラザニア"
  r.url = "http://cookpad.com/recipe/4088706"
  r.image_url = "https://img.cpcdn.com/recipes/4088706/280/e68af69047f2f2cb437206f5533d3c02.jpg?u=4583005&p=1474776957"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13040286/dtlmap/"
end
r46 = Recommendation.find(46)
[3,54,12,73].each do |k_id|
  r46.klasses << Klass.find(k_id) unless r46.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 47
  r.name_ja = "味噌煮込みうどん"
  r.url = "http://cookpad.com/recipe/3776702"
  r.image_url = "https://img.cpcdn.com/recipes/3776702/280/30de6f722bd18997bfd776a20e651e2a.jpg?u=440527&p=1459230603"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130303/13012485/dtlmap/"
end
r47 = Recommendation.find(47)
[52,27,6,2,45].each do |k_id|
  r47.klasses << Klass.find(k_id) unless r47.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 48
  r.name_ja = "カレーうどん"
  r.url = "http://cookpad.com/recipe/4102403"
  r.image_url = "https://img.cpcdn.com/recipes/4102403/280/ba90e386fe2ae51a425e1e29dd3d49fd.jpg?u=530020&p=1475453647"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13045327/dtlmap/"
end
r48 = Recommendation.find(48)
[52,3,45].each do |k_id|
  r48.klasses << Klass.find(k_id) unless r48.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 49
  r.name_ja = "きつねうどん"
  r.url = "http://cookpad.com/recipe/3148528"
  r.image_url = "https://img.cpcdn.com/recipes/3148528/280/6993d35f5df81d2cdbe9a9b2eb9f85ad.jpg?u=8728584&p=1430285956"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13176258/dtlmap/"
end
r49 = Recommendation.find(49)
[45,46,28].each do |k_id|
  r49.klasses << Klass.find(k_id) unless r49.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 50
  r.name_ja = "たぬきうどん"
  r.url = "http://cookpad.com/recipe/3394364"
  r.image_url = "https://img.cpcdn.com/recipes/3394364/280/173413e728344c0cc5aba8dfeaa9a6f5.jpg?u=7480335&p=1441779969"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13176258/dtlmap/"
end
r50 = Recommendation.find(50)
[45].each do |k_id|
  r50.klasses << Klass.find(k_id) unless r50.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 51
  r.name_ja = "きつね蕎麦"
  r.url = "http://cookpad.com/recipe/1247532"
  r.image_url = "https://img.cpcdn.com/recipes/1247532/280/6b0d81b2040b0165a37f7cc7b8ff777d.jpg?u=325978&p=1285913545"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13176258/dtlmap/"
end
r51 = Recommendation.find(51)
[45,46,28].each do |k_id|
  r51.klasses << Klass.find(k_id) unless r51.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 52
  r.name_ja = "たぬき蕎麦"
  r.url = "http://cookpad.com/recipe/34426"
  r.image_url = "https://img.cpcdn.com/recipes/34426/280/a4b2058dd777ee3b40ff5bf964a64899.jpg?u=8137&p=1214208810"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13113238/dtlmap/"
end
r52 = Recommendation.find(52)
[45].each do |k_id|
  r52.klasses << Klass.find(k_id) unless r52.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 53
  r.name_ja = "焼きそば"
  r.url = "http://cookpad.com/recipe/4109197"
  r.image_url = "https://img.cpcdn.com/recipes/4109197/280/0cfcf15f79cac3cec21a193925aa6d2c.jpg?u=15303568&p=1475754932"
  r.shop_url = "https://tabelog.com/tokyo/A1316/A131603/13039021/dtlmap/"
end
r53 = Recommendation.find(53)
[52,2,3,9,5].each do |k_id|
  r53.klasses << Klass.find(k_id) unless r53.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 54
  r.name_ja = "お好み焼き"
  r.url = "http://cookpad.com/recipe/4018294"
  r.image_url = "https://img.cpcdn.com/recipes/4018294/280/3a1831a543f4832b22ba7978f16dd787.jpg?u=14174685&p=1475134185"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13019905/dtlmap/"
end
r54 = Recommendation.find(54)
[5,45,39,52].each do |k_id|
  r54.klasses << Klass.find(k_id) unless r54.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 55
  r.name_ja = "たこ焼き"
  r.url = "http://cookpad.com/recipe/4082487"
  r.image_url = "https://img.cpcdn.com/recipes/4082487/280/4d0af5092ed8b696c42989465c5dbfee.jpg?u=14524893&p=1474456955"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130303/13162202/dtlmap/"
end
r55 = Recommendation.find(55)
[71,45,5].each do |k_id|
  r55.klasses << Klass.find(k_id) unless r55.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 56
  r.name_ja = "味噌汁"
  r.url = "http://cookpad.com/recipe/4099570"
  r.image_url = "https://img.cpcdn.com/recipes/4099570/280/7e55a17df6d4aa108a156f2ae32d038a.jpg?u=15189889&p=1475307604"
  r.shop_url = "https://tabelog.com/tokyo/A1307/A130703/13035727/dtlmap/"
end
r56 = Recommendation.find(56)
[35,72,22,6,28,45].each do |k_id|
  r56.klasses << Klass.find(k_id) unless r56.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 57
  r.name_ja = "豚汁"
  r.url = "http://cookpad.com/recipe/4098426"
  r.image_url = "https://img.cpcdn.com/recipes/4098426/280/53298835937168e53bbdebaf22b231fe.jpg?u=15424583&p=1475235453"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13001589/dtlmap/"
end
r57 = Recommendation.find(57)
[52,2,4,30,3,28].each do |k_id|
  r57.klasses << Klass.find(k_id) unless r57.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 58
  r.name_ja = "けんちん汁"
  r.url = "http://cookpad.com/recipe/3614589"
  r.image_url = "https://img.cpcdn.com/recipes/3614589/280/0970eb6a4c6acbde3d90fd9d9b4ae87a.jpg?u=13873176&p=1452418033"
  r.shop_url = ""
end
r58 = Recommendation.find(58)
[35,37,2,30,45,28].each do |k_id|
  r58.klasses << Klass.find(k_id) unless r58.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 59
  r.name_ja = "ポトフ"
  r.url = "http://cookpad.com/recipe/3955624"
  r.image_url = "https://img.cpcdn.com/recipes/3955624/280/f193df8ed9c1b3b3a96c9b13e19dfac0.jpg?u=11862605&p=1467511978"
  r.shop_url = ""
end
r59 = Recommendation.find(59)
[4,2,3,52].each do |k_id|
  r59.klasses << Klass.find(k_id) unless r59.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 60
  r.name_ja = "おでん"
  r.url = "http://cookpad.com/recipe/4094255"
  r.image_url = "https://img.cpcdn.com/recipes/4094255/280/33eba9193f4625e0b3c70db26b1bd723.jpg?u=13353405&p=1475040958"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13168417/dtlmap/"
end
r60 = Recommendation.find(60)
[35,52,31,30,27].each do |k_id|
  r60.klasses << Klass.find(k_id) unless r60.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 61
  r.name_ja = "すき焼き"
  r.url = "http://cookpad.com/recipe/3868847"
  r.image_url = "https://img.cpcdn.com/recipes/3868847/280/0b0ca0deab143c3acd9a4c3f1a3ccbdc.jpg?u=14032964&p=1463659699"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13153615/dtlmap/"
end
r61 = Recommendation.find(61)
[51,30,45,6,28,36].each do |k_id|
  r61.klasses << Klass.find(k_id) unless r61.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 62
  r.name_ja = "キムチ鍋"
  r.url = "http://cookpad.com/recipe/3704774"
  r.image_url = "https://img.cpcdn.com/recipes/3704774/280/9720b3fdeaa115d161ea0958031cf5ee.jpg?u=13065301&p=1456091653"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13014072/dtlmap/"
end
r62 = Recommendation.find(62)
[52,45,36,28,6,48].each do |k_id|
  r62.klasses << Klass.find(k_id) unless r62.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 63
  r.name_ja = "ポテトサラダ"
  r.url = "http://cookpad.com/recipe/4089045"
  r.image_url = "https://img.cpcdn.com/recipes/4089045/280/9e9a615d25615878b30697a8595dc880.jpg?u=7402154&p=1474789524"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13169770/dtlmap/"
end
r63 = Recommendation.find(63)
[4,2,18,27,3].each do |k_id|
  r63.klasses << Klass.find(k_id) unless r63.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 64
  r.name_ja = "かぼちゃのサラダ"
  r.url = "http://cookpad.com/recipe/4069301"
  r.image_url = "https://img.cpcdn.com/recipes/4069301/280/b2ce9bf4d434cad4f3c2af31bbab9ced.jpg?u=1016249&p=1473819597"
  r.shop_url = ""
end
r64 = Recommendation.find(64)
[14,73,34].each do |k_id|
  r64.klasses << Klass.find(k_id) unless r64.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 65
  r.name_ja = "サンドイッチ"
  r.url = "http://cookpad.com/recipe/4023696"
  r.image_url = "https://img.cpcdn.com/recipes/4023696/280/5b6db7c2442a0e1b00e50e50036ab324.jpg?u=5419561&p=1471323308"
  r.shop_url = ""
end
r65 = Recommendation.find(65)
[12,52,34,73,27].each do |k_id|
  r65.klasses << Klass.find(k_id) unless r65.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 66
  r.name_ja = "ゴーヤチャンプル"
  r.url = "http://cookpad.com/recipe/4011197"
  r.image_url = "https://img.cpcdn.com/recipes/4011197/280/ff9e4ce2aba9ebc132fa613226e05ea5.jpg?u=7871593&p=1470483154"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13028532/dtlmap/"
end
r66 = Recommendation.find(66)
[1,28,27,52].each do |k_id|
  r66.klasses << Klass.find(k_id) unless r66.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 67
  r.name_ja = "チリコンカン"
  r.url = "http://cookpad.com/recipe/4028493"
  r.image_url = "https://img.cpcdn.com/recipes/4028493/280/29506db880472dbed64f18fe35366d83.jpg?u=484561&p=1471596853"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13005345/dtlmap/"
end
r67 = Recommendation.find(67)
[7,54,3,47,11,12].each do |k_id|
  r67.klasses << Klass.find(k_id) unless r67.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 68
  r.name_ja = "コーンスープ"
  r.url = "http://cookpad.com/recipe/4107694"
  r.image_url = "https://img.cpcdn.com/recipes/4107694/280/de0ddc1efb7563d19fd02aed4f84a63b.jpg?u=6292958&p=1475684569"
  r.shop_url = ""
end
r68 = Recommendation.find(68)
[19].each do |k_id|
  r68.klasses << Klass.find(k_id) unless r68.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 69
  r.name_ja = "リゾット"
  r.url = "http://cookpad.com/recipe/4082517"
  r.image_url = "https://img.cpcdn.com/recipes/4082517/280/22733b5a0321cc6210f1d50656caad26.jpg?u=10173236&p=1474457824"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13004476/dtlmap/"
end
r69 = Recommendation.find(69)
[6,52,73].each do |k_id|
  r69.klasses << Klass.find(k_id) unless r69.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 70
  r.name_ja = "ピザ"
  r.url = "http://cookpad.com/recipe/4046066"
  r.image_url = "https://img.cpcdn.com/recipes/4046066/280/284a606211c9eca1c0db538606b0532e.jpg?u=15338589&p=1472618426"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13116788/dtlmap/"
end
r70 = Recommendation.find(70)
[12,73,52,11].each do |k_id|
  r70.klasses << Klass.find(k_id) unless r70.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 71
  r.name_ja = "坦々麺"
  r.url = "http://cookpad.com/recipe/4080078"
  r.image_url = "https://img.cpcdn.com/recipes/4080078/280/32c915bd33829f740ff47b2162a7da80.jpg?u=14922881&p=1474446450"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13136096/dtlmap/"
end
r71 = Recommendation.find(71)
[46,9,54].each do |k_id|
  r71.klasses << Klass.find(k_id) unless r71.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 72
  r.name_ja = "ラーメン"
  r.url = "http://cookpad.com/recipe/3974610"
  r.image_url = "https://img.cpcdn.com/recipes/3974610/280/56e28c39111f3b5c0c67eec4161bc1da.jpg?u=1651546&p=1468411919"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13005500/"
end
r72 = Recommendation.find(72)
[52,9,27,31,45].each do |k_id|
  r72.klasses << Klass.find(k_id) unless r72.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 73
  r.name_ja = "冷やし中華"
  r.url = "http://cookpad.com/recipe/4050809"
  r.image_url = "https://img.cpcdn.com/recipes/4050809/280/f17e994faa6166ca0b05fa98979948f4.jpg?u=4038599&p=1473124914"
  r.shop_url = ""
end
r73 = Recommendation.find(73)
[52,18,27,53].each do |k_id|
  r73.klasses << Klass.find(k_id) unless r73.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 74
  r.name_ja = "クラムチャウダー"
  r.url = "http://cookpad.com/recipe/3847474"
  r.image_url = "https://img.cpcdn.com/recipes/3847474/280/65def3fa302e4de3d4abb1ba3c272b11.jpg?u=9468161&p=1462691466"
  r.shop_url = "https://www.hotpepper.jp/strJ000004286/map/?vos=nhppalsa000013"
end
r74 = Recommendation.find(74)
[22,4,2,3].each do |k_id|
  r74.klasses << Klass.find(k_id) unless r74.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 75
  r.name_ja = "つみれ汁"
  r.url = "http://cookpad.com/recipe/3605871"
  r.image_url = "https://img.cpcdn.com/recipes/3605871/280/d267304d985a2b3d3ef6d9b5857561e3.jpg?u=256385&p=1452068769"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13001281/dtlmap/"
end
r75 = Recommendation.find(75)
[56,60,58].each do |k_id|
  r75.klasses << Klass.find(k_id) unless r75.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 76
  r.name_ja = "エビチリ"
  r.url = "http://cookpad.com/recipe/4040002"
  r.image_url = "https://img.cpcdn.com/recipes/4040002/280/9a4a916f5deba05950a48313ad3d17ab.jpg?u=3642591&p=1472290911"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13197937/dtlmap/"
end
r76 = Recommendation.find(76)
[69].each do |k_id|
  r76.klasses << Klass.find(k_id) unless r76.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 77
  r.name_ja = "ビーフシチュー"
  r.url = "http://cookpad.com/recipe/3937072"
  r.image_url = "https://img.cpcdn.com/recipes/3937072/280/98ef628da0349bcadc39f8db516fc48b.jpg?u=4161013&p=1466648216"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13198141/dtlmap/"
end
r77 = Recommendation.find(77)
[51,4,2,3].each do |k_id|
  r77.klasses << Klass.find(k_id) unless r77.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 78
  r.name_ja = "シチュー"
  r.url = "http://cookpad.com/recipe/4103175"
  r.image_url = "https://img.cpcdn.com/recipes/4103175/280/4f4ece7179b1f5390c319ba645bff666.jpg?u=15030212&p=1475485345"
  r.shop_url = ""
end
r78 = Recommendation.find(78)
[53,52,4,2,3,73].each do |k_id|
  r78.klasses << Klass.find(k_id) unless r78.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 79
  r.name_ja = "ポークピカタ"
  r.url = "http://cookpad.com/recipe/3057191"
  r.image_url = "https://img.cpcdn.com/recipes/3057191/280/5f0fbcfb2dc823584d36f8eae94916eb.jpg?u=10359471&p=1425874646"
  r.shop_url = ""
end
r79 = Recommendation.find(79)
[52,27,73].each do |k_id|
  r79.klasses << Klass.find(k_id) unless r79.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 80
  r.name_ja = "バンバンジー"
  r.url = "http://cookpad.com/recipe/4090301"
  r.image_url = "https://img.cpcdn.com/recipes/4090301/280/c00009fc1cd3f3b69d60ff1359111a51.jpg?u=1228553&p=1474856854"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13016628/dtlmap/"
end
r80 = Recommendation.find(80)
[53,18].each do |k_id|
  r80.klasses << Klass.find(k_id) unless r80.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 81
  r.name_ja = "コールスロー"
  r.url = "http://cookpad.com/recipe/4089862"
  r.image_url = "https://img.cpcdn.com/recipes/4089862/280/6f64c51f3df08d80b7521e8fe4d5d013.jpg?u=13403594&p=1474814184"
  r.shop_url = ""
end
r81 = Recommendation.find(81)
[5,2,3,19].each do |k_id|
  r81.klasses << Klass.find(k_id) unless r81.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 82
  r.name_ja = "八宝菜"
  r.url = "http://cookpad.com/recipe/3878865"
  r.image_url = "https://img.cpcdn.com/recipes/3878865/280/91701b264b77d734db9a5661a65f3ec9.jpg?u=3588119&p=1464147683"
  r.shop_url = "https://www.hotpepper.jp/strJ000139815/map/?vos=nhppalsa000013"
end
r82 = Recommendation.find(82)
[2,52,45,6,69,70,36].each do |k_id|
  r82.klasses << Klass.find(k_id) unless r82.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 83
  r.name_ja = "青椒肉絲"
  r.url = "http://cookpad.com/recipe/3869282"
  r.image_url = "https://img.cpcdn.com/recipes/3869282/280/5c863748b96bb8b33282e7a044ffdf54.jpg?u=4256914&p=1464616000"
  r.shop_url = "https://www.hotpepper.jp/strJ000797155/map/?vos=nhppalsa000013"
end
r83 = Recommendation.find(83)
[11,15,51].each do |k_id|
  r83.klasses << Klass.find(k_id) unless r83.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 84
  r.name_ja = "大学芋"
  r.url = "http://cookpad.com/recipe/4096120"
  r.image_url = "https://img.cpcdn.com/recipes/4096120/280/3c30ca27ed5eff1e288c190af483ead2.jpg?u=6945395&p=1475124484"
  r.shop_url = ""
end
r84 = Recommendation.find(84)
[38].each do |k_id|
  r84.klasses << Klass.find(k_id) unless r84.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 85
  r.name_ja = "ロールキャベツ"
  r.url = "http://cookpad.com/recipe/4067235"
  r.image_url = "https://img.cpcdn.com/recipes/4067235/280/a7f810d27cbd50c28e2ffce11c98b801.jpg?u=15454529&p=1473721854"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13058669/dtlmap/"
end
r85 = Recommendation.find(85)
[5,52,3].each do |k_id|
  r85.klasses << Klass.find(k_id) unless r85.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 86
  r.name_ja = "筑前煮"
  r.url = "http://cookpad.com/recipe/3958242"
  r.image_url = "https://img.cpcdn.com/recipes/3958242/280/365fa32165b45db2fd1f91751cb5d664.jpg?u=13246779&p=1467628954"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13175729/dtlmap/"
end
r86 = Recommendation.find(86)
[53,37,6,2,31].each do |k_id|
  r86.klasses << Klass.find(k_id) unless r86.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 87
  r.name_ja = "春巻き"
  r.url = "http://cookpad.com/recipe/4049593"
  r.image_url = "https://img.cpcdn.com/recipes/4049593/280/06f20f6a4f910ad171220a5ff7c0d62e.jpg?u=4831715&p=1472810476"
  r.shop_url = ""
end
r87 = Recommendation.find(87)
[54,2,31,6,10].each do |k_id|
  r87.klasses << Klass.find(k_id) unless r87.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 88
  r.name_ja = "ミネストローネ"
  r.url = "http://cookpad.com/recipe/4066676"
  r.image_url = "https://img.cpcdn.com/recipes/4066676/280/7fb9e80b00f0194736955bfa3a5bf7af.jpg?u=10173236&p=1473679316"
  r.shop_url = ""
end
r88 = Recommendation.find(88)
[52,3,2,4,5,12].each do |k_id|
  r88.klasses << Klass.find(k_id) unless r88.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 89
  r.name_ja = "ナムル"
  r.url = "http://cookpad.com/recipe/4091387"
  r.image_url = "https://img.cpcdn.com/recipes/4091387/280/6d5734703a0b142e38c606aee14b59c0.jpg?u=14132167&p=1474895197"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13178659/dtlmap/"
end
r89 = Recommendation.find(89)
[2,9,46,41].each do |k_id|
  r89.klasses << Klass.find(k_id) unless r89.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 90
  r.name_ja = "ラタトゥイユ"
  r.url = "http://cookpad.com/recipe/4102048"
  r.image_url = "https://img.cpcdn.com/recipes/4102048/280/bcc0260b116a014ba201987fc80644c7.jpg?u=12920261&p=1475418633"
  r.shop_url = ""
end
r90 = Recommendation.find(90)
[16,52,6,36,12].each do |k_id|
  r90.klasses << Klass.find(k_id) unless r90.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 91
  r.name_ja = "アボカドと豆のサラダ"
  r.url = "http://cookpad.com/recipe/3646586"
  r.image_url = "https://img.cpcdn.com/recipes/3646586/280/6f2b8a3dba6520d174076b62a71d1dc7.jpg?u=10956408&p=1453797246"
  r.shop_url = ""
end
r91 = Recommendation.find(91)
[8,33].each do |k_id|
  r91.klasses << Klass.find(k_id) unless r91.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 92
  r.name_ja = "オクラと大根のサラダ"
  r.url = "http://cookpad.com/recipe/4097569"
  r.image_url = "https://img.cpcdn.com/recipes/4097569/280/5b2f55aa4ce607a4479bd9cefec35daa.jpg?u=14371545&p=1475201751"
  r.shop_url = ""
end
r92 = Recommendation.find(92)
[17,35].each do |k_id|
  r92.klasses << Klass.find(k_id) unless r92.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 93
  r.name_ja = "モロヘイヤのおひたし"
  r.url = "http://cookpad.com/recipe/3296388"
  r.image_url = "https://img.cpcdn.com/recipes/3296388/280/63bc0d3ae108f947ac9df3500168b506.jpg?u=12640950&p=1436916456"
  r.shop_url = ""
end
r93 = Recommendation.find(93)
[20].each do |k_id|
  r93.klasses << Klass.find(k_id) unless r93.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 94
  r.name_ja = "パエリア"
  r.url = "http://cookpad.com/recipe/4051735"
  r.image_url = "https://img.cpcdn.com/recipes/4051735/280/27f9718056a16e09336e4ec70a054f94.jpg?u=15121473&p=1472936068"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13122562/dtlmap/"
end
r94 = Recommendation.find(94)
[24,15,53,70,69,47,3].each do |k_id|
  r94.klasses << Klass.find(k_id) unless r94.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 95
  r.name_ja = "納豆チャーハン"
  r.url = "http://cookpad.com/recipe/3570093"
  r.image_url = "https://img.cpcdn.com/recipes/3570093/280/457a2ecbf5599b5253ff7804538cf4bf.jpg?u=13711980&p=1451793488"
  r.shop_url = ""
end
r95 = Recommendation.find(95)
[29,27].each do |k_id|
  r95.klasses << Klass.find(k_id) unless r95.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 96
  r.name_ja = "焼き芋"
  r.url = "http://cookpad.com/recipe/4059595"
  r.image_url = "https://img.cpcdn.com/recipes/4059595/280/ea0d12aed74d68c80078242a55512f82.jpg?u=2685672&p=1473322282"
  r.shop_url = ""
end
r96 = Recommendation.find(96)
[38].each do |k_id|
  r96.klasses << Klass.find(k_id) unless r96.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 97
  r.name_ja = "山かけ丼"
  r.url = "http://cookpad.com/recipe/2760543"
  r.image_url = "https://img.cpcdn.com/recipes/2760543/280/b8dccb24d7c89521e87f548fa9f07db1.jpg?u=666334&p=1408427678"
  r.shop_url = ""
end
r97 = Recommendation.find(97)
[62,39].each do |k_id|
  r97.klasses << Klass.find(k_id) unless r97.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 98
  r.name_ja = "セロリの漬物"
  r.url = "http://cookpad.com/recipe/2793839"
  r.image_url = "https://img.cpcdn.com/recipes/2793839/280/b659149445f9be22c230d9919ddb73ac.jpg?u=10526375&p=1410478683"
  r.shop_url = ""
end
r98 = Recommendation.find(98)
[42].each do |k_id|
  r98.klasses << Klass.find(k_id) unless r98.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 99
  r.name_ja = "バーニャカウダ"
  r.url = "http://cookpad.com/recipe/3842879"
  r.image_url = "https://img.cpcdn.com/recipes/3842879/280/eecd78ed621d8413335512c006e8be74.jpg?u=4847755&p=1462458117"
  r.shop_url = "https://www.hotpepper.jp/strJ001152664/map/?vos=nhppalsa000013"
end
r99 = Recommendation.find(99)
[43,35,2,18].each do |k_id|
  r99.klasses << Klass.find(k_id) unless r99.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 100
  r.name_ja = "焼売"
  r.url = "http://cookpad.com/recipe/4039201"
  r.image_url = "https://img.cpcdn.com/recipes/4039201/280/ad7af3a1b69253136c56d58a8c9c156c.jpg?u=13352899&p=1472227149"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130301/13100584/dtlmap/"
end
r100 = Recommendation.find(100)
[49,54,3].each do |k_id|
  r100.klasses << Klass.find(k_id) unless r100.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 101
  r.name_ja = "クレソンのおひたし"
  r.url = "http://cookpad.com/recipe/3083202"
  r.image_url = "https://img.cpcdn.com/recipes/3083202/280/0e59b2374a1acdc2604d3a91204f6719.jpg?u=824489&p=1427104145"
  r.shop_url = ""
end
r101 = Recommendation.find(101)
[50].each do |k_id|
  r101.klasses << Klass.find(k_id) unless r101.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 102
  r.name_ja = "舌平目のムニエル"
  r.url = "http://cookpad.com/recipe/4096682"
  r.image_url = "https://img.cpcdn.com/recipes/4096682/280/6d72e9fa7fc6dd2beed9394ed1fbad55.jpg?u=13228683&p=1475144228"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13194110/dtlmap/"
end
r102 = Recommendation.find(102)
[63].each do |k_id|
  r102.klasses << Klass.find(k_id) unless r102.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 103
  r.name_ja = "カレイの煮付け"
  r.url = "http://cookpad.com/recipe/3862534"
  r.image_url = "https://img.cpcdn.com/recipes/3862534/280/7819cb4922af4c7d7f49598c13d1a95e.jpg?u=12825521&p=1463394342"
  r.shop_url = ""
end
r103 = Recommendation.find(103)
[64].each do |k_id|
  r103.klasses << Klass.find(k_id) unless r103.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 104
  r.name_ja = "わかさぎの南蛮漬け"
  r.url = "http://cookpad.com/recipe/3836407"
  r.image_url = "https://img.cpcdn.com/recipes/3836407/280/715472fe792b7970e99a585fb964fce6.jpg?u=11649178&p=1462271116"
  r.shop_url = ""
end
r104 = Recommendation.find(104)
[65,3,2,11].each do |k_id|
  r104.klasses << Klass.find(k_id) unless r104.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 105
  r.name_ja = "たらのホイル焼き"
  r.url = "http://cookpad.com/recipe/3554153"
  r.image_url = "https://img.cpcdn.com/recipes/3554153/280/a5e72252f3fb57e70c0da22db0c33664.jpg?u=10214224&p=1449204741"
  r.shop_url = ""
end
r105 = Recommendation.find(105)
[66,45,6,36,28].each do |k_id|
  r105.klasses << Klass.find(k_id) unless r105.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 106
  r.name_ja = "うな重"
  r.url = "http://cookpad.com/recipe/3897888"
  r.image_url = "https://img.cpcdn.com/recipes/3897888/280/06e6ace23e1b5a89352102cd0417b5b5.jpg?u=3411629&p=1464941442"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13079474/dtlmap/"
end
r106 = Recommendation.find(106)
[67].each do |k_id|
  r106.klasses << Klass.find(k_id) unless r106.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 107
  r.name_ja = "カツオのたたき"
  r.url = "http://cookpad.com/recipe/4084029"
  r.image_url = "https://img.cpcdn.com/recipes/4084029/280/231d68cc062550507ecde04e5f27abe5.jpg?u=9638423&p=1474536869"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13034631/dtlmap/"
end
r107 = Recommendation.find(107)
[68,45].each do |k_id|
  r107.klasses << Klass.find(k_id) unless r107.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 108
  r.name_ja = "アクアパッツァ"
  r.url = "http://cookpad.com/recipe/3923013"
  r.image_url = "https://img.cpcdn.com/recipes/3923013/280/e24f5abf2796472d876d827811ecd9cb.jpg?u=4470103&p=1465996728"
  r.shop_url = "https://tabelog.com/tokyo/A1303/A130302/13004578/dtlmap/"
end
r108 = Recommendation.find(108)
[44,22,3,66,16,12,5].each do |k_id|
  r108.klasses << Klass.find(k_id) unless r108.klasses.pluck(:id).include?(k_id)
end

Recommendation.seed do |r|
  r.id = 109
  r.name_ja = "かぼちゃコロッケ"
  r.url = "http://cookpad.com/recipe/4102166"
  r.image_url = "https://img.cpcdn.com/recipes/4102166/280/52b64d7740f5a7d4145e3f05164ede88.jpg?u=7408285&p=1475425058"
  r.shop_url = ""
end
r109 = Recommendation.find(109)
[14,2].each do |k_id|
  r109.klasses << Klass.find(k_id) unless r109.klasses.pluck(:id).include?(k_id)
end
