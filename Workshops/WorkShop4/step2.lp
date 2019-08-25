/* Objective function */
min: 60Pxa1 + 45Pxb1 + 75Pya1 + 60Pyb1 +
     60Pxa2 + 45Pxb2 + 75Pya2 + 60Pyb2 +
     60Pxa3 + 45Pxb3 + 75Pya3 + 60Pyb3 + /*These are the costs to produce*/
     10Pxa1 + 10Pya1 - 500 + /*Storage Cost going into Month 2 for a*/
     10Pxb1 + 10Pyb1 - 300 + /*Storage Cost going into Month 2 for b*/
     10Pxa2 + 10Pya2 + 10Pxa1 + 10Pya1 - 500 - 1000 + /*Storage Cost going into Month 3 for a*/
     10Pxb2 + 10Pyb2 + 10Pxb1 + 10Pyb1 - 300 - 600; /*Storage Cost going into Month 3 for b*/

/* Sa2 = Pxa1 + Pya1 - 50;
Sb2 = Pxb1 + Pyb1 - 30;
Sa3 = Pxa2 + Pya2 + Sa2 - 100;
Sb3 = Pxb2 + Pyb2 + Sb2 - 60; */

/* Constraints */
2Pxa1 + 1.5Pxb1 <= 140; /*Hours avalible of each machine each month*/
2.5Pya1 + 2Pyb1 <= 250;
2Pxa2 + 1.5Pxb2 <= 60;
2.5Pya2 + 2Pyb2 <= 80;
2Pxa3 + 1.5Pxb3 <= 150;
2.5Pya3 + 2Pyb3 <= 100;

Pxa1 + Pya1 >= 50; /*Demand of each product each month*/
Pxb1 + Pyb1 >= 30;
Pxa1 + Pya1 + Pxa1 + Pya1 - 50 >= 100;
Pxb1 + Pyb1 + Pxb1 + Pyb1 - 30 >= 60;
Pxa1 + Pya1 + Pxa2 + Pya2 + Pxa1 + Pya1 - 50 - 100 >= 100;
Pxb1 + Pyb1 + Pxb2 + Pyb2 + Pxb1 + Pyb1 - 30 - 60 >= 60;