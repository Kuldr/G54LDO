/* Objective function */
min: 10HmonA + 10HtuesA + 10HWedA + 10HThurA + 10HFriA +
     10.1HmonB + 10.1HtuesB + 10.1HWedB + 10.1HThurB + 10.1HFriB +
     9.9HmonC + 9.9HtuesC + 9.9HWedC + 9.9HThurC + 9.9HFriC +
     9.8HmonD + 9.8HtuesD + 9.8HWedD + 9.8HThurD + 9.8HFriD +
     10.8HmonE + 10.8HtuesE + 10.8HWedE + 10.8HThurE + 10.8HFriE +
     11.3HmonF + 11.3HtuesF + 11.3HWedF + 11.3HThurF + 11.3HFriF;

/* Variable bounds */
HmonA + HmonB + HmonC + HmonD + HmonE + HmonF >= 14;
HtuesA + HtuesB + HtuesC + HtuesD + HtuesE + HtuesF >= 14;
HWedA + HWedB + HWedC + HWedD + HWedE + HWedF >= 14;
HThurA + HThurB + HThurC + HThurD + HThurE + HThurF >= 14;
HFriA + HFriB + HFriC + HFriD + HFriE + HFriF >= 14;

HmonA + HtuesA + HWedA + HThurA + HFriA >= 8;
HmonB + HtuesB + HWedB + HThurB + HFriB >= 8;
HmonC + HtuesC + HWedC + HThurC + HFriC >= 8;
HmonD + HtuesD + HWedD + HThurD + HFriD >= 8;
HmonE + HtuesE + HWedE + HThurE + HFriE >= 7;
HmonF + HtuesF + HWedF + HThurF + HFriF >= 7;

HmonA <= 6;
HtuesA <= 0;
HWedA <= 6;
HThurA <= 0;
HFriA <= 6;
HmonB <= 0;
HtuesB <= 6;
HWedB <= 0;
HThurB <= 6;
HFriB <= 0;
HmonC <= 4;
HtuesC <= 8;
HWedC <= 4;
HThurC <= 0;
HFriC <= 4;
HmonD <= 5;
HtuesD <= 5;
HWedD <= 5;
HThurD <= 0;
HFriD <= 5;
HmonE <= 3;
HtuesE <= 0;
HWedE <= 3;
HThurE <= 8;
HFriE <= 0;
HmonF <= 0;
HtuesF <= 0;
HWedF <= 0;
HThurF <= 6;
HFriF <= 2;


