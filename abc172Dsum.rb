n = gets.to_i
ans = 0
(1..n).each do |i|
  # count = n / i
  # min = i
  # max = count * i
  # ans += count * (min + max) / 2
  count = n / i
  ans += count * ((count + 1) * i) / 2
end
puts ans

# 埋め込み
# require 'prime'
# # 約数リスト
# def divisors(n)
#   n.prime_division.inject([1]) do |array, (k, v)|
#     (0..v).map{ |i| k ** i }.product(array).map{ |a, b| a * b }
#   end.sort
# end

# n = gets.to_i
# memo_per_10000 = [0, 493438984, 2111951377, 4934219787, 9001617396, 14343475240, 20983549232, 28938411754, 38222337945, 48855592736, 60838190672, 74193687476, 88921806577, 105036084674, 122543360219, 141448665788, 161762066784, 183487293576, 206644111130, 231208670456, 257212470774, 284661691691, 313538542845, 343862458416, 375639765395, 408875452660, 443559968601, 479723200366, 517333062431, 556419507715, 596981215450, 639007377350, 682529770555, 727538683373, 774009411906, 821990325762, 871476277626, 922424492974, 974880028674, 1028856951678, 1084296609104, 1141266683482, 1199769931446, 1259717167514, 1321237832726, 1384261675499, 1448776778605, 1514816915551, 1582401743782, 1651519869360, 1722125036282, 1794261310039, 1867938145253, 1943162263556, 2019919516903, 2098185047461, 2177990752180, 2259356996967, 2342246760421, 2426683306008, 2512661322551, 2600202380059, 2689253635198, 2779911682839, 2872076940842, 2965792104633, 3061088597282, 3157923865183, 3256297470052, 3356283349093, 3457770622390, 3560833491555, 3665505698976, 3771665000331, 3879451580190, 3988800240289, 4099689915648, 4212156072325, 4326227368544, 4441788452022, 4558987534475, 4677840157734, 4798099997041, 4920000663900, 5043552008724, 5168559295617, 5295214000044, 5423487803310, 5553301601415, 5684679342328, 5817729717828, 5952248621195, 6088428461000, 6226149254802, 6365487771753, 6506418585007, 6648988032736, 6793042552516, 6938843502589, 7086136299955, 7235062807366, 7385497922168, 7537595029369, 7691272542181, 7846594285002, 8003510992854, 8162003209593, 8322065666301, 8483854862004, 8647160290700, 8812039622862, 8978549345553, 9146706496165, 9316419043328, 9487781973018, 9660719955296, 9835269787927, 10011553756671, 10189253411315, 10368667669769, 10549659220862, 10732401846534, 10916579731860, 11102453274617, 11289904537263, 11479011688245, 11669830174971, 11862029769733, 12056063349904, 12251617620346, 12448845177256, 12647680629690, 12848171370860, 13050254462297, 13253960158691, 13459323658561, 13666226110773, 13874834196455, 14085094521507, 14296814468805, 14510332007222, 14725429439492, 14942131234656, 15160521193552, 15380588954554, 15602136739002, 15825403657376, 16050451660910, 16276847020856, 16505115662434, 16734924755096, 16966264626222, 17199447614438, 17434170056672, 17670514459840, 17908481787130, 18148241497132, 18389471243932, 18632333327852, 18877006937424, 19123138141378, 19371049907390, 19620742818748, 19871685989154, 20124476869606, 20379057733244, 20634980880846, 20892786409876, 21152210987700, 21413258654304, 21675833225770, 21940306512852, 22206142281006, 22473855635042, 22743180271196, 23013964372551, 23286698574789, 23560888221575, 23836769564907, 24114378406399, 24393634293809, 24674416929987, 24956947315787, 25241193314980, 25526998756870, 25814409354826, 26103616946734, 26394550063000, 26686893099848, 26981155333407, 27276821356759, 27574386655175, 27873535407821, 28174159348173, 28476594164494, 28780788606772, 29086633471688, 29393966055558, 29703149003024, 30013792137851, 30326413365285, 30640395292273, 30956069654443, 31273523102626, 31592664449728, 31913376078550, 32235842932848, 32560029990049, 32885785039643, 33213220430143, 33542358268005, 33873031165364, 34205581585566, 34539604444304, 34875425263721, 35212812420453, 35552154166961, 35892886791151, 36235517412420, 36579557281204, 36925459066686, 37272877068179, 37622167432867, 37972983625527, 38325669456310, 38679944926812, 39035687683706, 39393229506853, 39752627629789, 40113337934391, 40476248899052, 40840525066648, 41206411398402, 41574140883741, 41943676682207, 42314367955206, 42687136285026, 43061485153064, 43437687786881, 43815302669763, 44194833598353, 44575932486140, 44959075432376, 45343572745399, 45729521171181, 46117511559977, 46507039889452, 46898189118372, 47291122961301, 47685728865579, 48081994935671, 48480082300526, 48879970671808, 49281110607237, 49684086992257, 50088943167842, 50495479917520, 50903466600692, 51313347525789, 51724975620189, 52138123487538, 52553108327972, 52969581501827, 53387767611137, 53807963320230, 54229542299288, 54653198694933, 55078208662363, 55504960390211, 55933215747316, 56363615930452, 56795212776465, 57228909958313, 57664215816822, 58101239718024, 58539707599783, 58980252241083, 59421892348898, 59865706329526, 60311259225171, 60758384185743, 61207170466520, 61657753740090, 62110005557983, 62563875183571, 63019567631040, 63476896129040, 63935958271999, 64396829979171, 64859270285018, 65323182791149, 65789089604569, 66256629418190, 66725831508196, 67197154766221, 67669778128369, 68143846134308, 68620152785028, 69098036648615, 69577694425039, 70058785460280, 70541587609951, 71025938505929, 71512452345322, 72000611436936, 72490226710653, 72981712491617, 73474739478198, 73969802569251, 74466324672669, 74964555109988, 75464743316958, 75966455520027, 76469922185833, 76974918304364, 77481786106093, 77990116976087, 78500489297008, 79012557024984, 79526167516159, 80041527790312, 80558645237098, 81077594980197, 81598055713779, 82120713079294, 82644353395127, 83169941989863, 83697504542732, 84226394594512, 84757231028297, 85290161753688, 85823956198104, 86359994965751, 86897880537014, 87437307393462, 87978318105507, 88521402624739, 89065833437896, 89612148645041, 90160177388367, 90709780843282, 91261462998831, 91814670146287, 92369737296000, 92925795939321, 93484427284737, 94044459497514, 94605692593587, 95169619029369, 95734736626700, 96301520878991, 96871003843775, 97440790250114, 98012538259925, 98586604492967, 99162032503100, 99739464176165, 100318795327755, 100899258277840, 101481591756225, 102065855149715, 102652068778038, 103239275746737, 103829147617875, 104419705255676, 105012670748303, 105607087655847, 106203258904286, 106801251505039, 107401147943134, 108002269398516, 108605669699699, 109210412671028, 109816898593848, 110425621805189, 111035349416856, 111647260553880, 112260978633767, 112876414074318, 113493082165965, 114111807921375, 114732129627940, 115354581555727, 115978374551469, 116604201140710, 117231448199853, 117860345420030, 118491457697962, 119123896922237, 119758228396194, 120394329084663, 121032207586387, 121671762836798, 122312774834877, 122955612335878, 123600339753238, 124247228070109, 124895026488944, 125544979006721, 126196993528335, 126850549017804, 127505199391685, 128162238812474, 128820653080288, 129480852076751, 130143314566922, 130806818828029, 131472491663433, 132139863485890, 132808680912837, 133479467089246, 134152010492156, 134826295251391, 135502107129054, 136180066055547, 136859038394801, 137540475359704, 138223390236401, 138908157808408, 139594113155195, 140282617787827, 140971935053758, 141664050636387, 142357602038586, 143052689302720, 143749192448739, 144447897755264, 145148497213081, 145850281904976, 146554080642842, 147259491582477, 147967040134080, 148676185176293, 149386679322656, 150099453429042, 150813537261139, 151529826444886, 152247135978549, 152966937395338, 153688169519778, 154411235469265, 155136321517588, 155862218888277, 156590458911006, 157320579912726, 158052520943755, 158785663003084, 159521080147969, 160258283568446, 160996569067233, 161737467121483, 162479234078350, 163223256696949, 163968850251200, 164716254597751, 165465511572167, 166216722634706, 166969089792981, 167723475231634, 168479936246421, 169238102781982, 169997490957786, 170759095684543, 171522119425146, 172287112634491, 173053807479870, 173822301914317, 174592676086419, 175364856374134, 176138491780787, 176913242475822, 177690692049615, 178469553728962, 179250407544097, 180032530244167, 180816973674988, 181603061170895, 182390930796476, 183179904404611, 183971218922672, 184764302482181, 185559352780607, 186355484716640, 187154167627305, 187954463112172, 188755167873661, 189559787774578, 190364265283477, 191171258442543, 191980195355334, 192790925674795, 193602556410512, 194417016305967, 195232645987818, 196050188214189, 196869911666370, 197690504888822, 198513424115241, 199337980967136, 200164364728679, 200992441246692, 201822370836189, 202653868317500, 203487295124995, 204322582138612, 205159280851458, 205997845055705, 206838686419778, 207680223459897, 208524389546180, 209370037656611, 210217713280204, 211066783506201, 211918221290312, 212770051652978, 213624780221079, 214480891817874, 215339170446071, 216198966217860, 217060656926613, 217923890158764, 218789180815693, 219655779282864, 220523735657387, 221394090749349, 222266481117362, 223140061833265, 224016558533452, 224893676139605, 225772746863650, 226653316365413, 227536174732100, 228421314666947, 229306948564404, 230195066828025, 231084619915589, 231976153079776, 232869522913489, 233764396646712, 234661096550023, 235560022983960, 236459761443283, 237361938411048, 238265786958041, 239171714912618, 240079430075503, 240988397832690, 241898812660791, 242812185647676, 243726278270952, 244642548171917, 245560254111198, 246480586961269, 247401317616792, 248324577480015, 249249827129502, 250176645559885, 251105483218834, 252035928916781, 252967864735060, 253902107151677, 254838098382990, 255774984445791, 256713920805122, 257655416928771, 258598042267722, 259542772930910, 260489350267409, 261436917320998, 262386403483379, 263338334303632, 264291434634157, 265246857118052, 266204009065415, 267162706932416, 268122443879733, 269085526198458, 270049088960461, 271015374238472, 271982522915917, 272951354222680, 273922507156707, 274895612421442, 275870379762381, 276846598740350, 277825672031685, 278804570050134, 279786370749447, 280770739235134, 281755465246921, 282742772106696, 283731559078148, 284721682929865, 285714250695616, 286708743387977, 287704245795420, 288702721195441, 289702014807874, 290703569309949, 291706201453858, 292711324081941, 293717366474056, 294725901925083, 295736053976404, 296747592638013, 297762174014958, 298776908022377, 299794469887084, 300813564019813, 301834201727288, 302856699362737, 303880788840754, 304907289654363, 305934819862268, 306964702346215, 307996718856936, 309029824258801, 310064151223148, 311101637905109, 312139951524896, 313180253381239, 314222805621412, 315266553457537, 316312042620248, 317360134362523, 318409439232054, 319460499426217, 320513384122962, 321567622851745, 322623930942812, 323682486495499, 324741853391528, 325803695787761, 326867219740652, 327932450455477, 328999565677832, 330068744316709, 331139300028798, 332211422630039, 333285673740620, 334361760892115, 335439825691086, 336519086109011, 337600169846864, 338683695663679, 339768196320246, 340854960383245, 341943058696612, 343034472400869, 344126288365936, 345219904513529, 346315581629252, 347412434557053, 348511792968136, 349613032606555, 350715682647270, 351819912216247, 352926548527444, 354034344501769, 355144048864876, 356256480873339, 357369113508715, 358484442195342, 359601854797041, 360720410076300, 361841581744271, 362963722150674, 364088108554029, 365213714591214, 366341568308709, 367470747430202, 368602095664463, 369735789749694, 370870069207777, 372007153176608, 373145655996233, 374286076547576, 375427962091615, 376571542044574, 377716999592043, 378864539458650, 380013795473175, 381165217740896, 382317332922921, 383472680967630, 384628186031971, 385787504467500, 386946111242933, 388108089327077, 389271682033460, 390437889429971, 391604283066184, 392773416637483, 393944435287130, 395115604641767, 396290295634134, 397466595094813, 398644056408120, 399823884730061, 401005593478536, 402188826344049, 403373694633520, 404561981047791, 405749179528776, 406939431685005, 408131530592604, 409324954308067, 410521348475975, 411718608508472, 412917829716085, 414118956306590, 415322188137827, 416527085300694, 417733433700427, 418942331716724, 420152374263135, 421364002783104, 422577395980403, 423792898623764, 425010124061273, 426229374669116, 427450147002323, 428673624289944, 429897374046936, 431123533288353, 432351372593538, 433582822947449, 434813006623636, 436046483157627, 437282894500928, 438519040875971, 439757019372828, 440997965038867, 442240079785140, 443484462291313, 444731555754762, 445978339255250, 447227855605997, 448480086797544, 449733248446751, 450987322450746, 452244765673393, 453503381019818, 454763522811227, 456025584592066, 457290058813673, 458555247324046, 459822864161615, 461092949514555, 462363708727082, 463635895079489, 464911820422952, 466187687663221, 467466366121452, 468746616002817, 470028210141922, 471312757314047, 472598203288748, 473885272432371, 475174594334501, 476465015795706, 477757744330055, 479052416466724, 480348819350435, 481647182202860, 482947253439277, 484248512083034, 485552313622173, 486857969964978, 488164574198429, 489473701762655, 490784291733168, 492096644148075, 493411300179502, 494727689317357, 496045307801936, 497365255568609, 498687449477284, 500010568862547, 501335747966526, 502662434241804, 503991704580965, 505322052981958, 506654432172067, 507989000109970, 509324212044955, 510661840177448, 512001532956817, 513342503635826, 514686036546604, 516031076204871, 517377724607508, 518727343474553, 520078145300410, 521429056074467, 522783440474442, 524139131959187, 525496543337174, 526857422190838, 528217444408577, 529581632274134, 530946662693627, 532311834614760, 533680546735483, 535051704371342, 536423313695403, 537796691803370, 539172201925316, 540549877857205, 541928823207352, 543311223215741, 544693475279016, 546077959708393, 547464036046802, 548853348040761, 550242029951411, 551635523926500, 553028620646503, 554424387913560, 555822264061929, 557220889209512, 558621696505469, 560025230061866, 561428802276184, 562836065508759, 564243999095306, 565654085968561, 567065128422242, 568480038230125, 569893956799790, 571311613610574, 572730240277725, 574152005590562, 575575248534959, 576999225949768, 578425754453253, 579853875598684, 581283722724127, 582714549978061, 584148485672108, 585584064718129, 587022127750674, 588459065212505, 589900936512440, 591343575167211, 592787459417657, 594234550140282, 595682150650359, 597132206946714, 598583745209687, 600036645526326, 601492242580143, 602949321421683, 604407846945578, 605869107689303, 607331619426194, 608795868334189, 610261785848438, 611729774917537, 613198814493223, 614670553358276, 616144676283965, 617619625265780, 619096104738785, 620575746952334, 622055857989353, 623538035545969, 625023113070734, 626509523416503, 627996839401640, 629486032479553, 630977512484618, 632471202833598, 633966389221247, 635463114501108, 636961255455435, 638462431547104, 639964402087269, 641469367558646, 642974633730974, 644482906053419, 645993122794254, 647505205272109, 649017299537750, 650532361117315, 652049535718977, 653567690469176, 655088215385491, 656610553120008, 658134774989261, 659661281999214, 661189158190086, 662718348756195, 664249968506936, 665783385006535, 667318419340188, 668855510173177, 670395367176565, 671933916759436, 673476282039307, 675021515919670, 676567144364893, 678113830344156, 679664533401168, 681214994169811, 682768038722362, 684323080911191, 685880774547598, 687438716491527, 688999801428499, 690561394962114, 692125743196273, 693692366054624, 695260333986021, 696829289232270, 698400976891086, 699973824671271, 701549673831838, 703126187535455, 704705200232828, 706285619557381, 707867195732873, 709451438872926, 711037992008427, 712625794349158, 714214048734419, 715806001244514, 717399924658778, 718994316345727, 720590677150446, 722190402701363, 723790621480140, 725392923121004, 726998055073987, 728603228142062, 730211681284985, 731821322759290, 733432010195075, 735045851805207, 736661443613214, 738276491989247, 739895882758532, 741516581592161, 743138445553167, 744762322406730, 746388997301993, 748016553170068, 749646313071567, 751277273517719, 752911159922144, 754546104527913, 756183236791540, 757822044025127, 759461429975294, 761105197442634, 762748254977255, 764394705633220, 766043425272075, 767692336656182, 769344916049218, 770997444637057, 772653366761276, 774309714924197, 775968333981206, 777628415754614, 779290962936659, 780956682898140, 782621238201333, 784290892463104, 785959628811126, 787630213195247, 789303762499222, 790981165033981, 792656355727226, 794335711756712, 796016413077051, 797698155805268, 799382276287517, 801069050223796, 802756444093190, 804447590347769, 806139404970524, 807831658746729, 809526235046184, 811224631223428, 812923504620281, 814624418991302, 816327543076999, 818031317116686, 819737557578338, 821446543739323, 823156207463724, 824866912441477, 826581337675850, 828296149193646, 830013193599069, 831732352764316, 833453767340721, 835175712259152, 836900951119010, 838627288460105]
# div, mod = n.divmod(10000)
# ans = memo_per_10000[div]
# (n - mod + 1..n).each { |i| ans += divisors(i).size * i }
# puts ans