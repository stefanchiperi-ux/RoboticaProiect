MODULE Module1

    PERS tooldata Efector:=[TRUE,[[0,0.033033672,184.3],[1,0,0,0]],[1.5,[0,0,90],[1,0,0,0],0.01,0.01,0.01]];
    VAR num cifra;
    VAR num pozitie;
    VAR num pozX;
    VAR num pozY;
    PERS wobjdata wboj1:=[FALSE,TRUE,"",[[474.327228821,-1050.19499142,808.5],[0.923879533,0,0,0.382683432]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata wboj2:=[FALSE,TRUE,"",[[798.889241386,-725.632978855,838.5],[0.923879533,0,0,0.382683432]],[[0,0,0],[1,0,0,0]]];
    CONST robtarget c0_sus:=[[168.01029694,112.160069025,251.008477243],[0.123563046,0.696227201,0.696227037,-0.123562823],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget c0:=[[168.010296938,114.468021901,35.5],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget c1:=[[190.01029694,139.160069025,35.5],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget c2:=[[168.010296942,163.852116145,36.023857712],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget c3:=[[146.01029694,139.160069021,35.5],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget c4:=[[168.010296938,114.468021901,35.5],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[196.046304765,224.170069206,308.051036],[0.377855633,0.597683571,0.600359127,-0.373588528],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[193.516034944,53.599370203,204.062027],[-0.00000051,0.707106878,0.707106684,-0.000000325],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[200.000000948,50.00000021,0],[0.00000051,0.707106878,0.707106684,-0.000000325],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget dTM:=[[168.010296942,163.852116145,36.023857712],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget dBM:=[[168.010296938,114.468021901,35.5],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget dTL:=[[146.009999829,163.852000155,35.5],[0.264829648,0.655641104,0.655641105,-0.264829648],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget dTR:=[[190.010296942,163.852116147,36.023857721],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget dMR:=[[190.009999855,139.160000201,35.5],[0.264829648,0.655641104,0.655641105,-0.264829648],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget dML:=[[146.01029694,139.160069021,35.5],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget dBL:=[[146.010296938,114.468021899,35.5],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget dBR:=[[190.010296938,114.468021903,35.5],[0.264829064,0.655641448,0.655641334,-0.264828812],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PROC main()
        TPReadNum cifra,"Baga un numar :";
        IF NOT (cifra>-1 AND cifra<10) THEN
            cifra:=0;
        ENDIF
        TPReadNum pozitie,"Baga pozitia pe foaie (1...9):";
        SetPozitie pozitie;
        PickPlaceDigit cifra;
    ENDPROC

    PROC SetPozitie(num pozitie)
        IF pozitie=1 THEN
            pozX:=-70;
            pozY:=99;
        ELSEIF pozitie=2 THEN
            pozX:=0;
            pozY:=99;
        ELSEIF pozitie=3 THEN
            pozX:=70;
            pozY:=99;
        ELSEIF pozitie=4 THEN
            pozX:=-70;
            pozY:=0;
        ELSEIF pozitie=5 THEN
            pozX:=0;
            pozY:=0;
        ELSEIF pozitie=6 THEN
            pozX:=70;
            pozY:=0;
        ELSEIF pozitie=7 THEN
            pozX:=-70;
            pozY:=-99;
        ELSEIF pozitie=8 THEN
            pozX:=0;
            pozY:=-99;
        ELSEIF pozitie=9 THEN
            pozX:=70;
            pozY:=-99;
        ELSE
            pozX:=0;
            pozY:=0;
        ENDIF
    ENDPROC

    PROC PickPlaceDigit(num cifra)
        MoveJ Target_20,v100,fine,Efector\WObj:=wboj2;
        MoveJ Target_40,v100,fine,Efector\WObj:=wboj2;
        SetDO DO10_9,1;
        MoveL Target_30,v100,fine,Efector\WObj:=wboj2;
        WaitTime 0.5;
        Reset DO10_9;
        WaitTime 0.5;
        MoveL Target_40,v100,fine,Efector\WObj:=wboj2;
        DrawDigit cifra;
        MoveJ Target_40,v100,fine,Efector\WObj:=wboj2;
        MoveL Target_30,v100,fine,Efector\WObj:=wboj2;
        WaitTime 0.5;
        SetDO DO10_9,1;
        WaitTime 0.5;
        MoveL Target_40,v100,fine,Efector\WObj:=wboj2;
        MoveJ Target_20,v100,fine,Efector\WObj:=wboj2;
    ENDPROC

    PROC DrawDigit(num cifra)
        TEST cifra
        CASE 0:
            Path_0;
        CASE 1:
            Path_1;
        CASE 2:
            Path_2;
        CASE 3:
            Path_3;
        CASE 4:
            Path_4;
        CASE 5:
            Path_5;
        CASE 6:
            Path_6;
        CASE 7:
            Path_7;
        CASE 8:
            Path_8;
        CASE 9:
            Path_9;
        DEFAULT:
            Path_0;
        ENDTEST
    ENDPROC

    PROC Path_0()
        MoveJ Offs(c0_sus,pozX,pozY,0),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(c0,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveC Offs(c1,pozX,pozY,0),Offs(c2,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveC Offs(c3,pozX,pozY,0),Offs(c4,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(c0_sus,pozX,pozY,0),v200,fine,Efector\WObj:=wboj1;
    ENDPROC

    PROC Tsst()
        MoveJ Target_20,v100,fine,Efector\WObj:=wboj2;
        MoveJ Target_40,v100,fine,Efector\WObj:=wboj2;
        SetDO DO10_9,1;
        MoveL Target_30,v100,fine,Efector\WObj:=wboj2;
        WaitTime 0.5;
        Reset DO10_9;
        WaitTime 0.5;
        MoveL Target_40,v100,fine,Efector\WObj:=wboj2;
        MoveJ Target_40,v100,fine,Efector\WObj:=wboj2;
        MoveL Target_30,v100,fine,Efector\WObj:=wboj2;
        WaitTime 0.5;
        SetDO DO10_9,1;
        WaitTime 0.5;
        MoveL Target_40,v100,fine,Efector\WObj:=wboj2;
        MoveJ Target_20,v100,fine,Efector\WObj:=wboj2;
    ENDPROC

    PROC Path_1()
        MoveJ Offs(dTM,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTM,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBM,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBM,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
    ENDPROC

    PROC Path_2()
        MoveJ Offs(dTL,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dML,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
    ENDPROC

    PROC Path_3()
        MoveJ Offs(dTL,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dML,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBL,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
    ENDPROC

    PROC Path_4()
        MoveJ Offs(dTL,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dML,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
    ENDPROC

    PROC Path_5()
        MoveJ Offs(dTR,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dML,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBL,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
    ENDPROC

    PROC Path_6()
        MoveJ Offs(dTR,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dML,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dML,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
    ENDPROC

    PROC Path_7()
        MoveJ Offs(dTL,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
    ENDPROC

    PROC Path_8()
        MoveJ Offs(dTL,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dML,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
    ENDPROC

    PROC Path_9()
        MoveJ Offs(dBL,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dBR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dTL,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dML,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,0),v100,fine,Efector\WObj:=wboj1;
        MoveL Offs(dMR,pozX,pozY,204.062037),v200,fine,Efector\WObj:=wboj1;
    ENDPROC
ENDMODULE
