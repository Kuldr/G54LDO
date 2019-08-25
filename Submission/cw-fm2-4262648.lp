/* Decision Variables
	Pmo = Amount of Oil o purchased in Month m
	Umo = Amount of Oil o used      in Month m
	Smo = Amount of Oil o stored    in Month m
	Bmo = Binary varibale denoting if Oil o was used in Month m
	Cm  = Amount of the final product made in Month m
	WHERE
	m = {Jan, Feb, Mar, Apr, May, Jun} / |m| = 6
	o = {VEG1, VEG2, OIL1, OIL2, OIL3} / |o| = 5
 */
 /* Other Variables used in algebra
	Imo = Price to buy Oil o in Month m
	Ho  = Hardness of raw Oil o
 */
 
/* Objective Function
	This is to maximise profit by simply adding income and subtracting outgoing expenses
	-SUM[m=Jan][Jun](ImoPmo + 5Smo) + SUM[m=Jan][Jun](150Cm) | WHERE o = {VEG1, VEG2, OIL1, OIL2, OIL3}
 */
//Amount bought in each month (-ive as it decreases profit)
max: 
-110PJanVEG1 -120PJanVEG2 -130PJanOIL1 -110PJanOIL2 -115PJanOIL3 //Bought in Jan
-130PFebVEG1 -130PFebVEG2 -110PFebOIL1 -90PFebOIL2  -115PFebOIL3 //Bought in Feb
-110PMarVEG1 -140PMarVEG2 -130PMarOIL1 -100PMarOIL2 -95PMarOIL3  //Bought in Mar
-120PAprVEG1 -110PAprVEG2 -120PAprOIL1 -120PAprOIL2 -125PAprOIL3 //Bought in Apr
-100PMayVEG1 -120PMayVEG2 -150PMayOIL1 -110PMayOIL2 -105PMayOIL3 //Bought in May
-90PJunVEG1  -100PJunVEG2 -140PJunOIL1 -80PJunOIL2  -135PJunOIL3 //Bought in Jun
//Amount stored in each month (-ive as it decreases profit)
-5SJanVEG1 -5SJanVEG2 -5SJanOIL1 -5SJanOIL2 -5SJanOIL3 //Stored in Jan
-5SFebVEG1 -5SFebVEG2 -5SFebOIL1 -5SFebOIL2 -5SFebOIL3 //Stored in Feb
-5SMarVEG1 -5SMarVEG2 -5SMarOIL1 -5SMarOIL2 -5SMarOIL3 //Stored in Mar
-5SAprVEG1 -5SAprVEG2 -5SAprOIL1 -5SAprOIL2 -5SAprOIL3 //Stored in Apr
-5SMayVEG1 -5SMayVEG2 -5SMayOIL1 -5SMayOIL2 -5SMayOIL3 //Stored in May
-5SJunVEG1 -5SJunVEG2 -5SJunOIL1 -5SJunOIL2 -5SJunOIL3 //Stored in Jun
//Amount created in each month (+ive as it increases profit)
+150CJan +150CFeb +150CMar +150CApr +150CMay +150CJun;

/* Max Refineable 
	Amount of each oil type that can be refined within a month.
*/
UJanVEG1+ UJanVEG2            <= 200;
UJanOIL1+ UJanOIL2+ UJanOIL3  <= 250;
UFebVEG1+ UFebVEG2            <= 200;
UFebOIL1+ UFebOIL2+ UFebOIL3  <= 250;
UMarVEG1+ UMarVEG2            <= 200;
UMarOIL1+ UMarOIL2+ UMarOIL3  <= 250;
UAprVEG1+ UAprVEG2            <= 200;
UAprOIL1+ UAprOIL2+ UAprOIL3  <= 250;
UMayVEG1+ UMayVEG2            <= 200;
UMayOIL1+ UMayOIL2+ UMayOIL3  <= 250;
UJunVEG1+ UJunVEG2            <= 200;
UJunOIL1+ UJunOIL2+ UJunOIL3  <= 250;

/* Hardness 
	Restriction on the hardness of the final product each month.
	SUM[o=VEG1][OIL3](HoUmo) - 6Cm <= 0
	SUM[o=VEG1][OIL3](HoUmo) - 3Cm >= 0
	For each m in {Jan, Feb, Mar, Apr, May, Jun}
*/
8.8UJanVEG1 +6.1UJanVEG2 +2.0UJanOIL1 +4.2UJanOIL2 +5.0UJanOIL3 -6CJan <= 0; //Upper Bound of hardness in Jan
8.8UJanVEG1 +6.1UJanVEG2 +2.0UJanOIL1 +4.2UJanOIL2 +5.0UJanOIL3 -3CJan >= 0; //Lower Bound of hardness in Jan
8.8UFebVEG1 +6.1UFebVEG2 +2.0UFebOIL1 +4.2UFebOIL2 +5.0UFebOIL3 -6CFeb <= 0; //Upper Bound of hardness in Feb
8.8UFebVEG1 +6.1UFebVEG2 +2.0UFebOIL1 +4.2UFebOIL2 +5.0UFebOIL3 -3CFeb >= 0; //Lower Bound of hardness in Feb
8.8UMarVEG1 +6.1UMarVEG2 +2.0UMarOIL1 +4.2UMarOIL2 +5.0UMarOIL3 -6CMar <= 0; //Upper Bound of hardness in Mar
8.8UMarVEG1 +6.1UMarVEG2 +2.0UMarOIL1 +4.2UMarOIL2 +5.0UMarOIL3 -3CMar >= 0; //Lower Bound of hardness in Mar
8.8UAprVEG1 +6.1UAprVEG2 +2.0UAprOIL1 +4.2UAprOIL2 +5.0UAprOIL3 -6CApr <= 0; //Upper Bound of hardness in Apr
8.8UAprVEG1 +6.1UAprVEG2 +2.0UAprOIL1 +4.2UAprOIL2 +5.0UAprOIL3 -3CApr >= 0; //Lower Bound of hardness in Apr
8.8UMayVEG1 +6.1UMayVEG2 +2.0UMayOIL1 +4.2UMayOIL2 +5.0UMayOIL3 -6CMay <= 0; //Upper Bound of hardness in May
8.8UMayVEG1 +6.1UMayVEG2 +2.0UMayOIL1 +4.2UMayOIL2 +5.0UMayOIL3 -3CMay >= 0; //Lower Bound of hardness in May
8.8UJunVEG1 +6.1UJunVEG2 +2.0UJunOIL1 +4.2UJunOIL2 +5.0UJunOIL3 -6CJun <= 0; //Upper Bound of hardness in Jun
8.8UJunVEG1 +6.1UJunVEG2 +2.0UJunOIL1 +4.2UJunOIL2 +5.0UJunOIL3 -3CJun >= 0; //Lower Bound of hardness in Jun

/* Input and Output
	Raw oil used needs to equal product made.
	SUM[o=VEG1][OIL3](Umo) = Cm | For each m in {Jan, Feb, Mar, Apr, May, Jun}
*/
UJanVEG1 +UJanVEG2 +UJanOIL1 +UJanOIL2 +UJanOIL3 = CJan;
UFebVEG1 +UFebVEG2 +UFebOIL1 +UFebOIL2 +UFebOIL3 = CFeb;
UMarVEG1 +UMarVEG2 +UMarOIL1 +UMarOIL2 +UMarOIL3 = CMar;
UAprVEG1 +UAprVEG2 +UAprOIL1 +UAprOIL2 +UAprOIL3 = CApr;
UMayVEG1 +UMayVEG2 +UMayOIL1 +UMayOIL2 +UMayOIL3 = CMay;
UJunVEG1 +UJunVEG2 +UJunOIL1 +UJunOIL2 +UJunOIL3 = CJun;

/* Storage Limits
	There is a fixed amount of storage capacity for the raw oils, to be stored in each month so they are avalible for the next month.
	Smo <= 1000
	For each m in {Jan, Feb, Mar, Apr, May, Jun}
			 o in {VEG1, VEG2, OIL1, OIL2, OIL3}
*/
SJanVEG1 <= 1000; SJanVEG2 <= 1000; SJanOIL1 <= 1000; SJanOIL2 <= 1000; SJanOIL3 <= 1000;
SFebVEG1 <= 1000; SFebVEG2 <= 1000; SFebOIL1 <= 1000; SFebOIL2 <= 1000; SFebOIL3 <= 1000;
SMarVEG1 <= 1000; SMarVEG2 <= 1000; SMarOIL1 <= 1000; SMarOIL2 <= 1000; SMarOIL3 <= 1000;
SAprVEG1 <= 1000; SAprVEG2 <= 1000; SAprOIL1 <= 1000; SAprOIL2 <= 1000; SAprOIL3 <= 1000;
SMayVEG1 <= 1000; SMayVEG2 <= 1000; SMayOIL1 <= 1000; SMayOIL2 <= 1000; SMayOIL3 <= 1000;
SJunVEG1 <= 1000; SJunVEG2 <= 1000; SJunOIL1 <= 1000; SJunOIL2 <= 1000; SJunOIL3 <= 1000;

/* Stored, Bought, Used Linking Constraints
	These constraints check that the amount bought and carried over is equal to the amount used and stored.
	NOTE that January starts with 500 of each raw oil. Therefore SJan-1o is 500
	Sm-1o + Pmo - Umo - Smo = 0
	For each m in {Jan, Feb, Mar, Apr, May, Jun}
			 o in {VEG1, VEG2, OIL1, OIL2, OIL3}
*/
500      +PJanVEG1 -UJanVEG1 -SJanVEG1 = 0;
500      +PJanVEG2 -UJanVEG2 -SJanVEG2 = 0;
500      +PJanOIL1 -UJanOIL1 -SJanOIL1 = 0;
500      +PJanOIL2 -UJanOIL2 -SJanOIL2 = 0;
500      +PJanOIL3 -UJanOIL3 -SJanOIL3 = 0;
SJanVEG1 +PFebVEG1 -UFebVEG1 -SFebVEG1 = 0;
SJanVEG2 +PFebVEG2 -UFebVEG2 -SFebVEG2 = 0;
SJanOIL1 +PFebOIL1 -UFebOIL1 -SFebOIL1 = 0;
SJanOIL2 +PFebOIL2 -UFebOIL2 -SFebOIL2 = 0;
SJanOIL3 +PFebOIL3 -UFebOIL3 -SFebOIL3 = 0;
SFebVEG1 +PMarVEG1 -UMarVEG1 -SMarVEG1 = 0;
SFebVEG2 +PMarVEG2 -UMarVEG2 -SMarVEG2 = 0;
SFebOIL1 +PMarOIL1 -UMarOIL1 -SMarOIL1 = 0;
SFebOIL2 +PMarOIL2 -UMarOIL2 -SMarOIL2 = 0;
SFebOIL3 +PMarOIL3 -UMarOIL3 -SMarOIL3 = 0;
SMarVEG1 +PAprVEG1 -UAprVEG1 -SAprVEG1 = 0;
SMarVEG2 +PAprVEG2 -UAprVEG2 -SAprVEG2 = 0;
SMarOIL1 +PAprOIL1 -UAprOIL1 -SAprOIL1 = 0;
SMarOIL2 +PAprOIL2 -UAprOIL2 -SAprOIL2 = 0;
SMarOIL3 +PAprOIL3 -UAprOIL3 -SAprOIL3 = 0;
SAprVEG1 +PMayVEG1 -UMayVEG1 -SMayVEG1 = 0;
SAprVEG2 +PMayVEG2 -UMayVEG2 -SMayVEG2 = 0;
SAprOIL1 +PMayOIL1 -UMayOIL1 -SMayOIL1 = 0;
SAprOIL2 +PMayOIL2 -UMayOIL2 -SMayOIL2 = 0;
SAprOIL3 +PMayOIL3 -UMayOIL3 -SMayOIL3 = 0;
SMayVEG1 +PJunVEG1 -UJunVEG1 -SJunVEG1 = 0;
SMayVEG2 +PJunVEG2 -UJunVEG2 -SJunVEG2 = 0;
SMayOIL1 +PJunOIL1 -UJunOIL1 -SJunOIL1 = 0;
SMayOIL2 +PJunOIL2 -UJunOIL2 -SJunOIL2 = 0;
SMayOIL3 +PJunOIL3 -UJunOIL3 -SJunOIL3 = 0;

/* End of June Storage
	June needs to end with 500 of each raw oil stored.
	SJuno = 500 For each o in {VEG1, VEG2, OIL1, OIL2, OIL3}
*/
SJunVEG1 = 500;
SJunVEG2 = 500;
SJunOIL1 = 500;
SJunOIL2 = 500;
SJunOIL3 = 500;

/* At most 3 Oils Used
	Only 3 different Oils can be used at most.
	SUM[o=VEG1][OIL3](Bmo) <= 3 | For Each m = {Jan, Feb, Mar, Apr, May, Jun}
*/
BJanVEG1 +BJanVEG2 +BJanOIL1 +BJanOIL2 +BJanOIL3 <= 3;
BFebVEG1 +BFebVEG2 +BFebOIL1 +BFebOIL2 +BFebOIL3 <= 3;
BMarVEG1 +BMarVEG2 +BMarOIL1 +BMarOIL2 +BMarOIL3 <= 3;
BAprVEG1 +BAprVEG2 +BAprOIL1 +BAprOIL2 +BAprOIL3 <= 3;
BMayVEG1 +BMayVEG2 +BMayOIL1 +BMayOIL2 +BMayOIL3 <= 3;
BJunVEG1 +BJunVEG2 +BJunOIL1 +BJunOIL2 +BJunOIL3 <= 3;

/* Use at least 20 tons
	Umo >= 20Bmo
	For each m in {Jan, Feb, Mar, Apr, May, Jun}
			 o in {VEG1, VEG2, OIL1, OIL2, OIL3}
*/
UJanVEG1 >= 20BJanVEG1; UJanVEG2 >= 20BJanVEG2; UJanOIL1 >= 20BJanOIL1; UJanOIL2 >= 20BJanOIL2; UJanOIL3 >= 20BJanOIL3;
UFebVEG1 >= 20BFebVEG1; UFebVEG2 >= 20BFebVEG2; UFebOIL1 >= 20BFebOIL1; UFebOIL2 >= 20BFebOIL2; UFebOIL3 >= 20BFebOIL3;
UMarVEG1 >= 20BMarVEG1; UMarVEG2 >= 20BMarVEG2; UMarOIL1 >= 20BMarOIL1; UMarOIL2 >= 20BMarOIL2; UMarOIL3 >= 20BMarOIL3;
UAprVEG1 >= 20BAprVEG1; UAprVEG2 >= 20BAprVEG2; UAprOIL1 >= 20BAprOIL1; UAprOIL2 >= 20BAprOIL2; UAprOIL3 >= 20BAprOIL3;
UMayVEG1 >= 20BMayVEG1; UMayVEG2 >= 20BMayVEG2; UMayOIL1 >= 20BMayOIL1; UMayOIL2 >= 20BMayOIL2; UMayOIL3 >= 20BMayOIL3;
UJunVEG1 >= 20BJunVEG1; UJunVEG2 >= 20BJunVEG2; UJunOIL1 >= 20BJunOIL1; UJunOIL2 >= 20BJunOIL2; UJunOIL3 >= 20BJunOIL3;

/* Use OIL3 if VEG is used
	If either of VEG 1 or VEG 2 is used in the final product mix then OIL 3 also has to be used.
	BmOIL3 >= 1/2(BmVEG1 + BmVEG2) | For each m in {Jan, Feb, Mar, Apr, May, Jun}
*/
BJanOIL3 >= 0.5BJanVEG1 + 0.5BJanVEG2;
BFebOIL3 >= 0.5BFebVEG1 + 0.5BFebVEG2;
BMarOIL3 >= 0.5BMarVEG1 + 0.5BMarVEG2;
BAprOIL3 >= 0.5BAprVEG1 + 0.5BAprVEG2;
BMayOIL3 >= 0.5BMayVEG1 + 0.5BMayVEG2;
BJunOIL3 >= 0.5BJunVEG1 + 0.5BJunVEG2;

/* Binary Linking Constraints
	Link the binary variables to the amount used to keep them consistent.
	250 used as it is the largest amount of 1 oil that can be used.
	Umo <= 250Bmo 
	For each m in {Jan, Feb, Mar, Apr, May, Jun}
			 o in {VEG1, VEG2, OIL1, OIL2, OIL3}
*/
UJanVEG1 <= 250BJanVEG1; UJanVEG2 <= 250BJanVEG2; UJanOIL1 <= 250BJanOIL1; UJanOIL2 <= 250BJanOIL2; UJanOIL3 <= 250BJanOIL3;
UFebVEG1 <= 250BFebVEG1; UFebVEG2 <= 250BFebVEG2; UFebOIL1 <= 250BFebOIL1; UFebOIL2 <= 250BFebOIL2; UFebOIL3 <= 250BFebOIL3;
UMarVEG1 <= 250BMarVEG1; UMarVEG2 <= 250BMarVEG2; UMarOIL1 <= 250BMarOIL1; UMarOIL2 <= 250BMarOIL2; UMarOIL3 <= 250BMarOIL3;
UAprVEG1 <= 250BAprVEG1; UAprVEG2 <= 250BAprVEG2; UAprOIL1 <= 250BAprOIL1; UAprOIL2 <= 250BAprOIL2; UAprOIL3 <= 250BAprOIL3;
UMayVEG1 <= 250BMayVEG1; UMayVEG2 <= 250BMayVEG2; UMayOIL1 <= 250BMayOIL1; UMayOIL2 <= 250BMayOIL2; UMayOIL3 <= 250BMayOIL3;
UJunVEG1 <= 250BJunVEG1; UJunVEG2 <= 250BJunVEG2; UJunOIL1 <= 250BJunOIL1; UJunOIL2 <= 250BJunOIL2; UJunOIL3 <= 250BJunOIL3;

/* Binary Constraints
	Set all of the binary variables to be binary in LP Solve
*/
bin BJanVEG1;
bin BJanVEG2;
bin BJanOIL1;
bin BJanOIL2;
bin BJanOIL3;
bin BFebVEG1;
bin BFebVEG2;
bin BFebOIL1;
bin BFebOIL2;
bin BFebOIL3;
bin BMarVEG1;
bin BMarVEG2;
bin BMarOIL1;
bin BMarOIL2;
bin BMarOIL3;
bin BAprVEG1;
bin BAprVEG2;
bin BAprOIL1;
bin BAprOIL2;
bin BAprOIL3;
bin BMayVEG1;
bin BMayVEG2;
bin BMayOIL1;
bin BMayOIL2;
bin BMayOIL3;
bin BJunVEG1;
bin BJunVEG2;
bin BJunOIL1;
bin BJunOIL2;
bin BJunOIL3;