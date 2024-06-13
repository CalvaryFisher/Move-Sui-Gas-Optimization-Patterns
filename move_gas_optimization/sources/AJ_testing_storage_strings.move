module move_gas_optimization::AJ_testing_storage_strings{
/// struct with three fields to compare to three parallel vectors
    use std::string::{Self, String};
    public struct Test_struct has drop, store{
        field1: String,
        field2: String,
        field3: String
    }

    /// function creating and filling an vectors of struct with three fields, all fields of type u256
    entry fun struct_vector_func_long_strings(){
        let mut struct_vector: vector<Test_struct> = vector[];
        let mut i: u64 = 0;

        while (i < 150){
            let mut test_object = Test_struct{
            field1: b"CHAPTERI.DowntheRabbitHoleAlicewasbeginningtogetverytiredofsittingbyhersisteronthebank,andofhavingnothingtodo:onceortwiceshehadpeepedintothebookhersisterwasreading,butithadnopicturesorconversationsinit,andwhatistheuseofabook,thoughtAlicewithoutpicturesorconversations?Soshewasconsideringinherownmind(aswellasshecould,forthehotdaymadeherfeelverysleepyandstupid),whetherthepleasureofmakingadaisychainwouldbeworththetroubleofgettingupandpickingthedaisies,whensuddenlyaWhiteRabbitwithpinkeyesranclosebyher.Therewasnothingso_very_remarkableinthat;nordidAlicethinkitso_very_muchoutofthewaytoheartheRabbitsaytoitself,Ohdear!Ohdear!Ishallbelate!(whenshethoughtitoverafterwards,itoccurredtoherthatsheoughttohavewonderedatthis,butatthetimeitallseemedquitenatural);butwhentheRabbitactually_tookawatchoutofitswaistcoatpocket_,andlookedatit,andthenhurriedon,Alicestartedtoherfeet,foritflashedacrosshermindthatshehadneverbeforeseenarabbitwitheitherawaistcoatpocket,orawatchtotakeoutofit,andburningwithcuriosity,sheranacrossthefieldafterit,andfortunatelywasjustintimetoseeitpopdownalargerabbitholeunderthehedge.InanothermomentdownwentAliceafterit,neveronceconsideringhowintheworldshewastogetoutagain.Therabbitholewentstraightonlikeatunnelforsomeway,andthendippedsuddenlydown,sosuddenlythatAlicehadnotamomenttothinkaboutstoppingherselfbeforeshefoundherselffallingdownaverydeepwell.Eitherthewellwasverydeep,orshefellveryslowly,forshehadplentyoftimeasshewentdowntolookaboutherandtowonderwhatwasgoingtohappennext.First,shetriedtolookdownandmakeoutwhatshewascomingto,butitwastoodarktoseeanything;thenshelookedatthesidesofthewell,andnoticedthattheywerefilledwithcupboardsandbookshelves;hereandthereshesawmapsandpictureshunguponpegs.Shetookdownajarfromoneoftheshelvesasshepassed;itwaslabelledORANGEMARMALADE,buttohergreatdisappointmentitwasempty:shedidnotliketodropthejarforfearofkillingsomebodyunderneath,somanagedtoputitintooneofthecupboardsasshefellpastit.Well!thoughtAlicetoherself,aftersuchafallasthis,Ishallthinknothingoftumblingdownstairs!Howbravethey’llallthinkmeathome!Why,Iwouldn’tsayanythingaboutit,evenifIfelloffthetopofthehouse!(Whichwasverylikelytrue.)Down,down,down.Wouldthefall_never_cometoanend?IwonderhowmanymilesI’vefallenbythistime?shesaidaloud.Imustbegettingsomewherenearthecentreoftheearth.Letmesee:thatwouldbefourthousandmilesdown,Ithink—(for,yousee,Alicehadlearntseveralthingsofthissortinherlessonsintheschoolroom,andthoughthiswasnota_very_goodopportunityforshowingoffherknowledge,astherewasnoonetolistentoher,stillitwasgoodpracticetosayitover)—yes,that’sabouttherightdistance—butthenIwonderwhatLatitudeorLongitudeI’vegotto?(AlicehadnoideawhatLatitudewas,orLongitudeeither,butthoughttheywerenicegrandwordstosay.)Presentlyshebeganagain.IwonderifIshallfallright_through_theearth!Howfunnyit’llseemtocomeoutamongthepeoplethatwalkwiththeirheadsdownward!TheAntipathies,Ithink—(shewasrathergladthere_was_noonelistening,thistime,asitdidn’tsoundatalltherightword)—butIshallhavetoaskthemwhatthenameofthecountryis,youknow.Please,Ma’am,isthisNewZealandorAustralia?(andshetriedtocurtseyasshespoke—fancy_curtseying_asyou’refallingthroughtheair!Doyouthinkyoucouldmanageit?)Andwhatanignorantlittlegirlshe’llthinkmeforasking!No,it’llneverdotoask:perhapsIshallseeitwrittenupsomewhere.Down,down,down.Therewasnothingelsetodo,soAlicesoonbegantalkingagain.Dinah’llmissmeverymuchtonight,Ishouldthink!(Dinahwasthecat.)Ihopethey’llrememberhersaucerofmilkatteatime.Dinahmydear!Iwishyouweredownherewithme!Therearenomiceintheair,I’mafraid,butyoumightcatchabat,andthat’sverylikeamouse,youknow.Butdocatseatbats,Iwonder?AndhereAlicebegantogetrathersleepy,andwentonsayingtoherself,inadreamysortofway,Docatseatbats?Docatseatbats?andsometimes,Dobatseatcats?for,yousee,asshecouldn’tanswereitherquestion,itdidn’tmuchmatterwhichwaysheputit.Shefeltthatshewasdozingoff,andhadjustbeguntodreamthatshewaswalkinghandinhandwithDinah,andsayingtoherveryearnestly,Now,Dinah,tellmethetruth:didyouevereatabat?whensuddenly,thump!thump!downshecameuponaheapofsticksanddryleaves,andthefallwasover.Alicewasnotabithurt,andshejumpedupontoherfeetinamoment:shelookedup,butitwasalldarkoverhead;beforeherwasanotherlongpassage,andtheWhiteRabbitwasstillinsight,hurryingdownit.Therewasnotamomenttobelost:awaywentAlicelikethewind,andwasjustintimetohearitsay,asitturnedacorner,Ohmyearsandwhiskers,howlateit’sgetting!Shewasclosebehinditwhensheturnedthecorner,buttheRabbitwasnolongertobeseen:shefoundherselfinalong,lowhall,whichwaslitupbyarowoflampshangingfromtheroof.Thereweredoorsallroundthehall,buttheywerealllocked;andwhenAlicehadbeenallthewaydownonesideanduptheother,tryingeverydoor,shewalkedsadlydownthemiddle,wonderinghowshewasevertogetoutagain.Suddenlyshecameuponalittlethreeleggedtable,allmadeofsolidglass;therewasnothingonitexceptatinygoldenkey,andAlice’sfirstthoughtwasthatitmightbelongtooneofthedoorsofthehall;but,alas!eitherthelocksweretoolarge,orthekeywastoosmall,butatanyrateitwouldnotopenanyofthem.However,onthesecondtimeround,shecameuponalowcurtainshehadnotnoticedbefore,andbehinditwasalittledooraboutfifteenincheshigh:shetriedthelittlegoldenkeyinthelock,andtohergreatdelightitfitted!Aliceopenedthedoorandfoundthatitledintoasmallpassage,notmuchlargerthanarathole:shekneltdownandlookedalongthepassageintotheloveliestgardenyoueversaw.Howshelongedtogetoutofthatdarkhall,andwanderaboutamongthosebedsofbrightflowersandthosecoolfountains,butshecouldnotevengetherheadthroughthedoorway;andevenifmyheadwouldgothrough,thoughtpoorAlice,itwouldbeofverylittleusewithoutmyshoulders.Oh,howIwishIcouldshutuplikeatelescope!IthinkIcould,ifIonlyknewhowtobegin.For,yousee,somanyoutofthewaythingshadhappenedlately,thatAlicehadbeguntothinkthatveryfewthingsindeedwerereallyimpossible.Thereseemedtobenouseinwaitingbythelittledoor,soshewentbacktothetable,halfhopingshemightfindanotherkeyonit,oratanyrateabookofrulesforshuttingpeopleupliketelescopes:thistimeshefoundalittlebottleonit,(whichcertainlywasnotherebefore,saidAlice,)androundtheneckofthebottlewasapaperlabel,withthewordsDRINKME,beautifullyprintedonitinlargeletters.ItwasallverywelltosayDrinkme,butthewiselittleAlicewasnotgoingtodo_that_inahurry.No,I’lllookfirst,shesaid,andseewhetherit’smarked‘_poison_’ornot;forshehadreadseveralnicelittlehistoriesaboutchildrenwhohadgotburnt,andeatenupbywildbeastsandotherunpleasantthings,allbecausethey_would_notrememberthesimplerulestheirfriendshadtaughtthem:suchas,thataredhotpokerwillburnyouifyouholdittoolong;andthatifyoucutyourfinger_very_deeplywithaknife,itusuallybleeds;andshehadneverforgottenthat,ifyoudrinkmuchfromabottlemarkedpoison,itisalmostcertaintodisagreewithyou,soonerorlater.However,thisbottlewas_not_markedpoison,soAliceventuredtotasteit,andfindingitverynice,(ithad,infact,asortofmixedflavourofcherrytart,custard,pineapple,roastturkey,toffee,andhotbutteredtoast,)sheverysoonfinisheditoff.********************Whatacuriousfeeling!saidAlice;Imustbeshuttinguplikeatelescope.Andsoitwasindeed:shewasnowonlytenincheshigh,andherfacebrightenedupatthethoughtthatshewasnowtherightsizeforgoingthroughthelittledoorintothatlovelygarden.First,however,shewaitedforafewminutestoseeifshewasgoingtoshrinkanyfurther:shefeltalittlenervousaboutthis;foritmightend,youknow,saidAlicetoherself,inmygoingoutaltogether,likeacandle.IwonderwhatIshouldbelikethen?Andshetriedtofancywhattheflameofacandleislikeafterthecandleisblownout,forshecouldnotremembereverhavingseensuchathing.Afterawhile,findingthatnothingmorehappened,shedecidedongoingintothegardenatonce;but,alasforpoorAlice!whenshegottothedoor,shefoundshehadforgottenthelittlegoldenkey,andwhenshewentbacktothetableforit,shefoundshecouldnotpossiblyreachit:shecouldseeitquiteplainlythroughtheglass,andshetriedherbesttoclimbuponeofthelegsofthetable,butitwastooslippery;andwhenshehadtiredherselfoutwithtrying,thepoorlittlethingsatdownandcried.Come,there’snouseincryinglikethat!saidAlicetoherself,rathersharply;Iadviseyoutoleaveoffthisminute!Shegenerallygaveherselfverygoodadvice,(thoughsheveryseldomfollowedit),andsometimesshescoldedherselfsoseverelyastobringtearsintohereyes;andoncesherememberedtryingtoboxherownearsforhavingcheatedherselfinagameofcroquetshewasplayingagainstherself,forthiscuriouschildwasveryfondofpretendingtobetwopeople.Butit’snousenow,thoughtpoorAlice,topretendtobetwopeople!Why,there’shardlyenoughofmelefttomake_one_respectableperson!Soonhereyefellonalittleglassboxthatwaslyingunderthetable:sheopenedit,andfoundinitaverysmallcake,onwhichthewordsEATMEwerebeautifullymarkedincurrants.Well,I’lleatit,saidAlice,andifitmakesmegrowlarger,Icanreachthekey;andifitmakesmegrowsmaller,Icancreepunderthedoor;soeitherwayI’llgetintothegarden,andIdon’tcarewhichhappens!Sheatealittlebit,andsaidanxiouslytoherself,Whichway?Whichway?,holdingherhandonthetopofherheadtofeelwhichwayitwasgrowing,andshewasquitesurprisedtofindthatsheremainedthesamesize:tobesure,thisgenerallyhappenswhenoneeatscake,butAlicehadgotsomuchintothewayofexpectingnothingbutoutofthewaythingstohappen,thatitseemedquitedullandstupidforlifetogooninthecommonway.Soshesettowork,andverysoonfinishedoffthecake.********************".to_string(),
            field2: b"CHAPTERII.ThePoolofTearsCuriouserandcuriouser!criedAlice(shewassomuchsurprised,thatforthemomentshequiteforgothowtospeakgoodEnglish);nowImopeningoutlikethelargesttelescopethateverwas!Good-bye,feet!(forwhenshelookeddownatherfeet,theyseemedtobealmostoutofsight,theyweregettingsofaroff).Oh,mypoorlittlefeet,Iwonderwhowillputonyourshoesandstockingsforyounow,dears?Imsure_I_shantbeable!Ishallbeagreatdealtoofarofftotroublemyselfaboutyou:youmustmanagethebestwayyoucan;—butImustbekindtothem,thoughtAlice,orperhapstheywontwalkthewayIwanttogo!Letmesee:IllgivethemanewpairofbootseveryChristmas.Andshewentonplanningtoherselfhowshewouldmanageit.Theymustgobythecarrier,shethought;andhowfunnyitllseem,sendingpresentstoonesownfeet!Andhowoddthedirectionswilllook!_AlicesRightFoot,Esq.,Hearthrug,neartheFender,_(_withAliceslove_).Ohdear,whatnonsenseImtalking!Justthenherheadstruckagainsttheroofofthehall:infactshewasnowmorethanninefeethigh,andsheatoncetookupthelittlegoldenkeyandhurriedofftothegardendoor.PoorAlice!Itwasasmuchasshecoulddo,lyingdownononeside,tolookthroughintothegardenwithoneeye;buttogetthroughwasmorehopelessthanever:shesatdownandbegantocryagain.Yououghttobeashamedofyourself,saidAlice,agreatgirllikeyou,(shemightwellsaythis),togooncryinginthisway!Stopthismoment,Itellyou!Butshewentonallthesame,sheddinggallonsoftears,untiltherewasalargepoolallroundher,aboutfourinchesdeepandreachinghalfdownthehall.Afteratimesheheardalittlepatteringoffeetinthedistance,andshehastilydriedhereyestoseewhatwascoming.ItwastheWhiteRabbitreturning,splendidlydressed,withapairofwhitekidglovesinonehandandalargefanintheother:hecametrottingalonginagreathurry,mutteringtohimselfashecame,Oh!theDuchess,theDuchess!Oh!wontshebesavageifIvekeptherwaiting!Alicefeltsodesperatethatshewasreadytoaskhelpofanyone;so,whentheRabbitcamenearher,shebegan,inalow,timidvoice,Ifyouplease,sir—TheRabbitstartedviolently,droppedthewhitekidglovesandthefan,andskurriedawayintothedarknessashardashecouldgo.Alicetookupthefanandgloves,and,asthehallwasveryhot,shekeptfanningherselfallthetimeshewentontalking:Dear,dear!Howqueereverythingisto-day!Andyesterdaythingswentonjustasusual.IwonderifIvebeenchangedinthenight?Letmethink:wasIthesamewhenIgotupthismorning?IalmostthinkIcanrememberfeelingalittledifferent.ButifImnotthesame,thenextquestionis,WhointheworldamI?Ah,_thats_thegreatpuzzle!Andshebeganthinkingoverallthechildrensheknewthatwereofthesameageasherself,toseeifshecouldhavebeenchangedforanyofthem.ImsureImnotAda,shesaid,forherhairgoesinsuchlongringlets,andminedoesntgoinringletsatall;andImsureIcantbeMabel,forIknowallsortsofthings,andshe,oh!sheknowssuchaverylittle!Besides,_shes_she,and_Im_I,and—ohdear,howpuzzlingitallis!IlltryifIknowallthethingsIusedtoknow.Letmesee:fourtimesfiveistwelve,andfourtimessixisthirteen,andfourtimessevenis—ohdear!Ishallnevergettotwentyatthatrate!However,theMultiplicationTabledoesntsignify:letstryGeography.LondonisthecapitalofParis,andParisisthecapitalofRome,andRome—no,_thats_allwrong,Imcertain!ImusthavebeenchangedforMabel!Illtryandsay‘_Howdoththelittle_—andshecrossedherhandsonherlapasifsheweresayinglessons,andbegantorepeatit,buthervoicesoundedhoarseandstrange,andthewordsdidnotcomethesameastheyusedtodo:—HowdoththelittlecrocodileImprovehisshiningtail,AndpourthewatersoftheNileOneverygoldenscale!Howcheerfullyheseemstogrin,Howneatlyspreadhisclaws,AndwelcomelittlefishesinWithgentlysmilingjaws!Imsurethosearenottherightwords,saidpoorAlice,andhereyesfilledwithtearsagainasshewenton,ImustbeMabelafterall,andIshallhavetogoandliveinthatpokylittlehouse,andhavenexttonotoystoplaywith,andoh!eversomanylessonstolearn!No,Ivemadeupmymindaboutit;ifImMabel,Illstaydownhere!Itllbenousetheirputtingtheirheadsdownandsaying‘Comeupagain,dear!Ishallonlylookupandsay‘WhoamIthen?Tellmethatfirst,andthen,ifIlikebeingthatperson,Illcomeup:ifnot,IllstaydownheretillImsomebodyelse—but,ohdear!criedAlice,withasuddenburstoftears,Idowishthey_would_puttheirheadsdown!Iamso_very_tiredofbeingallalonehere!Asshesaidthisshelookeddownatherhands,andwassurprisedtoseethatshehadputononeoftheRabbitslittlewhitekidgloveswhileshewastalking.How_can_Ihavedonethat?shethought.Imustbegrowingsmallagain.Shegotupandwenttothetabletomeasureherselfbyit,andfoundthat,asnearlyasshecouldguess,shewasnowabouttwofeethigh,andwasgoingonshrinkingrapidly:shesoonfoundoutthatthecauseofthiswasthefanshewasholding,andshedroppedithastily,justintimetoavoidshrinkingawayaltogether.That_was_anarrowescape!saidAlice,agooddealfrightenedatthesuddenchange,butverygladtofindherselfstillinexistence;andnowforthegarden!andsheranwithallspeedbacktothelittledoor:but,alas!thelittledoorwasshutagain,andthelittlegoldenkeywaslyingontheglasstableasbefore,andthingsareworsethanever,thoughtthepoorchild,forIneverwassosmallasthisbefore,never!AndIdeclareitstoobad,thatitis!Asshesaidthesewordsherfootslipped,andinanothermoment,splash!shewasuptoherchininsaltwater.Herfirstideawasthatshehadsomehowfallenintothesea,andinthatcaseIcangobackbyrailway,shesaidtoherself.(Alicehadbeentotheseasideonceinherlife,andhadcometothegeneralconclusion,thatwhereveryougotoontheEnglishcoastyoufindanumberofbathingmachinesinthesea,somechildrendigginginthesandwithwoodenspades,thenarowoflodginghouses,andbehindthemarailwaystation.)However,shesoonmadeoutthatshewasinthepooloftearswhichshehadweptwhenshewasninefeethigh.IwishIhadntcriedsomuch!saidAlice,assheswamabout,tryingtofindherwayout.Ishallbepunishedforitnow,Isuppose,bybeingdrownedinmyowntears!That_will_beaqueerthing,tobesure!However,everythingisqueerto-day.Justthensheheardsomethingsplashingaboutinthepoolalittlewayoff,andsheswamnearertomakeoutwhatitwas:atfirstshethoughtitmustbeawalrusorhippopotamus,butthensherememberedhowsmallshewasnow,andshesoonmadeoutthatitwasonlyamousethathadslippedinlikeherself.Woulditbeofanyuse,now,thoughtAlice,tospeaktothismouse?Everythingissoout-of-the-waydownhere,thatIshouldthinkverylikelyitcantalk:atanyrate,theresnoharmintrying.Soshebegan:OMouse,doyouknowthewayoutofthispool?Iamverytiredofswimmingabouthere,OMouse!(Alicethoughtthismustbetherightwayofspeakingtoamouse:shehadneverdonesuchathingbefore,butsherememberedhavingseeninherbrothersLatinGrammar,Amouse—ofamouse—toamouse—amouse—Omouse!)TheMouselookedatherratherinquisitively,andseemedtohertowinkwithoneofitslittleeyes,butitsaidnothing.PerhapsitdoesntunderstandEnglish,thoughtAlice;IdaresayitsaFrenchmouse,comeoverwithWilliamtheConqueror.(For,withallherknowledgeofhistory,Alicehadnoveryclearnotionhowlongagoanythinghadhappened.)Soshebeganagain:Oùestmachatte?whichwasthefirstsentenceinherFrenchlesson-book.TheMousegaveasuddenleapoutofthewater,andseemedtoquiveralloverwithfright.Oh,Ibegyourpardon!criedAlicehastily,afraidthatshehadhurtthepooranimalsfeelings.Iquiteforgotyoudidntlikecats.Notlikecats!criedtheMouse,inashrill,passionatevoice.Would_you_likecatsifyouwereme?Well,perhapsnot,saidAliceinasoothingtone:dontbeangryaboutit.AndyetIwishIcouldshowyouourcatDinah:Ithinkyoudtakeafancytocatsifyoucouldonlyseeher.Sheissuchadearquietthing,Alicewenton,halftoherself,assheswamlazilyaboutinthepool,andshesitspurringsonicelybythefire,lickingherpawsandwashingherface—andsheissuchanicesoftthingtonurse—andshessuchacapitaloneforcatchingmice—oh,Ibegyourpardon!criedAliceagain,forthistimetheMousewasbristlingallover,andshefeltcertainitmustbereallyoffended.Wewonttalkaboutheranymoreifyoudrathernot.Weindeed!criedtheMouse,whowastremblingdowntotheendofhistail.Asif_I_wouldtalkonsuchasubject!Ourfamilyalways_hated_cats:nasty,low,vulgarthings!Dontletmehearthenameagain!Iwontindeed!saidAlice,inagreathurrytochangethesubjectofconversation.Areyou—areyoufond—of—ofdogs?TheMousedidnotanswer,soAlicewentoneagerly:ThereissuchanicelittledognearourhouseIshouldliketoshowyou!Alittlebright-eyedterrier,youknow,withoh,suchlongcurlybrownhair!Anditllfetchthingswhenyouthrowthem,anditllsitupandbegforitsdinner,andallsortsofthings—Icantrememberhalfofthem—anditbelongstoafarmer,youknow,andhesaysitssouseful,itsworthahundredpounds!Hesaysitkillsalltheratsand—ohdear!criedAliceinasorrowfultone,ImafraidIveoffendeditagain!FortheMousewasswimmingawayfromherashardasitcouldgo,andmakingquiteacommotioninthepoolasitwent.Soshecalledsoftlyafterit,Mousedear!Docomebackagain,andwewonttalkaboutcatsordogseither,ifyoudontlikethem!WhentheMouseheardthis,itturnedroundandswamslowlybacktoher:itsfacewasquitepale(withpassion,Alicethought),anditsaidinalowtremblingvoice,Letusgettotheshore,andthenIlltellyoumyhistory,andyoullunderstandwhyitisIhatecatsanddogs.Itwashightimetogo,forthepoolwasgettingquitecrowdedwiththebirdsandanimalsthathadfallenintoit:therewereaDuckandaDodo,aLoryandanEaglet,andseveralothercuriouscreatures.Aliceledtheway,andthewholepartyswamtotheshore.".to_string(),
            field3: b"CHAPTERIII.ACaucus-RaceandaLongTaleTheywereindeedaqueer-lookingpartythatassembledonthebank—thebirdswithdraggledfeathers,theanimalswiththeirfurclingingclosetothem,andalldrippingwet,cross,anduncomfortable.Thefirstquestionofcoursewas,howtogetdryagain:theyhadaconsultationaboutthis,andafterafewminutesitseemedquitenaturaltoAlicetofindherselftalkingfamiliarlywiththem,asifshehadknownthemallherlife.Indeed,shehadquitealongargumentwiththeLory,whoatlastturnedsulky,andwouldonlysay,Iamolderthanyou,andmustknowbetter;andthisAlicewouldnotallowwithoutknowinghowolditwas,and,astheLorypositivelyrefusedtotellitsage,therewasnomoretobesaid.AtlasttheMouse,whoseemedtobeapersonofauthorityamongthem,calledout,Sitdown,allofyou,andlistentome!_I’ll_soonmakeyoudryenough!Theyallsatdownatonce,inalargering,withtheMouseinthemiddle.Alicekepthereyesanxiouslyfixedonit,forshefeltsureshewouldcatchabadcoldifshedidnotgetdryverysoon.Ahem!saidtheMousewithanimportantair,areyouallready?ThisisthedriestthingIknow.Silenceallround,ifyouplease!‘WilliamtheConqueror,whosecausewasfavouredbythepope,wassoonsubmittedtobytheEnglish,whowantedleaders,andhadbeenoflatemuchaccustomedtousurpationandconquest.EdwinandMorcar,theearlsofMerciaandNorthumbria—’Ugh!saidtheLory,withashiver.Ibegyourpardon!saidtheMouse,frowning,butverypolitely:Didyouspeak?NotI!saidtheLoryhastily.Ithoughtyoudid,saidtheMouse.—Iproceed.‘EdwinandMorcar,theearlsofMerciaandNorthumbria,declaredforhim:andevenStigand,thepatrioticarchbishopofCanterbury,founditadvisable—’Found_what_?saidtheDuck.Found_it_,theMouserepliedrathercrossly:ofcourseyouknowwhat‘it’means.Iknowwhat‘it’meanswellenough,when_I_findathing,saidtheDuck:it’sgenerallyafrogoraworm.Thequestionis,whatdidthearchbishopfind?TheMousedidnotnoticethisquestion,buthurriedlywenton,‘—founditadvisabletogowithEdgarAthelingtomeetWilliamandofferhimthecrown.William’sconductatfirstwasmoderate.ButtheinsolenceofhisNormans—’Howareyougettingonnow,mydear?itcontinued,turningtoAliceasitspoke.Aswetasever,saidAliceinamelancholytone:itdoesn’tseemtodrymeatall.Inthatcase,saidtheDodosolemnly,risingtoitsfeet,Imovethatthemeetingadjourn,fortheimmediateadoptionofmoreenergeticremedies—SpeakEnglish!saidtheEaglet.Idon’tknowthemeaningofhalfthoselongwords,and,what’smore,Idon’tbelieveyoudoeither!AndtheEagletbentdownitsheadtohideasmile:someoftheotherbirdstitteredaudibly.WhatIwasgoingtosay,saidtheDodoinanoffendedtone,was,thatthebestthingtogetusdrywouldbeaCaucus-race.What_is_aCaucus-race?saidAlice;notthatshewantedmuchtoknow,buttheDodohadpausedasifitthoughtthat_somebody_oughttospeak,andnooneelseseemedinclinedtosayanything.Why,saidtheDodo,thebestwaytoexplainitistodoit.(And,asyoumightliketotrythethingyourself,somewinterday,IwilltellyouhowtheDodomanagedit.)Firstitmarkedoutarace-course,inasortofcircle,(theexactshapedoesn’tmatter,itsaid,)andthenallthepartywereplacedalongthecourse,hereandthere.TherewasnoOne,two,three,andaway,buttheybeganrunningwhentheyliked,andleftoffwhentheyliked,sothatitwasnoteasytoknowwhentheracewasover.However,whentheyhadbeenrunninghalfanhourorso,andwerequitedryagain,theDodosuddenlycalledoutTheraceisover!andtheyallcrowdedroundit,panting,andasking,Butwhohaswon?ThisquestiontheDodocouldnotanswerwithoutagreatdealofthought,anditsatforalongtimewithonefingerpresseduponitsforehead(thepositioninwhichyouusuallyseeShakespeare,inthepicturesofhim),whiletherestwaitedinsilence.AtlasttheDodosaid,_Everybody_haswon,andallmusthaveprizes.Butwhoistogivetheprizes?quiteachorusofvoicesasked.Why,_she_,ofcourse,saidtheDodo,pointingtoAlicewithonefinger;andthewholepartyatoncecrowdedroundher,callingoutinaconfusedway,Prizes!Prizes!Alicehadnoideawhattodo,andindespairsheputherhandinherpocket,andpulledoutaboxofcomfits,(luckilythesaltwaterhadnotgotintoit),andhandedthemroundasprizes.Therewasexactlyonea-piece,allround.Butshemusthaveaprizeherself,youknow,saidtheMouse.Ofcourse,theDodorepliedverygravely.Whatelsehaveyougotinyourpocket?hewenton,turningtoAlice.Onlyathimble,saidAlicesadly.Handitoverhere,saidtheDodo.Thentheyallcrowdedroundheroncemore,whiletheDodosolemnlypresentedthethimble,sayingWebegyouracceptanceofthiselegantthimble;and,whenithadfinishedthisshortspeech,theyallcheered.Alicethoughtthewholethingveryabsurd,buttheyalllookedsogravethatshedidnotdaretolaugh;and,asshecouldnotthinkofanythingtosay,shesimplybowed,andtookthethimble,lookingassolemnasshecould.Thenextthingwastoeatthecomfits:thiscausedsomenoiseandconfusion,asthelargebirdscomplainedthattheycouldnottastetheirs,andthesmalloneschokedandhadtobepattedontheback.However,itwasoveratlast,andtheysatdownagaininaring,andbeggedtheMousetotellthemsomethingmore.Youpromisedtotellmeyourhistory,youknow,saidAlice,andwhyitisyouhate—CandD,sheaddedinawhisper,halfafraidthatitwouldbeoffendedagain.Mineisalongandasadtale!saidtheMouse,turningtoAlice,andsighing.It_is_alongtail,certainly,saidAlice,lookingdownwithwonderattheMouse’stail;butwhydoyoucallitsad?AndshekeptonpuzzlingaboutitwhiletheMousewasspeaking,sothatherideaofthetalewassomethinglikethis:—Furysaidtoamouse,Thathemetinthehouse,‘Letusbothgotolaw:_I_willprosecute_you_.—Come,I’lltakenodenial;Wemusthaveatrial:ForreallythismorningI’venothingtodo.’Saidthemousetothecur,‘Suchatrial,dearsir,Withnojuryorjudge,wouldbewastingourbreath.’‘I’llbejudge,I’llbejury,’SaidcunningoldFury:‘I’lltrythewholecause,andcondemnyoutodeath.’Youarenotattending!saidtheMousetoAliceseverely.Whatareyouthinkingof?Ibegyourpardon,saidAliceveryhumbly:youhadgottothefifthbend,Ithink?Ihad_not!_criedtheMouse,sharplyandveryangrily.Aknot!saidAlice,alwaysreadytomakeherselfuseful,andlookinganxiouslyabouther.Oh,doletmehelptoundoit!Ishalldonothingofthesort,saidtheMouse,gettingupandwalkingaway.Youinsultmebytalkingsuchnonsense!Ididn’tmeanit!pleadedpoorAlice.Butyou’resoeasilyoffended,youknow!TheMouseonlygrowledinreply.Pleasecomebackandfinishyourstory!Alicecalledafterit;andtheothersalljoinedinchorus,Yes,pleasedo!buttheMouseonlyshookitsheadimpatiently,andwalkedalittlequicker.Whatapityitwouldn’tstay!sighedtheLory,assoonasitwasquiteoutofsight;andanoldCrabtooktheopportunityofsayingtoherdaughterAh,mydear!Letthisbealessontoyounevertolose_your_temper!Holdyourtongue,Ma!saidtheyoungCrab,alittlesnappishly.You’reenoughtotrythepatienceofanoyster!IwishIhadourDinahhere,IknowIdo!saidAlicealoud,addressingnobodyinparticular.She’dsoonfetchitback!AndwhoisDinah,ifImightventuretoaskthequestion?saidtheLory.Alicerepliedeagerly,forshewasalwaysreadytotalkaboutherpet:Dinah’sourcat.Andshe’ssuchacapitaloneforcatchingmiceyoucan’tthink!Andoh,Iwishyoucouldseeherafterthebirds!Why,she’lleatalittlebirdassoonaslookatit!Thisspeechcausedaremarkablesensationamongtheparty.Someofthebirdshurriedoffatonce:oneoldMagpiebeganwrappingitselfupverycarefully,remarking,Ireallymustbegettinghome;thenight-airdoesn’tsuitmythroat!andaCanarycalledoutinatremblingvoicetoitschildren,Comeaway,mydears!It’shightimeyouwereallinbed!Onvariouspretextstheyallmovedoff,andAlicewassoonleftalone.IwishIhadn’tmentionedDinah!shesaidtoherselfinamelancholytone.Nobodyseemstolikeher,downhere,andI’msureshe’sthebestcatintheworld!Oh,mydearDinah!IwonderifIshalleverseeyouanymore!AndherepoorAlicebegantocryagain,forshefeltverylonelyandlow-spirited.Inalittlewhile,however,sheagainheardalittlepatteringoffootstepsinthedistance,andshelookedupeagerly,halfhopingthattheMousehadchangedhismind,andwascomingbacktofinishhisstory.".to_string()
            };
            struct_vector.push_back(test_object);
            i = i + 1;
        }
        //struct_vector.destroy_empty();
    }

    /// function creating and filling an vectors of struct with three fields, all fields of type u256
    entry fun struct_vector_func_short_strings(){
        let mut struct_vector: vector<Test_struct> = vector[];
        let mut i: u64 = 0;

        while (i < 150){
            let mut test_object = Test_struct{
            field1: b"".to_string(),
            field2: b"".to_string(),
            field3: b"".to_string()
            };
            struct_vector.push_back(test_object);
            i = i + 1;
        }
        //struct_vector.destroy_empty();
    }

}
