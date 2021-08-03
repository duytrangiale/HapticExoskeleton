  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 13;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtP)
    ;%
      section.nData     = 44;
      section.data(44)  = dumData; %prealloc
      
	  ;% rtP.One_Value
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP._Value
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtP._Value_ljzothllya
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtP._Value_hzxskxo5g1
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtP._Value_cwv1jbna1p
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtP._Value_bkoukzz5q3
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtP._Value_p4aknwho14
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtP._Value_cskia0xx0h
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtP._Value_ehu0v3bva2
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtP._Value_lnmi15yrli
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtP._Value_lhfgfqrz5e
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtP._Value_oj14ivbiap
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtP._Value_jaeatq55hz
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtP.Desiredforce2_Time
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% rtP.Desiredforce2_Y0
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
	  ;% rtP.Desiredforce2_YFinal
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 15;
	
	  ;% rtP.Desiredforce3_Time
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 16;
	
	  ;% rtP.Desiredforce3_Y0
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 17;
	
	  ;% rtP.Desiredforce3_YFinal
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 18;
	
	  ;% rtP.Plantofactuator_A
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 19;
	
	  ;% rtP.Plantofactuator_C
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 21;
	
	  ;% rtP.FromWs_Time0
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 23;
	
	  ;% rtP.FromWs_Data0
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 29;
	
	  ;% rtP.Weight_Value
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 35;
	
	  ;% rtP.N_Value
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 36;
	
	  ;% rtP.Weight_Value_kizkamhsip
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 137;
	
	  ;% rtP.Weight_Value_kgns5ccezm
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 138;
	
	  ;% rtP.Z_Value
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 139;
	
	  ;% rtP.Weight_Value_bf1xrz5xih
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 240;
	
	  ;% rtP.Weight_Value_m2mmbd12vb
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 241;
	
	  ;% rtP.Weight_Value_lmccj2c1in
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 242;
	
	  ;% rtP.P_Value
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 243;
	
	  ;% rtP.Weight_Value_au4o22f1wh
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 344;
	
	  ;% rtP.Weight_Value_ejj0qpiu3e
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 345;
	
	  ;% rtP.Weight_Value_n5cjbeufat
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 346;
	
	  ;% rtP.xdata_Value
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 347;
	
	  ;% rtP.MidRange_Value
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 448;
	
	  ;% rtP.Zero_Value
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 449;
	
	  ;% rtP.Switch_Threshold
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 450;
	
	  ;% rtP.DerivativeGain_Gain
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 451;
	
	  ;% rtP.Filter_IC
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 452;
	
	  ;% rtP.FilterCoefficient_Gain
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 453;
	
	  ;% rtP.IntegralGain_Gain
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 454;
	
	  ;% rtP.Integrator_IC
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 455;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.d0opiwbzqd.b_Value
	  section.data(1).logicalSrcIdx = 44;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.d0opiwbzqd.c_Value
	  section.data(2).logicalSrcIdx = 45;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.p35zgpfdin.a_Value
	  section.data(1).logicalSrcIdx = 46;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.p35zgpfdin.b_Value
	  section.data(2).logicalSrcIdx = 47;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.khjeapiu0l.c_Value
	  section.data(1).logicalSrcIdx = 48;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.khjeapiu0l.d_Value
	  section.data(2).logicalSrcIdx = 49;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.owtmkdbqs0.a_Value
	  section.data(1).logicalSrcIdx = 50;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.owtmkdbqs0.b_Value
	  section.data(2).logicalSrcIdx = 51;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.dzwiabih3z.c_Value
	  section.data(1).logicalSrcIdx = 52;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.dzwiabih3z.d_Value
	  section.data(2).logicalSrcIdx = 53;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.l0cqxga3co.a_Value
	  section.data(1).logicalSrcIdx = 54;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.l0cqxga3co.b_Value
	  section.data(2).logicalSrcIdx = 55;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(7) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.jocvt5ychmz.b_Value
	  section.data(1).logicalSrcIdx = 56;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.jocvt5ychmz.c_Value
	  section.data(2).logicalSrcIdx = 57;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(8) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.lttvbukncc.a_Value
	  section.data(1).logicalSrcIdx = 58;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.lttvbukncc.b_Value
	  section.data(2).logicalSrcIdx = 59;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(9) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.jqnaex011u.c_Value
	  section.data(1).logicalSrcIdx = 60;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.jqnaex011u.d_Value
	  section.data(2).logicalSrcIdx = 61;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(10) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.b3eyhtisdl.a_Value
	  section.data(1).logicalSrcIdx = 62;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.b3eyhtisdl.b_Value
	  section.data(2).logicalSrcIdx = 63;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(11) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.jvqzj4tjypc.c_Value
	  section.data(1).logicalSrcIdx = 64;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.jvqzj4tjypc.d_Value
	  section.data(2).logicalSrcIdx = 65;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(12) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% rtP.nz405ughwu5.a_Value
	  section.data(1).logicalSrcIdx = 66;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtP.nz405ughwu5.b_Value
	  section.data(2).logicalSrcIdx = 67;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(13) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 1;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtB)
    ;%
      section.nData     = 39;
      section.data(39)  = dumData; %prealloc
      
	  ;% rtB.c1wihigpkm
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtB.ms1tnb0r0g
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtB.a5zfbbb0qq
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtB.ppzxu1qfca
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtB.dnxosaqlbe
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtB.mrxcmtkkxc
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtB.prioknlown
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtB.myptf3olxt
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtB.oyzizcdafj
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtB.j2okizix2k
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 109;
	
	  ;% rtB.lur0xpzmia
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 110;
	
	  ;% rtB.lltcwhvsls
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 111;
	
	  ;% rtB.dn3u1to0fb
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 212;
	
	  ;% rtB.pejm4grrjm
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 213;
	
	  ;% rtB.fnebbxdz2e
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 214;
	
	  ;% rtB.bxkkb1vvlt
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 315;
	
	  ;% rtB.n0illhx5ya
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 316;
	
	  ;% rtB.bgss2atr10
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 317;
	
	  ;% rtB.jlxenqyyvp
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 418;
	
	  ;% rtB.ialhv51lel
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 419;
	
	  ;% rtB.h5xzhrubcx
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 520;
	
	  ;% rtB.ot5bayj2co
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 521;
	
	  ;% rtB.daxey5ee4s
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 622;
	
	  ;% rtB.a5vrhmsvmz
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 623;
	
	  ;% rtB.mfftr3eonj
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 624;
	
	  ;% rtB.fnn3zwli4w
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 725;
	
	  ;% rtB.awfmxg4oga
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 726;
	
	  ;% rtB.nvktoxykdu
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 827;
	
	  ;% rtB.maaefk2zln
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 828;
	
	  ;% rtB.gzrjlfoup3
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 929;
	
	  ;% rtB.mmeevj44ql
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 930;
	
	  ;% rtB.n1j3koitfo
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 931;
	
	  ;% rtB.kf5c2qayle
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 932;
	
	  ;% rtB.n43qdfzurg
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 933;
	
	  ;% rtB.hzcod5dbdr
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 934;
	
	  ;% rtB.lvnvuijq4v
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 935;
	
	  ;% rtB.i2ksobtr52
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 936;
	
	  ;% rtB.jloo4dpj3m
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 937;
	
	  ;% rtB.pcctb52ndf
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 938;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 17;
    sectIdxOffset = 1;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (rtDW)
    ;%
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% rtDW.cemqavd2el
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDW.juyqb1h3hy
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDW.krljbuyltk
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDW.pbs1g43e1x
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% rtDW.m4mw5moski.TimePtr
	  section.data(1).logicalSrcIdx = 4;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDW.oe3uj40uld.LoggedData
	  section.data(2).logicalSrcIdx = 5;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDW.nxj451vfra.LoggedData
	  section.data(3).logicalSrcIdx = 6;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDW.a40i0lngxi.LoggedData
	  section.data(4).logicalSrcIdx = 7;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDW.gzcwnrxeho.LoggedData
	  section.data(5).logicalSrcIdx = 8;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDW.ambph1lihp.LoggedData
	  section.data(6).logicalSrcIdx = 9;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDW.pvc5xpukqt.LoggedData
	  section.data(7).logicalSrcIdx = 10;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDW.joy3kruc2n.LoggedData
	  section.data(8).logicalSrcIdx = 11;
	  section.data(8).dtTransOffset = 7;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 24;
      section.data(24)  = dumData; %prealloc
      
	  ;% rtDW.f4n0vbpyn0
	  section.data(1).logicalSrcIdx = 12;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDW.k4b4rvbnmu
	  section.data(2).logicalSrcIdx = 13;
	  section.data(2).dtTransOffset = 2;
	
	  ;% rtDW.h2uzynsztv.PrevIndex
	  section.data(3).logicalSrcIdx = 14;
	  section.data(3).dtTransOffset = 3;
	
	  ;% rtDW.aetske3plq
	  section.data(4).logicalSrcIdx = 15;
	  section.data(4).dtTransOffset = 4;
	
	  ;% rtDW.a4emlmnf1u
	  section.data(5).logicalSrcIdx = 16;
	  section.data(5).dtTransOffset = 5;
	
	  ;% rtDW.hi0p0ghffi
	  section.data(6).logicalSrcIdx = 17;
	  section.data(6).dtTransOffset = 6;
	
	  ;% rtDW.fvbaont3ec
	  section.data(7).logicalSrcIdx = 18;
	  section.data(7).dtTransOffset = 7;
	
	  ;% rtDW.ifib2m1rbj
	  section.data(8).logicalSrcIdx = 19;
	  section.data(8).dtTransOffset = 108;
	
	  ;% rtDW.dylyuqxill
	  section.data(9).logicalSrcIdx = 20;
	  section.data(9).dtTransOffset = 109;
	
	  ;% rtDW.bc0lurlo2t
	  section.data(10).logicalSrcIdx = 21;
	  section.data(10).dtTransOffset = 210;
	
	  ;% rtDW.bhfio2k4dd
	  section.data(11).logicalSrcIdx = 22;
	  section.data(11).dtTransOffset = 211;
	
	  ;% rtDW.mb5u353z4m
	  section.data(12).logicalSrcIdx = 23;
	  section.data(12).dtTransOffset = 312;
	
	  ;% rtDW.gl4ai3titz
	  section.data(13).logicalSrcIdx = 24;
	  section.data(13).dtTransOffset = 313;
	
	  ;% rtDW.azhmqkyta1
	  section.data(14).logicalSrcIdx = 25;
	  section.data(14).dtTransOffset = 414;
	
	  ;% rtDW.jtidt0ghg0
	  section.data(15).logicalSrcIdx = 26;
	  section.data(15).dtTransOffset = 415;
	
	  ;% rtDW.c5ivyapl2d
	  section.data(16).logicalSrcIdx = 27;
	  section.data(16).dtTransOffset = 516;
	
	  ;% rtDW.iftxolr5s0
	  section.data(17).logicalSrcIdx = 28;
	  section.data(17).dtTransOffset = 517;
	
	  ;% rtDW.hu2bqlk5ww
	  section.data(18).logicalSrcIdx = 29;
	  section.data(18).dtTransOffset = 618;
	
	  ;% rtDW.a405rn5n2k
	  section.data(19).logicalSrcIdx = 30;
	  section.data(19).dtTransOffset = 619;
	
	  ;% rtDW.ptkwfp35cg
	  section.data(20).logicalSrcIdx = 31;
	  section.data(20).dtTransOffset = 720;
	
	  ;% rtDW.kjmcfdfosd
	  section.data(21).logicalSrcIdx = 32;
	  section.data(21).dtTransOffset = 721;
	
	  ;% rtDW.hdf2dewxr3
	  section.data(22).logicalSrcIdx = 33;
	  section.data(22).dtTransOffset = 822;
	
	  ;% rtDW.pv3exukcsy
	  section.data(23).logicalSrcIdx = 34;
	  section.data(23).dtTransOffset = 823;
	
	  ;% rtDW.kmbf3tx51m
	  section.data(24).logicalSrcIdx = 35;
	  section.data(24).dtTransOffset = 924;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 21;
      section.data(21)  = dumData; %prealloc
      
	  ;% rtDW.fwbslrmtnu
	  section.data(1).logicalSrcIdx = 36;
	  section.data(1).dtTransOffset = 0;
	
	  ;% rtDW.o5ypc114ys
	  section.data(2).logicalSrcIdx = 37;
	  section.data(2).dtTransOffset = 1;
	
	  ;% rtDW.hjqgajwrem
	  section.data(3).logicalSrcIdx = 38;
	  section.data(3).dtTransOffset = 2;
	
	  ;% rtDW.huazbnu45f
	  section.data(4).logicalSrcIdx = 39;
	  section.data(4).dtTransOffset = 3;
	
	  ;% rtDW.or5ci1nvlu
	  section.data(5).logicalSrcIdx = 40;
	  section.data(5).dtTransOffset = 4;
	
	  ;% rtDW.pkf2wh0bb4
	  section.data(6).logicalSrcIdx = 41;
	  section.data(6).dtTransOffset = 5;
	
	  ;% rtDW.aqzmjvcbt4
	  section.data(7).logicalSrcIdx = 42;
	  section.data(7).dtTransOffset = 6;
	
	  ;% rtDW.cht0x5uw5w
	  section.data(8).logicalSrcIdx = 43;
	  section.data(8).dtTransOffset = 7;
	
	  ;% rtDW.d3n1gqlvsh
	  section.data(9).logicalSrcIdx = 44;
	  section.data(9).dtTransOffset = 8;
	
	  ;% rtDW.j0b4zfsdwy
	  section.data(10).logicalSrcIdx = 45;
	  section.data(10).dtTransOffset = 9;
	
	  ;% rtDW.cscqjtgycq
	  section.data(11).logicalSrcIdx = 46;
	  section.data(11).dtTransOffset = 10;
	
	  ;% rtDW.c12yvmocko
	  section.data(12).logicalSrcIdx = 47;
	  section.data(12).dtTransOffset = 11;
	
	  ;% rtDW.h5qx3wt2io
	  section.data(13).logicalSrcIdx = 48;
	  section.data(13).dtTransOffset = 12;
	
	  ;% rtDW.ediykvo4e2
	  section.data(14).logicalSrcIdx = 49;
	  section.data(14).dtTransOffset = 13;
	
	  ;% rtDW.borrmivy1y
	  section.data(15).logicalSrcIdx = 50;
	  section.data(15).dtTransOffset = 14;
	
	  ;% rtDW.fpk3hvw3ty
	  section.data(16).logicalSrcIdx = 51;
	  section.data(16).dtTransOffset = 15;
	
	  ;% rtDW.cdovat5we3
	  section.data(17).logicalSrcIdx = 52;
	  section.data(17).dtTransOffset = 16;
	
	  ;% rtDW.lvk1jcs5a4
	  section.data(18).logicalSrcIdx = 53;
	  section.data(18).dtTransOffset = 17;
	
	  ;% rtDW.dkff2s30c1
	  section.data(19).logicalSrcIdx = 54;
	  section.data(19).dtTransOffset = 18;
	
	  ;% rtDW.f1rq30zf5g
	  section.data(20).logicalSrcIdx = 55;
	  section.data(20).dtTransOffset = 19;
	
	  ;% rtDW.gonwobyj4s
	  section.data(21).logicalSrcIdx = 56;
	  section.data(21).dtTransOffset = 20;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.fsto1f2fcp
	  section.data(1).logicalSrcIdx = 57;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.d0opiwbzqd.ftgzbl5sdt
	  section.data(1).logicalSrcIdx = 58;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.p35zgpfdin.kjes3oo2hl
	  section.data(1).logicalSrcIdx = 59;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.khjeapiu0l.g3rl2ae3h5
	  section.data(1).logicalSrcIdx = 60;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.owtmkdbqs0.kjes3oo2hl
	  section.data(1).logicalSrcIdx = 61;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.dzwiabih3z.g3rl2ae3h5
	  section.data(1).logicalSrcIdx = 62;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(10) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.l0cqxga3co.kjes3oo2hl
	  section.data(1).logicalSrcIdx = 63;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(11) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.jocvt5ychmz.ftgzbl5sdt
	  section.data(1).logicalSrcIdx = 64;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(12) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.lttvbukncc.kjes3oo2hl
	  section.data(1).logicalSrcIdx = 65;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(13) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.jqnaex011u.g3rl2ae3h5
	  section.data(1).logicalSrcIdx = 66;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(14) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.b3eyhtisdl.kjes3oo2hl
	  section.data(1).logicalSrcIdx = 67;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(15) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.jvqzj4tjypc.g3rl2ae3h5
	  section.data(1).logicalSrcIdx = 68;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(16) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% rtDW.nz405ughwu5.kjes3oo2hl
	  section.data(1).logicalSrcIdx = 69;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(17) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 2143658542;
  targMap.checksum1 = 1078990067;
  targMap.checksum2 = 1346521984;
  targMap.checksum3 = 150997040;

