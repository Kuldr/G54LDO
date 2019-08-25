/* Objective function */
max: 21.25Xow + 18Xcw + 17.1Xtw
     15Xom + 12Xcm + 14.4Xtm
     0.00Xon + 15Xcn + 10.8Xtn;

/* Variable bounds */
// Constraints limiting the amount of paper to convert
Xow + Xcw + Xtw <= 300;
Xom + Xcm + Xtm <= 600;
Xon + Xcn + Xtn <= 400;
// Constraints limiting the amount to produce
0.85Xow + 0.6Xom + 0.0Xon <= 150;
0.9Xcw + 0.6Xcm + 0.75Xcn <= 750;
0.95Xtw + 0.8Xtm + 0.6Xtn <= 550;