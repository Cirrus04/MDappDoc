# MDappDoc
###INTRODUCTION###
This is the Introduction

###Visible Charts###
Pris-grafen innehåller flera olika komponenter.
BB Upper: Övre bandet för Bollinger Bands
BB Lower: Nedre bandet för Bollinger Bands
BB Middle: Mellersta bandet för Bollinger Bands
AdjClose: Justerad stängningskurs
Trend: Trendlinjen för symbolen
SMA50: Simple Moving A
SMA200
EMA50
EMA200
EMA12
EMA26
EntryPrice
SellPrice
Split
Dividend
Crossing


ett fler
# Bollinger Bands
## Vad är Bollinger Bands?
Bollinger Bands (eller BB) är ett volatilitetsbaserat tekniskt analysverktyg som består av 3 linjer (eller 'band') ritade i förhållande till priset på ett värdepapper.

**🔹 Mellersta bandet (Middle Band)**
- Ett enkelt glidande medelvärde (**SMA**), oftast beräknat på 20 perioder (dagar)). Detta band representerar den underliggande kortsiktiga pristrenden.

**🔹 Övre bandet (Upper Band)**
- Beräknas vanligtvis som det mellersta bandet (SMA) + 2 standardavvikelser av priset under samma period.

**🔹 Nedre bandet (Lower Band)**
- Beräknas vanligtvis som det mellersta bandet (SMA) - 2 standardavvikelser av priset.

**Standardinställningarna är alltså en 20-perioders SMA och 2 standardavvikelser för de yttre banden.**


## Hur informationen från Bollinger Bands bör tolkas
Huvudsyftet med BB är att ge en relativ definition av 'högt' och 'lågt' pris samt att visualisera volatiliteten i marknaden.

**🔹 Volatilitet**
- **Breda band (Bands Widening)**: När banden vidgas (avståndet mellan övre och nedre bandet ökar) indikerar det ökad volatilitet. Priserna rör sig kraftigt.

- **Smala band (Bands Narrowing / Squeeze)**: När banden drar ihop sig (avståndet minskar) indikerar det minskad volatilitet. Detta kallas ofta för en "Bollinger Band Squeeze". En period med låg volatilitet följs ofta av en period med hög volatilitet, så en "squeeze" kan signalera att ett större prisutbrott är nära förestående (antingen uppåt eller nedåt).

**🔹 Relativa prisnivåer (Överköpt/Översålt)**
- **Priser nära övre bandet** indikerar att priset är relativt högt jämfört med den senaste tidens prisrörelser och dess volatilitet. Det kan potentiellt signalera en överköpt situation, men det är viktigt att notera att priset kan "vandra längs bandet" (se nedan).

- **Priser nära nedre bandet** indikerar att priset är relativt lågt jämfört med den senaste tidens prisrörelser och dess volatilitet. Det kan potentiellt signalera en översåld situation.

- **Statistisk grund**: Med 2 standardavvikelser kommer ungefär 95% av all prisdata (under normalfördelade förhållanden, vilket sällan är fallet på finansmarknader) att ligga inom banden. Prisrörelser utanför banden är alltså statistiskt mindre sannolika på kort sikt.

**🔹 Trendbekräftelse och Styrka**
- **"Walking the Bands"**: I en stark uppåttrend kan priserna konsekvent röra sig längs eller till och med utanför det övre bandet. Detta är ett tecken på styrka i trenden, inte nödvändigtvis en säljsignal. Motsvarande gäller för en stark nedåttrend där priserna kan följa det nedre bandet.

- **Mellersta bandet som stöd/motstånd**: I en uppåttrend kan det mellersta bandet (20-SMA) ofta fungera som ett dynamiskt stödområde. I en nedåttrend kan det fungera som ett dynamiskt motståndsområde.

## Hur Bollinger Bands används i Teknisk Analys (Strategier)
**🔹 Bollinger Band Squeeze (Volatilitetsutbrott)**:
- **Identifiera**: Leta efter perioder då banden är ovanligt smala.
- **Strategi**: När priset bryter ut ur denna konsolidering (antingen över det övre bandet eller under det nedre bandet) med ökad volym, kan det signalera starten på en ny, starkare prisrörelse i utbrottets riktning. Man handlar alltså i riktning med utbrottet.

**🔹 Överköpt/Översålt (Mean Reversion / Fading Strategy)**:
- **Identifiera**: Priset rör vid eller går utanför det övre bandet (potentiellt överköpt) eller det nedre bandet (potentiellt översålt).
- **Strategi**: En del traders använder detta som en signal för att priset kan komma att vända tillbaka mot det mellersta bandet (mean reversion).
Sälj när priset når övre bandet och visar tecken på att vända ner (t.ex. en bearish candlestick-formation).
Köp när priset når nedre bandet och visar tecken på att vända upp (t.ex. en bullish candlestick-formation).
- **Viktigt**: Denna strategi fungerar bäst i sidledes marknader (ranging markets). I starka trender kan man bli "överkörd" om man försöker handla mot trenden bara för att priset rör ett band ("walking the bands"). MÅSTE användas med andra bekräftande indikatorer (t.ex. RSI, MACD, stöd/motståndsnivåer).

**🔹 Trendföljande Strategier**:
- **"Walking the Bands"**: Om priset konsekvent stänger nära eller på det övre bandet i en uppåttrend, kan man behålla en lång position eller till och med öka den vid tillfälliga nedgångar mot det mellersta bandet. Motsvarande för nedåttrender.
- **Mellersta bandet som dynamiskt stöd/motstånd**: I en uppåttrend kan köpsignaler uppstå när priset testar och studsar upp från det mellersta bandet. I en nedåttrend kan säljsignaler uppstå när priset testar och studsar ner från det mellersta bandet.

**🔹 Bekräftelse av Utbrott från Formationer/Nivåer**:
- Om priset bryter ut från en viktig konsolideringsformation (t.ex. en triangel, rektangel) eller en stark stöd/motståndsnivå, och detta utbrott sker med ett samtidigt utbrott ur ett Bollinger Band (särskilt efter en squeeze), kan det ge extra styrka åt utbrottssignalen.

**🔹 W-Bottnar och M-Toppar (Specifika Bollinger-mönster)**:
- **W-Botten (Bullish)**:
En första botten skapas, ofta utanför eller vid det nedre bandet.
Priset studsar upp mot det mellersta bandet.
En andra botten skapas, men denna gång innanför det nedre bandet (indikerar minskad säljstyrka).
Ett utbrott över motståndet från den tidigare studsen bekräftar mönstret.
- **M-Topp (Bearish)**:
En första topp skapas, ofta utanför eller vid det övre bandet.
Priset faller tillbaka mot det mellersta bandet.
En andra topp skapas, men denna gång innanför det övre bandet (indikerar minskad köpstyrka).
Ett utbrott under stödet från den tidigare nedgången bekräftar mönstret.

## Viktiga Parametrar att Tänka På
**Period för SMA (Mellersta bandet)**: Standard är 20. En kortare period (t.ex. 10) gör banden mer reaktiva på kortsiktiga prisrörelser. En längre period (t.ex. 50) gör dem trögare och mer lämpade för längre trender.

**Antal Standardavvikelser**: Standard är 2. Att öka till 2.5 eller 3 gör banden bredare (färre beröringar/utbrott). Att minska till 1.5 gör dem smalare (fler beröringar/utbrott).

## Sammanfattning och Försiktighetsåtgärder
📌 Bollinger Bands är utmärkta för att visualisera volatilitet och relativa prisnivåer.

📌 De är inte ett fristående handelssystem. De fungerar bäst i kombination med andra indikatorer (t.ex. RSI för momentum, MACD för trend/momentum, volymanalys) och prisformationer.

📌 Var medveten om marknadsförhållandena. Strategier som fungerar i en sidledes marknad (t.ex. mean reversion) kan misslyckas i en starkt trendande marknad.

📌 "Walking the bands" är ett tecken på styrka, inte nödvändigtvis en omedelbar kontrasignal.

Genom att förstå hur banden konstrueras och vad de signalerar kan du integrera dem effektivt i din tekniska analysarsenal.

###RSI###
# RSI (Relative Strength Index)
## Vad är RSI?
RSI är en momentumoscillator som mäter hastigheten och förändringen i prisrörelser. RSI rör sig mellan 0 och 100.

## Hur den beräknas (förenklat)
RSI jämför storleken på genomsnittliga uppgångar med storleken på genomsnittliga nedgångar över en viss tidsperiod (standard är 14 perioder). Formeln ser till att värdet alltid ligger mellan 0 och 100.

## Hur informationen ska tolkas
**🔹 Överköpt och Översålt**
- **Över 70**: Anses traditionellt vara en överköpt nivå. Det innebär att tillgången har stigit snabbt och kraftigt, och en potentiell nedåtrekyl eller konsolidering kan vara nära. Det är inte en automatisk säljsignal i en stark trend.

- **Under 30**: Anses traditionellt vara en översåld nivå. Det innebär att tillgången har fallit snabbt och kraftigt, och en potentiell uppåtrekyl eller konsolidering kan vara nära. Det är inte en automatisk köpsignal i en stark nedåttrend.
Vissa traders använder 80/20 som striktare nivåer.

**🔹 Divergenser**

- Detta är en av de starkaste signalerna från RSI.
- **Bullish Divergens (Positiv divergens)**: Priset gör en ny lägre botten, men RSI gör en högre botten. Detta indikerar att säljtrycket minskar och en potentiell uppgång kan vara på väg.

- **Bearish Divergens (Negativ divergens)**: Priset gör en ny högre topp, men RSI gör en lägre topp. Detta indikerar att köptrycket minskar och en potentiell nedgång kan vara på väg.

**🔹 Mittlinjen (50-nivån)**
- När RSI rör sig över 50-nivån kan det ses som ett tecken på att köparna har övertaget (bullish momentum).

- När RSI rör sig under 50-nivån kan det ses som ett tecken på att säljarna har övertaget (bearish momentum).

- 50-nivån kan ibland agera som stöd eller motstånd för RSI-värdet.

**🔹 Trendlinjer och Formationer på RSI**

- Vissa analytiker ritar trendlinjer, stöd/motstånd och formationer (t.ex. huvud-skuldra) direkt på RSI-grafen och handlar på utbrott från dessa, precis som på en prisgraf.

**🔹 Failure Swings (Wilder's koncept)**
- **Top Failure Swing (Bearish)**: RSI når över 70, faller tillbaka, studsar upp men misslyckas med att nå den tidigare toppen, och bryter sedan under den tidigare botten i RSI.

- **Bottom Failure Swing (Bullish)**: RSI når under 30, studsar upp, faller tillbaka men misslyckas med att nå den tidigare botten, och bryter sedan över den tidigare toppen i RSI.

## Hur den används

Identifiera potentiella vändpunkter via överköpta/översålda nivåer (särskilt i sidledes marknader).

Leta efter divergenser som tidiga varningssignaler om trendförändringar.

Använda 50-nivån för att bedöma momentumets riktning.

📌 **RSI mäter momentum, inte trendens styrka direkt. En tillgång kan vara överköpt (RSI > 70) under lång tid i en stark uppåttrend. Använd alltid RSI i kombination med andra verktyg (t.ex. trendanalys, andra indikatorer).**

###ADX###
# ADX (Average Directional Index)
## Vad är ADX?
ADX är en trendstyrkeindikator. Den mäter styrkan i en rådande pristrend, oavsett om trenden är uppåt eller nedåt. ADX-värdet rör sig vanligtvis mellan 0 och 100.
ADX-systemet består egentligen av tre linjer:

**🔹 ADX-linjen**: Huvudlinjen som visar trendstyrkan.

**🔹 +DI (Positive Directional Indicator)**: Mäter styrkan i uppåtgående prisrörelser.

**🔹 -DI (Negative Directional Indicator)**: Mäter styrkan i nedåtgående prisrörelser.

## Hur den beräknas (förenklat)
Beräkningen är mer komplex än RSI.

Den involverar att jämföra dagens högsta/lägsta pris med föregående dags högsta/lägsta och stängningspris för att få fram "Directional Movement" (+DM och -DM).

Dessa slätas sedan ut (oftast över 14 perioder) för att få +DI och -DI.

ADX är sedan ett utjämnat medelvärde av "Directional Index" (DX), som i sin tur beräknas från skillnaden och summan av +DI och -DI.

## Hur informationen ska tolkas
**Trendstyrka (ADX-linjen)**:
- **Stigande ADX**: Indikerar att trenden (oavsett riktning) blir starkare.

- **Fallande ADX**: Indikerar att trenden blir svagare eller att marknaden går in i en konsolideringsfas (sidledes).

- **ADX-värden (ungefärliga riktlinjer)**:
- - **Under 20-25**: Svag trend eller ingen tydlig trend (sidledes marknad). Trendföljande strategier är ofta mindre effektiva här.
- - **Över 20-25 (och stigande)**: Indikerar att en trend börjar utvecklas eller stärkas.
- - **Över 40-50**: Mycket stark trend.

- **OBS**: En hög ADX-nivå (t.ex. 50) betyder inte att trenden kommer att vända, bara att den är mycket stark.

**Trendriktning (+DI och -DI)**:
- När **+DI är över -DI**: Indikerar att köparna har övertaget och den rådande trenden (om någon) är uppåtriktad.

- När **-DI är över +DI**: Indikerar att säljarna har övertaget och den rådande trenden (om någon) är nedåtriktad.

- **Korsningar mellan +DI och -DI**: Kan användas som potentiella köp- eller säljsignaler, men de måste bekräftas av en tillräckligt stark (och helst stigande) ADX.

- - **Köpsignal (potentiell)**: +DI korsar över -DI. Om ADX är över (t.ex.) 20-25 och/eller stiger, bekräftar det en potentiell uppåttrend.
- - **Säljsignal (potentiell)**: -DI korsar över +DI. Om ADX är över (t.ex.) 20-25 och/eller stiger, bekräftar det en potentiell nedåttrend.

## Hur den används
**Avgöra om marknaden trendar eller är sidledes**: Detta är ADX:s primära användningsområde. Använd trendföljande system (t.ex. moving average crossovers) när ADX är hög och stigande. Använd oscillatorer (som RSI för överköpt/översålt) när ADX är låg och marknaden är sidledes.

**Filtrera signaler från andra system**: Om du får en köpsignal från ett annat system, men ADX är mycket låg, kan det vara klokt att vara försiktig eftersom trenden är svag.

**Identifiera potentiella trendstarter**: När ADX börjar stiga från låga nivåer (t.ex. under 20) och passerar över 20-25, kan det signalera att en ny trend håller på att etableras. Titta då på +DI/-DI-korsningar för att avgöra riktningen.

**Varning för trendutmattning**: Om ADX når extremt höga nivåer (t.ex. över 60-70) och sedan börjar vända ner, kan det ibland signalera att den nuvarande trenden håller på att tappa kraft, även om priset fortfarande rör sig i trendens riktning.

# Sammanfattning & Jämförelse:
## Typ
- **RSI**: Momentumoscillator
-	**ADX**: Trendstyrkeindikator

## Mäter
- **RSI**: Hastighet och förändring i prisrörelser
-	**ADX**: Styrkan i en rådande trend (oavsett riktning)

## Skala
- **RSI**: 0 - 100
-	**ADX**: Vanligtvis 0 - 100 (i praktik sällan över 60-70)

## Primär signal
- **RSI**: Överköpt/Översålt, Divergenser, Momentumskiften
-	**ADX**: Trendstyrka (stark/svag/ingen trend)

## Används för
- **RSI**: Timing av kortsiktiga vändningar, momentum
-	**ADX**: Avgöra om trendföljande eller sidledes strategier är lämpliga

## Ger riktning?
- **RSI**: Indirekt via 50-nivån och divergenser
-	**ADX**: Ja, via +DI och -DI linjerna

📌 **Både RSI och ADX är värdefulla verktyg, men de ger olika typer av information. RSI kan hjälpa till att identifiera kortsiktiga vändningar och momentum, medan ADX hjälper till att bedöma om det överhuvudtaget finns en tillräckligt stark trend att handla på. De kompletterar ofta varandra väl.**

###SLOPE_LOG_PERCENTAGE###
# Vilken aktie har den brantaste lutningen (slope) vad avser prisutveckling?
Jag anser att det finns några viktiga överväganden att göra när man försöker kvantifiera trendstyrka inom teknisk analys.

**1. Hur skall man visa vilken aktie som har brantast lutning?**

- **En tabell sorterad i fallande ordning efter lutningsvärdet är det mest direkta sättet att visa detta**.

- - I tabellen bör åtminstone följande kolumner finnas;
- - - Vilken symbol det rör sig om
- - - Vilken 'slope' den har
- - - Vilken tidsram som gäller
- - - Procentuell förändring (under perioden)

- **Beräkning av 'Slope'** Jag härleder slope från en linjär regressionslinje anpassad till logaritmerad prisdata över en definierad period. Formeln är **(y2 - y1) / (x2 - x1)**, där y är pris och x är tid.

**2. Är en sk 'Slope'-tabell verkligen användbar i teknisk analys?**

Ja, jag tror att den kan vara till viss nytta **MEN** med betydande förbehåll och noggranna överväganden.

**Användbarhet**
- **Momentumindikation** En brant positiv lutning indikerar tydligt ett starkt nyligen uppåtriktat momentum. Detta kan hjälpa till att identifiera aktier som är i en stark uppåttrend.
- **Screening** Det kan vara en del av din process för att snabbt hitta aktier som uppvisar stark prisuppgång.
- **Bekräftelse** Om andra indikatorer också tyder på en positiv utveckling kan en brant lutning ge ytterligare bekräftelse.
- **Relativ Styrka** Att jämföra lutningar kan vara ett sätt att se på relativ styrka, även om det finns mer sofistikerade beräkningar för relativ styrka (t.ex. jämförelse mot ett index eller andra aktier).

**Förbehåll (Varför det inte är en fristående köpsignal)**:
- **"Att Jaga" Prestationer** Aktier med de brantaste lutningarna kan redan ha gjort en betydande del av sin rörelse. Att köpa enbart baserat på detta kan innebära att man köper på eller nära en kortsiktig topp ("köpa dyrt").
- **Volatilitet och Risk** Mycket branta lutningar kan också indikera hög volatilitet. Det som stiger mycket snabbt kan ibland falla lika snabbt.
- **Hållbarhet** En extremt brant lutning kanske inte är hållbar på lång sikt. Paraboliska uppgångar korrigeras ofta kraftigt.
- **Inte Prediktivt för Framtida Lutning** Tidigare branthet garanterar inte framtida branthet.
- **Kontext är Avgörande** En brant lutning under ett brett börsrally är annorlunda än en brant lutning när den övergripande marknaden är platt eller fallande.
- **Beroende av Tidsram** Den "brantaste" aktien över 10 dagar kommer sannolikt att vara annorlunda än den "brantaste" över 200 dagar.

**3. Kort eller lång tidsram för beräkning av 'Slope'**

Det beror helt på din handels- eller investeringsstrategi och vad du försöker identifiera:

**Kort Tidsram (t.ex. 5, 10, 20 dagar)**
- **Fördelar**: Identifierar mycket färskt, starkt momentum. Bra för kortsiktiga traders, swingtraders, eller för att identifiera "breakout"-kandidater. Fångar explosiva, snabba rörelser.
- **Nackdelar** Mer känslig för "brus" och kortsiktiga fluktuationer. Lutningar kan förändras snabbt. Högre risk att identifiera aktier som är tillfälligt överköpta och på väg mot en snabb nedgång.
- **Användningsområde** Hitta aktier med plötsligt, starkt köptryck.

**Medellång Tidsram (t.ex. 50, 100 dagar)**
- **Fördelar** Identifierar mer etablerade, medellånga trender. Balanserar reaktionsförmåga med en viss grad av trendstabilitet.
- **Nackdelar** Kan missa den allra första början på en ny, explosiv rörelse.
- **Användningsområde** Identifiera aktier i solida, pågående uppåttrender.

**Lång Tidsram (t.ex. 200 dagar, 1 år)**
- **Fördelar** Identifierar starka, långsiktiga sekulära uppåttrender. Mer stabilt och mindre påverkat av kortsiktigt brus. Bra för långsiktiga investerare.
- **Nackdelar** Mycket långsam att reagera. Kommer endast att lyfta fram aktier som har presterat bra under en avsevärd tid, vilket potentiellt missar nyare möjligheter eller vändningshistorier ("turnaround stories").
- **Användningsområde** Identifiera fundamentalt starka företag med uthållig prisuppgång.

**Rekommendation** Du kan överväga att beräkna och visa lutningar för flera tidsramar (t.ex. 20-dagars lutning, 60-dagars lutning, 200-dagars lutning) för att få en mer heltäckande bild av en akties momentum över olika horisonter.

**4. Att Jämföra Lutningar Mellan Olika Aktier**

Det är direkt missvisande att direkt jämföra råa lutningsvärden mellan olika aktier.

**Prisskaleproblemet**
- En aktie prissatt till 10 kr som stiger 1 kr har en lutning på 1 / (tidsenhet).
- En aktie prissatt till 100 kr som stiger 1 kr har en lutning på 1 / (tidsenhet).
- Uppenbarligen är uppgången på 1 kr för aktien värd 10 kr en mycket mer signifikant procentuell rörelse och indikerar starkare relativt momentum.
- **Det råa lutningsvärdet påverkas starkt av aktiens absoluta prisnivå**.

**Volatilitetsproblemet**
- En högvolatil, lågt prissatt aktie kan ha en mycket brant rå lutning under en kort period, även om dess övergripande trend inte är lika robust som en mindre volatil, högre prissatt aktie med en något mindre brant rå lutning.

**Bättre sätt att jämföra trendstyrka mellan olika aktier**

Istället för (eller utöver) rå lutning, överväg dessa normaliserade mått

**Procentuell Lutning / Logaritmisk Lutning**
- Att beräkna lutningen på logaritmen av priserna normaliserar för prisskalan. En 10%-ig ökning ser likadan ut på en logaritmisk skala oavsett om aktien kostar 10 kr eller 100 kr.
- När du anpassar en linjär regression till log(pris) vs. tid, representerar lutningen på denna linje den genomsnittliga procentuella tillväxttakten per tidsenhet.
- **Detta är generellt det FÖREDRAGNA sättet att beräkna "lutning" för jämförelse mellan aktier med olika prisnivåer**.

**Rate of Change (ROC) / Procentuell Förändring**

- Beräkna den procentuella prisförändringen över den valda tidsramen: ((Nuvarande Pris - Pris för N perioder sedan) / Pris för N perioder sedan) * 100.
- Rangordna aktier efter detta värde. Detta mäter direkt prestationen över perioden.

- **Lutningen på den Log-Linjära Regressionslinjen (Normaliserad Lutning)**

- - Om du har y = mx + b där y = log(pris) och x = tidsperiod_nummer. m (lutningen) är redan ett bra jämförbart mått som representerar den genomsnittliga geometriska tillväxttakten.
- - Du kan också överväga R-kvadratvärdet (R-squared) från regressionen. Ett högt R-kvadrat (närmare 1) indikerar att prispunkterna passar trendlinjen väl, vilket tyder på en mer konsekvent trend. En brant lutning med ett lågt R-kvadrat kan vara mindre tillförlitlig.

- **Indikatorer för Relativ Styrka**

- - **RS-Ratio (Relative Strength Ratio)** Aktiepris / Indexpris. En stigande RS-Ratio-linje indikerar att aktien överpresterar indexet. Du kan sedan beräkna lutningen på denna RS-Ratio-linje.
- - **RS-Mansfield (Relative Strength Mansfield)** En mer komplex version som normaliserar och rangordnar.

## Slutsats

– En tabell sorterad efter lutning kan vara användbar, särskilt om lutningen beräknas på logaritmerade priser (för att normalisera för olika absoluta prisnivåer). Detta gör jämförelsen mellan aktier mycket mer meningsfull.

– **Tidsramen** som används för lutningsberäkningen är kritisk och bör överensstämma med den investerings- eller handelshorisont du är intresserad av. Att erbjuda flera tidsramar är ofta bäst.

– Den "brantaste lutningen" är en indikator på starkt historiskt momentum. Den bör användas som en informationsbit inom en bredare analytisk ram, inte som en fristående signal. Överväg den alltid tillsammans med andra faktorer som volym, volatilitet, marknadskontext och eventuellt fundamental analys.

Att använda en logaritmisk lutning (eller en direkt beräknad procentuell förändring över perioden) är rätt väg att gå för mer meningsfulla jämförelser av "branthet" mellan olika aktier.

Varför är det olika rangordning mellan de olika metoderna för 'Steep Slope'?

Du ser olika rangordningar eftersom de två metoderna betonar olika aspekter av prisrörelserna:

Logaritmisk Pris-lutning (Log-lutning):

Beräkning: Linjär regression av LOG(Pris) mot Tid.

Tolkning: Denna lutning approximerar den genomsnittliga sammansatta dagliga tillväxttakten.
En aktie som konsekvent växer med 1% per dag kommer att ha en liknande log-lutning oavsett om priset är 10 kr eller 1000 kr (eftersom den relativa förändringen är densamma).

Känslighet: Den är mer känslig för konsekvent procentuell tillväxt över perioden.
En aktie som dubblas jämnt över året kommer sannolikt att rankas högre än en som har stora volatila svängningar men bara slutar något högre.
Metoden tenderar att jämna ut effekten av stora absoluta prisförändringar, särskilt vid högre prisnivåer.
Tickers som ADDV-BTA-B och GEAN hade troligen relativt stabila uppåtgående trender procentuellt sett under perioden, även om deras absoluta prisförändringar inte var de största.

Procentuell Förändrings-lutning (% Förändrings-lutning):

Beräkning: Linjär regression av Daglig Procentuell Förändring mot Tid.

Tolkning: Denna lutning representerar den genomsnittliga absoluta dagliga procentuella förändringen.
En aktie som går från 1 kr till 2 kr på en dag (+100% förändring) bidrar mycket mer positivt till denna lutningsberäkning än en aktie som går från 100 kr till 101 kr (+1% förändring) en annan dag.

Känslighet: Den är mycket känslig för stora enskilda dagliga procentuella hopp, särskilt för lågprisaktier där en liten absolut rörelse kan vara en enorm procentuell vinst.
Den återspeglar också den aritmetiska genomsnittliga förändringen, inte den sammansatta takten.
En aktie med några få dagar med massiva procentuella vinster (även om de följs av nedgångar) kan få en hög % Förändrings-lutning, även om dess totala sammansatta avkastning inte är den bästa.
Tickers som XSPRAY-TR eller KLARA-TR-B upplevde troligen några dagar med mycket stora positiva procentuella förändringar under perioden, vilket kraftigt ökade deras genomsnittliga dagliga procentuella förändring.

Slutsats: Anledningen till att du ser olika rangordningar är att de två metoderna belyser olika aspekter av prisrörelser:
Log-lutning
Föredrar konsekvent sammansatt procentuell tillväxt. Bättre för att identifiera stabila trender i förhållande till den aktuella prisnivån.
% Förändrings-lutning
Föredrar stora genomsnittliga aritmetiska dagliga procentuella förändringar. Påverkas mer av enskilda dagar med hög volatilitet och stora procentuella svängningar, särskilt hos aktier med lågt pris.

Ingen metod är i sig "fel", de ger bara olika perspektiv på momentum eller trend.
Log-lutningen är generellt vanligare inom finansiell modellering för att jämföra tillväxttakter mellan olika prisnivåer, medan % Förändrings-lutningen kan lyfta fram aktier med nyligen inträffade explosiva (men potentiellt volatila) rörelser.

###ADDLIST###
'Add List'-fältet är avsett för att lägga upp nya symbollistor utöver de du redan har registrerat.
<i>Dina redan registrerade symbollistor visas i tabellen till höger 'Defined Lists'.</i>

Du kan registrera godtyckligt många symbollistor.

Till dessa symbollistor kopplar du sedan en eller flera symboler genom att gå till sidan:

<h7 class="heading-TA h7-bold">Maintenance > Maintain Favorites</h7>

<i>Exempel
🔘 Du registrerar en lista med namnet 'Min Portfölj' och ger den en sorteringorder t.ex. 1
🔘 Du skapar sedan ytterligare en symbollista och ger den namnet 'Symboler jag följer' med sorteringsorder t.ex. 2</i>

🔹 Ge listorna meningsfulla namn
🔹 Ge dina listor en sorteringsordning så att de listas i den ordning du önskar (i de fall där två listor har samma sorteringsordning så kommer de att visas i alfabetisk ordning)

När du väljer börs och symboltyp i bilden <h7 class="heading-TA h7-bold">'Market Activity'</h7> så kommer du att få upp en rullgardinslista (<h7 class="heading-TA h7-bold">Symbol</h7>) i vilken symbolerna visas enligt nedan:

<h7 class="heading-TA h7-bold">Min Portfölj</h7>
	Acast AB (ACAST)
	MilDef Group AB (MILDEF)
	Minesto AB (MINEST)
  .
  .
  .
<h7 class="heading-TA h7-bold">Symboler jag följer</h7>
  Acrinova AB Series B (ACRI-B)
	Addtech AB (publ.) (ADDT-B)
  .
  .
  .
<h7 class="heading-TA h7-bold">Undefined</h7>
	24SevenOffice Scandinavia AB (247)
	2cureX AB (2CUREX)
	4C Group AB (4C)
	AAC Clyde Space AB (publ) (AAC)
	AAK AB (AAK)
	AB Electrolux (publ) (ELUX-A)
  .
  .
  .

där listorna kommer i den ordning du angett med listornas symboler direkt efter listnamnet. Till sist kommer de symboler som INTE är knutna till någon symbollista att listas under en fiktiv symbollista med namnet <h7 class="heading-TA h7-bold">'Undefined'</h7>.

På detta sätt kan du på ett relativt enkelt sätt snabbt kunna navigera till dina önskade symboler.

###DEATH CROSS###
Många investerare ser Deathcross som en baisse-artad indikator, även om Deathcross har följts av uppgångar i många många fall.

Det finns därför begränsningar med att använda Deathcross som en säker sälj-indikator.

Om signaler, så enkla som interaktionen mellan 50- och 200-dagars SMA hade ett förutsägbart värde, skulle du förvänta dig att de skulle tappa det snabbt när marknadsaktörer försökte dra fördel?

Vad händer efter ett Deathcross kan man undra?

Den är förvisso en "baisse-artad" signal, så efter det att ett Deathcross inträffar kommer sannolikt den nedåtgående trenden att fortsätta, där tillgångens pris kommer att sjunka ytterligare. Men den kan också signalera en vändning; ett slut på en uppåtgående trend, där priset kommer att börja sjunka eller förbli ganska oförändrat.

###EXCHANGE###
Här väljer du den börs vars symboler du önskar granska närmare.

Du har idag endast 3 möjliga val:
🔹 <h7 class="heading-TA h7-bold">ST</h7> (<i>Stockholms-börsen</i>)
🔹 <h7 class="heading-TA h7-bold">NYSE</h7> (<i>New York Stock Exchange</i>)
🔹 <h7 class="heading-TA h7-bold">NASDAQ</h7> (<i>National Association of Securities Dealers Automated Quotations</i>)

då programmet endast laddar ner data för dessa börser.

Naturligtvis kan vi med enkla medel utöka antalet börser på sikt.

###GOLDEN CROSS###
Goldencross kan indikera att en långvarig nedåtgående trend har tagit slut.

Men indikatorn Goldencross, precis som alla andra indikatorer har eftersläpningar, vilket inebär att händelserna som formar graferna redan har inträffat.

Det medför att indikatorn INTE med någon större säkerhet kan förutsäga framtiden.

Goldencross <b>KAN</b> skapa en falsk köpsignal.

Trots dess uppenbara styrka med att förutsäga köplägen så händer det ofta att förutsägelsen inte slår in.

Därför bör andra signaler och indikatorer alltid användas för att bekräfta ett Goldencross.

Tabellen visar de symboler där SMA50-kurvan korsar SMA200-kurvan (nerifrån).

Förberäkningar har gjorts för 3 (tre) olika horisonter - med 15, 30 och 90 dagars tillbakablick.
Du kan även ange valfritt antal dagars tillbakablick och få den beräknad (vilket tar några sekunder).
Välj det alternativ som kan vara av intresse för dig genom att klicka på motsvarande knapp alternativt ange egen horisont.

###LISTS###
🔹 Tabellen '<h7 class="heading-TA h7-bold">Lists</h7>' listar de symbollistor som finns registrerade för aktuell användare.
🔹 Tabellen '<h7 class="heading-TA h7-bold">Exchanges</h7>' listar aktuella börser som applikationen hanterar.
🔹 Tabellen '<h7 class="heading-TA h7-bold">Products</h7>' listar de symboltyper som applikationen hanterar.

För att koppla symboler till en symbollista så markerar du den;
🔘 lista som du avser att koppla symboler till (<h7 class="heading-TA h7-bold">Lists</h7>)
🔘 börs som symbollistan tillhör (<h7 class="heading-TA h7-bold">Exchanges</h7>)
🔘 symboltyp du vill att symbolerna i listan skall ha (<h7 class="heading-TA h7-bold">Products</h7>)

varefter du hämtar upp de symboler som matchar dina val genom att klicka på knappen med ett litet förstoringsglas.

Symbolerna kommer då att visas i tabellen '<h7 class="heading-TA h7-bold">Available Symbols</h7>' och de eventuella symboler som redan finns registrerade för markerad symbollista hamnar i tabellen '<h7 class="heading-TA h7-bold">Listed Symbols</h7>'.

Du kan nu flytta symboler till listan genom att dra dem från '<h7 class="heading-TA h7-bold">Available Symbols</h7>' och släppa dem i tabellen '<h7 class="heading-TA h7-bold">Listed Symbols</h7>' - eller omvänt dra bort symboler från listan genom att dra önskad symbol från tabellen '<h7 class="heading-TA h7-bold">Listed Symbols</h7>' till '<h7 class="heading-TA h7-bold">Available Symbols</h7>'.

<i>Tänk på att Drag&Drop kräver lite tid för att hinna med vilket innebär att du inte får stressa iväg processen utan ge den den tid den behöver för att hinna reagera.

Så innan du släpper en symbol så bör du se en nertonad rad i tabellen du avser att släppa symbolen i - tar ungefär 1 sekund.</i>

###MACD###
<h7 class="heading-TA h7-bold">Vad är MACD</h7>

MACD (<i>Moving Average Convergence Divergence</i>) är en teknisk indikator som används inom aktiehandel och teknisk analys för att identifiera styrkan, riktningen och varaktigheten av en trend i en akties prisrörelse.

Den är särskilt användbar för att signalera köp och sälj baserat på <h7 class="heading-TA h7-bold">momentum</h7>.

<h7>I det här sammanhanget betyder <h7 class="heading-TA h7-bold">momentum</h7> ungefär hur snabbt och kraftfullt en akties pris förändras.

Om priset stiger snabbt och mycket, säger man att aktien har ett <h7 class="heading-TA h7-bold">starkt positivt momentum</h7> – en signal att trenden kan fortsätta uppåt (köpläge).

Om priset faller snabbt och mycket, har den <h7 class="heading-TA h7-bold">negativt momentum</h7> – en signal att trenden kan fortsätta nedåt (säljläge).

Så när vi säger att MACD signalerar köp och sälj baserat på momentum, betyder det att MACD hjälper till att avgöra om trenden är stark nog att följa eller om den kanske vänder.</h7>
<hr>
<h7 class="heading-TA h7-bold">MACD består av 3 huvudkomponenter</h7>

<h7 class="heading-TA h7-bold">MACD-linjen</h7>

skillnaden mellan 2 exponentiella glidande medelvärden (EMA)
- ett snabbare (i vårt fall <h7 class="heading-TA h7-bold">12-dagars EMA</h7>)
och
- ett långsammare (i vårt fall <h7 class="heading-TA h7-bold">26-dagars EMA</h7>).

<i>Formeln för att räkna ut MACD-V är:
<b>MACD = EMA12 − EMA26</b></i>

ℹ️ Tolkning av MACD

📌 Om MACD är positiv, betyder det att det kortsiktiga momentumet är starkare än det långsiktiga momentumet, vilket indikerar en <b>uppåtgående trend</b>.
📌 Om MACD är negativ, betyder det att det långsiktiga momentumet dominerar, vilket kan indikera en <b>nedåtgående trend</b>.
<hr>
<h7 class="heading-TA h7-bold">Signal-linjen</h7>

är ett glidande medelvärde (i vårt fall <h7 class="heading-TA h7-bold">9-dagars EMA</h7>) av MACD-linjen.

Den fungerar som en utjämnad version av MACD och används för att identifiera köp- och säljsignaler.

Hur beräknas Signal-linjen?

Det är ett Exponentiellt Glidande Medelvärde (EMA) på MACD-värdena med en utjämningsfaktor på 0.2 (vilket motsvarar en EMA-period på 9).

MACD = Dagens MACD-värde
prevSignalLine = Föregående dags 'Signal Line'
0.2 * MACD + 0.8 * prevSignalLine = Standard EMA-formel där 0.2 är viktningsfaktorn för en 9-dagars EMA

Hur fungerar det?
Den här formeln följer standard-EMA-logiken:

𝐸𝑀𝐴<sub>today</sub>=(𝛼⋅value)+(1−𝛼)⋅𝐸𝑀𝐴<sub>yesterday</sub>

Där 𝛼=2/(𝑛+1)
och för en 9-dagars EMA blir det:

𝛼=2/(9+1)=0.2


Därför motsvarar 0.2 viktningsfaktorn i koden ovan.

Sammanfattning
Denna kod beräknar Signal Line (MACD-S) genom en EMA(9) av MACD-värdena.

ℹ️ Tolkning av MACD-S

📌 Signallinjen används som en referenslinje för att generera köps- och säljsignaler:
- Köp: När MACD korsar upp över MACD-S → <h7 class="heading-TA h7-bold">Bullish signal</h7>
- Sälj: När MACD korsar ner under MACD-S → <h7 class="heading-TA h7-bold">Bearish signal</h7>
<hr>
🔹 <h7 class="heading-TA h7-bold">MACD-histogram</h7>
Skillnaden mellan MACD-linjen och Signallinjen

<i><b>Histogram = MACD-V − MACD-S</b></i>

ℹ️ Tolkning av Histogrammet

📌 Histogrammet visar hur långt ifrån varandra MACD-V och MACD-S är.
Ett växande histogram indikerar ökande momentum, medan ett avtagande histogram indikerar minskande momentum.
----------------------
Hur tolkar man MACD-V och MACD-S?

1. MACD-V (själva MACD-linjen):

    - När MACD-V är **över noll**, betyder det att den kortare EMA (t.ex. 12-dagar) ligger **över** den längre EMA (t.ex. 26-dagar), vilket är ett tecken på ett positivt momentum.
    - När MACD-V är **under noll**, är det tvärtom – den längre EMA ligger över den kortare, vilket indikerar ett negativt momentum.
2. MACD-S (signallinjen):

    - Detta är ett glidande medelvärde av MACD-V och används som en "smidigare" indikator för att avgöra riktningen.
    - Korsningar mellan MACD-V och MACD-S genererar handelsignaler:
        - Korsning uppåt (bullish): När MACD-V korsar över MACD-S → Köp.
        - Korsning nedåt (bearish): När MACD-V korsar under MACD-S → Sälj.

---

Exempel på tolkning:

- Om MACD-V är +2 och MACD-S är +1:

    - Det positiva värdet indikerar att momentumet är uppåtgående.
    - Eftersom MACD-V är över MACD-S signaleras ett köptillfälle.
- Om MACD-V är -1.5 och MACD-S är -1.2:

    - Det negativa värdet indikerar ett nedåtgående momentum.
    - Eftersom MACD-V är under MACD-S signaleras ett säljtillfälle.
- Om MACD-V korsar noll-linjen:

    - När den går från negativ till positiv → Start av en potentiell uppåtgående trend.
    - När den går från positiv till negativ → Start av en potentiell nedåtgående trend.

---

Vad är MACD bra för?

- Momentumanalys: Hjälper till att förstå om en aktie har starkt eller svagt momentum.
- Trendskiften: Ger signaler när trenden vänder.
- Divergenser: När priset går i en riktning, men MACD rör sig åt motsatt håll, kan det indikera att trenden är på väg att försvagas eller vända.

###NOOFDAYS###
Beskrivande text till 'Timeframe'

###SLOPE###
<h7 class="heading-TA h7-bold">Slope (eller Trendlinjens Lutning)</h7>

Att förstå riktningen för en underliggande trend är ett av de mest grundläggande sätten att öka sannolikheten för att göra en framgångsrik handel eftersom det säkerställer att de allmänna marknadskrafterna arbetar till din fördel.

Nedåtlutande trendlinjer tyder på att det finns ett överskott av utbudet för värdepapperet, ett tecken på att marknadsaktörer har en högre vilja att sälja en tillgång än att köpa den.

Omvänt är en uppåtgående trend en signal om att efterfrågan på tillgången är större än utbudet och används för att antyda att priset sannolikt kommer att fortsätta gå uppåt.

För att se de aktier vars trendlinje har störst lutning - välj det antal dagar som skall ligga som bas för beräkning av trendlinjen.

Trendlinjens lutning baseras på en approximering av stängningskurserna för aktier för de senaste X dagarna.

Approximeringen innebär att söka ett linjärt samband till den faktiska kurvan för stängningskurserna, dvs en rät linje med antingen positiv eller negativ korrelation.

Denna räta linje är den linje där avvikelsen från de faktiska stängningskurserna i grafen är så liten som möjligt.

För att få fram en så exakt linjär anpassning som möjligt används 'minsta kvadrat'-metoden.

<img src="IMG/BeräkningAvSlope.png">
<span style="font-style:italic">
	Beräkning av Slope
</span>
<hr>
ℹ️ Notera - Det är vanskligt att jämföra regressionslinjens lutning för två aktier med absoluta värden eftersom aktiekurserna har olika prisnivåer.

En aktie som ökar från 100 SEK till 400 SEK och en annan som ökar från 1.490 SEK till 1.790 SEK kan ha samma absoluta lutning i regressionen, trots att den procentuella förändringen är väldigt olika.

Det finns två huvudsakliga problem med att använda absoluta värden

🔹	Skalberoende

En aktie med högre absolut prisnivå får en större numerisk lutning, även om den relativa förändringen är liten.

Exempel: En aktie som ökar från 1.000 till 1.010 SEK har en lutning på cirka 10, medan en aktie som ökar från 10 till 20 USD får en lutning på cirka 1, trots att den senare har en mycket större relativ ökning (100% jämfört med 1%).

🔹	Svårighet att jämföra trender rättvist

En dyr aktie kan ha en hög lutning bara för att den är dyr, inte för att den har haft en stark uppgång.

Billigare aktier kan ha en mycket större procentuell uppgång men ändå få en lägre lutning i regressionen.

<h7 class="heading-TA h7-bold">Normalisering</h7>

Ett bättre sätt att jämföra trender mellan aktier är att använda <h7 class="heading-TA h7-bold">procentuell lutning</h7> eller att beräkna regressionen på <h7 class="heading-TA h7-bold">logaritmerade priser</h7> istället för absoluta priser.

ℹ️	I vårt fall har vi valt att använda oss av <h7 class="heading-TA h7-bold">logaritmerade priser</h7> för att få en mer rättvis jämförelse av tillväxttakten oberoende av prisnivå.

📌	Det gör att du jämför den relativa utvecklingen snarare än de absoluta beloppen, vilket ger en mer rättvis bild av aktiens verkliga trend.
<hr>
<h7 class="heading-TA h7-bold">Logaritmisk Prisanpassning (Logarithmic Price Adjustment)</h7>

<img src="IMG/LogaritmiskPrisanpassning.png">
<span style="font-style:italic">
	Logaritmisk Prisanpassning
</span>

📌	Logaritmisk prisanpassning används för att hantera relativa förändringar i aktiekurser istället för absoluta värden.

Genom att ta den naturliga logaritmen av priset blir förändringar proportionella, vilket gör att en aktie som ökar från 100 till 200 (100 % ökning) och en som ökar från 1000 till 2000 (också 100 % ökning) får liknande värden.

ℹ️	Detta hjälper till att jämföra aktier med olika prisnivåer och gör regressionslinjens lutning mer rättvisande.
<hr>
<h7 class="heading-TA h7-bold">Procentuell Prisanpassning (Percentage Price Adjustment)</h7>

<img src="IMG/ProcentuellPrisanpassning.png">
<span style="font-style:italic">
	Procentuell Prisanpassning
</span>

📌	Procentuell prisanpassning beräknar kursförändringen relativt startvärdet i perioden:

Detta gör att trenden mäts som en andel istället för ett absolut belopp.

En aktie som ökar från 100 till 400 (+300 %) får en högre lutning än en aktie som går från 1490 till 1790 (+20 %), trots att den senare ökningen är större i absoluta termer.

ℹ️	Detta gör metoden särskilt användbar för att identifiera aktier med hög tillväxt relativt sin ursprungliga kurs.

###STOP LOSSES###
Beskrivande text till 'Registered Stop-Losses'

###SIGNS###
✅🛑⚠️👍👎👎👎👎🔘


Emoji	Use Case
✅	Confirmation, success, correct step
❌	Error, issue, incorrect step
⚠️	Warning, caution
ℹ️	Information, note
📌	Important point
📝	Explanation, notes
📊	Data, statistics, financial info
🔹	Bullet points (clearer than "-")
📈	Stocks going up, positive trend
📉	Stocks going down, negative trend
💡	Idea, tip, or useful insight
⏳	Waiting, delay, loading
🚀	Strong growth, excitement (stocks, tech, success)
🛠️	Fixing, debugging, technical work
🎯	Target, goal achieved
🔍	Searching, investigation
🎵	Music-related topics
🏆	Achievement, best choice
📅	Date, schedule, time-based reference



###STOPLOSS###
Stop-loss är en riskhanteringsstrategi inom aktiehandel.
En stop-loss-order är en 'order' som automatiskt säljer en aktie när dess pris sjunker till en viss nivå, för att begränsa förlusten.

Det fungerar i korthet så här:

✅ Du sätter en stop-loss-nivå, alltså ett pris där din aktie automatiskt säljs om kursen faller till eller under den nivån.

🔹 Syftet är att skydda ditt kapital genom att undvika stora förluster.
🔹 Fördelen med att använda sig av stop-loss är att du slipper övervaka marknaden konstant och kan ha en plan i förväg.

<h7 class="heading-TA h7-bold">OLIKA TYPER AV STOP-LOSS</h7>

<h7 class="heading-TA h7-bold">Fast Stop-Loss</h7>

<i><b>Exempel på en Fast Stop-Loss</b>

Du köper 100 aktier i Bolag X för 100 kr per aktie.
För att skydda dig mot för stora förluster, sätter du en stop-loss vid 90 kr.

🔘 Om aktien stiger till 110 kr → Inget händer – stop-loss aktiveras bara om priset faller
🔘 Om aktien faller till 90 kr → Din stop-loss säljer automatiskt alla aktier
🔘 Om aktien fortsätter falla till 80 kr → Du har redan sålt vid 90 kr och undviker större förlust</i>

<h7 class="heading-TA h7-bold">Trailing Stop-Loss</h7>

<i><b>Exempel på en Trailing Stop-Loss</b>

Antag att du sätter en trailing stop-loss på 10 %

Om ditt startpris är 100 kr så innebär det att Stop-loss aktiveras vid 90 kr

🔘 Om aktien stiger till 120 kr → Stop-loss flyttas upp till 108 kr (10 % under 120 kr)
🔘 Aktien fortsätter att stiga till 130 kr → Stop-loss justeras till 117 kr
🔘 Om aktien sedan faller till 117 kr → Aktien säljs automatiskt</i>

🔹 <b>Fördel</b> - låter dig rida på vinster, men säljer om aktien börjar falla för mycket

<h7 class="heading-TA h7-bold">När ska man använda Stop-Loss?</h7>

✅ Vid kortsiktig handel (swing trading, day trading) - För att snabbt begränsa förluster
✅ Vid högvolatila aktier - För att skydda mot plötsliga nedgångar
✅ Vid långsiktiga investeringar - Kan användas för att skydda vinster i en stigande trend

<h7 class="heading-TA h7-bold">⚠ Risker & Nackdelar</h7>

❌ Aktien kan studsa tillbaka snabbt (ibland kan en aktie gå ner till din stop-loss, säljas, och sedan direkt återhämta sig)
❌ Marknadsgap kan orsaka sämre försäljningspris (om aktien öppnar dagen långt under din stop-loss, säljs den till det första tillgängliga priset)
❌ Stop-loss kan triggas av kortsiktiga svängningar (om nivån är satt för snävt kan du sälja i onödan)

<h7 class="heading-TA h7-bold">📌 Sammanfattning</h7>

🔹 En stop-loss-order säljer automatiskt dina aktier om priset faller till en viss nivå
🔹 En trailing stop-loss följer aktien uppåt och låter dig låsa in vinster
🔹 Fördel: Begränsar förluster och hjälper dig hålla en disciplinerad strategi
🔹 Nackdel: Kan triggas av tillfälliga svängningar eller marknadsgap
_______________

✅ För att räkna ut en lämplig stop-loss-nivå kan man använda sig av olika metoder beroende på vilken strategi man har.

Här är några vanliga sätt att bestämma en stop-loss

<h7 class="heading-TA h7-bold">Fast procentuell stop-loss</h7>

Du sätter en fast procentuell gräns, t.ex. 5 % eller 10 %, under inköpspriset.

<i>Exempel
🔘 Du köper en aktie för 100 kr
🔘 Du sätter en 10 % Stop-loss → Stop-loss ligger på 90 kr
🔘 Om aktien faller till 90 kr → Aktien säljs automatiskt</i>

🔹 Lämplig för Nybörjare, Swingtrading, aktier med låg volatilitet.

<h7 class="heading-TA h7-bold">ATR (Average True Range) – Volatilitetsbaserad stop-loss</h7>

ATR mäter hur mycket en aktie rör sig i snitt per dag.

Du kan sätta stop-loss vid t.ex. 1,5x eller 2x ATR för att undvika att den triggas av normala rörelser.

<i>Exempel på beräkning
🔘 Aktien har en genomsnittlig rörelse (ATR) på 3 kr/dag
🔘 Du sätter stop-loss på 2 x ATR → Stop-loss blir 6 kr under inköpspriset
🔘 Köpkurs: 100 kr → Stop-loss: 94 kr</i>

🔹 Lämplig för: Daytrading, swingtrading, volatila aktier.

<h7 class="heading-TA h7-bold">Teknisk analys – Stop-loss vid stöd/motstånd</h7>

Du kan sätta stop-loss precis under en stödlinje eller en tidigare botten i diagrammet.

<i>Exempel
🔘 Aktien har studsat upp från 95 kr flera gånger tidigare
🔘 Du köper vid 100 kr och sätter stop-loss på 94 kr (precis under stödet)</i>

🔹 Lämplig för: Tekniska traders, långsiktiga investerare.

<h7 class="heading-TA h7-bold">🔹 Break-even stop-loss (riskfri trade)</h7>

När aktien gått upp en viss procent flyttar du stop-loss till inköpspriset, så du aldrig förlorar pengar.

<i>Exempel
🔘 Du köper en aktie för 100 kr
🔘 När aktien når 110 kr flyttar du stop-loss från 90 kr till 100 kr
🔘 Om aktien faller tillbaka → Du säljer på 100 kr och går +-0</i>

🔹 Lämplig för: Traders som vill minimera risk.

<h7 class="heading-TA h7-bold">Trailing stop-loss – Låsa in vinster</h7>

En trailing stop-loss följer aktiens uppgång och låter dig ta hem vinster.

<i>Exempel
🔘 Du sätter en 10 % trailing stop-loss
🔘 Aktien köps för 100 kr → Stop-loss börjar vid 90 kr
🔘 Aktien stiger till 120 kr → Stop-loss flyttas till 108 kr
🔘 Om aktien faller till 108 kr → Aktien säljs automatiskt</i>

🔹 Lämplig för: Långsiktiga investerare, trendföljande strategier.

<h7 class="heading-TA h7-bold">Vilken metod passar dig?</h7>

✅ Kort sikt (daytrading/swingtrading) → ATR-baserad stop-loss eller procentuell stop-loss
✅ Lång sikt (investeringar) → Stöd/motståndsbaserad stop-loss eller trailing stop-loss
✅ Osäker på volatilitet? → ATR ger en mer dynamisk stop-loss

###SELL###
Beskrivande text till 'Add New Sell'

###SYMBOL###
ℹ️	En symbol är en unik identifierare för ett värdepapper (t.ex. en aktie, fond eller obligation) på en börs.

Symbolen består vanligtvis av en kort kod, oftast i form av bokstäver och ibland siffror.

Exempel på symboler är

🔹 <h7 class="heading-TA h7-bold">AAPL</h7>
<p class=indent> för Apple Inc. på NASDAQ</p>
🔹 <h7 class="heading-TA h7-bold">VOLV B</h7>
<p class=indent> för Volvo B på Stockholmsbörsen (ST).</p>
Symboler används inom börshandel för att identifiera och följa specifika värdepapper på ett enkelt sätt.

###SYMBOL TYPE###
ℹ️	Som applikationen idag är utformad så kan du välja mellan tre olika typer av symboler

🔹 <h7 class="heading-TA h7-bold">Common Stock</h7>
<p class=indent>avser stamaktier (en typ av värdepapper)</p>
🔹 <h7 class="heading-TA h7-bold">ETF</h7>
<p class=indent>avser börshandlade fonder (Exchange-Traded Fund) och är fonder som handlas som en vanlig aktie över börsen. Oftast är de indexfonder, men undantag finns. Det finns ETF:er kopplade till länder och regioner, branscher, teman och strategier (large cap, hög direktavkastning etc., räntor, valutor och råvaror).</p>
🔹 <h7 class="heading-TA h7-bold">FUND</h7>
<p class=indent>avser fonder, där en fond är en samling av investeringar som förvaltas gemensamt av en fondförvaltare eller ett företag. En fond består av en portfölj med olika tillgångar, såsom aktier, obligationer eller råvaror. Du som investerare köper andelar i fonden, och värdet av deras investering beror på hur de underliggande tillgångarna presterar.</p>
ℹ️	Det finns en mängd olika typer av fonder

🔹 <h7 class="heading-TA h7-bold">Aktiefond</h7>
<p class=indent>Investerar huvudsakligen i aktier</p>
🔹 <h7 class="heading-TA h7-bold">Räntefond</h7>
<p class=indent>Investerar i obligationer och andra räntebärande tillgångar</p>
🔹 <h7 class="heading-TA h7-bold">Indexfond</h7>
<p class=indent>Följer ett specifikt index, t.ex. S&P 500 eller OMXS30</p>
🔹 <h7 class="heading-TA h7-bold">Hedgefond</h7>
<p class=indent>Har friare placeringsstrategier och kan använda sig av blankning och hävstång</p>
⚠️	Men applikationen har idag ingen möjlighet att särskilja de olika fondtyperna.

###TRADE###
Beskrivande text till 'Add New Trade'

###TRADES SELLS###
Beskrivande text till 'Registered Trades & Sells'

###OURHISTORY###
=========================================================================
H Ä R   B Ö R J A R   T E X T E R N A   T I L L   V Å R   H I S T O R I A
=========================================================================

###SS-1###
När vi försöker sy ihop de här minnesbilderna och tänker tillbaka på vår barndom möts vi av en uppsjö minnesbilder av gångna år.

Men vad är det vi egentligen minns?

Är det kanske så att minnesbilderna som dyker upp snarare är minnen av fotografier än av faktiska händelser?	Vi kan absolut minnas episoder från unga år helt utan foton och vi tror att de flesta håller med om att foton inte är nödvändiga för att minnas. Men kanske är det mest intressanta vilken effekt foton kan ha på minnet och omvänt. Vi skulle vilja påstå att vi minns vissa händelser från barndomen tydligare om det finns foton kopplade till händelsen och att i vissa fall kan det faktiskt vara så att fotona har ersatt minnet – att det endast är genom foton vi minns vissa specifika händelser. Det må vara hur som helst med den saken - vi försöker ändå minnas händelser även om de i vissa fall är kopplade till foton.

När vi nu skriver om minnen - vi lever idag i en tid då våra minnen i allt högre grad är digitala.

Faktiskt i så hög grad att man ibland kan ställa sig frågan - <b>Om minnena inte är digitala och finns tillgängliga på nätet – existerar de då alls?</b>

Vi och förmodligen de allra flesta är ju annars bra på att knyta känslor, tankar och minnen till fysiska objekt. Ett föremål vi sparat kan väcka massor av minnen till liv.

Men hur är det med våra känslor till digitala ting?

Tycker mig se tecken på att många människor hyser väldigt starka känslor till sin mobiltelefon till exempel. Speciellt känslor av förlust och tomhet ifall de separeras från den.

Frågor som vi ofta ställer oss är;
- Vad bevarar vi av alla minnen vi har?
- Hur sparar vi det?
- Skall vi ens spara det?
- Hur överför vi de här minnena till framtiden?

Det finns naturligtvis saker vi vet att vi måste spara - avtal och kontrakt och andra liknande dokument. Men för vår del struntar vi i att spara information och data om klimatförändringen eller var vi gräver ner vårt kärnavfall.

De minnen vi har och speciellt de vi själva har skapat i form av skriverier, fotografier, filmer etc. skall vi självklart försöka spara (<i>åtminstone delar av dem</i>) även om senare generationer kanske tycker att det mesta är både skrutt och strunt men det är minnen av det vi en gång skrattade åt, roades av, grät åt eller åtminstone lade ner en massa energi och tid på.

Hursomhelst, <b>vi måste vårda vår digitala information lika ömt som vi sköter om våra plantor.</b>
De måste planteras om, och få en större kruka, jorden måste periodvis bytas ut, de måste gödslas, ansas och vattnas osv.

Det är ju så att vi i våra lådor har en trave CD-skivor. <i>Ni minns kanske de där skivorna på vilka man lagrade bilder, dokument och annat material som man ville säkra</i>. Vi har bevarat några av dessa CD-skivor som ett minne av ett hysteriskt sparande. På flera av skivorna står det <b>Bilder</b> eller <b>e-post</b>. Mardrömmen var en kraschande hårddisk och dator, så vi sparade och sparade för att vara säkra på att alltid ha en kopia av minnena vi var rädda om.

Alla dessa CD-skivor har vi idag ingen som helst nytta av - vi äger inte ens en CD-läsare och de minnen som finns lagrade i dessa skivor kommer vi inte åt - de är för evigt borta.

Hur gör vi då för att inte samma sak kommer att ske med den digitala information vi har idag?

Kommer denna lilla ansats till hemsida ens att överleva 2020-talet?

Kommer den att kunna läsas av någon om 10 år?

###SS-2###
Vi - Ulla och jag - har växt upp i kristna hem med troende föräldrar för vilket vi är oerhört tacksamma.

Dessväre uppmuntrade våra föräldrar oss varken till skolgång och utbildning eller karriär och berömmelse.

Naturligtvis förbjöd de oss inte att leva, de ansåg inte heller att livet skulle vara ett tomt varande fast det ibland kunde kännas så när man var tonåring. Har svårt att sätta ord på detta men det var väl så att de såg livet mera som en tid som skulle användas till att arbeta och att läsa Bibeln och andlig litteratur, skapa rutiner för daglig bön, engagemang för Guds rike, att 'arbeta' på sin frälsning och sin överlåtelse i sann biblisk anda. '<b>Söken först Guds rike och hans rättfärdighet så ska allt det andra tillfalla er ...</b>' vilket var en ofta citerad bibelvers i familjen.

Idag med det mesta av livet bakom oss så vet vi att just det var långt viktigare än det som vi många gånger strävade mot i livet.

All denna onödiga oro över saker som till sist ändå var ganska oväsentliga. Gud är ändå den som dygnet runt ser till oss, han upphör aldrig med sin omsorg. Hans trofasthet finns alltid där, allt efter sitt löfte.

<span class="embed-responsive embed-responsive-16by9">
  <iframe id="MyWay" src="https://www.youtube.com/embed/1t8kAbUg4t4" width="420px" allowfullscreen=""></iframe>
</span>

Sången <b>My Way</b> förknippas av de flesta med <b>Frank Sinatra</b>. Han sjunger där om framgång och misstag i livet. Han har gjort allt av fri och egen vilja och ångrar inte valen han gjort. Sångens budskap är att vi bara har oss själva att svara inför och att man skall leva som man själv vill, inte böja sig för någon, ta motgångarna när de kommer och vid livets slut acceptera även det.

För oss har emellertid vår stund på jorden med våra drömmar, vår längtan och vår sårbarhet blivit något annorlunda. Vi har naturligtvis försökt göra goda val, vi har försökt kämpa våra strider, som vi ömsom vunnit, ömsom förlorat. Till slut har vi ändå lärt oss att älska och försonas med det liv som blev vårt.

Men vad gör livet uthärdligt när vi möter orättvisor, när vi drabbas av sjukdom, när de vi älskat rycks ifrån oss, när vi inte kan se någon verklig mening i en grå vardag och när inga ord kan ta bort det som gör ont i hjärtat? Vem har då svaret på livets stora frågor? Vem kan vi då gå till?

Istället för att själva bära på sorger och besvikelser, känna skuld och ånger för allt som inte blev bra kan vi få leva i den förlåtelse och kärlek som ett liv med Jesus innebär.

Men vi har haft ett val att göra. Fortsätta själva och förlita oss på vår egen förträfflighet eller att välja att gå i trygghet och hopp inför framtiden med en tro på Jesus. Det är stor skillnad på att gå sin egen väg och att gå med Jesus. När vi en dag kommer till livets slut så är det ju ändå inte slut!

Det är med dessa tankar vi med tacksamhet ser tillbaka på våra liv och kan glädjas åt att det blev som det blev trots att det inte i alla avseenden kanske blev som det skulle.

###SS-3###
Varken Ulla eller jag kan stoltsera med några anor från berömda personer eller dåtidens makthavare. Inga biskopar, inga brukspatroner eller godsägare med sina nådiga fruar, inga stridsherrar.

Inte heller har vi funnit spår av adligt blod i våra förfäders ådror.

Vi grävde djupt och länge i gamla kyrkböcker och anteckningar – och vad fann vi? Torpare, statare, backstugusittare, inhysesfolk, pigor, drängar, koppare, brännvinskokare, skomakare, skräddare, indelta soldater och dragoner. En och annan bonde, men framför allt vanligt, enkelt folk.

Detta fick oss inte att ge upp och låta glömskans vindar svepa bort släktens historia. Tvärtom – vi fann precis det vi hoppades på: våra förfäder.

Den gamla tiden, var och när man än tänker den, var ofta knapp, kall och hård. Och för de flesta av våra förfäder var den just det.

De levde långt ner i samhällets hierarkier. Kvinnorna tog hand om familjerna, ofta stora, medan männen arbetade med det som fanns – om det fanns, när det fanns. Materiella ting, som vi idag tar för självklara, var för dem en avlägsen dröm. Istället präglades deras liv av brist, fattigdom och ovisshet.

Mycket av deras berättelser har försvunnit i tidens dunkel, och vi insåg alltför sent värdet av att lyssna på våra föräldrars historia. Men kanske kan dessa anteckningar en dag bli till glädje för någon som råkar läsa dem.

Våra berättelser är varken stora eller storslagna, men de är våra. Vi skriver om våra liv och i viss mån om våra förfäders, så som vi minns det och förstår det.

På vårt sätt vill vi hedra dem som gått före oss, genom att bevara det lilla vi vet och det vi tror oss veta – och kanske föra det vidare till nästa generation.

Vi hade velat berätta mer om våra föräldrars liv, men de sa så lite, och vi hade varken förstånd eller intresse av att fråga när möjligheten fanns.

Sällan eller aldrig drabbades vi av någon särskild lust att genomleva våra föräldrars barndom. Kanske är det likadant för våra barn och barnbarn – kanske har de ingen lust att blicka bakåt. Men vi tror ändå att om vi glömmer vårt ursprung och inte ser tillbaka på vår historia, så förlorar vi en del av det sammanhang vi lever i idag.

###SS-4###
<h7 class="heading-TA h7-bold">Älskade färdkamrat
Glädjen i min levnad
alltsedan en sommardag
för länge sedan</h7>

Du Föddes i Halikko <h7 class="heading-TA h7-bold">1952-01-23</h7>.

Stora händelser 1952 - förutom din tillkomst - var
🔹 <h7 class="heading-TA h7-bold">Olympiska Spelen</h7> som anordnades i Helsingfors
🔹 <h7 class="heading-TA h7-bold">Armi Kuusela</h7> vann Miss Universum-tävlingen
🔹 Finland gjorde sin slutbetalning av sitt enorma <h7 class="heading-TA h7-bold">krigsskadestånd</h7> till Sovjetunionen.

Alla dessa händelser gjorde tillvaron i Finland något ljusare.

Sammantaget gjorde dessa händelser 1952 till ett år av glädje och stolthet.

Om dessa händelser brydde du dig naturligtvis inte alls - du var lite för ung då.

Din familj - som då bestod av mor och far samt 4 barn - bodde i <h7 class="heading-TA h7-bold">Hongisto</h7> en liten by strax utanför <h7 class="heading-TA h7-bold">Salo</h7>.

Huset var inte stort - endast två rum och kök. Familjen blev så småningom märkbart större, fast huset behöll sitt lilla format, och till slut var ni en syskonskara på 12.

Att få en familj på 14 personer att fungera i 2 rum och kök kräver uppoffringar. Ni kämpade på fram till ≈1965 då ni flyttade till <h7 class="heading-TA h7-bold">Perälä</h7>. Huset där var större, jordbruket var större och familjen också den större vilket gjorde att alla barnen sov i 3 våningssängar med 2 barn i varje säng.

Tiderna var annorlunda då. Föräldrarna var inga curling-föräldrar där de ständigt lade sig i sina barns liv och utveckling. De banade inte vägen för barnen i deras liv på liknande sätt som spelarna på en curlingbana sopar banan för spelstenarna. Naturligtvis ville de att barnen skulle ha det bra och tryggt men de hade varken tid, ork eller råd att lägga ner några ansträngningar på att ordna för dem. All ork, all tid, alla ansträngningar gick åt att ta hand om gården och med den enda inkomsten sörja för familjens nödtorft. Barnen var tvingade att klara sig själva.

Tidigt fick ni lära er att ta hand om er själva, hjälpa till i arbetet med gården, hjälpa till i hushållet, hjälpa till med passning av yngre syskon och hjälpa varandra. Denna flitighet och hjälpsamhet är något du burit med dig genom hela livet. Att hjälpa någon som behöver hjälp, någon som har det svårt, har du alltid betraktat som långt högre och viktigare än mycket annat. Det har du betraktat som ett av våra livs största uppdrag.

Din far - <h7 class="heading-TA h7-bold">Aarne</h7> dog <h7 class="heading-TA h7-bold">1967</h7> (alldeles för tidigt). Han hade drabbats av en hjärntumör och skulle opereras i Helsingfors. På operationsdagen avled han av denna hjärntumör och din mor <h7 class="heading-TA h7-bold">Helvi</h7> blev ensamförsörjare till en stor barnaskara vilket innebar att barnens arbetsinsats blev nu helt avgörande för att man skulle få mat på bordet. Tidigt fick ni veta vad tungt kroppsarbete innebar. Arbete blev en naturlig del av vardagen. Något som satte djupa spår i era liv.

<h7 class="heading-TA h7-bold">För mig, har Du varit Guds bästa jordiska gåva
och inte så litet av den himmelska skatten
har genom dig kommit mig till del.</h7>

###SS-5###
Jag, tillsammans med de allra flesta, lider av infantil amnesi - dvs oförmågan att minnas sin tidigaste barndom. Minns egentligen ingenting från tiden före 5-6 års ålder. Det jag 'minns' är fragmentariskt och bygger primärt på händelser som mina föräldrar berättade för mig, det jag har läst mig till via dagböcker och korta notiser som pappa efterlämnade. Naturligtvis - i likhet med de allra flesta så skulle jag vilja minnas mycket mer än vad jag faktiskt gör.

Vad min oförmåga beror på vet jag inte - kanske att ingenting faktiskt hände som var värt att lägga på minnet eller på att minnesbilderna blivit svåråtkomliga på grund av att jag vid tidig ålder bytte språk eller på något helt annat. Vet inte!

Men varken jag eller mänskligheten i övrigt har ju gjort någon större förlust av att mina minnen verkar vara helt utraderade avseende tiden i Finland. Mina minnesbilder börjar från det att jag flyttade till Sverige tillsammans med familjen.

- Barndomsåren var väl som för de flesta barn - inget märkvärdigt i sig.
- Ungdomsåren, den period i livet då man gör de flesta tokigheterna och märkliga valen likaså - inget märkvärdigt där heller.

Många ungdomar har varit ute och festat, druckit alkohol, rökt och rökt på osv. Själv har jag i princip varit förskonad från detta - har aldrig varit berusad, har rökt en och endast en gång, gick sällan eller aldrig på några fester. Har alltid försökt vara 'the good boy' och leva mitt liv så att mina föräldrar inte behövt skämmas för mig och att de slapp att bli alltför besvikna, men har ändå aldrig känt att jag 'slösade bort' mina ungdomsår och inte tog tillvara tiden att få vara ung.

Då och då hörs röster som säger att;
<b>den bästa tiden var när man var ung och dum</b>
och det gäller att ta vara på den tiden för;
<b>man är bara ung en gång i livet</b>

Har även hört andra berätta roliga(?) minnen och historier från tiden när de själva var unga och gjorde 'dumma' saker' medan jag själv inte har några historier alls. Så för min del finns det inte så många spännande och roliga historier att återge.

Skall ändå berätta det som berättas kan - grått och trist eller kanske inte.

###SS-6###
Visst kan man ju ibland undra över varför barn inte föds som fullvuxna, starka och arbetsberedda individer. Det hade ju varit så mycket mera effektivt än dessa små hjälplösa spädbarn.

Absolut hade det varit mycket effektivare veckans alla dagar men nu är det ju ändå så att det här med effektivitet inte alltid är det viktiga. Kanske är det bra att vi är skapta i svaghet - där vi blev utlämnade åt varandra och ett ömsesidigt beroende.

Ni var fullständigt hjälplösa som nyfödda. Kanske att denna hjälplöshet rörde något i vårt innersta så att vi bara måste ta hand om er. För er var vi beredda att ge allt – vår uppmärksamhet, vår energi, vår sömntid... för att inte tala om vad ni kostade i pengar! <i>Vad kostar det i reda pengar att föda upp ett barn till 18 års ålder? Bankerna uppskattar att det kostar nästan 1.000.000.</i> Ett dyrt nöje alltså - rena lyxhobbyn faktiskt!

Var det värt all denna tid, all denna kraft, alla dessa pengar?	Jo - varenda minut, varenda krona och vartenda blöjbyte.

För det handlade om livet, det handlade om er. Det handlar också om något som går bortom allt vad pengar heter. Barnen är vårt ansvar, men de är också en gåva till oss.

När ni kom till världen blev det så självklart att ni barn skulle ha det allra bästa.

Bibeln säger: "<b><i>Vem bland er ger sin son en sten när han ber om bröd, eller en orm när han ber om en fisk</i></b>"?

Naturligtvis har vi ofta misslyckats med att ge er "<i>bröd</i>" och "<i>fisk</i>" men vi har gjort så gott vi kunnat. Ofta har vi även misslyckats med att ge er den tid, den uppmärksamhet, den uppskattning och den kärlek ni behövt.

Ni har dock alltid varit oss kära.

###SS-7###
Även om många använder sig av uttrycket - '<b>barnbarn är livets efterrätt</b>' så känns det nästan lite onödigt brutalt - 'snart är det slut' och om inte snart så åtminstone inom en något snarare framtid än innan vi fick barnbarn. Faktiskt ett riktigt glädjedödande uttryck - 'livets efterrätt'.

Visst, är det ändå fantastiskt med barnbarn och vi älskar er allihop.

Naturligtvis har det ofta varit en svår balansgång vad gäller att varken lägga sig i för mycket eller bry sig för lite.

Ni har medfört en hel del nya aktiviteter;
- hämta på förskola/dagis
- skämma bort
- vara barnvakt
- lära sig Pokémon Go
- följa era första stapplande steg inom idrott och musik
- röra ihop lite mat då ni var hungriga
- ...

ja, listan kan göras lång.

En del funderingar har också dykt upp, sådana som vi inte hade innan ni kom till;

- grubblerier över föräldrarnas sätt att uppfostra
– när skall vi ställa upp
- när skall vi hålla tillbaka och inse att vi inte bör ta över föräldrarnas jobb

Viktigast av allt har ändå varit att ta chansen att lära känna er.

Det är inte alla mor- och farföräldrar som bor så nära så att de kan ha daglig kontakt med sina barnbarn. Vi har ändå försökt att anstränga oss efter bästa förmåga för er som bor lite längre bort.

Ni har nog under åren insett och fattat att;
- Olika normer gäller på olika ställen
- Hos oss kan det vankas bullar/godsaker vilka dagar som helst, även om man inte får det hemma
- Hos oss finns kanske andra gränser än hemma
- Vi har alltid försökt stå på er sida

Av hela vårt hjärta önskar vi att ni alla får möjlighet och ork att förverkliga era drömmar och att ni får ett lyckligt liv fyllt av goda stunder.


###SS-8###
Våra liv – precis som era – levs framlänges, men vi förstår dem baklänges.

Varje dag vaknar vi utan att riktigt veta hur den bäst ska levas. Men när tiden går kommer ofta tanken: "Tänk om jag vetat då, det jag vet idag." Det är först i efterhand vi ser hur det blev – och hur det kunde ha blivit om vi bara hade vetat.

Som unga brottades vi ofta med frågan: "Hur kommer livet att bli?" Våra planer var kanske inte stora, men vi insåg tidigt att våra drömmar ofta sträckte sig längre än våra möjligheter. Vad vi inte visste då var hur snabbt en annan tid skulle komma. Plötsligt sitter vi här – med lite gråare hår och slitna leder – och funderar istället över: "Hur blev det?"

När man lever sitt liv framlänges känns dagen idag viktig. Men i efterhand inser man ofta att det man en gång trodde var avgörande kan bli helt oviktigt, medan sådant man knappt reflekterade över visar sig vara det mest betydelsefulla.

Vi försöker skriva om våra liv så sanningsenligt vi kan. Men minnet är bedrägligt. Vissa händelser har bleknat, andra har vi förträngt. De minnen vi ofta återvänt till har blivit skarpare – eller kanske snarare omformade. Varje gång vi tänker tillbaka finns risken att vi omedvetet putsar till berättelsen, fyller i det vi inte mindes tydligt eller låter associationer färga historien. Så det vi återger idag är kanske en friserad version.

Må det vara oss förlåtet om gamla minnen ibland svajar. Men vi gör ändå ett försök att berätta, för någon kanske det kan vara av intresse.

Läs det du tycker verkar viktigt – hoppa över resten.

Vi minns och berättar om våra liv. Några minnen är roliga, andra sorgliga. Inte alltid perfekta, inte alltid begripligt, men ändå ett bra liv.

Tanken på att en dag bara vara reducerad till en minnesruna där det står "De fanns på Facebook/Instagram/X" är bedrövlig. Sociala medier – detta enorma slöseri med tid och liv – har snärjt oss alla mer än vi vill erkänna. Vi skulle hellre vilja bli ihågkomna för något annat: "De såg sina medmänniskor, hjälpte där det behövdes, bekräftade och visade kärlek."

Men vi kommer själva aldrig att läsa våra minnesrunor.

Däremot kan du – om du orkar – läsa här om oss. Om våra liv, hur vi i andra tider och på andra platser förhållit oss till livet och varandra. De gemenskaper vi skapat och raserat, hur vi sökt mening och format berättelser som kanske är värda att bevara.

Kanske gränsar mycket av det vi skriver till nostalgi, och nostalgi kan vara en lömsk lögnare. Men den kan också vara en trygg plats att längta till när åldern skrämmer och mörka moln samlas. Så långt från våra ungdomsår kan vi ändå välja att minnas det vi vill.

Det känns fint att i tanken kunna återvända till en tid då livet var enklare, tryggare – om än fattigare.

Vi är den första generationen i vår släkt där skolgång var en självklarhet. Våra förfäder, jordbrukarsöner och döttrar, hade aldrig ens möjligheten. Kanske överskattar vi vår egen betydelse, kanske förstår vi inte ens fullt ut vad vi varit med om. Men på något vis har vi, trots vår blygsamma plats i samhället, gjort en klassresa.

Inte av egen förtjänst, utan för att omständigheterna bar oss dit.

Men som så många andra som bytt land eller klass är vi aldrig mer hemma någonstans. Vi har fått klamra oss fast vid vår eventuella kompetens, vår pliktuppfyllelse, vår blygsamma materiella förkovran och liknande prestationer.

###SS-9###
<b>Torpare</b>

hade egen bostad, kreatur med tillhörande åkermark (<i>som arrenderades</i>). Arrendet betalades i form av dagsverken till markägaren. Torpen kunde ligga långt från markägarens gods.

Brukningsrätten av torpen gick i arv.

Bland våra förfäder fanns olika typer av torpare. Där fanns;
- Kolartorpare - som hade skyldighet att kola ett visst antal milor eller leverera en viss mängd träkol
- Kronotorpare - som var skyldiga att biträda med visst skogsarbete
- Ryttartorpare - som ingick i ett rusthåll som tillhandahöll ryttare till kavalleriet
- Soldattorpare - som ingick i ett knekthåll vars rotebönder hade till uppgift att rekrytera knektar

<b>Statare</b>

var egendomslösa, jord- och djurlösa, fattiga, gifta lantarbetare.

De var kontraktsanställda på i regel ett år i taget och bodde på godsen i speciella statarbostäder sk. statarlängor.

Statarna var gifta och anställdes familjevis, dvs. hustrun förväntades också att arbeta. Lönen betalades till största delen i natura.

De hade rätt att sätta ≈en tunna potatis (100 Kg) per år på godsets jord. I övrigt ingick i lönen ved, spannmål och mjölk samt bostad. Årskontraktet sträckte sig från sista veckan i oktober och ett år framåt i tiden. Det var under denna vecka, <b>slankveckan</b>, som de bytte arbetsplats. När stataren flyttade fick han en <b>orlovssedel</b>, en kombination av betyg från den förre husbonden och ett bevis på att man var ledig för anställning.

Godsägaren hade enligt den sk legostadgan rätt att kroppsligen aga och bestraffa sina anställda.

Arbetsdagen började vid 4-tiden på morgonen för boskapsskötarna och pågick i 8-9 timmar utspridda över hela dygnet. Kvinnorna började mjölkningen något tidigare på morgonen och pågick i tre arbetspass till sen kväll.
Arbetet pågick vardag som helgdag.

De hade rätt till 30-50 fridagar om året, lördagar och söndagar inräknade. Av dessa fridagar fick enbart 13 förläggas till söndagar.
Statarna hade rätt till 7 betalda fridagar per år av minst hälften i sammanhängande form, dvs 3,5 dags semester. Kreatursskötarna hade inga betalda fridagar - de fick nöja sig med semesterersättning.

När stataren skrev under sitt statkontrakt var det brukligt att hustrun samt de uppväxande barnen samtidigt bands till arbetet på godset.
Hustruns plikt var att mjölka korna samt diska av mjölkkärlen. Betalningen för mjölkningen var liten och var det arbete som hade lägst status på godsen.

Giftermålsåldern var mycket låg bland statarna. Det berodde på att statsystemet innebar familjeanställning. Utan en duglig hustru kunde mannen ej få tjänst.

Vid barnafödande fick statarhustrun ej något längre arbetsuppehåll. Hon fick arbeta tills värkarna kom. Någon dag efter födandet, ofta dagen efter, var hon åter på plats i utearbetet eller på mjölkpallen.

Statarnas bostäder var på flera håll miserabla. Bostaden var en del av lönen oberoende av bostadens skick. De var dragiga, kalla och fuktiga och bestod i regel bara av ett rum som samtidigt också var kök. Ohyra som löss, kackerlackor och råttor var vanliga. Lungsot (tuberkulos) var vanligt.

Bostaden var den största källan till irritation och var ofta orsak till de många flyttningarna mellan godsen. Ingenting kunde bli sämre, man hoppades att komma till något bättre. Under slankveckan fylldes de leriga vägarna av flyttlass där hela bohaget lastats.

<b>Backstugusittare</b>

var benämningen på personer som bodde i mindre hus på en jordägares mark eller en bys allmänning.

Dessa hus, backstugorna, var inte skattlagda. Backstugusittarna tillhörde de obesuttna i bondesamhället och var en brokig skara och omfattade såväl relativt välbeställda hantverkare som dagsverksarbetare samt gamla och utfattiga personer.

Backstugorna låg vanligen samlade i grupper utanför den skiftade inägojorden. De hade i regel också ett mindre stycke jord där de kunde odla potatis samt ha några grisar och höns. Ibland fick backstugusittarna också tillgång till bondejord i form av s.k. hälftenbruk (<i>rätt att bruka någons gård mot hälften av avkastningen</i>). De allra flesta hade dock inte den tillgången utan försörjde sig med lönearbete på gårdarna, hemslöjd och dylikt. Tillgången på lönearbete var inte stor och backstugusittarna var ofta undersysselsatta och undernärda.

Det var inte ovanligt att backstugan bara hade tre riktiga väggar. Den fjärde kunde var en jordvägg om huset låg i en backe.

<b>Undantag</b>

kan ses som en pensionsliknande förmån för det äldre paret på en bondgård. Det var vanligt att när bonden blev gammal överlät han gården i förtid till äldsta sonen. Det innebar att sonen övertog gården medan föräldrarna fortfarande levde.

Undantag innebar då fri bostad, en viss mängd ved, en viss mängd utsäde per år för det äldre paret.

Oftast byggdes en mindre stuga på ägorna som det äldre paret fick bo i, <b>undantagsstuga</b>.

Att sitta på undantag innebar att den tidigare ägaren av jordbruket hade rätt att för sin återstående livstid behålla brukanderätt till en mindre bostad och ett mindre jordområde som undantas från den nya ägarens rätt att fullt ut förfoga över den överlåtna gården. De behöll sin rätt även om gården skulle säljas/överlåtas vidare. Detta reglerades i ett kontrakt, undantagskontrakt. Detta var mycket vanligt vid överlåtelse av en gård från en generation till nästa.

<b>Inhyses eller inhyseshjon</b>

var en beteckning som användes på den del av landsbygdsbefolkningen som inte ägde jord. Ett inhyseshjon var inneboende på gården och var normalt inte närmare släkt med familjen utan tillhörde tjänstefolket.

Socialt sett hade de lägre anseende än backstugusittarna.

Ca 20% av allt folk på landsbygden utgjordes i mitten av 1800-talet av inhyseshjon.

<b>Fattighjon & Fattighus</b>

Fattighuset/fattigstugan var en byggnad där fattiga och orkeslösa personer inhystes.

I den gamla kyrkolagen från slutet av 1600-talet rekommenderades församlingarna att inrätta fattigstugor. Detta blev senare lag from första hälften av 1700-talet. Församlingarna blev tvungna att inrätta dem (<i>men detta åtlyddes inte på alla håll</i>).

De som var inhysta på fattighusen kallades fattighjon.

Fattighusen ersattes i början av 1900-talet av ålderdomshemmen.

###SS-10###
<article>
Hur såg världen - ja kanske inte världen men åtminstone Finland - ut då våra föräldrar föddes (och åren dessförinnan)?

Tar bara upp sådant som på något sätt berör våra förfäder - omständigheter som drabbat dem eller sådant som de faktiskt själva har fått uppleva. Naturligtvis finns det hur mycket som helst man skulle kunna skriva om '<i>Finland sett i ett historiskt perspektiv</i>' men detta är ju inte någon historiebok.

På 1880-talet var endast cirka 13% av alla personer över 15 år i Finland skrivkunniga.
Vid sekelskiftet var fortfarande 60% av finländarna analfabeter.

Även om folkskolor grundades i Finland från 1860-talet och framåt och att skolnätet redan på 1890-talet täckte större delen av landet så fick inte alla barn möjlighet till ordnad skolgång. Många barn var tvungna att arbeta från tidig ålder och familjerna hade inte möjlighet eller råd att avvara 'arbetskraften' för något så oviktigt som skolgång. Det fanns heller inte skolor i alla byar och alla familjer som bodde i byarna där skola saknades hade heller inte möjlighet att skicka iväg sina barn till släktingar eller bekanta i närliggande byar där det fanns en skola <a href="#FN-1" aria-describedby="footnote-label" id="FN-1-REF"></a>.

Det var inte heller ovanligt att fattiga familjer med många barn helt enkelt inte hade tillräckligt med kläder och skor till alla barn vilket innebar att de av denna anledning inte kunde gå till skolan.

Skälen till utebliven skolgång var alltså flera.

Klasskillnaderna i samhället var stora. De förmögna - prästerskapet, lärare, godsägare mm - hade tjänare och bodde rymligt och fint. De hade råd med mat i överflöd, nya kläder, barns utbildning osv. Men de flesta människorna levde i fattigdom eller åtminstone under knappa förhållanden.

Familjerna hade vanligtvis många barn. Spädbarnsdödligheten var hög - i slutet av 1800-talet dog 14 av 100 nyfödda barn inom det första levnadsåret. Den förväntade livslängden för en nyfödd vid den tiden var ≈45 år.

Epidemier krävde många offer. Finland upplevde koleraepidemier på 1850- och 1870-talen och en tyfusepidemi under hungersnödåren 1866-1868. Smittkoppor förekom också som stora epidemier.

På 1860-talet var Finland ett av de fattigaste länderna i Europa. Men sakta började landet må lite bättre och vid 1900-talets början hade de nått den europeiska medelnivån.

I början av 1900-talet upplevde Finland åter några förlorade år, svåra situationer och en tröstlös misär.

Första världskriget bröt ut sommaren 1914.

Finlands egen militär hade upplösts och Finland besparades från faktiska militära insatser <a href="#FN-2" aria-describedby="footnote-label" id="FN-2-REF"></a>.

Men hundratals frivilliga gick ut i krig från Finland, och finländare tjänstgjorde även i de kejserliga ryska militärstyrkorna.

I december 1917 förklarade sig Finland som en självständig stat och året därpå drevs Finland in i ett inbördeskrig, som beroende på synvinkel, kallas för antingen frihetskrig, inbördeskrig, klasskrig eller uppror.

Det sk 'Röda gardet' bestod huvudsakligen av den arbetande befolkningen och siktade på ett socialistiskt Finland, medan kärnan i det 'Vita gardet' utgjordes av jordägande bönder som siktade på ett självständigt Finland baserat på marknadsekonomi, privat företagande och privat äganderätt.

Inbördeskriget och 1:a världskriget markerade ett bakslag för smittsamma sjukdomar. Med hunger och misär återvände många smittsamma sjukdomar som redan ansågs vara besegrade, såsom smittkoppor. Dessutom drabbades Finland i flera vågor av den världsomspännande pandemin som gick under namnet <b>spanska sjukan</b>. Omkring <b>30 000</b> finländare dog av sjukdomen under åren 1918-1920. Många vanligare infektionssjukdomar rasade också bland folket, t.ex. tyfus, scharlakansfeber och mässling samt difteri och kikhosta som blev mångas öde.

Att föda barn utom äktenskapet var en stor skam, och många illegala aborter utfördes på kvinnor.

Hungersnödåren smög sig dock in i Finland igen. Uppgången i Finland avbröts 1928. Orsaken till detta var en dålig skörd inom jordbruket. Börskraschen i New York 1929 utlöste en djup depression i världsekonomin. Egendomsbrott och tvångsauktioner av gårdar blev vanliga inslag i tillvaron. Lönerna sänktes och köpkraften minskade. Arbetslösheten ökade och 1931 fanns det enligt officiella siffror omkring <b>120 000</b> människor i arbetslöshet. Socialförsäkringen var fortfarande svag i Finland på den tiden, så arbetslösheten innebar en verklig prövning.

1939 var Finland i krig igen – nu var det vinterkrigets tur. Det talas fortfarande om vinterkrigets mirakel: en liten demokratisk stat gjorde det svårt för det stalinistiska tyranninet. Finland gick med på svåra fredsvillkor den 13 mars 1940. Men så 1941 börjades det igen – fortsättningskriget började. Fredsfördraget undertecknades den 19 september 1944 mellan Finland och Sovjetunionen. Finland fick betala stora krigsskadestånd, vilket enligt experter översteg Finlands ekonomiska prestation. Kriget i Lappland, under vilket tyskarna fördrevs, fortsatte till vårvintern 1945.

För en vanlig medborgare innebar den femåriga krigsekonomin brist, hårt arbete, matransonering och beroende av substitut. Den svarta marknaden florerade.

Den snabba befolkningstillväxten på landsbygden gav upphov till frågan om de så kallade jordlösa, när alla inte längre fick nog av sin egen gård. Att flytta till staden eller emigrera till Amerika blev nya alternativ för folk på landet.

Den här korta tidsresan fick mig att tänka på många saker och inse hur lyckligt lottade vi gnällspikar ändå är. Som barn kunde jag leka och studera utan att oroa mig för min familjs ekonomiska välmående och jag behövde inte börja arbeta förrän vid 14 års ålder (<i>i Ullas fall så var det inte riktigt så - de arbetade från barnsben</i>). I mitt hem hade vi el, rinnande varmt och kallt vatten, inomhustoalett osv. (<i>i Ullas fall så var det inte riktigt så - de saknade alla de moderniteter som jag just räknade upp</i>).Vi fick gå i skola och lära oss att läsa och skriva. Vi har inte behövt vara rädda för smittsamma dödliga sjukdomar. Vi har inte heller behövt uppleva krig. Visst har dagens människor nya, annorlunda utmaningar i sina liv men jag försöker med tacksamhet minnas vilka insatser som tidigare generationers män och kvinnor har utfört för att vi har det så bra som vi har det.
                  </article>
                  <footer>
                    <h2 class="visually-hidden" id="footnote-label">Footnotes</h2>
                    <ol>
                      <li id="FN-1">
                        Mattis pappa hade turen att få gå i skola även om det bara blev 6 år
                        <a href="#FN-1-REF" aria-label="Back to content">↩</a>
                      </li>
                      <li id="FN-2">
                        Finland var vid den här tiden en del av det ryska kejsardömet med mycket långtgående autonomi och lydde under den ryske tsaren
                        <a href="#FN-2-REF" aria-label="Back to content">↩</a>
                      </li>
                    </ol>
                  </footer>

###SS-11###
</article>
Aarne</span>

om dig - <i>Ullas far</i> - kan jag inte skriva speciellt mycket, ja egentligen ingenting alls, då jag aldrig fick möjlighet att träffa dig.

Du föddes <b>24:e September 1924</b> i Uukuniemi by som son till <b>Sylvester Henriksson Hannonen</b> och dennes hustru <b>Anna Bogdanova</b>.

<img src="images/PhotoGallery/ShortStories/Ancestors/AH-Uukuniemi.png"
     alt="Picture cannot be found!"
     class="card-img card-img-sm">
<span style="font-style:italic">Uukuniemi by</span>

Finland var under andra världskriget involverat i två krig mot Sovjetunionen. Det första av dessa var vinterkriget, som pågick i 105 dagar och som utkämpades mellan den 30:e November 1939 och den 13:e Mars 1940. Efter en kort fredsperiod utbröt ett nytt krig den 25:e Juni 1941. Det nya kriget ansågs vara en fortsättning på vinterkriget och därför kom man att från början tala om fortsättningskriget. Till skillnad från vinterkriget blev fortsättningskriget en lång konflikt. Vapenvilan inleddes först efter drygt tre år den 4–5:e September 1944. Under det långt utdragna kriget inföll intensiva stridsperioder, men också ett långt och relativt lugnt ställningskrig.

Eftersom jag med säkerhet inte vet så måste jag anta att du troligen INTE var med under vinterkriget, du var alltför ung då (nyss fyllda 15 år) men i fortsättningskriget var du, tillsammans med tiotusentals andra finska män, med och kämpade hårt för den lilla nationen, på gränsen till undergång. När Sovjetunionen åter anföll Finland den <b>25:e Juni 1941</b> var du med, tappert försvarande landet mot den Röda Armén.

Striderna var bittra, men Ni lyckades behålla er självständighet till priset av stora landavträdelser, tiotusentals döda och ännu fler skadade.

Många glömdes bort i den heroiska kampen. Tiotusentals finska soldater traumatiserades

<a href="#FN-1" aria-describedby="footnote-label" id="FN-1-REF"></a>

av sina krigsupplevelser. De fysiskt skadade blev hjältar, medan några andra avrättades för bland annat desertering och andra stigmatiserades helt felaktigt som psykiskt undermåliga - men alla bar ni spår, fast olika djupa, efter de skoningslösa krigen.

Granatchockerna

<a href="#FN-2" aria-describedby="footnote-label" id="FN-2-REF"></a>

och andra krigsupplevelser i de hårda försvarsstriderna i Finland under fortsättningskriget gjorde att många bröt ihop till helt förvirrade, skakande och ångestfyllda spillror.

Men du klarade dig tillsynes oskadd genom dessa år och återvände till den vardagliga lunken.

Över en halv miljon finländare deltog i de finska krigen under andra världskriget men det var få som berättade om händelserna vid fronten när de återvände till sina familjer.

Du var en av dem (<i>har jag fått höra</i>).

Vad berodde det på? Kanke delvis på det rådande samhällsklimatet, kanske delvis på grund av din egen traumahantering då glömskan skulle hjälpa dig att komma framåt i livet. Kanske var minnena från krigets fasor så tunga att bära att du bara ville glömma dem. Vi vet inte och nu är det försent att fråga.

Några år efter kriget - <b>1948</b> - bildade du familj och fick med tiden en stor barnaskara. Du kämpade nu helt andra strider, strider som småbrukare med en växande familj fick kämpa. Men du och din hustru - <b>Helvi</b> - arbetade och slet under knappa förhållanden och kunde till slut köpa er ett större lantbruk med en större bostad, mer skog och mer åkermark som gjorde ert liv så mycket lättare.

Av det jag fått höra så var du en sträng far. Men du var inte ensam - 50-60 talets män tillhörde den gamla stammen där de fortfarande ofta levde efter devisen "<i><b>ont skall med ont fördrivas</b></i>". Som ung var man vid den tiden ofta väldigt nära en 'risbastu' ibland för saker man gjort och som betraktades som fel men lika ofta helt obefogat (<i>kanske att det var dags</i>). Men ni gjorde inte detta för att ni var ondskefulla utan för att ni trodde att det skulle vara så.

Du fick en barnaskara som du hade kunnat vara stolt över, men livet ville annorlunda. Du gick bort alldeles för tidigt fortfarande ung och med en familj där barnen fortfarande behövde dig och fick aldrig se dem växa upp till vuxen ålder.

Den skada som du drabbades av i samband med en olycka under skogsavverkning förde med sig att du fick en hjärnskada som slutligen tog ditt liv <b>5:e Januari 1967</b>. Operationsdagen var planerad och du skulle transporteras från sjukhuset i Åbo till Helsingfors men du hann inte fram i tid och avled samma dag som operationen skulle göras.

Samma år några månader efter att du gått bort träffade jag din dotter <b>Ulla-Maija</b> för 1:a gången - helt utan vetskap om det som hade hänt.

<span style="font-size: calc(1.2rem); font-weight:bold;">Helvi</span>

om dig - <i>Ullas mor</i> - skulle jag kunna skriva mycket mera.

Du föddes <b>17:e Juni 1927</b> i Haapavesi kommun, Mieluskoski by som dotter till <b>Gustav</b> och <b>Beata Myllykangas</b>.

<img src="images/PhotoGallery/ShortStories/Ancestors/HH-Haapavesi.png"
     alt="Picture cannot be found!"
     class="card-img card-img-sm">
<span style="font-style:italic">Haapavesi by</span>

Tyvärr träffade vi dig alltför sällan. Vi åkte som familj till Finland och Salo på somrarna när barnen var små och tillbringade några veckor i ditt hem till vår familjs glädje och andras förtret. När barnen växte upp blev även resorna till Finland mer oregelbundna och vi sågs mer och mer sällan.

Du var lite grann som en 'blinkande fyr' - vad som än hände, oavsett hur långt borta från dig vi var, stod du ändå alltid där och 'blinkade'. 'Det här hållet!', 'Kom in kom in!', 'Välkomna - stig på!', 'Vi kokar en kopp kaffe...'

Det har hunnit gå obegripligt många år sen du avled. Men du finns ändå kvar på något sätt, ett annorlunda sätt – att tänka på, hämta styrka och tröst ifrån och tala lite med dig inne i huvudet.

När du levde så förstod vi inte alltid att fullt uppskatta allt du gjorde för dina barn och deras familjer - all den kärlek du visade Ulla och mig och våra barn.

Ditt liv var inte lätt, din arbetsbörda var tung att bära men du stretade på med glatt sinne tills åldern tog ut sin rätt.

Vi tackar dig Helvi för allt du gjorde.
                  </article>

                  <footer>
                    <h2 class="visually-hidden" id="footnote-label">Footnotes</h2>
                    <ol>
                      <li id="FN-1">
                        Resultatet av chockartade och smärtsamma upplevelser som skapar så mycket stress och överväldigande känslor att de blir svåra att hantera vilka senare kan framkalla såväl fysiska som psykiska reaktioner.
                        <a href="#FN-1-REF" aria-label="Back to content">↩</a>
                      </li>
                      <li id="FN-2">
                        som blev ett begrepp redan under 1:a världskrigets skyttegravskrig
                        <a href="#FN-2-REF" aria-label="Back to content">↩</a>
                      </li>
                    </ol>
                  </footer>


###SS-12###
Det blir min uppgift att skriva raderna som borde ha skrivits av mina föräldrar.

Att skriva något kort om sina föräldrar blir dock svårt - vi levde ju tillsammans under många år och de hade dessutom levt många år innan dess.

Sammanfattningsvis kan det ändå sägas att ni var flitiga, genomärliga människor som trodde gott om allt och alla och beklagade er aldrig.

Ni hjälpte människor - bekanta såväl som obekanta - i tid och otid. Ni betraktades därför av många som välbärgade fast det stämde inte riktigt med verkligheten.

Familjen levde i konstant brist på likvida medel då allt som blev över och kunde undvaras gick till de svagaste i samhället och de som bad om hjälp och bistånd (<i>såväl verklig som påhittad</i>).

Varför var det så?

Berodde det på att ni själva i unga år saknat allt materiellt och visste hur tung den bördan var att bära eller på något helt annat?

Tror inte att det var det som var drivkraften.

Tror mer på att det var er bergfasta kristna övertygelse, att <b>älska sin nästa som sig själv</b>  som drev er. Ni ansåg att som en sann kristen hade man ett ansvar för sin nästa och kan inte titta bort när deras medmänniskorna led eller behövde hjälp.

Fattiga, utsatta, sjuka och försvarlösa var medmänniskor och ni hade därmed inte rätt att egoistiskt gå er egen väg. Ni ansåg er ha ett ansvar även för dessa och ville verkligen älska er nästa som sig själv.

Denna medmänskliga omsorg fanns i era värderingar och jag tror att det var den principen ni konsekvent tillämpade, vilket ibland innebar att den egna familjen blev satt i andra hand.

Naturligtvis finns ju möjligheten att det var ren och skär enfald från er sida och att ni ofta blev utnyttjade på grund av detta.

Det var nog inte så - även om ni ibland blev utnyttjade av tveksamma personer.

Om dig, pappa, kan sägas mycket.

Men som du vet så hade vi en ganska ansträngd relation, du och jag.
Det var aldrig så att vi inte tyckte om varandra utan bara det att vi inte var varandra speciellt nära.

Hade det kanske att göra med att du tillhörde en generation som hade en konservativ syn på vad det innebär att vara man, eller var det mig det var fel på kommer vi aldrig att få reda på men vi pratade aldrig känslor, relationer eller andra 'mjuka' samtalsämnen som jag annars öppet och naturligt hade kunnat prata med mamma om (men aldrig gjorde). Ofta tenderade våra samtal kretsa kring ganska ytliga ämnen; typ väder, arbete, hus eller dagens nyheter lokalt och internationellt.

Man kan säga att vi redan tidigt byggde upp en känslobarriär mellan oss som gjorde att vi inte kom varandra speciellt nära, även om vi innerst inne visste att vi älskade varandra.

Jag kände alltid att jag inte riktigt dög, att det jag gjorde mest var skrutt och strunt och alla andra kunde så mycket bättre. En stående kommentar som etsat sig fast i minnet var det ständiga "<b>Ei tuu mitään!</b>" ("<i>Det kommer inte att bli nåt!</i>") helt oavsett vad jag gjorde - lagade en bil, högg ved eller studerade. Men det var nog mera ett skämt från din sida som jag bara inte kunde förstå och alltid tog som kritik.

Men nu har åren gått sedan du gick bort och jag har omvärderat dig och vår relation. Det var inte dig det var fel på det var nog jag och mitt dåliga sinnelag. Jag önskade ofta som yngre att du hade varit en mera förstående och stöttande far när jag istället borde försökt vara en mera lyhörd och bra son. Har insett att du ändå alltid ville väl, trots allt.

Du hade egenskaper som jag idag högaktar och försöker eftersträva - men nog aldrig kommer att uppnå. Du var 100% ärlig i allt du företog dig, sökte aldrig egen vinning med det du gjorde utan ställde alltid upp oavsett vad eller vem det gällde. Du litade på alla, jag säger alla, människor och jag hörde dig aldrig kritisera någon människa eller tala ont om någon utan du fann alltid något gott att säga om alla dina medmänniskor, även de som gjorde fel mot dig.

Jag har i din kvarlåtenskap hittat många bevis för detta, många av dem kan verka lite udda.

Till exempel 'ärvde' du änkefru Olga Karlsson's ägodelar, en granne i Finland som du under många år hade hjälpt såväl med reda pengar som hjälpt henne med hus och hem efter det att hennes man avled. När hon dog så testamenterade hon allt till dig. Men det du fick var verkligen ingenting att yvas över. Hennes tillgångar täckte inte hennes skulder och kvar fanns en stor minuspost. Du accepterade ändå detta och under många år betalade du hennes gamla skulder så att myndigheter och privatpersoner i Finland fick tillbaka det hon var dem skyldig. Du hade självklart inte behövt göra detta men du gjorde det därför att du ansåg det vara rätt.

En annan episod var ditt äventyr med sågverket i Finland - Kämmäkän Saha OY - i vilken du var delägare. Du kom på att de övriga delägarna hade sålt ganska mycket virke svart och på så sätt undkommit skatter och avgifter. Du rapporterade detta till myndigheterna och betalade ur egen ficka all den straffskatt som företaget tvingades betala trots att du redan hade sålt bort din andel i företaget långt före händelsen och domslutet. Även dessa betalningar gjorde du härifrån Sverige under många många år som säkerligen var en betungande börda. Många hade naturligtvis kallat detta för ren och skär idioti men du ansåg att rätt skall vara rätt även om du själv fick lida för detta.

Jag tänker fortfarande ofta på dig och minns din gärning med tacksamhet.



###SS-MATTI-1###
Att skriva något om sig själv då man inga minnen har av tiden är naturligtvis svårt, om inte rent av omöjligt.

Noteringarna bygger på pappas dagboksanteckningar och det lilla som berättats om mina första år. Hade man visat lite intresse av att höra om sin egen barndom innan det blev för sent för frågor så hade kanske kunskapen om dessa första år varit något djupare.

Nu blir noteringarna tyvärr lite blodfattiga och torra.

Någon tid strax innan jag föddes reste min mor från Tyrvis till sin bror i Korså utanför Helsingfors och stannade där tills det var dags att åka in till Eira Sjukhus i Helsingfors (samma sjukhus där min syster Liisa föddes).

Pappa blev kvar i Tyrvis för att hålla igång affären, som mina föräldrar ägde och drev.

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS6"
	 data-caption  = "Matti 13 dagar"
	 href          = "images/SS-We/Matti-1-1950-1969-1.jpg">
	<img src       = "images/SS-We/Matti-1-1950-1969-1.jpg";
			 style     = "height: 200px; width: auto";>
</a>


Jag hade hunnit bli 13 dagar då pappa kom till Helsingfors för att hämta hem mamma och mig. Vi reste med tåg från Helsingfors men tvingades att ta en omväg med tågbyte i Harviala på grund av att ett timmerlastat tågset hade spårat ut där. Sent på kvällen i mörker och kyla fick de korsa spårområdet över och förbi timmerstockar som låg lite huller om buller på spåren, pappa med mig under ena armen och mammas resväska i den andra handen. Tydligen gick färden ändå ganska bra eftersom alla klarade sig helskinnade hem till Tyrvis.

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS6"
	 data-caption  = "Matti och Liisa"
	 href          = "images/SS-We/Matti-5-1950-1969-8.jpg">
	<img src       = "images/SS-We/Matti-5-1950-1969-8.jpg";
			 style     = "height: 200px; width: auto";>
</a>

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS6"
	 data-caption  = "Familjen + Maija Nurmi (vårt hembiträde och tillika alldeles egna barnskötare)"
	 href          = "images/SS-We/Matti-4-1950-1969-7.jpg">
	<img src       = "images/SS-We/Matti-4-1950-1969-7.jpg";
			 style     = "height: 200px; width: auto";>
</a>


Eftersom mina föräldrar drev affär och arbetade där från tidig morgon till sen kväll så blev det vårt hembiträde - Maija Nurmi - som såg efter mig och Liisa. Föräldrarna såg vi troligen inte mycket av de första åren.

###SS-MATTI-2###
Man kan ju inte annat än förvånas när man tänker på vilka rotlösa människor vi var som familj i Finland.

'Normala' familjer bor hyfsat länge på en och samma plats. Bostad byts när arbete erhålls på annan ort, när familjen växer och man behöver mer plats, ekonomin tillåter att bygga nytt och så vidare.

Detta gällde inte för oss.

Likt nomader flyttade vi runt från det ena huset till det andra, den ena orten efter den andra, utan att någonsin slå oss till ro.


<img src="images/SS-We/Matti-62-1950-1969-72.jpg"
		 alt="Picture cannot be found!"
		 class="card-img card-img-sm">
<span style="font-style:italic">
	Kämmäkkä sågverk i all sin glans
</span>

Till sommaren sålde pappa och mamma sin affär och flyttade från Väinönkatu i Tyrvis till ett nybyggt hus - Rosilas hus - samtidigt som pappa köpte upp 1/3 av ett sågverk - Kämmäkkä Sågverk - och arbetade sedan där medan mamma började arbeta i en charkuteriaffär i Vammala.

Tiden gick och 1953 flyttade familjen igen.

Flytten gick nu till Korså - Verhola - där mina föräldrar återigen började driva en affär i egen regi. De köpte affären som, fram till nu, hade ägts av mammas bror. Tiden i Verhola blev kort, för redan 1954 flyttade vi igen nu till Räckhals (Rekola) eftersom mamma och pappa hade köpt ytterligare en affär och sålt huset i Verhola.

Vistelsen i Räckhals blev naturligtvis kort för redan 1955 flyttade familjen igen. Nu blev flytten inte så lång utan vi höll oss i samma kommun i varje fall. Huset i Räckhals var för litet (?) och mamma och pappa köpte upp ett större hus - Collans hus - i Korså. Jag vet inte riktigt varför vi behövde så mycket plats, men plats fanns det nu gott om då till och med vårt sovrum lär ha varit 8 meter långt.

<img src="images/SS-We/Matti-2-1950-1969-2.jpg"
		 alt="Picture cannot be found!"
		 class="card-img card-img-sm">
<span style="font-style:italic">
	Vårt hus i Korså
</span>

Om det var av barmhärtighet eller om det var för att jag och Liisa skulle få en lekkamrat eller om skälet var något helt annat, vet jag inte men till Collans hus dök Christa Peters upp - en flicka från det svårt krigshärjade Väst-Tyskland upp för att vara med oss i 3 månader. Vistelsen blev dock avsevärt längre än så.

<img src="images/SS-We/Matti-9-1950-1969-12.jpg"
		 alt="Picture cannot be found!"
		 class="card-img card-img-sm">
<span style="font-style:italic">
	Matti äter frukost på hotell vid 1:a Stockholmsbesöket - 1956
</span>

<img src="images/SS-We/Matti-11-1950-1969-14.jpg"
		 alt="Picture cannot be found!"
		 class="card-img card-img-sm">
<span style="font-style:italic">
	Matti på Skansen efter en rundtur med tåg - 1956
</span>

1956 började mamma och pappa fundera på att flytta igen. Om vi nu skall flytta igen så skall det vara rejält resonerade pappa. Oktober 1956 gjorde jag min första utlandsresa till Stockholm tillsammans med pappa för att 'rekognosera', vi besökte Skansen och sov på hotell (lustig rekognoseringsresa må man säga - djurpark och hotell). Nu var det nog inte till Skansen vi skulle flytta och än mindre till något hotell men det var det vi gjorde i Stockholm. Några dagar senare återvände vi till Korså igen och nu hade mamma och pappa helt snöat in på flytt till Sverige.

Pappa gjorde några ytterligare resor till Sverige, bland annat till Borås och 2 månader senare bar det av mot ett nytt land med ett nytt språk.

###SS-MATTI-3###
Beslutet att flytta från Finland gick fort. Anledningarna till flytten är okända. Drevs vi av flyttbegär eller var det jakten på bättre levnadsvillkor eller var det kanske bara en slump känner jag inte till.

Varför det blev just Borås är också en gåta, det fanns redan då så många fler platser i Sverige att välja emellan.

Sett i backspegeln så kan man med tacksamhet glädjas över att det blev som det blev. Hade det inte blivit just Borås - ja då hade livet för oss alla sett helt annorlunda ut.

<img src="images/SS-We/Matti-3-1950-1969-6.jpg"
		 alt="Picture cannot be found!"
		 class="card-img card-img-sm">
<span style="font-style:italic">
	Flytten till Sverige har genomförts
	Butiken är såld och tömd
	Skyltarna är nedplockade
	En ny fas i livet tar sin början
</span>

1956-12-30 flyttade vi - jag själv, Liisa och Christa - till Sverige och Norra Sjöbogatan 53, Borås. Pappa följde med oss under resan till Borås som blev vårt första hem i Sverige, varefter han återvände till Finland för att ordna upp det som skulle ordnas upp (troligen försäljning av huset, affären etc.).

<img src="images/SS-We/Matti-12-1950-1969-15.jpg"
		 alt="Picture cannot be found!"
		 class="card-img card-img-sm">
<span style="font-style:italic">
	Törnrosa och de 7 dvärgarna
</span>

<img src="images/SS-We/Matti-63-1950-1969-73.jpg"
		 alt="Picture cannot be found!"
		 class="card-img card-img-sm">
<span style="font-style:italic">
	Ludde
</span>

<img src="images/SS-We/Matti-14-1950-1969-17.jpg"
		 alt="Picture cannot be found!"
		 class="card-img card-img-sm">
<span style="font-style:italic">
	Min lilla katt och jag
</span>

Mina faktiska minnesbilder börjar i samband med flytten till Sverige.

Under en tid bodde vi - Liisa, Christa och jag - ensamma i ett nytt land, där vi inte kände någon. Vi kunde inte språket och vi var lite väl unga för att ta hand om oss på egen hand. Vår bostad var en 3-rums lägenhet som nästan helt saknade möblemang (förutom några madrasser på golvet och en naken lampa i taket). Nätterna sov vi i lägenheten. Mat, rena kläder och bad fick vi av en familj som våra föräldrar ytligt kände och som bodde i en lägenhet några hus bort. De såg efter oss så gott det gick och vi fick lite sällskap av deras barn som dock var betydligt äldre än vi själva. För övrigt fick vi klara oss själva.

En klar minnesbild jag har av kvällarna i den närmast tomma lägenheten var att Liisa, som då kunde läsa, läste högt ur de böcker (klassiska finska barnböcker 'Tammen Kultaiset Kirjat' som vi fick med oss från Finland.

Mamma dök upp först (efter någon månad) och pappa ännu något senare. Men till slut var familjen ändå samlad.

Från denna första tid i Sverige har jag naturligtvis en hel del minnen - de flesta omöjliga att färglägga med klara färger. Kanske att vi hade kunnat få en mjukare start i ett nytt land. Men man får inte glömma bort att under 50-talet levde man livet något annorlunda jämfört med dagens samhälle - barn var inte drivkraften i en familj. Barn var något man fick, inte något man valde att få. Föräldrarna tyckte säkerligen om oss och ville vårt bästa men vi var ändå inte deras enda intresse. Ibland har ju ändå tanken slagit - hur kom det sig att det var så men vi var inte unika på något sätt och kände oss inte speciellt övergivna och fick inga men för livet (återstår dock för andra att bedöma).

Av förklarliga skäl finns det inte några fotografier varken av mig eller Liisa från tiden då vi bodde på Norra Sjöbogatan 53 i Borås. Det fanns ingen tid för fotograferande då all tillgänglig tid som pappa och mamma hade gick åt till att hitta ett arbete, börja leta efter en mera permanent bostad, försöka skaffa en bil och se till att flyttlasset från Finland slutligen anlände till Sverige.

Den korta tid vi bodde i Sjöbo minns jag mycket väl, men det finns en lucka vad gäller bostaden såväl i mitt minne som i pappas anteckningar. Jag minns och pappa skriver i sina anteckningar att vi flyttade in i en lägenhet på N:a Sjöbogatan 53. Pappas anteckningar samt ett tidningsurklipp säger vidare att vi flyttade från Sjöbo och sålde vår 3-rumslägenhet på Lindormsgatan 48 (som är en grannfastighet till N:a Sjöbogatan 53). Hur detta gick till har jag inget minne av och ej heller några anteckningar att falla tillbaka på. Det troliga är att vi endast bodde i lägenheten på N:a Sjöbogatan 53 en mycket kort tid kanske bara till dess att flyttlasset från Finland anlände och att inflyttningen då gick till Lindormsgatan 48. Osäkert men troligt. Nåväl - ingen stor sak i vilket hus vi bodde den korta tid vi hade vår bostad i Sjöbo.

<img src="images/SS-We/Matti-15-1950-1969-18.jpg"
		 alt="Picture cannot be found!"
		 class="card-img card-img-sm">
<span style="font-style:italic">
	Solhem Box 787 Sjömarken
</span>

Vårt nomadliv fortsatte som tidigare och vi flyttade till en villa i Sjömarken - 'Villa Solhem'. Flyttlasset dit gick 1957-08-05 vilket innebär att Sjöbo blev för oss ett 8 månaders äventyr 🤨

###SS-MATTI-4###
Att byta land, att byta språk, att börja om på nytt är svårt.

Det är svårt för vuxna men det är svårt även för barn.>

En känsla av otrygghet och utsatthet kastas över en som en blöt filt och det tar ett tag innan man förmår att kasta av sig den. Vi klarade oss dock relativt bra. Lite främlingsfientlighet fick vi naturligtvis utstå - epitetet 'finn-j..el' (bland många andra) följde oss i hasorna långt upp i åldrarna men det vara bara att tugga och svälja.

Tror inte att det fanns någon egentlig illvilja i alla de tillmälen vi fick utstå utan det var säkerligen ett arv från en äldre generation som hade en ogrundad rädsla för att arbetstillfällen skulle gå förlorade, den svenska kulturen skulle urholkas och så småningom suddas ut osv osv (alltå exakt det som många i dagens samhälle oroar sig för då nya grupper av invandrare söker sig till Sverige).


Picture cannot be found!
Klassfoto 1:a klass. Matti står i första raden längst till höger på bilden.

23:e Augusti 1957 började jag mitt första skolår i 1:a klass vid Sjömarkenskolan som låg cirka 2 km från vårt hem.

Min svenska hade naturligtvis inte hunnit bli helt perfekt ännu efter 8 månader i Sverige. Om jag nu minns rätt så var jag den enda finsktalande eleven i klassen. Vid den här tiden fanns ingen stödundervisning eller svenska för invandrare. Jag var piskad att snappa upp språket själv så gott det gick. Mina skolkamrater var snälla och bra på alla sätt vilket gjorde allt väldigt lätt för mig.

Tyvärr tyckte min lärarinna - Doris Lindahl - inte om oss 'finnar' vilket hon tydligt klargjorde för klassen genom att peka ut just mig som "en av de där finnarna som kommer hit och tar våra arbeten" vilket väckte stor munterhet i klassen och en viss nedstämdhet hos mig. Kunde inte förstå vad vi hade gjort för fel. För övrigt var Doris en duktig och duglig lärarinna - hon lärde mig att läsa, skriva och räkna och behandlade mig som alla andra efter att hon hade fått säga sitt och tydliggjort sitt motstånd mot invandring i allmänhet och finsk invandring i synnerhet. Fick till exempel en gång med mig ett brev hem för påskrift av pappa då vi under sommaren 1958, av för mig okänd anledning, blivit kvar i Finland några dagar för länge. Skolan hade hunnit börja och jag missade några dagar. Brevet var inget annat än en påminnelse om att svenska regler gäller även för finnar och deras barn. Om skolan börjar en viss dag så är det det som gäller och det gäller även för finnar.

Nåväl ... Doris var som sagt ändå en bra människa och en god lärarinna även om godheten ibland kände vissa gränser.

Mina föräldrar arbetade i Borås och åkte hemifrån varje morgon klockan 06:00. Jag och Liisa fick ordna till vår egen frukost som oftast var ett glas mjölk eller lite byxvarmt kaffe som hade blivit över efter det att föräldrarna åkt iväg på morgonen samt en smörgås. Då Liisa och jag gick i olika klasser så började och slutade våra skoldagar vid olika tider. Mina skoldagar var något kortare än Liisas, jag gick sist hemifrån och kom hem först. Avståndet från hemmet till skolan var inte speciellt långt - cirka 2 km.

Mamma och pappa slutade sina arbeten klockan 17:00 varefter de sedan tog bussen från Borås till Sjömarken och sedan en 2 kilometers promenad från busshållplatsen och hem vilket gjorde att de var hemma vid sexsnåret på kvällarna. Om Liisa och/eller jag behövde något i matväg så fick vi fixa det själva (om vi inte orkade vänta till dess att mamma och pappa kom hem).

Minns väldigt tydligt hur svårt det var i början att hantera detta med att på egen hand gå till skolan. Jag var som ung extremt mörkrädd och vågade inte vara ensam hemma. Så när Liisa gick iväg på morgonen, lite tidigare än jag, så brukade jag dra iväg tillsammans med henne och stannade sedan till vid ett hus lite närmare skolan där en av mina klasskarater bodde. Satt sedan ute på deras yttertrappa och väntade tills det var dags att gå iväg till skolan. Vi gick tillsammans resten av vägen. Tyvärr blev jag aldrig insläppt i huset utan satt ute och väntade. Det var helt OK för min del - jag slapp vara ensam i ett stort hus och detta med att sitta ute på yttertrappan kändes så mycket bättre. I Sjömarken stannade vi inte heller specielt länge. När man läser pappas gamla anteckningar så framgår det tydligt att de aldrig var riktigt tillfreds med köpet av Solhem i Sjömarken. Anledningarna var många - dels låg det långt från Borås där de arbetade, dels verkade de ha svårigheter att hyra ut de lägenheter som fanns i huset (En liten lägenhet i bottenplan samt två rum på 2:a våning). Hyresgästerna kom och gick (troligen på grund av avståndet till Borås). Redan efter 6 månader så började pappa fundera på att sälja huset. Det dröjde dock ända till 1959 innan huset de facto såldes och flytten gick nu till Bergsätergatan 40 i Borås. Under dessa 4 år i Sjömarken så hände inga fantastiska saker;

- Pappa köpte både en och annan bil
- Jag började skolan
- Genomled mässlingen
- Min barndomsvän, Aulis Korpela, flyttade till Sverige och bodde i vårt hus en tid
- Jag fick min första och enda cykel

30/11 1959 sålde mina föräldrar huset i Sjömarken för 69.000 och köpte samtidigt fastigheten Fjällbruden 16 på Bergsätergatan 40 i Borås för 157.000. Inflyttning i det nya huset gjordes 28/2 1960. Alltså bodde vi 2 år och 4 månader i Sjömarken. De köpte huset trots att de som vanligt befann sig i ekonomiskt limbo. Plånboken var helt tom - räckte inte ens till 3 flaskor mjölk utan fick köpa dem på kredit med betalning en vecka senare. Läge att köpa hus i det läget? Tveksamt!

###SS-MATTI-5###
Vad jag än tyckte och tänkte så gällde det att börja arbeta vid tidig ålder.

Att ligga hemma och dra benen efter sig var inget man såg på med blida ögon. Detta gällde naturligtvis även mig. Om man som jag och Ulla kommer från inte så välbärgade familjer så var det ganska naturligt att man måste arbeta om man önskar sig något. Föräldrarna hade inte några möjligheter att förse oss barn med moderiktiga kläder och prylar och saker man önskade sig. Ville man ha något så fick man arbeta för dem. Jag var väl ändå priviligierad om man jämför med Ulla då mina föräldrar dels hade avsevärt mindre antal munnar att mätta, dels hade fasta inkomster året om.

13 år gammal tog jag då mina första stapplande steg ut i arbetslivet även om det bara rörde sig om ett fåtal timmar i veckan.

Under mina år har jag haft många olika arbeten inom vitt skilda områden.

Man kan och får tycka, med all rätt, att min skolgång och mitt arbetsliv varit ett enda virrvarr under mina tidiga ungdomsår.

Allt detta har ändå fört med sig något gott. Har tack vare alla de arbeten jag haft, alla de reaktioner jag mött och de människor jag stött på lärt mig att respektera människors arbeten alldeles oavsett vad de arbetar med och att aldrig se ner på varken deras utbildning eller levebröd. Har också klarat mig ifrån att hamna i ett sinnestillstånd där jag haft en starkt överdriven självuppfattning. Arbetslivet har inte alltid varit lätt, arbetsuppgifterna har inte alltid varit trevliga och de har heller inte alltid krävt något annat av mig än min tid och min ork. Har ibland kämpat i motvind och har även flera gånger varit nära en gräns där orken börjar ta slut. Men jag är ändå oerhört tacksam för att allt ändå ordnade sig till slut även om vägen var svårnavigerad, krokig och stenig och att jag ofta tappade kompassen.

<b>VästgötaDemokraten</b> - sommaren 1964

var min 1:a arbetsgivare och mitt 1:a betalda sommarjobb.

<i>Västgöta-Demokraten eller VD som den kallades i folkmun var en eftermiddagstidning i Borås, som utkom mellan 1926 och 1986. Den var socialdemokratisk och gavs ut 6 dagar i veckan.</i>

För dem delade jag ut tidningar på eftermiddagarna såväl efter skolan som under sommarlovet.

Lönen var låg men arbetet var inte heller ansträngande. Man kunde sitt distrikt och gick upp och ner i trapphusen, stoppade in tidningar i brevlådor och brevinkast efter bästa förmåga. Det hände att man glömde någon prenumerant och det kunde även vara så att man ibland förde lite för mycket oväsen när man skramlade med brevinkasten då tidningen stoppades in vilket gjorde att klagomål dök upp lite då och då.

Vill minnas att jag fick mellan 35-40 kronor för en månads arbete vilket räckte precis till ett par byxor.

<i>År 1967 tryckte VästgötaDemokratens tryckeri reklambroschyrer för ett svenskt företag i pornografibranschen som företaget sedan av misstag distribuerade till präster i Storbritannien. Händelsen ledde till att Sveriges ambassad i Storbritannien fick skriva urskuldande brev till de drabbade.</i>

<b>GT</b>

Tidningsförsäljare, helger, dörrknackning)

<b>Algots Fabriks AB</b> - sommaren 1965

blev mitt 2:a sommarjobb och nu fick jag prova på vad arbete innebar på 'riktigt'.

<i>Algots var vid den tiden Borås i särklass största konfektionsföretag och sysselsatte vid 60-talets mitt ungefär 2.000 personer i Borås. En majoritet av arbetarna var invandrare - balter, tyskar, finländare, ungrare, greker och jugoslaver. Företaget sydde upp ca 4 miljoner plagg per år enligt en 'löpande band'-princip (som innebar att varje arbetare var tvungen att anpassa sitt tempo till det löpande bandet). Den standardiserade tillverkningen gjorde att nyanställda kunde göra ett fullgott jobb redan efter en vecka.</i>

Lagret på Algots blev min första bekantskap med fabriksarbete. Till mina arbetsuppgifter hörde att ta en rullcontainer och från sysalarna i fabriken hämta färdigsydda plagg, köra dem till lagret, lägga upp dem på ett långt bord, sortera upp dem i storleksordning samt plocka in dem i lagerhyllorna. När detta var gjort så skulle inkomna ordersedlar plockas samman och skickas vidare för transport, sedan ytterligare lass från sysalarna osv osv i en aldrig sinande ström.

Lönen delades ut i små bruna kuvert varje fredag eftermiddag. Min första löneremsa från Algots visade en timlön på <b>3,43/tim</b> vilket i dagens (2023) penningvärde motsvarar ≈43 kronor. För att få lite perspektiv så bör man känna till att en hel special - 2 grillade/kokta korvar i ett bröd med en rejäl klick potatismos plus gurksallad - vid närmaste korvkiosk kostade ≈1:25.

<b>Allmans Charkuteri AB</b> - sommaren 1966

blev min arbetsgivare den sommaren.

<i>Som namnet antyder så var Allmans ett företag inom charkuteribranschen och som vid 60-talet hade inriktningen konservtillverkning. Några av favoriterna var Allmans Nattkorv, Pilsnerkorv, Köttbullar och Kokta Grisfötter. Jag själv arbetade under mina månader på företaget endast med korv och köttbullar.</i>

Att vara äckelmagad är inte bra om man arbetar på en charkuterifabrik. Under sommaren fick jag prova på alla möjliga och omöjliga uppgifter - jag tillverkade korv, jag 'skalade' korv, jag burkade korv, jag åt korv, jag pangade lådor och packade köttbullar. Men jag skalade inte potatis - det gjorde däremot min mamma som också arbetade där ett tag under några sommarmånader. Allmans ägde vid denna tid ett stort antal korvkiosker runt om i Borås med omnejd och till dessa kiosker levererades potatismos tillverkad i fabriken.

Jag och en kamrat stod en dag vid stationen där man förpackade korv på burk. Arbetet gick ut på att man placerade 8 korvar i en burk, hällde spad upp till en viss nivå, satte på ett lock och med hjälp av en maskin pressade fast locket. Konservburken sattes in i ett rack som sedan kördes in i en ugn varefter den försågs med etikett, förpackades i lådor och kördes ut till butikerna.

Vi tyckte att det skulle vara skojigt att variera produkterna lite grann - ibland fick burkarna inga korvar utan bara spad. Ibland tryckte vi i så många korvar som det gick men inget spad och allt däremellan. Hade varit underhållande att få se kundernas reaktion när de öppnade en burk och märkte att de inte hade fått några korvar alls eller hur belåtna de skulle vara om de istället för 8 fick 12 korvar.

Vet inte hur många sådana 'defekta' burkar vi producerade men det var ganska många.

Jag vet - det var inte snällt och det var inte moget, men det är nu preskiberat och kunderna har säkert glömt ilskan de kände då.

<b>Algots</b> - sommaren 1967

Efter att jag tagit något som kallades för realexamen från Borås Praktiska Realskola (kemiteknisk linje) så sökte jag efter ett arbete men i brist på något lämpligt så fick det bli det som stod till buds. Tog ett arbete hos Algots där jag synade och pangade byxor.

Att syna byxor gick ut på att man arbetade längst ner på det löpande bandet och tog emot alla färdigsydda plagg, vände dem ut och in, kontrollerade att byxorna till utseende var som förväntat (byxbenen hade samma längd, sömmarna satt där de skulle, knappar och knapphål satt på rätt ställen och i rätt antal, dragkedjorna fungerade och var rättvända osv).

I det fall plagget var utan anmärkning så skulle det häftas fast en etikett som talade om modellen, storleken och färgen - den "pangades" med andra ord. Sysslan var enkel och lönen återspeglade detta - den var alltid låg. Men då arbetet var enkelt och lönen låg så fick man syna desto fler plagg istället - ungefär 1000-1500 per dag om jag inte minns helt galet.

Fick även prova på att sitta vid en knappmaskin. Knapparna syddes i precis i slutet av det löpande bandet - ja faktiskt det sista momentet före avsyning. Dit fick jag hoppa in och hjälpa till med ytterligare en knappmaskin om högarna växte sig för stora för den stackare som normalt sydde i knappar. Det fungerade väldigt bra men min barnslighet gjorde att min tid vid knappmaskinen inte blev alltför lång. Tyckte att det var roligt att 'skoja' lite med de kommande kunderna och sydde därför ibland röda och ibland vita knappar i byxorna fast det skulle vara svarta och tvärtom. Naturligtvis dröjde det inte lång stund för chefen vid det löpande bandet att upptäcka detta. Som straff fick jag sätta mig och sprätta bort och byta ut knapparna på samtliga byxor som var felsydda och därefter förpassades jag upp till våning 6 i en vecka där man som enda arbetsuppgift hade att klippa bort små trådstumpar som satt i slutet av alla sömmar på färdigsydda täckjackor - oj vad jag ångrade mitt 'hyss'.

Min tid här blev inte så värst lång - jobbade hos Algots från skolavslutningen till dess att industrisemestern stängde ner Sverige i Juli som brukligt. Återkom till arbetet i slutet av Juli och jobbade kvar till slutet av November.

<b>N. Lundbergs Fabriks AB</b> - 1967-12-04 - 1969-06-19 (1 år 6 månader)

<i>N. Lundbergs Fabriks AB var en svensk tillverkare av bland annat PVC-produkter.
Företaget grundades 1939 i Gånghester och köptes upp av KF 1961 och fick sedan ingå i AB Gustavsberg. Fabriken tillverkade avloppsrör, tryckrör, elplaströr och dräneringsrör. Fabriken blev Gustavsberg-koncernens största utanför Gustavsberg. Den var också den största plaströrsfabriken i Skandinavien. Företaget flyttade 1969 till Fristad och bytte namn till Lubonyl.</i>

Hade precis fyllt 17 år när jag började arbeta som provtagare på driftslaboratoriet.

Arbetet innebar att göra kontroller av företagets produkter vad avser mått, hållfasthet osv. Arbetet var ganska enformigt och okvalificerat, man gick till jobbet på morgonen, hämtade ut diverse stickprov från produktionsavdelningarna, genomförde lite mätningar på provexemplaren och gjorde nödvändiga noteringar om resultatet och fick på så sätt tiden att gå. Arbetet var lätt och krävde egentligen inte mycket mer än daglig närvaro. Tjänade ihop pengar som räckte till ett körkort, lite kläder och en ny basgitarr och förstärkare (<i>mer om det senare</i>).

<b>Monsun / Tison AB</b> - hösten 1969

<i>Hydraulikföretaget Monsun-Tison AB grundades 1966 av Incentive AB (52% ägarandel) och Atlas Copco (48% ägarandel) genom en sammanslagning av de separata företagen Monsun i Spånga och Tison i Enköping. Båda företagen tillverkade hydraulikkomponenter. Avsikten med sammanslagningen var att forcera utvecklingen av mobila bergborraggregat för spränghålsborrning i underjordsgruvor, vägtunnlar och dagbrott. Hydraulventiler och cylindrar utgjorde en viktig del av maskinkoncepten, där en egen utveckling och tillverkning av dessa komponenter ansågs som en stor konkurrensfördel.
Monsun Tisons ventiler och cylindrar kom till största delen att vidareutvecklas efter de krav som fanns från skogsmaskintillverkarna i Skandinavien, som blev Monsun Tisons helt dominerade kundgrupp och som låg långt före alla andra maskinsektorer inom mobila arbetsmaskiner i användningen av elstyrda hydraulventiler för att kunna öka maskinernas produktivitet.</i>

Mitt enkla arbete gick ut på att placera en färdigmonterad ventil i en rigg, pensla den med en tvållösning och trycka på 2 knappar. Om det bubblade någonstans så läckte ventilen som sedan lades i lådan för defekta ventiler. Om det däremot inte bubblade någonstans så var ventilen till sin funktion godkänd. De godkända ventilerna skulle nu torkas av och märkas med etiketter som talade om typ och tillverkningsdatum varpå de lades ner i lådor för godkända och märkta ventiler, färdiga att paketeras och levereras. Jag penslade och torkade, penslade och torkade och fann arbetet som fullständigt själsdödande och deprimerande.

Något hände på fabriken - vet inte vad - som gjorde att ventiler inte kunde produceras i önskad takt vilket gjorde att tillfällig arbetsbrist uppstod.

Jag fick då en tillfällig alternativ syssla som gick ut på att klädd i ett par långa gummihandskar och en rotborste 'beta' ventilhus vilket innebar att tillverkade ventilhus lades ner i en saltsyralösning där de fick ligga några minuter så att alla föroreningar som fett och oljor effektivt försvunnit varpå de skulle handskuras med borsten (som tålde saltsyra) och slutligen sköljas av med vatten och torkas. Processen gjordes i typ en oljefatsliknande balja utan någon som helst eller i varje fall dåligt fungerande ventilation och utsug av de, för mänskliga organ frätande, ångor som bildades. Efter ett par timmar fick jag blödningar i näsan - avbröt arbetet och gick till min chef och påpekade vad som hänt. Hans kommentar var 'Trams, tryck upp lite bomull i näsan och fortsätt jobba, du vänjer dig snabbt'.

Gick tillbaka till min balja, drog av mig gummihandskarna och lade dem snyggt ihopvikta vid min arbetsplats, snöt näsan, vek ihop min arbetsrock och lade den på bordet, tackade för mig och gick ut genom dörren till Monsun/Tison för att aldrig mer återvända.

Blev därmed arbetslös med innestående lön förverkad men var glad för att slippa riskera min hälsa.

Insåg nu - sent omsider - att jag måste göra något åt situationen.

Jag kommer aldrig att få ett intressant arbete om jag inte fortsätter min skolgång på något sätt.

Jag hade egentligen ingen att rådfråga om vad som vore bäst utan fick försöka klura ut det hela själv utan att ha några egentliga förutsättningar att klara av det. Gjorde därför något som jag senare djupt ångrade och fick försöka rätta till vilket gjorde att allt blev onödigt arbetsamt och långdraget.

<b>Göteborgs Tekniska Institut</b> - Januari 1970 - December 1971

<i>var en friskola på gymnasienivå i Göteborg med relativt höga terminsavgifter. Då den grundades 1927 erbjöd skolan tekniska vuxenutbildningar. Den var känd för att under flera decennier ha tagit emot många elever från Norge (<i>i Norge fanns vid den här tiden teknisk utbildning endast på 10 orter, vilket gjorde att det var mycket svårt att komma in där. Många sökte sig därför utomlands och många valde då GTI</i>). När skolan var som störst hade den 1.800 elever.</i>

Utbildade mig där till elektroingenjör. Dagarna var extrema. Lektionerna började klockan 08:00 och slutade i regel runt 18:00 (två dagar i veckan varade de till 20:00). Mina läxor gjorde jag för det mesta på tåget mellan Borås-Göteborg-Borås.

Då mina föräldrar inte hade några ekonomiska möjligheter att hjälpa mig med terminsavgifterna så var jag tvungen att låna ihop dessa pengar från CSN. Tågbiljetter, böcker och mat etc var jag tvungen att bekosta på annat sätt. I mitt fall blev det att bära ut tidningar - Borås Tidning - på morgonen innan jag satte mig på tåget till Göteborg.

<b>Lantmäteriet</b> - Sommaren 1970

Sommaren 1970 arbetade jag som 'pinnpojke' för Lantmäteriet där jag under 3 månaders tid traskade runt tillsammans med en kollega i skogarna runt Hestra-Ekås i Borås. Syftet var att noggrant mäta oss fram punkt för punkt i skogen där den ena gick med en mätsticka och den andra med ett avvägningsinstrument och vinkelprisma. Med papper, penna och räknesticka satt vi sedan i skogen och räknade fram positionerna för varje enskild punkt. Ett extremt tidsödande arbete men ändå ganska trevligt. Arbetet vi utförde var en förutsättning för att kartor skulle kunna ritas, hus byggas och vägar projekteras.

Idag är hela Hestra-Ekås fullt med hus och gator och vägar av alla de slag kanske inte tack vare min insats men vi gav ändå åtminstone ett mikroskopiskt bidrag till områdets exploatering.

Idag har ju naturligtvis den traditionella pinnpojken rationaliserats bort till förmån för satellitnavigering och GPS-mottagare som gör jobbet extremt mycket fortare och bättre.

<b>Viskans Kraft (Oljekraftverket i Rydboholm)</b> - Januari-April 1972

Arbetet här bestod i att köra och övervaka oljekraftverket. Statens Vattenfallsverk i Råcksta, Stockholm höll regelbundet kontakt med oss och bad oss antingen öka eller minska produktionen och till och med ibland helt stoppa produktionen - allt efter aktuella behov. Att öka och minska kapaciteten var i sig enkelt, det kunde vem som helst klara av. Att stoppa produktionen var också lätt - det var ju bara att stänga av oljepannorna i rätt ordning efter ett schema.

Problemen dök upp när produktionen skulle starta upp igen efter ett avbrott. Till det krävdes lite fingertoppskänsla som jag naturligtvis saknade då jag var nybörjare inom området. När jag fick det ärofyllda uppdraget att dra igång pannorna så skulle man skapa en perfekt mix av olja och luft så att generatorerna gick igång och ingen svart rök blåste upp i skorstenarna. Vid några tillfällen misslyckades jag kapitalt med denna mix och dränkte halva Rydboholm i svarta rökmoln. Det dröjde inte många minuter innan vår chef, som satt i helt andra lokaler en bit bort, kom cyklande högröd i ansiktet och frågade "vilken idiot har nu varit i farten igen". Man lärde sig snabbt av sina misstag och till slut gick det hyfsat bra.

För övrigt så fördrevs dagarna genom att man höll koll på ett stort antal mätvärden och instrument. Antecknade informationen i en loggbok varje timma och gjorde nödvändiga justeringar i anläggningen vid behov.

Där blev jag kvar till April 1972.

<b>Gustavsbergs Fabriks AB/Uponor</b> - April 1972 - September 1977

<i>Efter utbildningen på GTI krävdes att man gick som lärling i minst 3 år innan man fick sin A-behörighet, vilket var en nödvändighet om man ville arbeta inom området "utförande och skötsel av elektriska starkströmsanläggningar". Lärlingslönen var löjligt låg så jag funderade länge och väl om detta verkligen var förnuftigt att fortsätta på den här påbörjade vägen med 3 hundår innan man kunde få en vettig lön.

Bestämde mig - rätt eller fel - att göra något helt annat.

Valde att läsa in en fullständig gymnasiekompetens (jag saknade ju gymnasiekompetens för svenska, engelska då GTI endast hade tekniska ämnen vid den tiden) så att jag blev behörig till högre utbildning.</i>

Tog därför ett arbete på driftslaboratoriet vid Gustavsbergs Fabriker (tidigare Lubonyl) som sedan köptes upp av Uponor. De hade just inrättat ett speciellt skift som arbetade under helger. Det innebar för fabriken att de kunde ha igång sin produktion 24/7 och endast stänga av maskinerna under industrisemestern. Vi arbetade i 12-timmars pass där det sk dagskiftet gick på klockan 06:00 Lördag morgon och arbetade till 18:00 då nattskiftet tog över och de höll igång till 06:00 Söndag morgon varefter morgonskiftet åter gick på - arbetade till 18:00 och nattskiftet avslutade sedan helgen med ett skift från 18:00 Söndag kväll till 06:00 Måndag morgon.

Denna alldeles förträffliga arbetsform passade mig som hand i handske då jag på så sätt fick hela veckan ledig för att bland annat komplettera de ämnen som jag saknade för en fullständig gymnasiekompetens.

Sedan kom militärutbildningen ivägen. Fick tjänstledigt från arbetet på grund av detta och ryckte in 1973-10-15 och blev civil igen 1974-05-31.

Miltärtjänstgöringen som gjordes på I15 i Borås där jag utbildades till/tjänstgjorde som granatgevärssoldat vid 3:e kompaniet. På grund av att jag hadde blivit nybliven pappa till Marie fick jag ständig nattpermission vilket medförde att min tid på I15 inte var alls jobbig, tvärtom trivdes jag väldigt bra med det militära och tyckte om i princip allt. Vi blev varse om lagarbete och kamratskap utöver de färdigheter som en granatgevärssoldat skall ha - att ta isär och plocka ihop en 9 mm kulsprutepistol m/45 på kortare tid än 1 minut, kunna skjuta med Carl Gustaf 84 mm granatgevär och träffa målet i 10 fall av 10. Att dessutom kunna hantera en kulspruta m/58 ansågs som självklart.

När miltärtjänstgöringen var över kom jag tillbaka till Uponor.

Eftersom veckorna var 'lediga' så drygade jag ut kassan lite grann med;
- att dela ut tidningar (Borås Tidning)
- att köra lastbil på nätterna för distributionen vid Borås Tidning (distribuera tidningsbuntar till dem som delade ut tidningar (de skulle placeras på överenskomna platser runt om i stan med omgivning))
- att köra flyttlass med tung lastbil runt om i Sverige (Fredrik Åkare)
- att arbeta som lärarvikarie vid Åsboskolan (finska, fysik och matematik) för årskurserna 7-9 (1975-1976, 3 terminer)

Arbetade hos Uponor till 1977-09-18

<b>SiKo Städ</b> - 1977 - 1981

Påbörjade nu äntligen mina universitetsstudier i Göteborg med enstaka kurser i matematik som självklart val.

Samtidigt behövde ju familjen inkomster vilket gjorde att jag tillsammans med en av mina barndomskamrater - Aulis Korpela - bildade Handelsbolaget SiKo Städ som utförde städning och fönsterputs.

Jag och Aulis städade;
- Midaskvarteret i Borås - 7 dgr/vecka
<i>sopa trottoarer, rengöra marmorgolv inom- och utomhus</i>
- Midaskvarteret i Borås - 1 gång/vecka
<i>skura samtliga marmorgolv inom- och utomhus</i>
- Kypegården (allmän bastu) - 7 dgr/vecka
<i>städa och rengöra basturummen, omklädningsrum, duschar och toaletter samt kafeterian</i>
- KappAhls butik i centrala Borås 6 dgr/vecka
<i>dammsuga golv i butiken, städning av lunchrum, lagerlokaler och toaletter</i>
- Trappstädning - 1 gång/vecka
<i>13 trappor på 5 olika platser i Borås</i>
- BilDax Bilvaruhus - 1 gång/vecka
<i>sopa/dammsuga utställningslokaler, kontor och tillhörande verkstadslokaler, omklädningsrum. Städa och rengöra duschar och samtliga toaletter</i>

Vardagar började vi senast 6 på morgonen med att städa Midaskvarteret för att sedan åka till Kypegården och städa dem. En snabb dusch i Kypegårdens duschutrymmen och ett snabbt ombyte och sedan iväg till tåget mot Göteborg för dagens föreläsningar på universitetet. Hem på eftermiddagen och sen iväg till KappAhl för att städa butikslokalerna efter att butiken stängt för dagen. Lördagar och söndagar städade vi trapphus och BilDax.

Förtjänsten var ganska bra men mycket av förtjänsten gick åt till maskiner och förbrukningsartiklar. Därför tog vi ett modigt beslut att åta oss fönsterputs av Borås Skolor sommaren 1979. Vi lade in ett anbud på hela 18 olika skolor i Borås. Kommunen nappade på vårt anbud (<i>kanske för att priset var så lågt, ja alldeles på tok för lågt ???</i>)och vi fick putsa fönstren i samtliga dessa skolor. Projektet började samma dag som skolorna stängde för sommarlov och arbetet skulle vara klart när skolorna åter öppnade i Augusti. Vi lyckades nästan - ett par skolor blev lite försenade så dessa var vi tvingade att fixa under icke-lektionstid samt helger.

De pengar vi drog in tack vare fönsterputsandet gjorde att vi kunde köpa vårt första hus - Nya Kyrkvägen 2, Fristad tillsammans med mina föräldrar. Jag och Ulla ägde 70% av fastigheten och mina föräldrar ägde resterande 30%.

Så här höll jag på fram till 1981 - städade tidig morgon, sen kväll och helger samt pluggade matematik, programmering och teoretisk datalogi.

Tog dock aldrig någon examen. Stupade på en 4-poängs muntlig tentamen i analytiska funtioner. Tentamen gick till så att vi i tur och ordning gick till professor Arne Bromans tjänsterum. Där fick vi 3 satser som skulle bevisas. På min lott föll att göra en bevisföring av Weierstrass Majorantsats, Cauchy's Integralsats och Poisson's Formel. Betänketiden var noll.

Samtidigt som jag började knackade städerskan på och kom in i rummet, satte på dammsugaren och började dammsuga. Jag ansåg det vara ofint att börja tala till ackompanjemang av en ilsken dammsugare och väntade till dess att hon var klar och hade lämnat rummet. Påbörjade min bevisföring men blev direkt avbruten av professor Broman som tyckte att min betänketid blivit alldeles för lång vilket han tolkade som att jag inte kunde och ansåg att jag precis som städerskan skulle lämna rummet och boka in en ny tid för muntlig tentamen. Blev något förvånad eftersom jag hade en helt annan syn på den sk betänketiden men protester var onödiga så det vara bara att göra som jag blev tillsagd. Nästa gång jag hade möjligheten så fick jag samma satser att bevisa. Jag själv tyckte att det gick alldeles utomordentligt bra, men professor Broman var av en anan åsikt då jag vid två tillfällen stakade upp mig lite grann och fick börja om vid ett par bevissteg. Han påpekade att matematik skall förstås - det är ingen utantillkunskap och dessa bevis skall kunna härledas från algebrans fundamentalsats och dess följdsatser utan att behöva tänka efter och försöka minnas hur det skulle ledas i bevis - det skall sitta i ryggmärgen. Han tyckte därför att våra vägar nu skulle skiljas och önskade mig lycka till. Detta innebar att fortsatta studier inom matematik för min del blev ett avslutat kapitel. Gick dock de återstående föreläsningarna för Matematik D - "Grupper, Kroppar och Ringar" men struntade i tentamen och riktade in mig mot numeriska metoder, programmering och teoretisk datalogi istället.

<b>Statens Vattenfallsverk</b> 1981-03-23 - 1982-05-09

När jag blev klar (?) med mina studier så sökte och fick jag en tjänst som Ingenjör med placering hos Statens Vattenfallsverk, Drift och Förvaltning, Produktionssektionen, Transiteringsavdelningen i Råcksta, Stockholm och började veckopendla till Stockholm 1981-03-23. Tog tåget Fristad - Herrljunga - Stockholm Söndag kväll och kom hem till Fristad sent Fredag kväll.

Arbetade där som systemerare med inriktning mot abonnemangssystemet. Systemet var utvecklat i Cobol 74. Var även med då Vattefal införskaffade den allra första PC:n till företaget - en ABC 800 från Luxor.

<i>
	ABC 800 kunde visa text i 80 kolumner och 24 rader på en monokrom skärm med bärnstensgul text på brun bakgrund.

	Minnet i ABC 800 var ynka 64KB. Den varförsedd med 2 st 5,25"-diskettstationer med kapaciteten 160 KB per diskett.

	En av Luxors reklamkampanjer ställde frågan "Vem behöver vara IBM-kompatibel?", vilket de flesta datorköparna så småningom ansåg att de behövde vara.
</i>

Satt och knåpade ihop ett program i Basic för hantering av inkommande mätdata fråm vattenkraftstationerna runt om i Sverige och sammanställde med hjälp av dessa ett underlag för Kraftkontrolls beräkningssystem. Tror inte att det programmet fick någon större livslängd med tanke på att den tekniska utvecklingen började gå väldigt fort inom datorvärlden och en ABC 800 var förhistorisk ungefär samtidigt som programmet blev färdigt.

På det personliga planet var det en tung tid för mig och en än tyngre tid för Ulla som nu ensam skulle ta hand om hus och hem, två små barn och ett tredje på väg.

Vi gick in i ett nytt år, ett år som påverkade vår familj på flera olika sätt. Jag förmådde inte vara ifrån familjen längre - pallade inte för det. Ville vara hemma på kvällar och helger, ville vara hemma för att åtminstone försöka stötta Ulla och barnen lite grann i denna svåra tid.

Slutade därför min alltför korta tid hos Vattenfall 1982-05-09.

<b>Sammy Promotion AB</b>

Samtidigt med mitt arbete hos Vattenfall startade jag tillsammans med en kamrat - Sami Niininen - ett aktiebolag - Sammy Promotion AB med inriktning mot kristen musik.

Vi producerade, gav ut, sålde och distribuerade ett antal skivinspelningar som gjordes hos Music City Studios i Stockholm. Vi köpte utrustning för kasettkopiering, köpte in tape från Agfa i Stockholm, tomma kasetter från Italien, tryckte upp etiketter hos Fristads Tryckeri. Laddade tomkassetter som såldes i olika längder för dem som önskade tomkassetter för eget bruk. Utöver egna produktioner kopierade vi kassetter för grupper runt om i Sverige som önskade få sina egna inspelningar kopierade till kassett. Inledde ett samarbete med Logos i Göteborg i de fall då större mängder av kasetter skulle produceras då de hade utrustning som mer än väl klarade stora upplagor till skillnad från våra enkla prylar. Detta höll vi på med i ett par år fram till dess att vi insåg att det var mer arbete med detta än vi hade kunnat föreställa oss.

Verksamheten avslutades och utrustningen såldes.

<b>International Färg AB</b> 1982-05-10 - 1984-08-26

<i>började sin verksamhet i England, där moderbolaget Holzapfels Ltd grundades 1881 och startade tillverkning av skeppsbottenfärger.

1913 bildade svenska redare såsom Dan Broström och Axel Ax:son Johnson m.fl. tillsammans med Holzapfel Ltd en svensk filial, Holzapfels Svenska Färgaktiebolag. Första fabriken i Marieholm vid Göta Älv i Göteborg hade 11 anställda och producerade 100.000 liter skeppsfärg.

1919 ändrades koncernens namn i Sverige till Färgaktiebolaget International – förkortat FABI och fortsatte att fokusera på fartygsfärger men även på rostskyddsfärg till brobyggen och andra stålkonstruktioner.

FABI's sortiment under 1960-talet innehöll såväl marina färger, rostskyddsprodukter som hus- och industrifärger.</i>

Mellan åren 1974–1986 flyttades all verksamhet från Marieholm till Angered i Göteborg.

1980-talet medförde en nedgång i skeppstillverkningen i Sverige, som flyttade utomlands. De stora varven i Göteborg lades ned allt eftersom. FABI utökade då sitt produktsortiment med nya, miljövänliga pulverfärger för industriellt bruk och fokuserade ännu mer på rostskyddsprodukter inom områden såsom kraftindustri och infrastruktur.

Och FABI blev min nästa arbetsgivare.

Jag arbetade där som programmerare inom Material- och Produktionsstyrningssystemet LBPCS. Programmeringsspråket som vi använde oss av var Cobol-74. Höll på med detta i ca 2,5 år och började leta efter ett programeringsjobb som låg lite närmare mitt intresse - lite mera tekniskt, lite närmare datalogi, lite intressantare arbetsuppgifter och en aning bättre lön.

<b>Datema AB</b> 1984-08-27 - 1984-11-30

Började som konsult hos Datema i Göteborg och blev placerad hos Järnia AB i Ulricehamn som mitt första konsultuppdrag. Var där i 3 månader och blev 'headhuntad' av Järnias driftschef Lars Ohlsson till en systemprogrammerartjänst hos Järnia. Tyckte det lät väldigt intressant och sa upp mig från Datema med kort uppsägningstid.

<b>Järnia AB</b> 1984-12-01 - 1988-06-22
Systemprogrammerare


<b>Unisys</b> 1988-08-01 - 1995-03-31

Konsult inom datakommunikation

<b>Solutor System AB</b> 1995-04-01 -

Systemspecialist 1995-04-01 -

<b>Unisys</b>

Systemarkitekt 1988-08-01 -

<b>Svensk Exportkredit AB</b> 2004 - 2016

Utvecklingschef & IT-arkitekt
###SS-MATTI-6###
Livet är skört, men det är det enda vi har.

En natt kunde plötsligt mitt liv ha tagit slut, men änglarna var vakna den natten och såg till att det inte blev så.

Vi - jag själv och 2 av mina vänner - var på väg hemåt från Falköping 1966-10-30. Klockan hade tickat på och började närma sig 01:30.

Vädret var bra, vägen var torr, asfalten var jämn och fin. Bilen hade godkända däck, föraren hade körkort och var varken berusad, trött eller sjuk. Förutsättningarna för en säker hemfärd var alltså relativt goda.

Farten var en aning för hög då vi närmade oss bron över Ätran i Trädet (en liten ort ≈25 kilometer söder om Falköping). Vägen gjorde en ≈90 graders vänstersväng in mot på bron, men det gjorde inte vi.

Utan säkerhetsbälten for vi i 100-110 km/h rätt in i den yttersta delen av vägräcket och dess betongfundament som flyttades 20-25 centimeter från sin plats, vi som satt i bilen något mer medan bilens motor kom från motorrummet halvvägs in i hytten. Föraren slog huvudet i rattkransen, fick en bula i pannan och ett blåmärke på hakan. Kompisen i baksätet slog knät i framsätets ryggstöd och fick lite ont, jag själv krossade vindrutan med ansiktet före och fick ytterligare skador då jag rev upp ansiktet i instrumentpanelens vassa reglage.

Vi tog oss ur den något tilltufsade bilen och undrade vad som egentligen hände.

'Vad gör vi nu? Ute i ingenstans! Hur får vi hjälp?'

Vi gick ut på vägen, såg att det fanns ett hus hyfsat nära. Inga ljus var tända men vi gick dit och ringde på - ingen öppnade. Kanske var ingen hemma eller så vågade de sig inte ut för att öpnna dörren.

Några sekunder, eller om det kanske var några minuter, senare ser vi ett par billyktor närma sig från andra hållet i riktning mot Falköping. Fort - ut mitt på vägen och få bilen att stanna. I bilen satt ett äldre(?) par som såg helt förskräckta ut. Vi frågade om de kunde köra oss till Falköpings Lasarett vilket de lovade - de såg ju den kraschade bilen.

Kommer inte ihåg om bilen var dyr eller ny eller om de helt enkelt ansåg att renlighet är en dygd för de ville inte släppa in oss i bilen föränn de brett ut en filt på baksätet för mig att sitta på. Hela resan - som inte kan ha tagit mycket mer än 15-20 minuter - satt hon vänd mot baksätet och upprepade orden;
- Du dör väl inte?
- Nej! Det hoppas jag att jag inte gör. Kör på bara.

Väl framme vid Falköpings Lasarett fick jag gå in på toaletten och svabba av mig då ansiktet var täckt av levrat blod!

Läkaren började sedan plocka ut glassplitter ur de många såren i ansiktet. Resultatet blev inte helt perfekt då jag fortfarande har lite splitter kvar i skallen. Nål och tråd plockades fram. Läkarens betyg i syslöjd måste ha varit snudd på 'icke godkänt' för någon mästare var han inte med tanke på hur stygnen sattes. Många blev det i varje fall - närmare bestämt 72 stycken.

Till historien hör att läkaren inte riktigt kunde förlika sig med mitt uppträdande under hans lappande och lagande då jag ofint nog spottade honom i ansiktet. Han fick aldrig veta anledningen varför jag gjorde det och jag hade för ont för att vilja/kunna förklara. Jag spottade ju inte i affekt utan mera som en reflex. När näsvingen skulle sys fast så skulle den först bedövas och läkaren råkade sätta bedövningssprutan lite väl djupt i näsan så spetsen kom ut i näsgången och bedövingsmedlet rann ner i luftstrupen. Rent reflexmässigt vill man ju bli av med medlet och då ville det sig inte bättre än att läkaren stod i vägen lite grann. Näsan syddes därför utan bedövning av en lätt irriterad läkare.

Var inlagd på lasarettet några dagar innan pappa kom och hämtade hem mig.

Lite märkligt kändes det inga röntgenbilder togs (vad jag minns). Fick endast en fråga om något var brutet vilket jag inte trodde att det var och där nöjde man sig.

Försäkringsbolaget ersatte mig sedan med 3.000 kronor för förstörda kläder samt sveda och värk med en notering om att inga ytterligare ersättningar kunde krävas helt oavsett eventuella bestående men och ärrbildningar.

När åren gick så blev det ju ganska OK för det kunde ju ha slutat helt annorlunda.
###SS-MATTI-7###
<b>Friedrich Nietzsche</b> hade detta latinska talesätt som sitt favorituttryck som på svenska kan översättas med '<b>älska ditt öde</b>'.

Han försökte hela sitt liv lära sig att acceptera livet som det var.
För honom var amor fati ett sätt att visa tacksamhet mot livet och vad det ger oss.

Livet är ett lotteri med otaliga nitlotter och få högvinster.

Vem som drar en vinst har inte ett dugg med rättvisa eller prestation att skaffa.

Jag känner en stor tacksamhet till livet och de händelser som sommaren 1967 förde med sig och att jag den sommaren fick det som senare blev en av livets högvinster.

Hela min uppväxttid var jag kluven vad gäller min nationella tillhörighet. Förträngde mitt finska ursprung och brydde mig inte speciellt mycket om varken det finska språket eller Finland överhuvudtaget. Ville vara svensk fast jag innerst inne visste att jag inte var det.

Sommaren 1967 åkte mina föräldrar till Finland för att hälsa på släkt och vänner. Jag följde med. Min kluvenhet till trots valde jag att stanna kvar i Finland efter det att de obligatoriska besöken var avklarade och Finlandsresan borde ha tagit slut.

När mamma och pappa återvände till Sverige tog jag istället bussen från Helsingfors till Åbo för att där träffa mina ungdomskamrater - Jorma och Matti Merstrand. Vi hade bestämt oss för att delta i ett finskt ungdomsläger i den finländska skärgården mellan Åbo och Salo. Varför vi gjorde detta minns jag inte. Vi kände inte en enda person där och hade heller inga kontakter med den kyrka som anordnade lägret. Men vad än anledningen kan ha varit så spenderade vi en vecka där tillsammans med en stor skara finska ungdomar.

Vi - Ulla och jag - lärde känna varandra under dessa soliga sommardagar.

Matti var 16 år ung, Ulla 15.

Adresser utväxlades, löften gavs och vi skildes åt.	Lägerveckan tog slut och Matti åkte tillbaka till Sverige och Borås och Ulla stannade i Finland och åkte hem till Salo. Där hade det hela kunnat ta slut.

<i>Här är det Matti som skriver sin "sanning" och om Ulla skrev om samma episod i livet kanske "sanningen" skulle se annorlunda ut.</i>

I dagens samhälle där det finns så oerhört många möjligheter och sätt att hålla kontakt oavsett hur nära eller långt bort från varandra man bor, förutom det klassiska brevskrivandet (som numera betraktas som ålderdomligt, förlegat och stendött) har de flesta av oss i alla fall en telefon eller en dator eller både och. Alla dessa apparater som på olika sätt fyller samma funktion och hjälper oss att kommunicera med varandra. Men vi levde då i en tid där det fortfarande skrevs brev och i den händelse att man hade det gott ställt kunde man även ringa ett utlandssamtal när och om ekonomin så tillät.

I vårt fall fick det bli brev.

Vi avsåg att hålla liv i relationen på detta sätt och brevväxlade ett tag om allt och inget men det långa avståndet gjorde att breven skickades och kom alltmer sällan för att slutligen helt upphöra. Det kändes så osannolikt att detta skulle hålla då vi inte ens visste om vi någonsin mer skulle ses. Jag hade mitt liv i Sverige och Ulla hade sitt i Finland.

Det är svårt att gå vidare då man får sitt hjärta krossat för första gången även om vi innerst inne visste att det som krossade våra hjärtan inte var att känslorna tog slut utan det var det långa avståndet mellan oss som gjorde att det verkade som omöjligt i en fortsättning och våra hjärtan krossades på grund av detta.

Åren gick men minnet levde kvar av flickan i den orangea klänningen.

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS12"
	 data-caption  = "Mitt 1:a foto av Ulla, sommaren 1967"
	 href          = "images/SS-We/Ulla--6.jpg">
	<img src       = "images/SS-We/Ulla--6.jpg";
			 style     = "height: 200px; width: auto";>
</a>


Hon sysselsatte ofta mina tankar, helt oavsett att det under dessa 4 år hände såväl det ena som det andra. Mina känslor fanns fortfarande där. Men hur var det med Ulla kände hon kanske likadant? Jag visste inte men jag ville få veta.

Jag hade även fått några bilder av henne då vi brevväxlade och dem hade jag sparat i min byrålåda. Tog fram dem lite då och då och mindes tillbaka till de få dagar vi hade varit tillsammans.

Sensommaren 1970 fattade jag mod till mig och skrev henne ett brev. Hade inga som helst förhoppningar om svar. Brevet var, som alltid, taffligt och banalt. Visste inte ens om hon bodde kvar på adressen jag sparat. Kanske hade hon flyttat. Visste inte ens vem som skulle läsa brevet - om ens någon.

Det gick en tid - kommer inte ihåg om det rörde sig om dagar eller veckor - men plötsligt damp det ner ett svar och vår brevväxling tog fart igen.

Vi skrev brev, vi skickade varandra några fotografier, vi talades vid per telefon och relationen fördjupades.

Vid den här tiden pluggade jag i Göteborg dit jag varje morgon åkte tåg. På tåget hade jag tid att skriva brev. Ulla skickade sina svarsbrev till skolan i Göteborg där jag hämtade dem från kansliet.

Jag var då 19 år spelade på helgerna runtom i västra Sverige, pluggade i Göteborg under veckorna, delade ut tidningar på nätterna för att få en inkomst, om än liten. Satt på tåget till Göteborg varje dag och skrev brev till Ulla. Ringde till henne från ett litet bås hos dåvarande Televerket i Göteborg när jag hade råd.

För att kunna ringa fick jag gå till Televerkets kontor och via telefonist, beställa ett utlandssamtal till Finland. I samband med beställningen skulle jag ange hur många perioder samtalet skulle vara (en period var 3 minuter). Betalade samtalet. Efter betalning gjorts och kvittot var utskrivet visades jag till ett ledigt bås och telefonsamtalet kopplades upp. Telefonisten bröt in då det återstod 30 sekunder och meddelade att samtalet snart kommer att brytas då den beställda tiden löper ut.

Ofta hände det att jag fick vänta i telefonen då den som svarade skulle leta upp Ulla och min tid hann rinna ut innan hon ens kom fram till telefonen. Hade en vag känsla av att Ullas arbetsgivare ibland medvetet lät bli att hämta henne, han lät bara tiden rinna ut då han ansåg mig vara ett irriterande störningsmoment.

Det var dyrt att ringa - ett 3-minuters samtal till Finland kostade 5-7 kronor vilket var hyfsat mycket pengar vid den tiden då t.ex. en halv special och en Stockholmare (<i>en korv i bröd med en klick potatismos på toppen samt en Pucko</i>) kostade något mindre än ett 1-periods samtal till Finland. En sk 'luffare' (<i>ett korvbröd med en klick potatismos</i>) var klart billigare, den kostade knappt något.

Så här höll vi på - brev och telefonsamtal - och tiden gick - men vi sågs inte. Inte förrän vintern 1971.

Jag var i Finland på en spelning i Helsingfors. En kväll efter en spelning tog jag bussen från Helsingfors till Åbo och taxi från busstationen i Åbo till hennes lägenhet i stadens utkanter. Väl framme, kring midnatt, gjorde jag en något märklig entré. Normala människor ringer på ringklockan eller knackar på ytterdörren för att påkalla uppmärksamhet - men inte jag. Då jag visste att Ulla bodde på 2:a våningen så tog jag istället brandstegen upp till hennes lägenhet och knackade försiktigt på fönstret då jag såg att hon hade somnat. Ulla öppnade fönstret och jag kravlade in. Vi småpratade några timmar och skildes sedan åt på morgonen då jag tog bussen tillbaka till Helsingfors för dagens spelning.

Brevväxlingen fortsatte sedan och sommaren 1971 förlovade vi oss - Ulla fortfarande i Finland och Matti i Sverige.

Det finns ett TV-program - "Gift vid första ögonkastet" där deltagarna inte vet vem som matchats med vem. Paren möts för första gången vid vigseln och TV följer sedan de nygifta under deras första tid som äkta makar.

Riktigt så var det inte i vårt fall, fast snudd på. Innan vi förlovade oss - <b>Midsommarafton 1971</b> - så hade vi faktiskt setts - inte många gånger och inte under långa perioder men vi hade ändå träffat varandra.

Ulla flyttade till Sverige i Januari 1972 och bodde hos Liisa och Markku på Kransvägen i Trandared, Borås. Där hade hon ett litet rum fram till sommaren 1972 då vi gifte oss och flyttade till vår första gemensamma lägenhet på Bergsätergatan 40 i Borås - en liten 2:a (samma lilla tvåa i vilken jag hade bott sedan 1961).

Under åren har vi bott på ganska många ställen;

- <b>Bergsätergatan 40, Borås 1972-1975</b>
<span style="font-size: 12px; font-style: italic">var vårt 1:a gemensamma hem. Fastigheten var ett litet hyreshus som ägdes av Mattis föräldrar. De bestämde sig dock för att sälja fastigheten och ett av villkoren var att lägenheten vi bodde i skulle vara tom så att den kunde disponeras av den nya ägaren. Detta gjorde att vi blev tvungna att flytta. Vår nya bostad blev en 3:a på</span>
- <b>Svenljungagatan 27, Borås 1975-1979</b>
<span style="font-size: 12px; font-style: italic">där vi bodde några år. Vi började att drömma om att ha något eget och när möjligheten dök upp 1979 köpte vi ett hus tillsammans med Mattis föräldrar på</span>
- <b>Nya Kyrkvägen 2, Fristad 1979-1988</b>
<span style="font-size: 12px; font-style: italic">Huset var strt och byggd vid den tid då oljepriserna var extremt låga så uppvärmning var inget som byggherren direkt brydde sig om och huset var då sparsamt isolerat och därför rejält kallt vinterid. Men trots detta trivdes vi bra med huset, Matti jobbpendlade - först till Stockholm (veckopendling), sedan till Göteborg och slutligen till Ulricehamn. Då Matti sedan slutade på Järnia i Ulricehamn och tog en anställning hos Unisys i Stockholm ansåg vi att det åter blev dags att dra vidare - denna gången mot Stockholmsregionen då återgång till veckopendling inte kändes lockande på något sätt. I Upplands Väsby hyrde vi ett hus av en familj som flyttade till Australien på obestämd tid. Vi hyrde huset (och avsade oss besittningsrätten) på</span>
- <b>Svärmarevägen 3, Upplands Väsby 1988-1991</b>
<span style="font-size: 12px; font-style: italic">där vi bodde i 3 år. Kontraktet förlängdes med ytterligare 3 år men helt plötsligt fick vi ett meddelande från husägaren om att de ville ha tillbaka sitt hus inom 3 månader eftersom företaget de arbetade på i Australien skulle lägga ner sin verksamhet där och deras arbetsvisum löpte därmed ut och familjen tvingades komma tillbaka till Sverige med kort varsel. Vart tar man vägen med så kort varsel? Vi återvänder till Borås - av flera skäl 1) vi var mitt inne i en bankkris i Sverige med skyhöga räntor 2) fastighetsmarknaden hade kraschat och huspriserna sjönk som tegelstenar 3) ingen bank ville ge några lån och om de mot förmodan lånade ut pengar så var räntorna helt oacceptabla 4) Mattis pappa hade avlidit och mamman stod ensam, gammal och i behov av stöd. Så vi tog våra tillhörigheter och återvände till Borås och hyrde där en lägenhet på</span>
- <b>Kaptensgatan 15, Borås 1991-1991</b>
<span style="font-size: 12px; font-style: italic">dä vi ganska direkt insåg att detta inte skulle fungera. Lägenheten var opraktisk om än nyrenoverad och fin. Här kommer vi inte att bo länge. Det gjorde vi inte heller. Vi fick nys om en fastighet på Byttorp som var till salu till ett pris vi kunde acceptera. Banken gav oss även ett lån fast räntan var ju sjukt hög men vi resonerade som så att den säkerligen kommer att gå ner inom några få år (vilket den också gjorde)</span>
- <b>Enandersgatan 3, Borås 1991-2003</b>
<span style="font-size: 12px; font-style: italic">blev sedan vårt hem i 8 år. Matti veckopendlade till Stockholm, han veckopendlade till Forsmarks kärnkraftverk, han pendlade till Varberg och sedan började han veckopendla till Lund. En helt ohållbar sits. Ulla stod ensam med barn och hus under veckorna vilket frestade på något enormt. Att hon orkade göra detta under så lång tid är ju snudd på obegripligt men en dag tog ju musten naturligtvis slut. Vi sålde fastigheten och funderade på vad vi skulle göra nu. I avvaktan på ett beslut så hyrde vi därför en lägenhet på</span>
- <b>Lindsgatan 3, Borås 2003-2004</b>
<span style="font-size: 12px; font-style: italic">där vi bodde i ganska exakt 1år tills beslutet togs att Matti slutar sin anställning hos Unisys i Lund och börjar arbeta hos Svensk Exportkredit i Stockholm. Flyttlasset måste då dra mot Stockholms-regionen igen. Det blev Uppsala där vi köpte en bostadsrätt på</span>
- <b>Portalgatan 3, Uppsala 2004-2008</b>
<span style="font-size: 12px; font-style: italic">i vilken vi bodde 4 år. Ulla trivdes bra i lägenheten, Matti trivdes inte lika bra. Drömmen var ändå att få något eget så vi köpte en fastighet tillsamman med Nicke och Dilek på</span>
- <b>Walleriusvägen 3, Uppsala 2008-2019</b>
<span style="font-size: 12px; font-style: italic">som sedan blev vårt hem i 11 år. Matti gick i pension och huset började ta på krafterna såväl fysiskt som psykiskt så vi kände att - Nej nu räcker det med Uppsala. Vi säljer och flyttar. Nicke och Dilek köpte ut oss ur huset och vi köpte en bostadsrätt i Borås där inflyttningsdatumet gled iväg med ett år på grund av sen byggstart och vi tvingades att hyra en tillfällig bostad på</span>
- <b>Göteborgsvägen 5C, Sjömarken 2019-2020</b>
<span style="font-size: 12px; font-style: italic">som var en liten 2:a där vi bodde ett år för att sedan flytta in i den bostadsrätt vi hade köpt på</span>
- <b>Brigadgatan 2, Borås 2020-2022</b>
<span style="font-size: 12px; font-style: italic">Detta blev vårt hem under 2 år då vi insåg att vi inte riktigt behövde allt detta utrymme och skulle kanske egnetligen köpt en något mindre lägenhet. Vi sålde därför lägenheten och växlade ner till en 3: på 87m2 på</span>
- <b>Bjelkegatan 2, Borås 2022-</b>
<span style="font-size: 12px; font-style: italic">Där bor vi nu och har INGA PLANER PÅ ATT FLYTTA (just nu i varje fall)</span>

Vet inte om vi kan betraktas som rotlösa eller om omständigheterna har gjort oss till de nomader vi verkar vara. Varje flytt har ju dock haft sina förklarliga skäl.

Har vi varit lika ombytliga på arbetsfronten ?
Jo - där har det i prinip varit likadant.

Listar här upp alla olika jobb vi haft där många av mina arbetsgivare har varit tillfälliga sommarjobb under tiden jag pluggade, perioder där jag behövde dryga ut en hårt ansatt ekonomi med lite extra inkomster (dessa är markerade i <i>kursiv</i> stil)

Ulla har under åren haft anställningar hos

- Anttila, Finland (Butiksbiträde)
- Ruokamarkkinat, Finland (Kassan)
- Ericson (Förbinderska)
- BeVe Electronics (Montör)
- Borås Kommun (Städare)
- Löwenströmska (Undersköterska)
- Solhem (Undersköterska)
- Agamemnon (Undersköterska)
- Höganäs vård- och omsorgsboende (Undersköterska)
- Glimmervägen (Undersköterska)
- Aleris (Undersköterska)

Matti har inte varit mycket sämre;

- <i>VästgötaDemokraten</i> (Tidningsbud)
- <i>GT</i> (Tidningsförsäljare, helger, dörrknackning)
- <i>Algots</i> (Sommarjobb - Lagerarbetare)
- <i>Allmans Charkuterier</i> (Sommarjobb - Korvstoppare)
- Lundbergs Plast (Laboratoriebiträde)
- <i>Borås Tidning</i> (Tidningsbud och Distribution)
- <i>Lantmäteriet</i> (Pinnpojke vid kartläggning av Hestra-Ekås)
- Monsun Tison (Provare)
- Vattenfall (Operatör vid oljekraftverk i Rydboholm)
- Uponor (Laboratoriebiträde)
- <i>Fredrik Åkare</i> (Flyttgubbe)
- <i>Borås Kommun</i> (Hemspråks- och Matematiklärare (Högstadiet) - Vikariat)
- <i>SIKO Städ</i> (Städning)
- Sammy Promotion AB (Produktion av musikkassetter)
- Statens Vattenfallsverk (Systemerare)
- International Paint Ltd (Programmerare)
- Datema (Konsult - Programmerare)
- Järnia (Systemprogrammerare)
- Unisys (Konsult - Datakommunikation och Systemprogramvara)
- Solutor System AB (Systemspecialist)
- Unisys (Systemarkitekt)
- Svensk Exportkredit AB (Utvecklingschef och IT-arkitekt)

###SS-MATTI-8###

Under åren har vi bott på ganska många ställen;

- <b>Bergsätergatan 40, Borås 1972-1975</b>
<span style="font-size: 12px; font-style: italic">
	var vårt 1:a gemensamma hem. Fastigheten var ett litet hyreshus som tillhörde Mattis föräldrar. De bestämde sig tyvärr för att sälja fastigheten och ett villkor som köparen ställde var att lägenheten vi bodde i skulle vara ledig för köparen. Detta gjorde att vi blev tvungna att flytta. Vår nya bostad blev en 3:a på
</span>

- <b>Svenljungagatan 27, Borås 1975-1979</b>
<span style="font-size: 12px; font-style: italic">
	där vi bodde och trivdes i några år. Började ändå drömma om ett eget hem istället för hyreslägenhet. Möjligheten kom 1979 då vi hade putsat fönster en hel sommar (<i>17 skolor i Borås Kommun</i>) och samlade där och då ihop till en kontantinsats för
</span>

- <b>Nya Kyrkvägen 2, Fristad 1979-1988</b>
<span style="font-size: 12px; font-style: italic">
	som vi köpte (70%) tillsammans med Mattis föräldrar (30%). Huset var stort och byggdes i en tid då oljepriserna var extremt låga så uppvärmning var inget som byggherren direkt brydde sig om. Huset var verkligen sparsamt isolerat och därför rejält kallt vintertid. Men trots detta trivdes vi bra.
	När Matti tog anställning hos Unisys i Stockholm ansåg vi att det är bäst att sälja huset och flytta då veckopendling till Stockholm inte kändes direkt lockande.
</span>

- <b>Svärmarevägen 3, Upplands Väsby 1988-1991</b>
<span style="font-size: 12px; font-style: italic">
	blev vårt nya boställe. Där bodde vi i 3 år. Kontraktet förlängdes med ytterligare 3 år men helt plötsligt fick vi ett meddelande från husägaren om att de ville ha tillbaka sitt hus inom 3 månader eftersom företaget de arbetade på i Australien skulle lägga ner sin verksamhet där och deras arbetsvisum löpte därmed ut och familjen tvingades komma tillbaka till Sverige med kort varsel. Vart tar man vägen med så kort varsel? Vi återvänder till Borås - av flera skäl 1) vi var mitt inne i en bankkris i Sverige med skyhöga räntor 2) fastighetsmarknaden hade kraschat och huspriserna sjönk som tegelstenar 3) ingen bank ville ge några lån och om de mot förmodan lånade ut pengar så var räntorna helt oacceptabla 4) Mattis pappa hade avlidit och mamman stod ensam, gammal och i behov av stöd. Så vi tog våra tillhörigheter och återvände till Borås och hyrde där en lägenhet på
</span>

- <b>Kaptensgatan 15, Borås 1991-1991</b>
<span style="font-size: 12px; font-style: italic">
	där vi ganska direkt insåg att detta inte skulle fungera. Lägenheten var opraktisk om än nyrenoverad och fin. Här kommer vi inte att bo länge. Det gjorde vi inte heller. Vi fick tips om en fastighet på Byttorp som var till salu till ett pris vi kunde acceptera. Banken gav oss även ett lån fast räntan var sjukt hög men vi resonerade som så att den säkerligen kommer att gå ner inom några få år (vilket den också gjorde)
</span>

- <b>Enandersgatan 3, Borås 1991-2003</b>
<span style="font-size: 12px; font-style: italic">
	blev sedan vårt hem i 8 år. Matti veckopendlade till Stockholm, han veckopendlade till Forsmarks kärnkraftverk, han pendlade till Varberg och sedan började han veckopendla till Lund. En helt ohållbar sits. Ulla stod ensam med barn och hus under veckorna vilket frestade på. Att hon orkade göra detta under så lång tid är ju snudd på obegripligt men en dag tog ju musten naturligtvis slut. Vi sålde fastigheten och funderade på vad vi skulle göra nu. I avvaktan på ett beslut så hyrde vi därför en lägenhet på
</span>

- <b>Lindsgatan 3, Borås 2003-2004</b>
<span style="font-size: 12px; font-style: italic">
	där vi bodde i ganska exakt 1 år tills beslutet togs att Matti slutar sin anställning hos Unisys i Lund och börjar arbeta hos Svensk Exportkredit i Stockholm. Flyttlasset måste då dra mot Stockholms-regionen igen. Det blev Uppsala där vi köpte en bostadsrätt på
</span>

- <b>Portalgatan 3, Uppsala 2004-2008</b>
<span style="font-size: 12px; font-style: italic">
	i vilken vi bodde 4 år. Ulla trivdes bra i lägenheten, Matti trivdes inte lika bra. Drömmen var ändå att få något eget så vi köpte en fastighet tillsamman med Nicke och Dilek på
</span>

- <b>Walleriusvägen 3, Uppsala 2008-2019</b>
<span style="font-size: 12px; font-style: italic">
	som sedan blev vårt hem i 11 år. Matti gick i pension och huset började ta på krafterna såväl fysiskt som psykiskt så vi kände att - Nej nu räcker det med Uppsala. Vi säljer och flyttar. Nicke och Dilek köpte ut oss ur huset och vi köpte en bostadsrätt i Borås där inflyttningsdatumet gled iväg med ett år på grund av sen byggstart och vi tvingades att hyra en tillfällig bostad på
</span>

- <b>Göteborgsvägen 5C, Sjömarken 2019-2020</b>
<span style="font-size: 12px; font-style: italic">
	som var en liten 2:a där vi bodde ett år för att sedan flytta in i den bostadsrätt vi hade köpt på
</span>

- <b>Brigadgatan 2, Borås 2020-2022</b>
<span style="font-size: 12px; font-style: italic">
	Detta blev vårt hem under 2 år då vi insåg att vi inte riktigt behövde allt detta utrymme och skulle kanske egentligen köpt en något mindre lägenhet. Vi sålde därför lägenheten och växlade ner till en 3:a på 87m2 på
</span>

- <b>Bjelkegatan 2, Borås 2022-</b>
<span style="font-size: 12px; font-style: italic">
	Där bor vi nu och har INGA PLANER PÅ ATT FLYTTA (just nu i varje fall)
</span>

Vet inte om vi kan betraktas som rotlösa eller om omständigheterna har gjort oss till de nomader vi verkar vara. Varje flytt har ju dock haft sina förklarliga skäl.

Har vi varit lika ombytliga på arbetsfronten ?
Jo - där har det i prinip varit likadant.

Listar här upp alla olika jobb vi haft där många av mina arbetsgivare har varit tillfälliga sommarjobb under tiden jag pluggade, perioder där jag behövde dryga ut en hårt ansatt ekonomi med lite extra inkomster (dessa är markerade i <i>kursiv</i> stil)

Ulla har under åren haft anställningar hos

- Anttila, Finland (Butiksbiträde)
- Ruokamarkkinat, Finland (Kassan)
- Ericson (Förbinderska)
- BeVe Electronics (Montör)
- Borås Kommun (Städare)
- Löwenströmska (Undersköterska)
- Solhem (Undersköterska)
- Agamemnon (Undersköterska)
- Höganäs vård- och omsorgsboende (Undersköterska)
- Glimmervägen (Undersköterska)
- Aleris (Undersköterska)

Matti har inte varit mycket sämre;

- <i>VästgötaDemokraten</i> (Tidningsbud)
- <i>GT</i> (Tidningsförsäljare, helger, dörrknackning)
- <i>Algots</i> (Sommarjobb - Lagerarbetare)
- <i>Allmans Charkuterier</i> (Sommarjobb - Korvstoppare)
- Lundbergs Plast (Laboratoriebiträde)
- <i>Borås Tidning</i> (Tidningsbud och Distribution)
- <i>Lantmäteriet</i> (Pinnpojke vid kartläggning av Hestra-Ekås)
- Monsun Tison (Provare)
- Vattenfall (Operatör vid oljekraftverk i Rydboholm)
- Uponor (Laboratoriebiträde)
- <i>Fredrik Åkare</i> (Flyttgubbe)
- <i>Borås Kommun</i> (Hemspråks- och Matematiklärare (Högstadiet) - Vikariat)
- <i>SIKO Städ</i> (Städning)
- Sammy Promotion AB (Produktion av musikkassetter)
- Statens Vattenfallsverk (Systemerare)
- International Paint Ltd (Programmerare)
- Datema (Konsult - Programmerare)
- Järnia (Systemprogrammerare)
- Unisys (Konsult - Datakommunikation och Systemprogramvara)
- Solutor System AB (Systemspecialist)
- Unisys (Systemarkitekt)
- Svensk Exportkredit AB (Utvecklingschef och IT-arkitekt)

###SS-MATTI-9###
<b>Varför väljer man ett instrument som elbas?</b>

Är det för att man
- tror att det är enklare instrument att lära sig?
- som basist kan styra gruppens dynamik och får vara 'kung' över hur harmonin fungerar via grundtonerna?
- tycker att det är barnsligt roligt att spela på ett instrument som får glasrutorna att skallra?

Anledningarna må vara många men i mitt fall var det <b>Paul McCartney</b> och <b>Beatles</b> som bidrog till att jag fastnade för just elbas. Sommaren 1965 - den sommaren då jag tillsamman med <b>Aulis Korpela</b> liftade hem till Borås från Tyskland hade jag köpt min första grammofonskiva vilken innehöll följande låt som du kan lyssna till i YouTube-klippet nedan.

<i>
För er som varken känner till Beatles eller Paul McCartney så kan det väl nämnas att Paul klassas fortfarande som en av världens i särklass bästa basister (rankas fortfarande som nummer 2 efter Jaco Pastorius).

Paul McCartney made a trademark out of the supple, lyrical bassline more than any rock player before or since, and that’s on “Paperback Writer” alone. As one of the best bass players in history, he played both lead and rhythm, and did it all ridiculously well – a trademark of everything The Beatles did.
</i>

<!-- Insert an YouTube-clip
   NOTE: Don't forget to add the required code to stop the YouTube-clip when you close the modal window
-->
<span class="embed-responsive embed-responsive-16by9">
	<iframe id="AllMyLoving";
        src="https://www.youtube.com/embed/uXdGOYo_fsE";
        width="420px"; height="100%"; allowfullscreen="">
	</iframe>
</span>

<!-- Insert a button to play an .mp3-file -->
<!--
<audio id="MP3-1"; src="images/Det%20%C3%84r%20Mig%20Du%20Tar%20I%20B%C3%A5ten.mp3"; preload="auto"></audio>
<button class="btn btn-primary"; onclick="document.getElementById('MP3-1').play();">
<i class="fa-solid fa-music"></i> Det är mig du tar i båten <i class="fa-solid fa-music"></i>
</button>
-->

De besökte Borås <b>1963-10-28</b> men tyvärr fick jag inte gå på denna deras enda konsert i Borås.

Mina föräldrar köpte mig mitt första set - en <b>Höfner Ignition</b> Violin-bas (precis likadan som den som Paul McCartney spelade på då (och fortfarande idag spelar på) samt en <b>Hagström Bass 210</b> låda. Basen var helt OK. Förstärkaren var inget vidare. Men den dög för mig just då - jag kunde ju inte spela så det var ju helt egalt vilken förstärkare jag hade. Hade ju heller ingen att spela med så det kunde ju faktiskt kvitta.

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS13"
	 data-caption  = "Höfner Ignition Violin-bas"
	 href          = "images/PhotoGallery/1960-1969/40.png">
	<img src       = "images/PhotoGallery/1960-1969/40.png";
			 style     = "height: 200px; width: auto";>
</a>

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS13"
	 data-caption  = "Hagström Bass 210"
	 href          = "images/PhotoGallery/1960-1969/41.png">
	<img src       = "images/PhotoGallery/1960-1969/41.png";
			 style     = "height: 200px; width: auto";>
</a>


Satt hemma på kvällarna och försökte lära mig, stryktåligt och idogt. Tyckte väl att jag spelade hellre än bra men då prestigefaktorn var sällsynt låg så kändes det ändå ganska OK.

Snart började jag att ta privatlektioner och gick varje vecka till <b>Wahlströms Musik</b> (en musikaffär i Borås). Där satt jag och musikaffärens ägare och spelade efter det att butiken hade stängt. Noter fick jag plocka till mig i affären och låtvalet var mitt eget vilket innebar att allt av Beatles och Rolling Stones övades flitigt.

Kommer inte ihåg exakt hur länge jag tog privatlektioner men har för mig att det var ett par år. På slutet tyckte såväl läraren som jag att det kändes trist att traggla med notblad vilket inte riktigt gav mig det jag önskade så vi övergick till att spela efter gehör med egna basgångar vilket var mycket roligare även om det måste ha låtit helt förskräckligt. Inte ens då ansåg jag mig vara en duktig basist vilket jag heller aldrig blev men på något underligt sätt så tyckte jag ändå att det var roligt att ibland tycka att man gjorde något som inte var urdåligt.

Naturligtvis kändes det ganska surt att inte ha någon grupp att spela med utan bara sitta hemma och tumma på basen men jag gav inte upp utan tänkte att tids nog så kanske något dyker upp så även jag får vara med.

Även om jag inte hade någon att spela med så tyckte jag att min 1:a förstärkare inte riktigt dög. Bytte därför ut den väldigt tidigt mot något liiite bättre - en <b>Dynacord Bass King</b> med tillhörande låda. Förstärkaren var på hela 45W. Smutsfläckarna i högtalarfronten fick jag på köpet. Sanningen att säga så blev ju spelandet inte ett dugg roligare bara för att man hade en något bättre utrustning, satt ju fortfarande för mig själv och tummade på basen, men lärde mig ändå mina arpeggios.

###SS-MATTI-10###
Det fanns naturligtvis avsevärt många bättre basister än jag.

Så är det med allting här i livet. Helt oavsett hur begåvad du är och hur duktig du anser dig vara så finns det alltid någon som är ännu bättre.

Därför gjorde jag bara mitt bästa och var nöjd med det.
För varje månad som gick så blev 'mitt bästa' alltid ännu lite bättre, ända till den dag då jag drog ur pluggen för gott.

Musik och i synnerhet sakral musik framfördes vid 60-talets slut nästan enbart till ackompanjemang av akustiska gitarrer, fioler, dragspel, piano, tramporgel och en och annan mandolin - inga andra instrument skulle/kunde inkräkta. Det var så det skulle vara.

1968 började jag spela med en grupp som gick under namnet 'Familjen Aalto'. Precis som namnet säger så var de just en familj där barnen tillsammans med sina föräldrar åkte runt i södra Sverige och framförde egna sånger till ett ganska udda komp - gitarr, dragspel och tamburin.

I och med att jag blev medlem i gruppen så ändrade de namn till <b>The Aaltos</b> - föräldrarna steg åt sidan och instrumenten byttes ut. Dragspelet och tamburinen åkte ut och in plockades elgitarr, elbas, trummor och elorgel/elpiano. Klädstilen gick från att vara det som råkade finnas hemma och som var helt och rent till att bli mera 'dansbandsaktigt' där pojkarna hade likadana kavajer och byxor och flickorna likadana byxor + tunikor eller klänningar.

Min gamla utrustning byttes ut mot en <b>Fender Precision Bass</b>, en <b>Hagström BT-100</b> förstärkare och en <b>Lansing</b> låda.

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS14"
	 data-caption  = "Fender Precision Bass"
	 href          = "images/PhotoGallery/1960-1969/54.png">
	<img src       = "images/PhotoGallery/1960-1969/54.png";
			 style     = "height: auto; width: 400px";>
</a>

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS14"
	 data-caption  = "Hagström BT-100"
	 href          = "images/PhotoGallery/1960-1969/56.jpeg">
	<img src       = "images/PhotoGallery/1960-1969/56.jpeg";
			 style     = "height: 200px; width: auto";>
</a>

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS14"
	 data-caption  = "Hagström Lansing 15"
	 href          = "images/PhotoGallery/1960-1969/59.png">
	<img src       = "images/PhotoGallery/1960-1969/59.png";
			 style     = "height: 200px; width: auto";>
</a>


Kritiska röster hördes nästan överallt - vi var långhåriga(?), vi klädde oss vulgärt(?), vi spelade på alldeles för hög volym(?), vi hade melodier som var snarlika den profana musiken(?). Ja det mesta var fel enligt många. Men många många fler tyckte om att vi var lite avvikande och inte så 'mainstream' men mest av allt tyckte de om musiken vi framförde. Får än idag då och då höra att den musik vi spelade under slutet av 60-talet och början av 70-talet var den musik de tyckte om. Känns ändå gott att sent omsider få en, om än liten, bekräftelse på att vi inte var så genomusla ändå.

Det fanns i Sverige några grupper förutom The Aaltos som hade samma instrumentering men de kunde lätt räknas.

Vi spelade i olika kyrkor (de som vågade engagera oss) och ungdomsgårdar, vi reste runt i Sverige, Norge, Finland och England på spelningar anordnade av alla möjliga och omöjliga arrangörer. Musiken vi spelade var i det närmaste helt egen produktion. Vi var kanske inte de bästa instrumentalisterna, hade kanske inte heller de bästa sångrösterna, men ungdomarna vi spelade för tyckte om oss.

Vill inte på något sätt ta åt mig någon ära för gruppens framgångar - jag var bara en bakgrundsfigur - lätt utbytbar. Jag gjorde det jag var satt att göra. Om jag gjorde det bra måste andra uttala sig om.

Under de år jag spelade var jag ute på 100-tals spelningar. Samtidigt försökte jag få någon ordning på min skolgång och arbeta ihop en viss inkomst (för spelningarna fick jag aldrig några pengar med undantag för någon enstaka gång då jag fick bensinen betald när jag åkte med egen bil till spelningar i Norge).

Min aktiva tid i The Aaltos blev inte speciellt lång - cirka 3 år.

Behöll ändå elbasen, förstärkaren och baslådan i många år men drabbades av 'partiell hjärnblödning' en dag och gav(!) bort min Fender, som redan då stod högt i kurs på samlarmarknaden, till en musiker i Estland. Förväntade mig självklart inget stort tack för den gåvan men fick efteråt höra att mottagaren var lite sur över att själva gitarrväskan hade lite repor och var något sliten.

Otack är världens lön!

Lite kuriosa - idag värderas en <b>Fender Precision Bass 1968, Sunburst</b> (som var den exakta beteckningen för min forna bas) till ≈12.500 USD - en nätt summa pengar.

Köpte senare ändå en ny elbas Peavey Cirrus 4 och en liten Gallien-Krüger förstärkare till mig själv som jag tänkte tumma på lite då och då. Det har på senare år inte blivit någonting alls, den hänger bara där på väggen och tiger och samlar damm.

###SS-MATTI-11###
Den enskilt största händelsen i våra liv var året då vi slog ihop våra påsar.

Visst, påsarna var praktiskt taget tomma. Vi var unga, vi hade inte så mycket livserfarenhet, vi hade inga pengar och vi ägde inte mycket mer än kläderna på kroppen. Sammantaget så saknade vi alltså det mesta. Men vi hade en bil - en mörkblå <b>Volvo Amazon</b> av 1965 års modell och vi hade viljan att leva resten av våra liv tillsammans.

Jag åkte till Finland i <b>Januari 1972</b> för att hämta Ulla.

Att våga steget att säga upp sin anställning, ta sina ägodelar, flytta till ett nytt land, lämna sina vänner och sin familj, inte kunna språket, inte känna en enda människa förutom Matti (<i>och honom nästan enbart via brev</i>) och inte veta när, hur och om hon skulle få ett arbete - <b>DET kräver beslutsamhet och mod!</b>

Ulla flyttade in som inneboende hos min syster Liisa och hennes man Markku på <b>Kransvägen 194</b> i Borås.

Redan då var Ulla en arbetsmyra. Inga latmansdagar här inte. Ut och leta efter ett arbete oavsett om man kunde språket eller inte. Några dagar efter ankomsten till Borås knackade hon på hos LM Ericsson, fick göra några tester för att företaget skulle kunna bilda sig en uppfattning om hennes lämplighet för de arbeten som fanns, godkändes och erbjöds ett arbete med första arbetsdag påföljande vecka.

Sommaren 1972 gifte vi oss och hoppades och trodde att det mesta kommer att lösa sig.

Mattis föräldrar ägde en liten hyresfastighet i Borås (<i>Bergsätergatan 40</i>). I detta hus skapade vi vårt första gemensamma hem. Lägenheten - en liten 2:a på ≈45-48 kvm med en månadshyra på ≈500 kronor var alldeles utmärkt för oss. Den låg - nära Ullas arbetsplats, nära Borås centrala delar och vi hade en affär hyfsat nära. Där trivdes vi alldeles ypperligt.

Innan vi flyttade in så köpte Mattis föräldrar några tapetrullar till hallen och lite färg. Själva köpte vi tapeterna till köket. Arbetet fick vi dock göra själva. Vi var inte några vidare hantverkare men vi fick det gjort utan att behöva skämmas även om några hörn lossnade i tapetvåderna då de skulle sättas upp på väggen. De avsaknade hörnen doldes snyggt(?) med lite blå tejp.

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS15"
	 data-caption  = "Vårt kök och Ulla (1972) - Bergsätergatan 40. Föutom Ulla - notera den fina tapeten i köket"
	 href          = "images/PhotoGallery/St%25C3%25A4llen%2520vi%2520bott%2520p%25C3%25A5/_1972%20-%201975%20-%20Bergs%C3%A4tergatan%2040/St%25C3%25A4llen%2520vi%2520bott%2520p%25C3%25A5/_1972%20-%201975%20-%20Bergs%C3%A4tergatan%2040/S_2010-01-01_00-19-26.jpg">
	<img src       = "images/PhotoGallery/1970-1979/25.jpg";
			 style     = "height: 200px; width: auto";>
</a>

<a class         = "gallery-item gallery-item-sm";
	 data-fancybox = "images-SS15"
	 data-caption  = "Ulla, vår tvättkorg och vårt lilla badrum med väggar i målad masonit - Bergasätergatan 40"
	 href          = "images/PhotoGallery/Minneskort/">
	<img src       = "images/SS-We/Ulla-Badrummet%20Bergs%C3%A4tergatan%2040%20-%201972-14.jpg";
			 style     = "height: 200px; width: auto";>
</a>


För att kunna möblera vår lägenhet så ansökte vi i god tid (18:e Maj 1972) om ett lån på <b>5.000</b> från <b>Statens Bosättningslånefond</b>.

Lånet hade en löptid på 5 år med en ränta på <b>6,75%</b>.

Med dessa pengar möblerade vi vårt första hem - soffa (2+3), bokhylla, soffbord, sängar och köksbord med 4 stolar.

###SS-MARIE-1###
<font size="+1"><b>1973-08-18 </b></font><font size="+3">🎉</font>

###SS-NICHOLAS-1###
<font size="+1"><b> </b></font><font size="+3">🎉</font>

###SS-JOHANNA-1###
Älskade Johanna
Dotter och Syster
Vi stod där med gråt och med saknads
Spill inga tårar, [i]vill vi tro att du sa[/i], när jag dör
Det är inget att gråta för
I minnet lever jag ju  kvar
Ingen kan dö som levat har
Tänk er, som om jag  reste bort nån dag
Vi ses igen, inte nu,
men om ett tag.

Johanna, om dig kan vi inte skriva mycket. Du var här i endast 3 dagar.

Vi skulle kanske kunna skriva om glädjen vi kände i väntan på dig och dagen då du föddes.
Men vi väljer att skriva om hur den glädje vi kände snabbt togs bort och in kom istället en stor sorg, en sorg som tog över våra liv.

Den sorg vi då kände och som vi ännu lever med har för oss haft ett känslomässigt pris.

Naturligtvis mattas sorgen efter alla dessa år men saknaden finns och kommer alltid att finnas kvar.

Du kom till vår värld och liksom vände vid dörren och gick hem. Vi fick se en kort, liten skymt av dig och har sen dess bara kunnat drömma om hur livet hade kunnat bli om du hade fått vara kvar.

När du gick bort dog samtidigt en del av vår lilla familjs framtid.

<img src="images/SS-Children/Johanna-7.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">

<span style="font-style:italic">
	Ett farväl och en önskan om återseende - Fristad kyrka 1982-02-08
</span>

<img src="images/SS-Children/Johanna-8.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-09.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-10.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-11.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-12.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-13.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-14.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-15.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-16.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johannas grav
</span>

<img src="images/SS-Children/Johanna-17.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Blommor till minne av Johanna - Bilden tagen i vårt hem på Nya Kyrkvägen 2 i Fristad efter begravningen
</span>

<img src="images/SS-Children/Johanna-18.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johannas lilla handledsband #216 och en liten lapp med hennes längd och vikt. Det enda som vi fick från med oss från Lasarettet i Borås
</span>

<img src="images/SS-Children/Johanna-21.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Förteckning över blomstergården - I
</span>

<img src="images/SS-Children/Johanna-22.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Förteckning över blomstergården - II
</span>

<img src="images/SS-Children/Johanna-23.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Förteckning över blomstergården - III
</span>

Söndagen den 7:e Februari var tänkt att bli en glädjens dag vilket det också blev. Men glädjen varade en kort ynklig stund.

Johanna, du föddes och allt verkade till en början bra men ganska omedelbart förbyttes den stora glädjen över en lyckad förlossning till mörk tung sorg.

<img src="images/SS-Children/Johanna-2.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

Det upptäcktes att allt inte stod rätt till. Din hud var blåtonad vilket tydde på dålig blodcirkulation. Personalen tog snabbt hand om dig och du kördes med ambulans till Östra Sjukhuset i Göteborg för kontroll.

<img src="images/SS-Children/Johanna-19.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Läkarens 1:a enkla skiss där han försökte förklara för oss vad som var problemet med Johannas hjärta
</span>

<img src="images/SS-Children/Johanna-20.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Läkarens 2:a enkla skiss där han försökte förklara för oss vad som var problemet med Johannas hjärta
</span>

Där konstaterades att du hade något som kallas för <b>pulmonalisatresi med kammarseptumdefekt</b>.

Vid pulmonalisatresi kan blod inte passera från höger kammare till lungpulsådern eftersom blodkärlet är blockerat. Det är hål i skiljeväggen mellan kamrarna. Blodet som ska syresättas kommer till lungorna från kroppspulsådern via den förbindelse som kallas <b>duktus arteriosus</b>.

Duktus arteriosus är en förbindelse som under fostertiden leder en stor del av blodet från lungpulsådern direkt till kroppspulsådern, eftersom barnet inte andas och lungorna inte behöver så stort blodflöde.

Duktus stänger sig i vanliga fall under den första veckan efter födseln. Du fick då allt lägre syrehalt i blodet vilket medförde att hud, läppar och slemhinnor blir blåtonade, så kallad <b>cyanos</b>. Syrehalten sjunker ytterligare när duktus arteriosus börjar stänga sig.

Vi kallades till Östra Sjukhuset och fick förklarat av läkaren att det inte gick att operera och att du skulle leva maximalt 3-4 dagar.

<i>Det gick sorgligt nog inte att rätta till hjärtfelet med dåtidens teknik. Idag kan man göra de nödvändiga operationerna även på nyfödda barn.</i>

<img src="images/SS-Children/Johanna-3.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-4.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-5.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

<img src="images/SS-Children/Johanna-6.jpg" alt="Picture cannot be found!" class="card-img card-img-sm">
<span style="font-style:italic">
	Johanna i respirator - Östra Sjukhuset i Göteborg 1982-02-08
</span>

Vi fick besöka dig där du låg i en respirator. Vi fick också hålla din lilla hand en kort stund. Vi båda visste att detta var kanske sista gången vi såg dig, vår lilla dotter. Du blev bara 3 dagar gammal.

Onsdagen den <b>10:e Februari</b> slockande ditt ljus.

Den sorg vi kände där och då är svår att förklara. Det är oerhört svårt att föreställa sig en större sorg än att förlora ett barn.

Johanna - sorgen efter dig har inte gått över men vi har lärt oss att leva med den.

Har många, många gånger efteråt funderat över hur Marie och Nicke hanterade sorgen?
- Hur var deras sorgereaktion?
- Reagerade de irrationellt: skrattade, blev arga, sparkade och slogs?
- Blev de som små krävande bebisar?
- Orkade och kunde Ulla och jag själv tålmodigt förklara för dem så att de förstod vad som hade hänt eller var vi så upptagna med vår egen sorg att vi helt missade detta?
- Mötte vi deras kanske 'opassande' beteende med ilska och tillrättavisningar?
- Kände de sig oförstådda?
- Kände de som att vi anklagade dem för för att inte veta hur man skall bete sig när någon dött?
- Tog vi deras sorg på allvar, även om de kanske inte visade det på det sätt som vuxna gör?
- Hjälpte vi dem att bearbeta denna skrämmande och svårbegripliga upplevelse?

Hela deras framtid hade ju förändrats och tryggheten slagits i kras även för dem.

Marie och Nicke var ju ändå så pass gamla så de förstod naturligtvis att döden är definitiv och kunde naturligtvis känna såväl fruktan som rädsla. <i>Mamma och pappa - ni kommer väl inte att dö</i> - kunde ha varit en fullt normal fråga från en 6-åring. Marie som var lite äldre kanske också gick och funderade på att döden även kan drabba andra och då ha känt mer eller mindre stark ångest.

Tänk vad många frågor och inte ett enda svar.

Jag tror att vi misslyckades kapitalt vilket vi naturligtvis ångrar djupt.

Tiden efter Johannas död blev bisarr - folk vi stötte på undvek oss och gick över till andra sidan gatan och skyltfönstren blev plötsligt oerhört intressanta eller så kom man plötsligt på att man egentligen var på väg åt ett helt annat håll och vände på klacken. Allt för att undgå kontakt. Om någon ändå hamnade öga mot öga och 'tvingades' till en stunds prat så blev samtalen väldigt tillgjorda och konstiga - "Allt kommer att bli bra", "Det kommer en dag då ni förstår meningen med detta", "Ni har ju ändå 2 friska barn, var tacksamma för dem" osv. osv. Alla dessa välmenande ord var en klen tröst för oss även om vi förstod att alla bara ville väl, men vår tillvaro var ändå just då slagen i spillror och alla dessa ord gjorde bara ont värre.

Tiden gick dock, sorgen mattades men saknaden bestod. Sakta började livet återgå till det normala.

Vi beöker din grav i Fristad regelbundet och kommer att göra det så länge benen bär.

För oss betyder det mycket.

###SS-SAMUEL-1###
<font size="+1"><b> </b></font><font size="+3">🎉</font>

###SS-25###

###PG-1###
Men det som hänt oss kan även hända er - sakerna har tidigare tillhört någon annan - i vårt fall våra föräldrar. Om vi hade haft tur så kanhända att vi hade kunnat läsa en text, lätt skrivet med blyertspenna på baksidan av varje fotografi. Något i stil med;
<i>"Damen i den märkliga hatten är min faster"</i>
Vi läser detta, men har aldrig hört talas om henne.
Texten hade även kunnat vara
<i>"En hälsning från Helsingfors och din bästa kusin”</i>
men vi har aldrig hört talas om någon kusin från Helsingfors.

Tänk om de för varje fotografi hade skrivit namn, datum, plats och anledning då hade vi varit att gratulera. Men tyvärr, fotoalbumen är fyllda med bilder där knappt någon av personerna längre kan identifieras och hur skulle de kunna identifieras nu?

Fotografiernas ägare visste förmodligen vem varje person var och hur de relaterade, men de finns inte längre kvar och vi var inte intresserade av varken bilderna eller historierna bakom då de levde.

Ingen kunde hur som helst föreställa sig att årtionden in i framtiden någon annan skulle vara intresserad av dessa gamla bilder och vad de representerar.

Vi har kämpat, vi har försökt spåra, vi har frågat alla tänkbara personer - men vi gick bet. Större delen av materialet i de fotoalbum vi ärvt innehåller för oss helt okända personer och vi saknar all kunskap om varför bilderna togs och händelserna bakom. Vi hoppas att vi kommer att bryta den här kedjan av okända bilder.

Det kan och bör också sägas - att välja ut bilder har varit ett riktigt <b>sisyfosarbete</b> (<i>ett mödosamt arbete som aldrig tar slut</i>).

Bildmaterialet omfattar drygt 10-15.000 bilder vilket gör att ett urval har varit tvunget. Vi har inte riktigt mäktat med detta - att välja de 'rätta' bilderna som kan intressera oss alla som tittar på dessa sidor. Mängder av intressanta bilder har naturligtvis fallit bort och en del bilder som inte är intressanta nog har slunkit in.

###AR-1###
Vid ett anfall av städdille, för ett antal år sedan, då jag ansåg att vi borde rensa upp i våra gömmor började jag rota runt i pappas gamla kvarlåtenskap i form av dagboksanteckningar, fotoalbum, efterlämnade brev, köpeavtal och alla möjliga och omöjliga papper.

Insåg då hur lite jag faktiskt kände till om mina föräldrar och min släkt. Lika lite visste Ulla om sin bakgrund. Funderade på hur jag skulle kunna ta reda på mer och började ett litet hemmaprojekt med att läsa gamla kyrböcker med startpunkt i det lilla jag visste.

Med en glaciärs hastighet gick arbetet vidare och släktträdet växte. Hade dock inget egentligt system eller någon systematik i mitt letande utan nystade i alla garnändar jag hittade och förde anteckningar i Excel, Word och papper/penna men insåg snabbt att det här kommer bara att bli en oöverskådlig soppa - måste hitta något hjälpmedel som gör sökandet drägligt och att jag kan dra nytta av andras vedermödor då jag omöjligen kan vara den enda som söker efter sina anfäder.

Hittade snart <b>Geni.com</b> som är en kommersiell tjänst för släktforskare, baserad i USA, men sedan några år ägd av israeliska <b>MyHeritage</b>. Geni:s Världsträd är det största och mest omfattande samverkande släktträdet i världen. Det grundar sig i forskningssamarbete av miljontals släktforskare och ett team av "expertkuratorer". Syftet med sajten är att kunna bedriva vetenskapliga studier med hjälp av dess 86 miljoner medlemmars privata släktträd. Trädet innehåller idag ungefär 13 miljoner människor och går i genomsnitt elva generationer bakåt i tiden.

Geni står som förvaltare av enskilda profiler, inte träd. I Geni blir man förvaltare av en profil genom att lägga till en egen version av denna profil. Matchande profiler kan sedan slås samman och på så sätt skapas unika profiler i världsträdet. Samtliga tidigare förvaltare blir då gemensamma förvaltare av den nya unika profilen. Det är när detta händer som formatet på profilen kan bli förvanskat med hänsyn till vad varje enskild förvaltare lagt in. Man måste då jämka och försöka hitta ett format som var och en kan leva med vilket inte är så lätt alla gånger.

Trädet utvecklas av användarna (inte av några anställda på Geni), mycket i samma anda och på samma sätt som är fallet för Wikipedia. Så om man lagt dit ett träd ligger detta kvar och utvecklats dynamiskt. Naturligtvis kan det då bli problem om man lägger dit profiler och sedan lämnar Geni eller inte är medveten om att något "eget" träd egentligen inte existerar.

Alltså - mina resultat kan ha några enstaka fel trots att jag bemödat mig att verifiera dem med hjälp av tillgängliga digitaliserade kyrkböcker och annat material.

###AR-ULLA-1###
Här kan man pytsa in lite detaljer om Ullas släkt rent allmänt.

###AR-MATTI-1###
Här kan man pytsa in lite detaljer om Mattis släkt rent allmänt.

###AR-2###
I normalläget visas de 3 (tre) senaste släktleden!

För att expandera trädet
&nbsp;&nbsp;&nbsp;&#8226; <i>skriv en asterisk (*) i sökfältet</i>
För att expandera/kollapsa en enskild gren i trädet
&nbsp;&nbsp;&nbsp;&#8226; <i>klicka på namnet</i>
För att kollapsa hela trädet
&nbsp;&nbsp;&nbsp;&#8226; <i>ange en söksträng som INTE ger träff (t.ex. $)</i>

Sökmöjligheterna är relativt begränsade men kan ändå
göras på några olika sätt;

Du kan, i sökfältet, skriva;
&nbsp;&nbsp;&nbsp;&#8226; ett namn (t.ex. 'Pekka')
&nbsp;&nbsp;&nbsp;&#8226; delar av ett namn (t.ex. 'Be')
&nbsp;&nbsp;&nbsp;&#8226; ett datum (t.ex. '1787-12-15')
&nbsp;&nbsp;&nbsp;&#8226; delar av ett datum (t.ex. '178')
&nbsp;&nbsp;&nbsp;&#8226; ett reguljärt uttryck
&nbsp;&nbsp;&nbsp;&nbsp;  exempelvis
&nbsp;&nbsp;&nbsp;&nbsp;  <b>\(([1][8][01234]{1})</b> - personer födda 1800-1849
&nbsp;&nbsp;&nbsp;&nbsp;  <b>J[^ ]+(son)</b> - alla som heter <u>J</u>ohans<u>son</u>, <u>J</u>an<u>son</u> ...
&nbsp;&nbsp;&nbsp;&nbsp;  osv. osv.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Fungerar väl sådär om jag får säga det själv</i>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>men en regnig dag så kan det hända att jag får inspiration</i>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>att göra om sökfunktionen och göra den korrekt och</i>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>komplett</i>

och får då upp samtliga rader som matchar sökkriteriet med sökkriteriet markerat med gul bakgrundsfärg. Notera att du även får upp samtliga ättlingar till den person som matchar ditt sökkriterium. <span style="font-size:13px"><i>En variant av sk. breadcrumbs (brödsmulor) där termen kommer från sagan om Hans och Greta där de två barnen tappar brödsmulor i skogen för att bilda ett spår tillbaka till sitt hem.	Jag använder mig av samma teknik i antavlan så att du på ett enkelt sätt kan se personens direkta ättlingar.</i></span>

Med lite fantasi så kan du notera ett <b>ögonpar</b> i början av varje individ.
Om du klickar på ögonparet så länkas du vidare till Geni och informationen avseende just denna person och kan där se kompletterande information om personen ifråga.
Om du däremot klickar på namnet så kollapsar/expanderar du den grenen av trädet och kan på så sätt förändra trädstrukturen efter eget önskemål.

###AvailableSymbols###
lkslksjfkslfksjslkdfskfs

###FavoriteSymbols###
ösldjgöslgsldgjölsdölgsdglsdlsd
ksldllsgsdkgsdj

###END###
