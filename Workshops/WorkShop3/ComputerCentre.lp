/* Objective function */
min: 40Xp1 + 40Xp2 + 40Xp3 + 40Xp4
   + 112Xf1 + 112Xf2 + 112Xf3;

/* Constraints */
Xp1 + Xf1 >= 4;
Xp2 + Xf1 + Xf2 >= 8;
Xp3 + Xf2 + Xf3 >= 10;
Xp4 + Xf3 >= 6;
/* Xf1 >= 2/3(Xf1 + Xp1);
Xf1 + Xf2 >= 2/3(Xf1 + Xf2 + Xp2);
Xf2 + Xf3 >= 2/3(Xf2 + Xf3 + Xp3);
Xf3 >= 2/3(Xf3 + Xp4); */ // This is the compacter version of the ratio constraints
Xf1 >= 0.666666666666Xf1 + 0.666666666666Xp1;
Xf1 + Xf2 >= 0.666666666666Xf1 + 0.666666666666Xf2 + 0.666666666666Xp2;
Xf2 + Xf3 >= 0.666666666666Xf2 + 0.666666666666Xf3 + 0.666666666666Xp3;
Xf3 >= 0.666666666666Xf3 + 0.666666666666Xp4;

/* Variable bounds */
// int Xp1, Xp2, Xp3, Xp4, Xf1, Xf2, Xf3;