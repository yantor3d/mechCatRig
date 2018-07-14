//Maya ASCII 2016 scene
//Name: wheel.ma
//Last modified: Mon, Jul 09, 2018 07:59:16 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" -nodeType "inverseMatrix"
		 "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	rename -uid "C0EFDD4D-44E1-E52F-9791-1482D903FBCF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.414903477240939 6.0224374612449187 31.645431829013173 ;
	setAttr ".r" -type "double3" -12.938352646673108 -2845.400000000483 -9.6598656159119908e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "01094DA5-418A-91BA-AAEA-C29A88918CEB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.482909974904182;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.2529928786011286 1.2687592084256545 14.514091782996804 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A3757C1B-4368-E3FC-40DD-0FAE0CD33AD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4217990379688104 105.29534154772774 14.102937090622673 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".rp" -type "double3" 0 0 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" 0 -1.4210854715202007e-014 1.4210854715202007e-014 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75858DB8-4465-9D67-6547-66AC47F890F7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000002;
	setAttr ".ow" 6.3153004650854019;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "1923CF4C-4811-C14F-5F11-E4A2E22BA347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.1621087312175415 1.1369706357859446 104.04538346053994 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AC477CAD-4120-C2E3-CE80-7D900BFF1E75";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.0364491675367127;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8723419B-4AC5-F875-88E3-48B503E7BEA8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 106.80036168983841 1.2141166215533952 14.716327516068525 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "950758FD-468D-2068-74AC-BCAF91A18C89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 2.6354907321711543;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode dagContainer -n "wheel_cmpt";
	rename -uid "622CA260-4433-F51E-2424-6ABE2F1F9677";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 9 ".pni";
	setAttr ".ctor" -type "string" "rporter";
	setAttr ".cdat" -type "string" "2018/07/07 10:30:16";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 2.8447345942258826 2.4657087315375685 8.0017159914871652 ;
	setAttr ".sp" -type "double3" 2.8447345942258826 2.4657087315375685 8.0017159914871652 ;
	setAttr ".aal" -type "attributeAlias" {"wheel_ctrl","publishedNodeInfo[0]","wheel_cover_ik_ctrl"
		,"publishedNodeInfo[1]","wheel_hinge_ik_ctrl","publishedNodeInfo[2]","wheel_rod_pv_ctrl"
		,"publishedNodeInfo[3]","wheel_rod_ik_ctrl","publishedNodeInfo[4]","wheel_base_fk_ctrl"
		,"publishedNodeInfo[5]","wheel_hinge_fk_ctrl","publishedNodeInfo[6]","wheel_rod_fk_ctrl"
		,"publishedNodeInfo[7]","wheel_fk_ctrl","publishedNodeInfo[8]"} ;
createNode transform -n "about" -p "wheel_cmpt";
	rename -uid "E52E7485-440A-68DB-3480-55A86902AB7E";
	addAttr -ci true -sn "componentInfo" -ln "componentInfo" -at "compound" -nc 3;
	addAttr -ci true -sn "component_part" -ln "component_part" -dt "string" -p "componentInfo";
	addAttr -ci true -sn "component_type" -ln "component_type" -dt "string" -p "componentInfo";
	addAttr -ci true -sn "component_version" -ln "component_version" -dt "string" -p "componentInfo";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".component_part" -type "string" "wheel";
	setAttr ".component_type" -type "string" "mechaCatWheel";
	setAttr ".component_version" -type "string" "1.0.0";
createNode transform -n "input" -p "wheel_cmpt";
	rename -uid "432A610F-42DB-F911-8D7C-D1BA97E43D6B";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "foot_srt" -p "input";
	rename -uid "97D49C54-4920-8EB4-0D4D-17BE0A3BD92E";
	setAttr ".t" -type "double3" 4.5 1.269 15.347 ;
createNode transform -n "strut_axle_srtOffset" -p "foot_srt";
	rename -uid "FC871350-4529-1619-8D75-44ADD3BFFEC9";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "strut_swivel_srtOffset" -p "strut_axle_srtOffset";
	rename -uid "59530325-4085-2B68-0108-D3AF252B0220";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "strut_hinge_srtOffset" -p "strut_swivel_srtOffset";
	rename -uid "7F95B77F-4FE3-CFD9-C133-7991350C186B";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "rod_hinge_srtOffset" -p "strut_hinge_srtOffset";
	rename -uid "DDDBA7ED-4A67-6149-986A-ED994427F4FB";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "rod_axle_srtOffset" -p "rod_hinge_srtOffset";
	rename -uid "0876B3AF-4D48-C377-E252-6E8DB157A029";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr ".r" -type "double3" 0 1.9878466759146975e-016 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "rod_swivel_srtOffset" -p "rod_axle_srtOffset";
	rename -uid "0FFB8283-4803-1FBD-6B2D-43922ACCEB35";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "wheel_srtOffset" -p "rod_swivel_srtOffset";
	rename -uid "3AB1D599-4EC9-DE42-EDED-88833F366F64";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "wheelCover_ctrl_srtOffset" -p "wheel_srtOffset";
	rename -uid "8AC55184-4301-E137-1BB4-F69ACA1F19F0";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "wheelCover_srtOffset" -p "wheel_srtOffset";
	rename -uid "2730EF6F-4611-5299-50C6-6A8EBA5B94AA";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 4.4408920985006262e-016 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "hinge_ik_base_srtOffset" -p "foot_srt";
	rename -uid "BBD8C43E-4927-F888-89C9-39BF51AA1716";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "hinge_ik_bend_srtOffset" -p "hinge_ik_base_srtOffset";
	rename -uid "986409C2-4DA4-2D19-572F-4889AEFE008E";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "hinge_ik_end_srtOffset" -p "hinge_ik_bend_srtOffset";
	rename -uid "FB2D0D07-4A37-B692-8A6C-62A84C1DE4EF";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "rod_ik_base_srtOffset" -p "hinge_ik_bend_srtOffset";
	rename -uid "9E42F643-4860-B993-2112-51A320AEACF0";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "rod_ik_bend_srtOffset" -p "rod_ik_base_srtOffset";
	rename -uid "407845DA-4A11-3E19-3D62-4F9EADFCA6F9";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "rod_ik_end_srtOffset" -p "rod_ik_bend_srtOffset";
	rename -uid "978711BC-4D67-7CFA-C1EF-3E8C2E0E9F22";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "base_fk_srtOffset" -p "foot_srt";
	rename -uid "C804FE3C-4844-D173-A6BC-ECBDCD7F69F9";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "hinge_fk_srtOffset" -p "base_fk_srtOffset";
	rename -uid "FFFCFC84-4715-0935-44C8-4AB6E24A308E";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "rod_fk_srtOffset" -p "hinge_fk_srtOffset";
	rename -uid "43D80F8E-45FB-8601-B0D0-6AB3871F041F";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "wheel_fk_srtOffset" -p "rod_fk_srtOffset";
	rename -uid "785CFB7E-4581-6184-0093-70A3CF7CDC13";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "hinge_ik_ctrl_srtOffset" -p "foot_srt";
	rename -uid "2C28DC5F-4201-6349-352E-B483E35D78F1";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "rod_ik_ctrl_srtOffset" -p "hinge_ik_ctrl_srtOffset";
	rename -uid "4969825E-40D1-FD68-B04C-56BC17C4E47D";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "rod_pv_ctrl_srtOffset" -p "hinge_ik_ctrl_srtOffset";
	rename -uid "811ABF20-4AC5-3C71-05B5-D19C6E94C09C";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "settings" -p "input";
	rename -uid "74D14322-49F3-2FBF-2803-CDA31D6F6404";
	addAttr -ci true -k true -sn "fkik" -ln "fkik" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".fkik" 1;
createNode transform -n "guided" -p "wheel_cmpt";
	rename -uid "DF975BAD-4E80-B5B9-41FF-68928B225352";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "foot_guided_srt" -p "guided";
	rename -uid "3A2A4230-49D9-799A-B004-B9B1F553B765";
createNode transform -n "strut_axle_guided_srtOffset" -p "foot_guided_srt";
	rename -uid "3C9087FB-4B9C-AC2E-9474-D997812314D7";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "strut_swivel_guided_srtOffset" -p "strut_axle_guided_srtOffset";
	rename -uid "5A14ED0D-4B20-0F21-E2E1-B2A707529A9D";
createNode transform -n "strut_hinge_guided_srtOffset" -p "strut_swivel_guided_srtOffset";
	rename -uid "0E1A5289-4AA5-2088-2374-CCB99BFC3CFA";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "rod_hinge_guided_srtOffset" -p "strut_hinge_guided_srtOffset";
	rename -uid "90DB153E-496E-3289-BDC8-4883D300E12A";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "rod_axle_guided_srtOffset" -p "rod_hinge_guided_srtOffset";
	rename -uid "60CFF311-4191-807D-1BA9-9B82F19E83AB";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr ".r" -type "double3" 0 1.9878466759146975e-016 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode transform -n "rod_swivel_guided_srtOffset" -p "rod_axle_guided_srtOffset";
	rename -uid "48ADE8DD-407F-202A-15F2-32879E532EB5";
createNode transform -n "wheel_guided_srtOffset" -p "rod_swivel_guided_srtOffset";
	rename -uid "5639F430-496B-E9D2-8658-47BCDCCF13D9";
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode nurbsCurve -n "wheel_guided_srtOffset_xVectorShape" -p "wheel_guided_srtOffset";
	rename -uid "469E1008-40C7-DDC2-0476-0F8CE1AEC152";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.25 0 0
		0.15000000000000002 0 -0.10000000000000001
		0.15000000000000002 0 -0.050000000000000003
		0 0 0
		0 0 0
		0.15000000000000002 0 0.050000000000000003
		0.15000000000000002 0 0.10000000000000001
		0.25 0 0
		;
createNode nurbsCurve -n "wheel_guided_srtOffset_zVectorShape" -p "wheel_guided_srtOffset";
	rename -uid "EC3D0567-40B5-AFA2-3D68-18A1FDA425E7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0 0.25
		0.10000000000000005 0 0.14999999999999999
		0.050000000000000037 0 0.15000000000000002
		0 0 0
		0 0 0
		-0.049999999999999968 0 0.15000000000000002
		-0.099999999999999978 0 0.15000000000000002
		5.5511151231257827e-017 0 0.25
		;
createNode nurbsCurve -n "wheel_guided_srtOffset_yVectorShape" -p "wheel_guided_srtOffset";
	rename -uid "A076DDA3-4D1E-23FA-EAAF-469F6F70C88E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0.25 0
		-0.099999999999999978 0.15000000000000002 -2.2204460492503132e-017
		-0.049999999999999968 0.15000000000000002 -1.1102230246251566e-017
		0 0 0
		0 0 0
		0.050000000000000037 0.15000000000000002 1.1102230246251566e-017
		0.10000000000000005 0.14999999999999999 2.2204460492503132e-017
		5.5511151231257827e-017 0.25 0
		;
createNode pointConstraint -n "wheel_guided_srtOffset2_pointConstraint1" -p "wheel_guided_srtOffset";
	rename -uid "5A6BD79B-4726-46A2-0501-04AEC709D861";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "wheel_guide_srtW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.49599122939891549 1.5698909759521482 1.1061270152268321e-005 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "wheel_guided_srtOffset2_aimConstraint1" -p "wheel_guided_srtOffset";
	rename -uid "8D154D3E-4CFA-B45E-054A-6E97044C7F52";
	addAttr -dcb 0 -ci true -sn "w0" -ln "wheel_ctrl_aim_guide_srtW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "wheelCover_ctrl_guided_srtOffset" -p "wheel_guided_srtOffset";
	rename -uid "1BA95FB1-4C35-5F78-FEF1-DEB5073865E7";
createNode pointConstraint -n "wheelCover_ctrl_guided_srtOffset_pointConstraint1" 
		-p "wheelCover_ctrl_guided_srtOffset";
	rename -uid "F243D37A-4D22-5917-CF04-FF8089341FC6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "wheel_cover_ik_guide_srtW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0 -2 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "wheelCover_ctrl_guided_srtOffset_orientConstraint1" 
		-p "wheelCover_ctrl_guided_srtOffset";
	rename -uid "18EDDC3E-4489-8E56-9BE7-20BB11D17F5B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "wheel_cover_ik_guide_srtW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "wheelCover_guided_srtOffset" -p "wheel_guided_srtOffset";
	rename -uid "1367B9CA-45D0-630B-CFE8-7CA5AC5C4874";
	addAttr -ci true -sn "upVector" -ln "upVector" -at "double3" -nc 3;
	addAttr -ci true -sn "upVectorX" -ln "upVectorX" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorY" -ln "upVectorY" -at "double" -p "upVector";
	addAttr -ci true -sn "upVectorZ" -ln "upVectorZ" -at "double" -p "upVector";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 4.4408920985006262e-016 0 ;
	setAttr -k on ".upVector";
	setAttr -k on ".upVectorX";
	setAttr -k on ".upVectorY";
	setAttr -k on ".upVectorZ";
createNode pointConstraint -n "rod_swivel_guided_srtOffset_pointConstraint1" -p "rod_swivel_guided_srtOffset";
	rename -uid "A40546F3-4072-680F-B202-AFB967CC5F9B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_swivel_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4.4408920985006262e-016 0.36377620697021484 1.239776611328125e-005 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "rod_axle_guided_srtOffset_pointConstraint1" -p "rod_axle_guided_srtOffset";
	rename -uid "1A72E320-48BA-8A51-F80A-FAA6D5288092";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_axle_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.32399964332580566 -4.4408920985006262e-016 1.7763568394002505e-015 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "rod_hinge_guided_srtOffset_pointConstraint1" -p "rod_hinge_guided_srtOffset";
	rename -uid "32C53923-411A-DC90-933D-E7A2638F9332";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_hinge_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.81232330298552569 0.02519243955612227 4.5021408823231468e-009 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "strut_hinge_guided_srtOffset_pointConstraint1" -p "strut_hinge_guided_srtOffset";
	rename -uid "EB4DEADC-41D0-1C45-B98F-F6B3CD67BDAA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "strut_hinge_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.0018928150335950633 0 -0.34248864650726318 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "strut_swivel_guided_srtOffset_pointConstraint1" -p
		 "strut_swivel_guided_srtOffset";
	rename -uid "90608044-4B27-2707-016E-03B0A080C898";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "strut_swivel_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.001890579859415098 0 -0.48798680305480957 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "strut_axle_guided_srtOffset_pointConstraint1" -p "strut_axle_guided_srtOffset";
	rename -uid "54196C1C-4917-D0CE-E21E-BBA767EA4850";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "strut_axle_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.56446707248688011 8.3249953286568257e-006 -0.002217129732766665 ;
	setAttr -k on ".w0";
createNode transform -n "hinge_ik_base_guided_srtOffset" -p "foot_guided_srt";
	rename -uid "AE8AE733-40A5-C37E-9F6F-13BFE2CD6533";
createNode transform -n "hinge_ik_bend_guided_srtOffset" -p "hinge_ik_base_guided_srtOffset";
	rename -uid "07EFCF04-44E7-84BD-A86A-52BBD0C839BE";
createNode transform -n "hinge_ik_end_guided_srtOffset" -p "hinge_ik_bend_guided_srtOffset";
	rename -uid "3D2B8A75-477A-19F0-7A26-6CB837AE635D";
createNode pointConstraint -n "hinge_ik_end_guided_srtOffset_pointConstraint1" -p
		 "hinge_ik_end_guided_srtOffset";
	rename -uid "057E4202-4932-D296-A372-49A4FBEC51C8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_end_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.81232330298552746 0.02519243955612227 4.5021408823231468e-009 ;
	setAttr -k on ".w0";
createNode transform -n "rod_ik_base_guided_srtOffset" -p "hinge_ik_bend_guided_srtOffset";
	rename -uid "26EBC29E-4A7B-B715-AABC-2DAA1A968523";
createNode transform -n "rod_ik_bend_guided_srtOffset" -p "rod_ik_base_guided_srtOffset";
	rename -uid "A2978E5D-4232-DC5A-C828-ABB1214F5191";
createNode transform -n "rod_ik_end_guided_srtOffset" -p "rod_ik_bend_guided_srtOffset";
	rename -uid "F8B9C111-4DDE-ED0B-788D-2DBC1669D345";
createNode pointConstraint -n "rod_ik_end_guided_srtOffset_pointConstraint1" -p "rod_ik_end_guided_srtOffset";
	rename -uid "E8DA21CB-4F77-87ED-7505-75BB635F058A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_end_guide_srtW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.4852806575760269e-006 1.933665889087715 -5.0731208993681776e-006 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "rod_ik_bend_guided_srtOffset_pointConstraint1" -p "rod_ik_bend_guided_srtOffset";
	rename -uid "501FD6C8-4F8C-EF94-4843-018B600AB0C5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_axle_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.32484812174135058 -1.2604438781593785e-006 -8.5785671597449209e-006 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "rod_ik_base_guided_srtOffset_pointConstraint1" -p "rod_ik_base_guided_srtOffset";
	rename -uid "7F36EE61-4006-8203-F856-B08827A80462";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_fk_guided_srtOffsetW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.81232330298552569 -0.02519243955612227 -4.5021408823231468e-009 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "hinge_ik_bend_guided_srtOffset_pointConstraint1" -p
		 "hinge_ik_bend_guided_srtOffset";
	rename -uid "0FEECE23-437B-4C46-EF2B-C89E7EAA85A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_start_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.23517417818897e-006 0 -0.83047544956207275 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "hinge_ik_base_guided_srtOffset_pointConstraint1" -p
		 "hinge_ik_base_guided_srtOffset";
	rename -uid "D1D931E4-4301-E16B-110D-B6973668CA9F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "strut_axle_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.56446707248688011 8.3249953286568257e-006 -0.002217129732766665 ;
	setAttr -k on ".w0";
createNode transform -n "hinge_ik_ctrl_guided_srtOffset" -p "foot_guided_srt";
	rename -uid "5D9A474B-491D-430A-6A65-8291B36CDF4A";
createNode transform -n "rod_ik_ctrl_guided_srtOffset" -p "hinge_ik_ctrl_guided_srtOffset";
	rename -uid "CAD35542-4E4F-02AF-C85C-74A97CF23F94";
createNode pointConstraint -n "rod_ik_guided_srtOffset_pointConstraint1" -p "rod_ik_ctrl_guided_srtOffset";
	rename -uid "5DA495E9-447D-7631-F56D-86A8B335B3B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_end_guide_srtW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.32399964332580389 1.9336671829223628 1.7763568394002505e-015 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "rod_ik_ctrl_guided_srtOffset_orientConstraint1" -p
		 "rod_ik_ctrl_guided_srtOffset";
	rename -uid "D5D822FE-4E24-067B-DEB0-F696AD794AC2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_end_guide_srtW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode pointConstraint -n "hinge_ik_guided_srtOffset_pointConstraint1" -p "hinge_ik_ctrl_guided_srtOffset";
	rename -uid "D84A936F-4D10-04FA-944C-0C9D0A4B1D6E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_end_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.24785399532446739 0.025200764551450927 -0.83269257479269854 ;
	setAttr -k on ".w0";
createNode transform -n "rod_pv_ctrl_guided_srtOffset" -p "hinge_ik_ctrl_guided_srtOffset";
	rename -uid "A7775393-4458-396F-8C0E-06A810687928";
createNode pointConstraint -n "rod_pv_ctrl_guided_srtOffset_pointConstraint1" -p
		 "rod_pv_ctrl_guided_srtOffset";
	rename -uid "DE6DE0A7-4AAC-B74B-E252-2F8652FD18E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_pv_guide_srtW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.99915300686511088 0.025193733468877211 -3.5054462621531002e-006 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "rod_pv_ctrl_guided_srtOffset_orientConstraint1" -p
		 "rod_pv_ctrl_guided_srtOffset";
	rename -uid "1F73B0EC-4943-4E50-73F0-2597BB2E0274";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_pv_guide_srtW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "hinge_ik_ctrl_guided_srtOffset_orientConstraint1" 
		-p "hinge_ik_ctrl_guided_srtOffset";
	rename -uid "DDDA9CB7-4D31-F3C6-E124-289381464AF7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_end_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "base_fk_guided_srtOffset" -p "foot_guided_srt";
	rename -uid "54EA17DD-47D1-3509-D8F3-BCA9802B4F5F";
createNode nurbsCurve -n "base_fk_guided_srtOffset_xVectorShape" -p "base_fk_guided_srtOffset";
	rename -uid "00D5228F-4C98-4FAD-CA33-5B93844609E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.25 0 0
		0.15000000000000002 0 -0.10000000000000001
		0.15000000000000002 0 -0.050000000000000003
		0 0 0
		0 0 0
		0.15000000000000002 0 0.050000000000000003
		0.15000000000000002 0 0.10000000000000001
		0.25 0 0
		;
createNode nurbsCurve -n "base_fk_guided_srtOffset_zVectorShape" -p "base_fk_guided_srtOffset";
	rename -uid "7E5ADE36-422A-18EB-8CD6-1786A219AC81";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0 0.25
		0.10000000000000005 0 0.14999999999999999
		0.050000000000000037 0 0.15000000000000002
		0 0 0
		0 0 0
		-0.049999999999999968 0 0.15000000000000002
		-0.099999999999999978 0 0.15000000000000002
		5.5511151231257827e-017 0 0.25
		;
createNode nurbsCurve -n "base_fk_guided_srtOffset_yVectorShape" -p "base_fk_guided_srtOffset";
	rename -uid "05CD9528-4169-6EF4-36FB-FE9E105D1CBA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0.25 0
		-0.099999999999999978 0.15000000000000002 -2.2204460492503132e-017
		-0.049999999999999968 0.15000000000000002 -1.1102230246251566e-017
		0 0 0
		0 0 0
		0.050000000000000037 0.15000000000000002 1.1102230246251566e-017
		0.10000000000000005 0.14999999999999999 2.2204460492503132e-017
		5.5511151231257827e-017 0.25 0
		;
createNode transform -n "hinge_fk_guided_srtOffset" -p "base_fk_guided_srtOffset";
	rename -uid "45764DEF-4CA7-7C46-2573-A1BE59B734FB";
createNode nurbsCurve -n "hinge_fk_guided_srtOffset_xVectorShape" -p "hinge_fk_guided_srtOffset";
	rename -uid "4A7917B3-48FC-FB38-2A28-B3980EA94559";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.25 0 0
		0.15000000000000002 0 -0.10000000000000001
		0.15000000000000002 0 -0.050000000000000003
		0 0 0
		0 0 0
		0.15000000000000002 0 0.050000000000000003
		0.15000000000000002 0 0.10000000000000001
		0.25 0 0
		;
createNode nurbsCurve -n "hinge_fk_guided_srtOffset_zVectorShape" -p "hinge_fk_guided_srtOffset";
	rename -uid "661DE059-460B-0C98-A7C8-CDBBA3FE4594";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0 0.25
		0.10000000000000005 0 0.14999999999999999
		0.050000000000000037 0 0.15000000000000002
		0 0 0
		0 0 0
		-0.049999999999999968 0 0.15000000000000002
		-0.099999999999999978 0 0.15000000000000002
		5.5511151231257827e-017 0 0.25
		;
createNode nurbsCurve -n "hinge_fk_guided_srtOffset_yVectorShape" -p "hinge_fk_guided_srtOffset";
	rename -uid "E6F30F4E-4DF4-0281-81C7-9D9A61BA6982";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0.25 0
		-0.099999999999999978 0.15000000000000002 -2.2204460492503132e-017
		-0.049999999999999968 0.15000000000000002 -1.1102230246251566e-017
		0 0 0
		0 0 0
		0.050000000000000037 0.15000000000000002 1.1102230246251566e-017
		0.10000000000000005 0.14999999999999999 2.2204460492503132e-017
		5.5511151231257827e-017 0.25 0
		;
createNode transform -n "rod_fk_guided_srtOffset" -p "hinge_fk_guided_srtOffset";
	rename -uid "1B45B73D-42F9-66DF-3F2F-3C974F7D5799";
createNode nurbsCurve -n "rod_fk_guided_srtOffset_xVectorShape" -p "rod_fk_guided_srtOffset";
	rename -uid "97E0D76F-47D5-49EA-3F0D-68AB0BE263BC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.25 0 0
		0.15000000000000002 0 -0.10000000000000001
		0.15000000000000002 0 -0.050000000000000003
		0 0 0
		0 0 0
		0.15000000000000002 0 0.050000000000000003
		0.15000000000000002 0 0.10000000000000001
		0.25 0 0
		;
createNode nurbsCurve -n "rod_fk_guided_srtOffset_zVectorShape" -p "rod_fk_guided_srtOffset";
	rename -uid "8F84151A-4916-F32F-6D18-3EB5046A7376";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0 0.25
		0.10000000000000005 0 0.14999999999999999
		0.050000000000000037 0 0.15000000000000002
		0 0 0
		0 0 0
		-0.049999999999999968 0 0.15000000000000002
		-0.099999999999999978 0 0.15000000000000002
		5.5511151231257827e-017 0 0.25
		;
createNode nurbsCurve -n "rod_fk_guided_srtOffset_yVectorShape" -p "rod_fk_guided_srtOffset";
	rename -uid "31E65069-4359-EE9F-41F3-439E186E66D3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0.25 0
		-0.099999999999999978 0.15000000000000002 -2.2204460492503132e-017
		-0.049999999999999968 0.15000000000000002 -1.1102230246251566e-017
		0 0 0
		0 0 0
		0.050000000000000037 0.15000000000000002 1.1102230246251566e-017
		0.10000000000000005 0.14999999999999999 2.2204460492503132e-017
		5.5511151231257827e-017 0.25 0
		;
createNode transform -n "wheel_fk_guided_srtOffset" -p "rod_fk_guided_srtOffset";
	rename -uid "31459CC5-48EE-34E7-DBBF-1BA8AF1AFA7A";
createNode nurbsCurve -n "wheel_fk_guided_srtOffset_xVectorShape" -p "wheel_fk_guided_srtOffset";
	rename -uid "161A88C4-48B9-1E2A-225F-BC833CCF61F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.25 0 0
		0.15000000000000002 0 -0.10000000000000001
		0.15000000000000002 0 -0.050000000000000003
		0 0 0
		0 0 0
		0.15000000000000002 0 0.050000000000000003
		0.15000000000000002 0 0.10000000000000001
		0.25 0 0
		;
createNode nurbsCurve -n "wheel_fk_guided_srtOffset_zVectorShape" -p "wheel_fk_guided_srtOffset";
	rename -uid "D797C41F-4A7E-8986-D1D6-FFA1943B0C6C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0 0.25
		0.10000000000000005 0 0.14999999999999999
		0.050000000000000037 0 0.15000000000000002
		0 0 0
		0 0 0
		-0.049999999999999968 0 0.15000000000000002
		-0.099999999999999978 0 0.15000000000000002
		5.5511151231257827e-017 0 0.25
		;
createNode nurbsCurve -n "wheel_fk_guided_srtOffset_yVectorShape" -p "wheel_fk_guided_srtOffset";
	rename -uid "4D716B37-4324-3156-617C-02AD8F9A1A19";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		5.5511151231257827e-017 0.25 0
		-0.099999999999999978 0.15000000000000002 -2.2204460492503132e-017
		-0.049999999999999968 0.15000000000000002 -1.1102230246251566e-017
		0 0 0
		0 0 0
		0.050000000000000037 0.15000000000000002 1.1102230246251566e-017
		0.10000000000000005 0.14999999999999999 2.2204460492503132e-017
		5.5511151231257827e-017 0.25 0
		;
createNode pointConstraint -n "wheel_fk_guided_srtOffset_pointConstraint1" -p "wheel_fk_guided_srtOffset";
	rename -uid "C5EE62A1-4D0C-506F-DBC5-8AA8D6A23B54";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rod_start_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.32399964332580522 0.36377620697021418 1.2397766115057607e-005 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "wheel_fk_guided_srtOffset_aimConstraint1" -p "wheel_fk_guided_srtOffset";
	rename -uid "9FE52442-4486-A1D8-3424-F4B5A6281A0C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "wheel_fk_aim_guide_srtW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode pointConstraint -n "rod_fk_guided_srtOffset_pointConstraint1" -p "rod_fk_guided_srtOffset";
	rename -uid "42F5D989-42D4-2B48-FF4C-729C5F3C78EE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_end_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.81232330298552569 0.02519243955612227 4.5021408823231468e-009 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "rod_fk_guided_srtOffset_aimConstraint1" -p "rod_fk_guided_srtOffset";
	rename -uid "868393E2-48C3-7F20-238D-9C92238A6B42";
	addAttr -dcb 0 -ci true -sn "w0" -ln "rod_fk_aim_guide_srtW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode pointConstraint -n "hinge_fk_guided_srtOffset_pointConstraint1" -p "hinge_fk_guided_srtOffset";
	rename -uid "A8193FE1-44F8-5D25-7BF9-5B8379611939";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_start_guide_srtW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.2351741790771484e-006 0 -0.83047544956207275 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "hinge_fk_guided_srtOffset_aimConstraint1" -p "hinge_fk_guided_srtOffset";
	rename -uid "57783629-4969-757E-D75E-DFB5C36322F7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "hinge_fk_aim_guide_srtW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode pointConstraint -n "base_fk_guided_srtOffset_pointConstraint1" -p "base_fk_guided_srtOffset";
	rename -uid "98114EF8-439D-4308-21B5-C193997E0BFB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_fk_guide_srtW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 5.0644669532775861 1.2687605023384094 15.344563722610474 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "base_fk_guided_srtOffset_aimConstraint1" -p "base_fk_guided_srtOffset";
	rename -uid "D43BBC19-46D9-4EA0-6E56-93B3EB101E1C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "base_fk_aim_guide_srtW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "guides" -p "wheel_cmpt";
	rename -uid "281484E6-4267-7835-281A-0EBD8B555EB9";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "wheel_base_guide_srt" -p "guides";
	rename -uid "A06614CE-4FD8-47ED-AA5F-23AB2E6AD98C";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.0644669532775861 1.2687605023384094 15.344563722610474 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_base_guide_srt";
	rename -uid "7C715578-4F75-6BDE-BFAE-98A757D04A27";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 -3.3306690738754696e-016 -1.7763568394002505e-015
		0 -3.3306690738754696e-016 0.24999999999999822
		-0.25 -3.3306690738754696e-016 -1.7763568394002505e-015
		0 -3.3306690738754696e-016 -0.25000000000000178
		0.25 -3.3306690738754696e-016 -1.7763568394002505e-015
		0 0.24999999999999967 -1.7763568394002505e-015
		-0.25 -3.3306690738754696e-016 -1.7763568394002505e-015
		0 -0.25000000000000033 -1.7763568394002505e-015
		0.25 -3.3306690738754696e-016 -1.7763568394002505e-015
		0 -3.3306690738754696e-016 0.24999999999999822
		0 -0.25000000000000033 -1.7763568394002505e-015
		0 -3.3306690738754696e-016 -0.25000000000000178
		0 0.24999999999999967 -1.7763568394002505e-015
		0 -3.3306690738754696e-016 0.24999999999999822
		;
createNode transform -n "wheel_base_fk_ctrl_aim_guide_srt" -p "wheel_base_guide_srt";
	rename -uid "15282A1C-406A-789A-F2B7-C7AFA1035E16";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.5 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_base_fk_ctrl_aim_guide_srt";
	rename -uid "5B9DB6F0-4212-D1A3-E6C7-1AA27C324D05";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_base_fk_ctrl_up_guide_srt" -p "wheel_base_guide_srt";
	rename -uid "37CC3B16-4497-934E-CF53-BBA363D26032";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0.5 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_base_fk_ctrl_up_guide_srt";
	rename -uid "66D1844C-45DD-97D3-8E26-AAAD876383F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_strut_axle_guide_srt" -p "wheel_base_guide_srt";
	rename -uid "F2E0BA04-461D-C1A4-4D6E-A69907CD2950";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-016 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_strut_axle_guide_srt";
	rename -uid "30616066-48B3-4112-ABE2-D1A7197FEFFD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_strut_swivel_guide_srt" -p "guides";
	rename -uid "CDBD1A05-485D-15EB-9B17-9DB1C750DF4B";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.0625763734181719 1.2687605023384094 14.856576919555664 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_strut_swivel_guide_srt";
	rename -uid "5AB6CCCA-4E83-9D86-672B-33928FD6C6E6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_hinge_start_guide_srt" -p "guides";
	rename -uid "EEC7721B-43A3-A909-0123-178F31879C39";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.0644691884517652 1.2687605023384094 14.514088273048401 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_hinge_start_guide_srt";
	rename -uid "27BD0855-4903-0074-DB7E-C89358CC8670";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 0 0
		0 0 0.25
		-0.25 0 0
		0 0 -0.25
		0.25 0 0
		0 0.25 0
		-0.25 0 0
		0 -0.25 0
		0.25 0 0
		0 0 0.25
		0 -0.25 0
		0 0 -0.25
		0 0.25 0
		0 0 0.25
		;
createNode transform -n "wheel_hinge_fk_ctrl_aim_guide_srt" -p "wheel_hinge_start_guide_srt";
	rename -uid "1F3530BE-4A12-FB19-7DD5-9591348B331D";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.5 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_hinge_fk_ctrl_aim_guide_srt";
	rename -uid "85BC486E-4CAE-04A4-1A76-83B2CBD76F41";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_hinge_fk_ctrl_up_guide_srt" -p "wheel_hinge_start_guide_srt";
	rename -uid "843ED3EF-4BC4-1EC1-C566-E192625B0405";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0.5 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_hinge_fk_ctrl_up_guide_srt";
	rename -uid "47053AA1-4867-D867-34FC-7188D99D04F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_strut_hinge_guide_srt" -p "wheel_hinge_start_guide_srt";
	rename -uid "D7BD2496-4195-6777-A397-73ABFB6485EB";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_strut_hinge_guide_srt";
	rename -uid "5ADA945C-4B8F-9F2A-88B8-D2A2C0DD6D85";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_hinge_end_guide_srt" -p "guides";
	rename -uid "37923D6F-4280-CB75-33D1-E8BB70E56ABD";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.2521458854662395 1.268761 14.514088277550542 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_hinge_end_guide_srt";
	rename -uid "7EA161B8-483E-66F0-FE40-BB8B7E59DF7F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 0 0
		0 0 0.25
		-0.25 0 0
		0 0 -0.25
		0.25 0 0
		0 0.25 0
		-0.25 0 0
		0 -0.25 0
		0.25 0 0
		0 0 0.25
		0 -0.25 0
		0 0 -0.25
		0 0.25 0
		0 0 0.25
		;
createNode transform -n "wheel_rod_fk_ctrl_aim_guide_srt" -p "wheel_hinge_end_guide_srt";
	rename -uid "3C49D069-4CAC-33E7-4135-F68343E1A56B";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.5 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_rod_fk_ctrl_aim_guide_srt";
	rename -uid "E2876E25-4860-E91E-9C7A-AD9B9D826562";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_rod_fk_ctrl_up_guide_srt" -p "wheel_hinge_end_guide_srt";
	rename -uid "14DE9C21-4472-E309-53D1-1CB9311A59EE";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0.5 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_rod_fk_ctrl_up_guide_srt";
	rename -uid "BD52F5D6-404D-F932-CB59-24B17BA88A96";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_rod_hinge_guide_srt" -p "wheel_hinge_end_guide_srt";
	rename -uid "DB28C04A-44F9-5E9F-AF8D-97B06B26FD66";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_rod_hinge_guide_srt";
	rename -uid "82C5A209-46FC-04B0-0F6F-7383E926A48B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_rod_pv_guide_srt" -p "guides";
	rename -uid "96F88F32-4B45-C75F-3BFF-AB9FD3138DC4";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.2529928786011286 1.2687592084256545 14.514091782996804 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_rod_pv_guide_srt";
	rename -uid "D4C95800-4856-5A77-7628-B8947D1A8324";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 0 0
		0 0 0.25
		-0.25 0 0
		0 0 -0.25
		0.25 0 0
		0 0.25 0
		-0.25 0 0
		0 -0.25 0
		0.25 0 0
		0 0 0.25
		0 -0.25 0
		0 0 -0.25
		0 0.25 0
		0 0 0.25
		;
createNode transform -n "wheel_rod_start_guide_srt" -p "guides";
	rename -uid "E7DFDC42-4959-AD84-E400-1E9910AED7AB";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.9281462421404343 1.6577291488647459 14.514100675316657 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_rod_start_guide_srt";
	rename -uid "F06954E4-45BD-A0C4-0C7F-568B2F97274E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 0 0
		0 0 0.25
		-0.25 0 0
		0 0 -0.25
		0.25 0 0
		0 0.25 0
		-0.25 0 0
		0 -0.25 0
		0.25 0 0
		0 0 0.25
		0 -0.25 0
		0 0 -0.25
		0 0.25 0
		0 0 0.25
		;
createNode transform -n "wheel_fk_aim_guide_srt" -p "wheel_rod_start_guide_srt";
	rename -uid "488BC834-414F-7D3A-124F-3A939E3B3FCA";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.5 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_fk_aim_guide_srt";
	rename -uid "940B513D-4759-1E42-D132-4BB2D93C5F3D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_fk_up_guide_srt" -p "wheel_rod_start_guide_srt";
	rename -uid "962F8350-45FF-80FD-986F-D299AD88E011";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0.5 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_fk_up_guide_srt";
	rename -uid "24FFA112-4ADE-EB93-ACAD-BAA23A7895B5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_rod_swivel_guide_srt" -p "wheel_rod_start_guide_srt";
	rename -uid "07EC64DA-4E2B-B8BB-89F9-0187083845AD";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-015 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_rod_swivel_guide_srt";
	rename -uid "2B58B4DE-4BB9-3C16-7EA0-33AEC3D55BC9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k on ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_rod_end_guide_srt" -p "guides";
	rename -uid "B844142D-41F8-F1DD-C31F-FB9B73A79C97";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.9281462421404356 3.2276201248168945 14.514088277550544 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_rod_end_guide_srt";
	rename -uid "B9D29E24-450A-03D8-8EB8-46A3C1D26D80";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.5 0 0
		0 0 0.5
		-0.5 0 0
		0 0 -0.5
		0.5 0 0
		0 0.5 0
		-0.5 0 0
		0 -0.5 0
		0.5 0 0
		0 0 0.5
		0 -0.5 0
		0 0 -0.5
		0 0.5 0
		0 0 0.5
		;
createNode transform -n "wheel_rod_axle_guide_srt" -p "guides";
	rename -uid "5E11548E-4129-38B6-480F-68A49EF55D42";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.9281462421404356 1.2939529418945312 14.514088277550544 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_rod_axle_guide_srt";
	rename -uid "2CCBBDC2-4F87-506D-B187-7FB6ED575645";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_guide_srt" -p "guides";
	rename -uid "EC18AFF1-473B-05CB-07CB-9F89AB969F5F";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.4321550127415206 3.2276201248168945 14.514111736586809 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_guide_srt";
	rename -uid "25CAA11B-460D-77EB-A456-099C47217EB8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.5 0 0
		0 0 0.5
		-0.5 0 0
		0 0 -0.5
		0.5 0 0
		0 0.5 0
		-0.5 0 0
		0 -0.5 0
		0.5 0 0
		0 0 0.5
		0 -0.5 0
		0 0 -0.5
		0 0.5 0
		0 0 0.5
		;
createNode transform -n "wheel_ctrl_aim_guide_srt" -p "wheel_guide_srt";
	rename -uid "B0F98971-47FD-86EB-59A2-4FB3DB9F661A";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.5 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_ctrl_aim_guide_srt";
	rename -uid "D31A2211-4AEE-15C5-B4AF-63A5F0489C9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_ctrl_up_guide_srt" -p "wheel_guide_srt";
	rename -uid "85793A07-4796-5F5C-21B9-5FB3C0CB6384";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0.5 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_ctrl_up_guide_srt";
	rename -uid "8D3683BD-434C-836A-1A57-4FBF950AC201";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.125 0 0
		0 0 0.125
		-0.125 0 0
		0 0 -0.125
		0.125 0 0
		0 0.125 0
		-0.125 0 0
		0 -0.125 0
		0.125 0 0
		0 0 0.125
		0 -0.125 0
		0 0 -0.125
		0 0.125 0
		0 0 0.125
		;
createNode transform -n "wheel_cover_ik_guide_srt" -p "guides";
	rename -uid "BCDD3ED4-4F3A-88E6-1C10-62989B4DE20F";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.432155012741521 3.227620124816895 12.514111736586809 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape2" -p "wheel_cover_ik_guide_srt";
	rename -uid "F25FCF40-42C3-7ED3-131E-49851EB61ACF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 0 0
		0 0 0.25
		-0.25 0 0
		0 0 -0.25
		0.25 0 0
		0 0.25 0
		-0.25 0 0
		0 -0.25 0
		0.25 0 0
		0 0 0.25
		0 -0.25 0
		0 0 -0.25
		0 0.25 0
		0 0 0.25
		;
createNode transform -n "internal" -p "wheel_cmpt";
	rename -uid "CB6C302E-40AF-5475-3CA0-CDA85B1ADDDA";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode aimConstraint -n "wheel_rod_ik_rotatePlane_aimConstraint" -p "internal";
	rename -uid "D718C22B-40B7-9CAB-17CB-0D91629522FF";
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 0 -1 0 ;
	setAttr ".wu" -type "double3" 1 0 0 ;
	setAttr ".wut" 1;
createNode aimConstraint -n "wheel_hinge_ik_rotatePlane_aimConstraint" -p "internal";
	rename -uid "AEAED79F-424E-3B5A-4367-BD95F7453C56";
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".u" -type "double3" 1 0 0 ;
	setAttr ".wut" 2;
createNode aimConstraint -n "wheel_strut_hinge_aimConstraint" -p "internal";
	rename -uid "592555FB-4BC4-2515-5647-7589A306E9E8";
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".wut" 1;
createNode aimConstraint -n "wheel_strut_swivel_aimConistraint" -p "internal";
	rename -uid "D13EAF63-4C30-D316-2F1B-8B8A5A30C9D3";
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
createNode aimConstraint -n "wheel_strut_axle_aimConstraint" -p "internal";
	rename -uid "970E4F86-49DE-D81B-2A0F-0E8A3A365AC2";
	setAttr ".wut" 1;
createNode aimConstraint -n "wheel_rod_hinge_aimConstriant" -p "internal";
	rename -uid "5FFABA2A-4F86-44D6-7CE2-8BA3F47A58B4";
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
createNode aimConstraint -n "wheel_rod_axle_aimConstriant" -p "internal";
	rename -uid "B3DE93DE-49C8-099B-D317-26852A0F7DCF";
	setAttr ".wut" 1;
createNode aimConstraint -n "wheel_rod_swivel_aimConstraint" -p "internal";
	rename -uid "800E9C0E-4C91-B4A9-8A5A-B7A51965BE0E";
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" -1 0 0 ;
	setAttr ".wu" -type "double3" -1 0 0 ;
	setAttr ".wut" 2;
createNode aimConstraint -n "wheel_cover_aimConstraint" -p "internal";
	rename -uid "CE836550-451C-232A-6611-099ADF6110DF";
	setAttr ".wut" 1;
createNode transform -n "world_srt" -p "internal";
	rename -uid "29E17B79-4C48-C0EB-CFAB-DDB0C3EB6E97";
createNode transform -n "control" -p "wheel_cmpt";
	rename -uid "BC02DEDA-4A5E-0E14-0D0C-3AB928E52FDB";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "wheel_ctrl_srtOffset" -p "control";
	rename -uid "393F3067-4889-66B4-678A-ED9A3001F14C";
createNode transform -n "wheel_ctrl" -p "wheel_ctrl_srtOffset";
	rename -uid "B2D122B4-4FEE-44E0-4B24-22BA8CA52617";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_ctrlShape" -p "wheel_ctrl";
	rename -uid "C1E64690-4331-F844-40B5-7F900DC20024";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 36 0 no 3
		37 0 0.17431148549531633 0.34862297099063266 0.52293445648594894 0.69724594198126522
		 0.8715574274765816 1.0458689129718979 1.2201803984672142 1.3944918839625304 1.5688033694578467
		 1.743114854953163 1.9174263404484793 2.0917378259437953 2.2660493114391116 2.4403607969344279
		 2.6146722824297441 2.7889837679250604 2.9632952534203767 3.137606738915693 3.3119182244110092
		 3.4862297099063255 3.6605411954016418 3.8348526808969581 4.0091641663922744 4.1834756518875906
		 4.3577871373829069 4.5320986228782232 4.7064101083735395 4.8807215938688557 5.055033079364172
		 5.2293445648594883 5.4036560503548046 5.5779675358501208 5.7522790213454371 5.9265905068407534
		 6.1009019923360697 6.2752134778313859
		37
		-4.4408920985006262e-016 1.703797338258243 -1.8675514030324416e-015
		-1.5835769787860955e-017 1.4666941253604848 0.25861774674765714
		-3.1190377724003914e-017 1.3995032455174083 0.50937752412728088
		-4.5597281816095682e-017 1.2897891677420952 0.74466012319376229
		-5.8618735573543266e-017 1.1408854987697499 0.95731660123320395
		-6.9859088713100249e-017 0.95731660123320428 1.1408854987697499
		-7.8976808792514264e-017 0.74466012319376262 1.289789167742095
		-8.5694858500961216e-017 0.5093775241272811 1.3995032455174081
		-8.9809113297547261e-017 0.25861774674765742 1.4666941253604844
		-0.25000000000000006 -8.0760099407732715e-016 1.489320246387521
		-8.9809113297547261e-017 -0.25861774674765692 1.4666941253604842
		-8.5694858500961191e-017 -0.50937752412728055 1.3995032455174077
		-7.8976808792514252e-017 -0.74466012319376196 1.2897891677420947
		-6.9859088713100236e-017 -0.95731660123320317 1.1408854987697497
		-5.8618735573543241e-017 -1.1408854987697492 0.95731660123320372
		-4.5597281816095701e-017 -1.2897891677420941 0.74466012319376251
		-3.1190377724003927e-017 -1.3995032455174075 0.50937752412728099
		0.23736833526981241 -1.4666941253604842 0.25861774674765564
		-1.2900263644052601e-032 -1.4893202463875239 3.8055314863366349e-016
		1.5835769787860914e-017 -1.4666941253604837 -0.25861774674765675
		3.1190377724003884e-017 -1.3995032455174068 -0.50937752412728021
		4.5597281816095639e-017 -1.2897891677420938 -0.7446601231937614
		5.8618735573543205e-017 -1.1408854987697488 -0.95731660123320239
		6.9859088713100175e-017 -0.95731660123320272 -1.1408854987697485
		7.8976808792514178e-017 -0.74466012319376185 -1.2897891677420934
		8.5694858500961117e-017 -0.50937752412728055 -1.3995032455174059
		8.9809113297547174e-017 -0.25861774674765714 -1.466694125360483
		9.1194563632191279e-017 -5.1518110878654479e-016 -1.4893202463875228
		8.9809113297547162e-017 0.2586177467476567 -1.4666941253604828
		8.5694858500961105e-017 0.50937752412727999 -1.3995032455174055
		7.8976808792514153e-017 0.74466012319376074 -1.2897891677420932
		6.9859088713100163e-017 0.95731660123320195 -1.1408854987697483
		5.8618735573543192e-017 1.1408854987697481 -0.95731660123320217
		4.5597281816095639e-017 1.2897891677420927 -0.7446601231937614
		3.119037772400389e-017 1.399503245517405 -0.50937752412728043
		1.5835769787860945e-017 1.4666941253604822 -0.25861774674765708
		-4.4408920985006262e-016 1.7037973382582396 -2.1155730473194179e-015
		;
createNode transform -n "wheel_cover_ik_ctrl_srtOffset" -p "control";
	rename -uid "5E08BDD6-4BA0-A922-C010-3E94B2546FD0";
createNode transform -n "wheel_cover_ik_ctrl" -p "wheel_cover_ik_ctrl_srtOffset";
	rename -uid "3919F0B0-4784-DECB-CDB5-C7B0E9AAA95D";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_cover_ik_ctrlShape" -p "wheel_cover_ik_ctrl";
	rename -uid "49248158-428F-2E0E-D559-60B840B5D9E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		
		27
		0 0.125 0
		0.088388347648318433 0.088388347648318447 0
		0.125 0 0
		0.088388347648318447 -0.088388347648318433 0
		0 -0.125 0
		-0.088388347648318433 -0.088388347648318447 0
		-0.125 0 0
		-0.088388347648318447 0.088388347648318433 0
		0 0.125 0
		0 0.088388347648318447 0.088388347648318433
		0 0 0.125
		0 -0.088388347648318433 0.088388347648318447
		0 -0.125 0
		0 -0.088388347648318447 -0.088388347648318433
		0 0 -0.125
		0 0.088388347648318433 -0.088388347648318447
		0 0.125 0
		-0.088388347648318447 0.088388347648318433 0
		-0.125 0 0
		-0.088388347648318447 0 -0.088388347648318433
		0 0 -0.125
		0.088388347648318433 0 -0.088388347648318447
		0.125 0 0
		0.088388347648318447 0 0.088388347648318433
		0 0 0.125
		-0.088388347648318433 0 0.088388347648318447
		-0.125 0 0
		;
createNode transform -n "wheel_ik_controls_hrc" -p "control";
	rename -uid "5C4CF23A-469A-BB61-A2CC-3887BEEABA96";
createNode transform -n "wheel_hinge_ik_ctrl_srtOffset" -p "wheel_ik_controls_hrc";
	rename -uid "FAF91ECE-4779-5A32-709C-CC81E4783509";
createNode transform -n "wheel_hinge_ik_ctrl" -p "wheel_hinge_ik_ctrl_srtOffset";
	rename -uid "7152BCA4-4A36-9789-BCD8-B6A9FE3D7FD2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_hinge_ik_ctrlShape" -p "wheel_hinge_ik_ctrl";
	rename -uid "9366EEA4-4B88-E08C-705A-A6BB7D3C838B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 38 0 no 3
		39 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38
		39
		-0.125 0.25550022058252964 0
		-0.088388347648318447 0.25550022058252964 -0.088388347648318433
		0 0.25550022058252964 -0.125
		0.088388347648318433 0.25550022058252964 -0.088388347648318447
		0.125 0.25550022058252964 0
		0.088388347648318447 0.25550022058252964 0.088388347648318433
		0 0.25550022058252964 0.125
		-0.088388347648318433 0.25550022058252964 0.088388347648318447
		-0.125 0.25550022058252964 0
		-0.088388347648318447 0.34388856823084812 0
		0 0.38050022058252964 0
		0.088388347648318433 0.34388856823084812 0
		0.125 0.25550022058252964 0
		0.125 -0.19999999999999996 0
		0.088388347648318433 -0.19999999999999996 -0.088388347648318447
		0 -0.19999999999999996 -0.125
		-0.088388347648318447 -0.19999999999999996 -0.088388347648318433
		-0.125 -0.19999999999999996 0
		-0.088388347648318433 -0.19999999999999996 0.088388347648318447
		0 -0.19999999999999996 0.125
		0.088388347648318447 -0.19999999999999996 0.088388347648318433
		0.125 -0.19999999999999996 0
		0.088388347648318447 -0.28838834764831844 0
		0 -0.32499999999999996 0
		-0.088388347648318433 -0.28838834764831844 0
		-0.125 -0.19999999999999996 0
		-0.125 0.25550022058252964 0
		-0.088388347648318447 0.25550022058252964 -0.088388347648318433
		0 0.25550022058252964 -0.125
		0 -0.19999999999999996 -0.125
		0 -0.28838834764831844 -0.088388347648318433
		0 -0.32499999999999996 0
		0 -0.28838834764831844 0.088388347648318447
		0 -0.19999999999999996 0.125
		0 0.25550022058252964 0.125
		0 0.34388856823084812 0.088388347648318433
		0 0.38050022058252964 0
		0 0.34388856823084812 -0.088388347648318447
		0 0.25550022058252964 -0.125
		;
createNode transform -n "wheel_rod_pv_ctrl_srtOffset" -p "wheel_ik_controls_hrc";
	rename -uid "8B95A8C9-4CE0-EBF0-8337-0B95C75DC1D2";
createNode transform -n "wheel_rod_pv_ctrl" -p "wheel_rod_pv_ctrl_srtOffset";
	rename -uid "0269F513-41E1-B924-387B-63AB20C8819A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_curveShape3" -p "wheel_rod_pv_ctrl";
	rename -uid "749E7945-47E4-D1EC-A13C-76B8EDC63AF4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0 0 0
		0 0.1875 0
		0 0 0
		0 -0.1875 0
		0 0 0
		-8.3266726846886741e-017 0 -0.18749999999999994
		0 0 0
		8.3266726846886741e-017 0 0.18749999999999994
		0 0 0
		0.18749999999999994 0 -8.3266726846886741e-017
		0 0 0
		0 0 0
		-8.3266726846886741e-017 0 -0.18749999999999994
		0.18749999999999994 0 -8.3266726846886741e-017
		8.3266726846886741e-017 0 0.18749999999999994
		0 0 0
		0 0.1875 0
		0.18749999999999994 0 -8.3266726846886741e-017
		0 -0.1875 0
		0 0 0
		8.3266726846886741e-017 0 0.18749999999999994
		0 0.1875 0
		-8.3266726846886741e-017 0 -0.18749999999999994
		0 -0.1875 0
		8.3266726846886741e-017 0 0.18749999999999994
		;
createNode transform -n "wheel_rod_ik_ctrl_srtOffset" -p "wheel_ik_controls_hrc";
	rename -uid "03CF2C33-43EA-CC93-5139-5B81E6865A5F";
createNode transform -n "wheel_rod_ik_ctrl" -p "wheel_rod_ik_ctrl_srtOffset";
	rename -uid "21CD1168-4D6D-6138-0879-18A3F609CA30";
	setAttr -l on -k off ".v";
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_rod_ik_ctrlShape" -p "wheel_rod_ik_ctrl";
	rename -uid "27107D6F-45CE-657C-3031-83B5D39409DF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 26 0 no 3
		27 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		
		27
		0.24999999999999867 0.5 0
		0.42677669529663553 0.42677669529663687 0
		0.49999999999999867 0.25 0
		0.42677669529663553 0.073223304703363135 0
		0.24999999999999867 0 0
		0.073223304703361802 0.073223304703363107 0
		-1.3322676295501878e-015 0.25 0
		0.073223304703361802 0.42677669529663687 0
		0.24999999999999867 0.5 0
		0.24999999999999867 0.42677669529663687 0.17677669529663687
		0.24999999999999867 0.25 0.25
		0.24999999999999867 0.073223304703363135 0.17677669529663689
		0.24999999999999867 0 0
		0.24999999999999867 0.073223304703363107 -0.17677669529663687
		0.24999999999999867 0.25 -0.25
		0.24999999999999867 0.42677669529663687 -0.17677669529663689
		0.24999999999999867 0.5 0
		0.073223304703361802 0.42677669529663687 0
		-1.3322676295501878e-015 0.25 0
		0.073223304703361802 0.25 -0.17677669529663687
		0.24999999999999867 0.25 -0.25
		0.42677669529663553 0.25 -0.17677669529663689
		0.49999999999999867 0.25 0
		0.42677669529663553 0.25 0.17677669529663687
		0.24999999999999867 0.25 0.25
		0.073223304703361802 0.25 0.17677669529663689
		-1.3322676295501878e-015 0.25 0
		;
createNode transform -n "wheel_fk_controls_hrc" -p "control";
	rename -uid "C7A1A515-4AC2-8C3F-1D88-A680FF3F67BB";
createNode transform -n "wheel_base_fk_ctrl_srtOffset" -p "wheel_fk_controls_hrc";
	rename -uid "9A909D4B-4CA1-1F3F-8729-31805B62F581";
createNode transform -n "wheel_base_fk_ctrl" -p "wheel_base_fk_ctrl_srtOffset";
	rename -uid "6B92A6BD-485A-BD1B-0C0D-3889B91ECC3D";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_base_fk_ctrlShape" -p "wheel_base_fk_ctrl";
	rename -uid "9003F74C-4581-DA97-AB48-2A9DCB4BC8F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 0.19603428065912118 0.39206856131824236 0.58810284197736351 0.78413712263648472
		 0.98017140329560593 1.176205683954727 1.3722399646138481 1.5682742452729692 1.7643085259320903
		 1.9603428065912114 2.1563770872503327 2.352411367909454 2.5484456485685754 2.7444799292276967
		 2.9405142098868176 3.1365484905459384 3.3325827712050593 3.5286170518641802 3.7246513325233011
		 3.9206856131824224 4.1167198938415437 4.3127541745006646 4.5087884551597854 4.7048227358189063
		 4.9008570164780272 5.0968912971371481 5.2929255777962689 5.4889598584553898 5.6849941391145107
		 5.8810284197736316 6.0770627004327524 6.2730969810918733
		33
		0 0.37620091997479815 0.03125000000000009
		0 0.36899540012600957 0.10440887075604818
		0 0.34765574466653065 0.17475628713690874
		0 0.3130020245882526 0.23958883738235093
		0 0.26636596291975345 0.29641504294495541
		0 0.20953975735714897 0.34305110461345456
		0 0.14470720711170681 0.37770482469173261
		0 0.074359790730846267 0.39904448015121141
		0 0.0012009199747981974 0.59375000000000011
		0 -0.071957950781249877 0.39904448015121141
		0 -0.1423053671621104 0.37770482469173255
		0 -0.20713791740755258 0.34305110461345451
		0 -0.26396412297015709 0.29641504294495535
		0 -0.31060018463865618 0.23958883738235087
		0 -0.34525390471693423 0.17475628713690874
		0 -0.36659356017641304 0.10440887075604821
		0.1875 -0.37506514098355836 0.031250000000000153
		0 -0.36659356017641304 -0.041908870756047906
		0 -0.34525390471693418 -0.11225628713690841
		0 -0.31060018463865607 -0.17708883738235054
		0 -0.26396412297015698 -0.23391504294495502
		0 -0.20713791740755255 -0.28055110461345412
		0 -0.14230536716211048 -0.31520482469173211
		0 -0.071957950781249974 -0.33654448015121097
		0 0.0012009199747980578 -0.34374999999999956
		0 0.074359790730846087 -0.33654448015121097
		0 0.14470720711170657 -0.31520482469173211
		0 0.20953975735714869 -0.28055110461345406
		0 0.26636596291975312 -0.23391504294495497
		0 0.31300202458825221 -0.17708883738235054
		0 0.34765574466653021 -0.11225628713690849
		0 0.36899540012600907 -0.041908870756048017
		0 0.37620091997479765 0.031249999999999972
		;
createNode transform -n "wheel_hinge_fk_ctrl_srtOffset" -p "wheel_fk_controls_hrc";
	rename -uid "64CE1E5B-4EF0-9AD2-F635-BDAB453B33E3";
createNode transform -n "wheel_hinge_fk_ctrl" -p "wheel_hinge_fk_ctrl_srtOffset";
	rename -uid "4D73C261-4BA9-071F-734E-C5AD98DC25B8";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_hinge_fk_ctrlShape" -p "wheel_hinge_fk_ctrl";
	rename -uid "063279A3-4344-EDA2-149C-1484180F2485";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 0.19603428065912118 0.39206856131824236 0.58810284197736351 0.78413712263648472
		 0.98017140329560593 1.176205683954727 1.3722399646138481 1.5682742452729692 1.7643085259320903
		 1.9603428065912114 2.1563770872503327 2.352411367909454 2.5484456485685754 2.7444799292276967
		 2.9405142098868176 3.1365484905459384 3.3325827712050593 3.5286170518641802 3.7246513325233011
		 3.9206856131824224 4.1167198938415437 4.3127541745006646 4.5087884551597854 4.7048227358189063
		 4.9008570164780272 5.0968912971371481 5.2929255777962689 5.4889598584553898 5.6849941391145107
		 5.8810284197736316 6.0770627004327524 6.2730969810918733
		33
		-0.18810045998739822 0.23030648711365248 0.015625000000000045
		-0.18449770006300392 0.23030648711365245 0.052204435378024092
		-0.17382787233326438 0.23030648711365242 0.087378143568454372
		-0.15650101229412541 0.23030648711365245 0.11979441869117546
		-0.13318298145987584 0.23030648711365245 0.1482075214724777
		-0.10476987867857358 0.23030648711365242 0.17152555230672728
		-0.072353603555852491 0.23030648711365242 0.18885241234586631
		-0.037179895365422239 0.23030648711365242 0.19952224007560571
		-0.00060045998739821031 0.23030648711365242 0.29687500000000006
		0.035978975390625827 0.23030648711365242 0.19952224007560571
		0.071152683581056073 0.2303064871136524 0.18885241234586628
		0.10356895870377719 0.2303064871136524 0.17152555230672725
		0.13198206148507943 0.23030648711365242 0.14820752147247768
		0.15530009231932895 0.2303064871136524 0.11979441869117544
		0.17262695235846798 0.23030648711365242 0.087378143568454372
		0.18329678008820738 0.2303064871136524 0.052204435378024105
		0.18753257049178004 0.32405648711365231 0.015625000000000076
		0.18329678008820738 0.2303064871136524 -0.020954435378023953
		0.17262695235846795 0.2303064871136524 -0.056128143568454206
		0.1553000923193289 0.23030648711365242 -0.08854441869117527
		0.13198206148507935 0.23030648711365242 -0.11695752147247751
		0.10356895870377716 0.23030648711365242 -0.14027555230672706
		0.071152683581056142 0.23030648711365242 -0.15760241234586606
		0.035978975390625868 0.23030648711365242 -0.16827224007560548
		-0.00060045998739814037 0.23030648711365242 -0.17187499999999978
		-0.037179895365422141 0.23030648711365242 -0.16827224007560548
		-0.072353603555852367 0.23030648711365242 -0.15760241234586606
		-0.10476987867857342 0.23030648711365242 -0.14027555230672703
		-0.13318298145987564 0.23030648711365245 -0.11695752147247748
		-0.15650101229412525 0.23030648711365245 -0.08854441869117527
		-0.17382787233326422 0.23030648711365245 -0.056128143568454247
		-0.18449770006300359 0.23030648711365245 -0.020954435378024008
		-0.18810045998739788 0.23030648711365245 0.015624999999999986
		;
createNode transform -n "wheel_rod_fk_ctrl_srtOffset" -p "wheel_fk_controls_hrc";
	rename -uid "21B76AFB-4E7F-6106-0C00-07B6967C1CB5";
createNode transform -n "wheel_rod_fk_ctrl" -p "wheel_rod_fk_ctrl_srtOffset";
	rename -uid "1D752481-4F59-DB6B-95EB-2CAE447CC30A";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_rod_fk_ctrlShape" -p "wheel_rod_fk_ctrl";
	rename -uid "5E15E30E-4F15-8D28-21FC-34A8A5323505";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 0.19603428065912118 0.39206856131824236 0.58810284197736351 0.78413712263648472
		 0.98017140329560593 1.176205683954727 1.3722399646138481 1.5682742452729692 1.7643085259320903
		 1.9603428065912114 2.1563770872503327 2.352411367909454 2.5484456485685754 2.7444799292276967
		 2.9405142098868176 3.1365484905459384 3.3325827712050593 3.5286170518641802 3.7246513325233011
		 3.9206856131824224 4.1167198938415437 4.3127541745006646 4.5087884551597854 4.7048227358189063
		 4.9008570164780272 5.0968912971371481 5.2929255777962689 5.4889598584553898 5.6849941391145107
		 5.8810284197736316 6.0770627004327524 6.2730969810918733
		33
		0.18810045998739805 0.23030648711365248 -0.01562500000000009
		0.18449770006300395 0.23030648711365245 -0.052204435378024168
		0.17382787233326413 0.23030648711365234 -0.087378143568454372
		0.15650101229412533 0.23030648711365248 -0.11979441869117552
		0.13318298145987575 0.23030648711365245 -0.14820752147247765
		0.10476987867857347 0.23030648711365248 -0.17152555230672725
		0.072353603555852408 0.23030648711365248 -0.18885241234586628
		0.037179895365422148 0.23030648711365248 -0.19952224007560571
		0.00060045998739811229 0.23030648711365273 -0.20547452189546067
		-0.035978975390625889 0.23030648711365242 -0.19952224007560559
		-0.071152683581056156 0.23030648711365245 -0.18885241234586619
		-0.1035689587037773 0.23030648711365242 -0.1715255523067272
		-0.13198206148507954 0.23030648711365248 -0.14820752147247757
		-0.15530009231932898 0.23030648711365237 -0.11979441869117535
		-0.17262695235846792 0.23030648711365237 -0.087378143568454289
		-0.18329678008820732 0.23030648711365242 -0.05220443537802405
		-0.1875325704917799 0.32405648711365215 -0.015625000000000042
		-0.18329678008820732 0.23030648711365242 0.020954435378024036
		-0.17262695235846792 0.23030648711365237 0.056128143568454206
		-0.15530009231932879 0.23030648711365234 0.088544418691175297
		-0.13198206148507921 0.2303064871136524 0.11695752147247752
		-0.10356895870377712 0.23030648711365254 0.14027555230672703
		-0.071152683581056086 0.23030648711365245 0.15760241234586597
		-0.035978975390625806 0.23030648711365242 0.16827224007560543
		0.00060045998739820944 0.2303064871136529 0.25852841145543659
		0.037179895365422121 0.2303064871136524 0.1682722400756054
		0.072353603555852408 0.23030648711365254 0.15760241234586583
		0.10476987867857353 0.23030648711365248 0.14027555230672697
		0.1331829814598755 0.23030648711365248 0.11695752147247739
		0.15650101229412514 0.23030648711365242 0.088544418691175186
		0.17382787233326419 0.2303064871136524 0.056128143568454185
		0.18449770006300362 0.23030648711365242 0.020954435378023981
		0.1881004599873978 0.23030648711365245 -0.015625000000000007
		;
createNode transform -n "wheel_fk_ctrl_srtOffset" -p "wheel_fk_controls_hrc";
	rename -uid "38DE5C93-45F4-E905-EA19-1FBCF63A68D9";
createNode transform -n "wheel_fk_ctrl" -p "wheel_fk_ctrl_srtOffset";
	rename -uid "962730A6-41D7-C26A-4A06-3D80E705FD09";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "wheel_fk_ctrlShape" -p "wheel_fk_ctrl";
	rename -uid "501FC7F4-4BA0-5687-9A3A-5BAD86629879";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 0.19603428065912118 0.39206856131824236 0.58810284197736351 0.78413712263648472
		 0.98017140329560593 1.176205683954727 1.3722399646138481 1.5682742452729692 1.7643085259320903
		 1.9603428065912114 2.1563770872503327 2.352411367909454 2.5484456485685754 2.7444799292276967
		 2.9405142098868176 3.1365484905459384 3.3325827712050593 3.5286170518641802 3.7246513325233011
		 3.9206856131824224 4.1167198938415437 4.3127541745006646 4.5087884551597854 4.7048227358189063
		 4.9008570164780272 5.0968912971371481 5.2929255777962689 5.4889598584553898 5.6849941391145107
		 5.8810284197736316 6.0770627004327524 6.2730969810918733
		33
		0.18810045998739805 0.23030648711365248 -0.01562500000000009
		0.18449770006300395 0.23030648711365245 -0.052204435378024168
		0.17382787233326413 0.23030648711365234 -0.087378143568454372
		0.15650101229412533 0.23030648711365248 -0.11979441869117552
		0.13318298145987575 0.23030648711365245 -0.14820752147247765
		0.10476987867857347 0.23030648711365248 -0.17152555230672725
		0.072353603555852408 0.23030648711365248 -0.18885241234586628
		0.037179895365422148 0.23030648711365248 -0.19952224007560571
		0.00060045998739811229 0.23030648711365273 -0.20547452189546067
		-0.035978975390625889 0.23030648711365242 -0.19952224007560559
		-0.071152683581056156 0.23030648711365245 -0.18885241234586619
		-0.1035689587037773 0.23030648711365242 -0.1715255523067272
		-0.13198206148507954 0.23030648711365248 -0.14820752147247757
		-0.15530009231932898 0.23030648711365237 -0.11979441869117535
		-0.17262695235846792 0.23030648711365237 -0.087378143568454289
		-0.18329678008820732 0.23030648711365242 -0.05220443537802405
		-0.1875325704917799 0.32405648711365215 -0.015625000000000042
		-0.18329678008820732 0.23030648711365242 0.020954435378024036
		-0.17262695235846792 0.23030648711365237 0.056128143568454206
		-0.15530009231932879 0.23030648711365234 0.088544418691175297
		-0.13198206148507921 0.2303064871136524 0.11695752147247752
		-0.10356895870377712 0.23030648711365254 0.14027555230672703
		-0.071152683581056086 0.23030648711365245 0.15760241234586597
		-0.035978975390625806 0.23030648711365242 0.16827224007560543
		0.00060045998739820944 0.2303064871136529 0.25852841145543659
		0.037179895365422121 0.2303064871136524 0.1682722400756054
		0.072353603555852408 0.23030648711365254 0.15760241234586583
		0.10476987867857353 0.23030648711365248 0.14027555230672697
		0.1331829814598755 0.23030648711365248 0.11695752147247739
		0.15650101229412514 0.23030648711365242 0.088544418691175186
		0.17382787233326419 0.2303064871136524 0.056128143568454185
		0.18449770006300362 0.23030648711365242 0.020954435378023981
		0.1881004599873978 0.23030648711365245 -0.015625000000000007
		;
createNode transform -n "deform" -p "wheel_cmpt";
	rename -uid "F32C7746-447B-070C-7237-4DB3012B090F";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "strut_axle_srt" -p "deform";
	rename -uid "3A7A46FE-4759-A3E2-A6D4-81BBE10D38EE";
createNode transform -n "strut_swivel_srt" -p "deform";
	rename -uid "FC5BF12B-443D-7FE3-18F1-21975DEA83FB";
createNode transform -n "strut_hinge_srt" -p "deform";
	rename -uid "16916EF2-4FBE-84B5-67A7-398B64FD5B83";
createNode transform -n "rod_hinge_srt" -p "deform";
	rename -uid "21302887-42BD-9C02-9372-4ABF1DC7D826";
createNode transform -n "rod_axle_srt" -p "deform";
	rename -uid "62BC8616-40D2-55BD-3D3F-F48F21307FDD";
createNode transform -n "rod_swivel_srt" -p "deform";
	rename -uid "1D5D8682-4727-0875-D557-7C98D60E825E";
createNode transform -n "wheel_srt" -p "deform";
	rename -uid "FFA71C4A-461F-3C27-3AD6-0299D06A3D19";
createNode transform -n "wheel_cover_srt" -p "deform";
	rename -uid "39A417D6-4FE8-3A30-301D-00B2D2B68725";
	setAttr -k on ".ro";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "98FC7FA9-4A48-6D1C-E44E-3CBCA5292923";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "41D540BA-475D-76DD-AA33-46A4F71D068E";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "922BB33E-4724-CD36-A43D-95B0AB693DE9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "715AB069-4100-4DDF-4D45-C38CA0EF0F96";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F625866E-432D-03ED-624F-BB9757A3F342";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "26333FC5-402F-3177-AB47-F48A8120D29F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 604\n                -height 841\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 604\n            -height 841\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n"
		+ "                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 55 100 -ps 2 45 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 604\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 604\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DA70BDE1-4704-CF62-6238-A69A79427D54";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 96 -ast 1 -aet 96 ";
	setAttr ".st" 6;
createNode plusMinusAverage -n "wheel_strut_axle_targetTranslate";
	rename -uid "EBCAC17C-4A4C-01D6-F38A-2A9C72039172";
	setAttr -s 2 ".i3[1]" -type "float3"  1 0 0;
createNode composeMatrix -n "wheel_strut_axle_matrix_localTo_foot";
	rename -uid "8DD808DE-4B37-22E1-5A42-13BE8C726A3D";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.564466953277587 -0.00023949766159048202 -0.0024362773895258982 1;
createNode multMatrix -n "wheel_strut_axle_ik_worldMatrix";
	rename -uid "77320B64-4E3A-4DDB-F821-BEA4B1F3E7ED";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_strut_axle_ik_srt_inWorld";
	rename -uid "5A29188B-4B42-930F-7872-1E9B12D68BF4";
	setAttr ".ot" -type "double3" 5.064466953277587 1.2687605023384094 15.344563722610474 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode inverseMatrix -n "wheel_strut_axle_ik_worldInverseMatrix";
	rename -uid "EDBDC9AD-4A34-4FC8-2ACE-81B234453EC4";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.064466953277587 -1.2687605023384094 -15.344563722610472 1;
createNode network -n "wheel_strut_axle_ik_pass";
	rename -uid "41B65AED-4B10-CCFF-4A6F-0F895F119C6F";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode plusMinusAverage -n "wheel_strut_swivel_targetTranslate";
	rename -uid "53A75DB2-4AC6-C742-1992-11AC8385C589";
	setAttr -s 2 ".i3[1]" -type "float3"  0 0 1;
createNode composeMatrix -n "wheel_strut_swivel_ik_matrix_localTo_axle";
	rename -uid "B7F2F9E2-4531-B439-108F-338C8849A3BB";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.001890579859415098 0 -0.48798680305480957 1;
createNode multMatrix -n "wheel_strut_swivel_ik_worldMatrix";
	rename -uid "BB6AC835-418F-6A99-5E11-E1841E149973";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "wheel_strut_swivel_ik_worldInverseMatrix";
	rename -uid "4B5BEB9F-44FA-F975-0BFA-D681A8E86614";
	setAttr ".omat" -type "matrix" 0.99999999999999989 -3.5215178060777048e-017 -4.1235284408013446e-016 0
		 0 1 0 0 0 0 1 0 -5.062576373418171 -1.2687605023384094 -14.856576919555662 1;
createNode network -n "wheel_strut_swivel_ik_pass";
	rename -uid "FB423DFA-45C0-7CA1-BF3E-9AA6503F27E6";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode plusMinusAverage -n "wheel_strut_hinge_targetTranslate";
	rename -uid "1FA8B398-45EF-59A0-2411-04B2B93F4E6D";
	setAttr -s 2 ".i3[1]" -type "float3"  0 1 0;
createNode composeMatrix -n "wheel_strut_hinge_matrix_localTo_swivel";
	rename -uid "9D87BB9B-43E7-5A84-241F-52BFAA6FC79B";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.0018928150335950633 0 -0.34248864650726318 1;
createNode multMatrix -n "wheel_strut_hinge_worldMatrix";
	rename -uid "A51C9D40-4E33-DA81-59F8-879CE22CD27D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_strut_hinge_ik_srt_inWorld";
	rename -uid "C6B5FA24-436B-517E-2BBE-12BACEAF5487";
	setAttr ".ot" -type "double3" 5.064469188451767 1.2687605023384094 14.514088273048401 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode inverseMatrix -n "wheel_strut_hinge_worldInverseMatrix";
	rename -uid "480B621C-4DEA-EDF5-B4A9-EE9E97C1BC5B";
	setAttr ".omat" -type "matrix" 1.0000000000000002 3.5215178060777054e-017 4.0284687455450781e-016 0
		 0 1 0 0 0 0 1 0 -5.064469188451767 -1.2687605023384096 -14.514088273048403 1;
createNode network -n "wheel_strut_hinge_ik_pass";
	rename -uid "0EF4FD73-4043-D892-913C-39BFB02908DA";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode plusMinusAverage -n "wheel_rod_hinge_targetTranslate";
	rename -uid "F066EA67-4BBE-3277-B21B-A9BE97E4B475";
	setAttr -s 2 ".i3[1]" -type "float3"  0 1 0;
createNode composeMatrix -n "wheel_rod_hinge_matrix_localTo_strut_hinge";
	rename -uid "9B90E45A-4D0F-D0B9-8CD3-209732E0ABF9";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.81232330298552569 4.976615906038262e-007 4.5021408823231468e-009 1;
createNode multMatrix -n "wheel_rod_hinge_worldMatrix";
	rename -uid "94D887E6-43D1-DF84-E028-17A35D2C5E07";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_hinge_ik_srt_inWorld";
	rename -uid "12956C64-4D79-7F4A-B771-70960D75BCD0";
	setAttr ".ot" -type "double3" 4.2521458854662413 1.268761 14.514088277550542 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode network -n "wheel_rod_hinge_ik_pass";
	rename -uid "399A61EA-4C5E-7F41-63BA-479C00FDCD80";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode inverseMatrix -n "wheel_rod_hinge_worldInverseMatrix";
	rename -uid "FEA76F5F-4C39-AC7C-177F-E38BEDB82336";
	setAttr ".omat" -type "matrix" 1 3.5215191873660957e-017 4.0284687467946732e-016 0
		 0 1 0 0 0 0 1 0 -4.2521458854662413 -1.268761 -14.514088277550544 1;
createNode plusMinusAverage -n "wheel_rod_axle_targetTranslate";
	rename -uid "123E8E4F-4950-7445-1F1E-879A78186A42";
	setAttr -s 2 ".i3[1]" -type "float3"  1 0 0;
createNode composeMatrix -n "wheel_rod_axle_matrix_localTo_hinge";
	rename -uid "018BE03B-4358-444B-3A03-E99F3950EBC6";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.32399964332580566 0.025191941894531222 1.7763568394002505e-015 1;
createNode multMatrix -n "wheel_rod_axle_ik_worldMatrix";
	rename -uid "10E2CD97-4493-2206-EC9D-83ABBA43A125";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_axle_ik_srt_inWorld";
	rename -uid "727D642E-4B25-2878-C7B0-49A9FABAE00E";
	setAttr ".ot" -type "double3" 3.9281462421404356 1.2939529418945312 14.514088277550544 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode network -n "wheel_rod_axle_ik_pass";
	rename -uid "E802C8CC-44E2-DF1D-A252-96B2AFEA95AD";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode inverseMatrix -n "wheel_rod_axle_ik_worldInverseMatrix";
	rename -uid "7B50FED2-46F2-72D4-F964-6CBB90CC257C";
	setAttr ".omat" -type "matrix" 0.99999999999999989 -5.5511151231257827e-017 0 0
		 0 1 0 0 0 0 1 0 -3.9281462421404356 -1.2939529418945312 -14.514088277550544 1;
createNode plusMinusAverage -n "wheel_rod_swivel_targetTranslate";
	rename -uid "E72E3FFE-4AD3-3BE5-FD35-A286006BE497";
	setAttr -s 2 ".i3[1]" -type "float3"  0 1 0;
createNode composeMatrix -n "wheel_rod_swivel_matrix_localTo_axle";
	rename -uid "C0E24B6F-4995-AFC5-F83E-83BF8BCBECB2";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4408920985006262e-016 0.36377620697021484 1.239776611328125e-005 1;
createNode multMatrix -n "wheel_rod_swivel_ik_worldMatrix";
	rename -uid "3541EF54-410D-A54C-2EDA-56907D92A661";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_swivel_ik_srt_inWorld";
	rename -uid "8E39ABF8-417C-8839-B6E0-1DB1222B56EC";
	setAttr ".ot" -type "double3" 3.9281462421404361 1.6577291488647461 14.514100675316657 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode network -n "wheel_rod_swivel_ik_pass";
	rename -uid "9BC05FB8-4DC5-F652-B568-B0849E487C2B";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode inverseMatrix -n "wheel_rod_swivel_ik_worldInverseMatrix";
	rename -uid "593E2915-4FDB-F5CA-1BE1-B48B2C414718";
createNode multMatrix -n "wheel_ctrl_parentMatrix";
	rename -uid "9007BFCC-4765-66E2-5442-C1B5419ECF42";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_ctrl_srtOffset_inWorld";
	rename -uid "1D36BCE1-48FC-BC2F-96F1-9C9442C07F92";
	setAttr ".ot" -type "double3" 3.4321550127415206 3.2276201248168945 14.514111736586809 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "wheel_srt_inWorld";
	rename -uid "C16F9A30-43C5-76A7-AB13-F8889D3E5838";
	setAttr ".ot" -type "double3" 3.432155012741521 3.2276201248168945 14.514111736586809 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode inverseMatrix -n "wheel_ctrl_parentInverseMatrix";
	rename -uid "BAC4A687-4F26-35F4-0C8A-00B579ACE7EE";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 2.7755575615628914e-017 2.7755575615628914e-017 1 0
		 -3.4321550127415206 -3.227620124816895 -14.514111736586809 1;
createNode multMatrix -n "wheel_ctrl_matrix";
	rename -uid "111540A7-43B2-E1A8-2441-A7AE911B6084";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_ctrl_srt";
	rename -uid "9EE035A8-42F8-00C7-F6F3-878136E6DC60";
	setAttr ".ot" -type "double3" 4.4408920985006262e-016 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode quatToEuler -n "wheel_ctrl_rotation";
	rename -uid "CEDE3955-406E-A53A-C7AE-6C940BE3D817";
	setAttr ".iro" 5;
createNode composeMatrix -n "wheel_matrix";
	rename -uid "3E899211-43A9-ABB0-CFC7-BBBC2C40FAED";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4408920985006262e-016 0 0 1;
createNode multMatrix -n "wheel_worldMatrix";
	rename -uid "9E8A8F27-4F61-A7EF-4C86-52B7491151F4";
	setAttr -s 2 ".i";
createNode multMatrix -n "wheel_cover_ctrl_parentMatrix";
	rename -uid "B8C11676-4F58-9CDE-5491-8B93303D331D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_cover_ctrl_srtOffset_inWorld";
	rename -uid "BAE816C8-444F-5FA3-56DE-D39F3B9770F0";
	setAttr ".ot" -type "double3" 3.432155012741521 3.227620124816895 12.514111736586809 ;
	setAttr ".os" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode plusMinusAverage -n "wheel_cover_targetTranslate";
	rename -uid "997C77ED-4158-CFB9-08D1-4983D4A94FB6";
	setAttr -s 2 ".i3[1]" -type "float3"  1 0 0;
createNode composeMatrix -n "wheel_cover_matrix";
	rename -uid "BC6906CA-48A0-F635-7CD2-8DB06D0C580F";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4408920985006262e-016 4.4408920985006262e-016 0 1;
createNode network -n "wheel_parent_pass";
	rename -uid "C58539DF-40D0-CD6A-B905-0DA7CA9C61E9";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "wheel_cover_multMatrix";
	rename -uid "BD49413F-4330-3FD4-E950-6DA9F5F7EFDB";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_cover_srt_inWorld";
	rename -uid "3CFCFC5B-4FAC-E176-AC79-B894F91A6B6A";
	setAttr ".ot" -type "double3" 3.432155012741521 3.227620124816895 14.514111736586809 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode vectorProduct -n "wheel_hinge_ik_start_worldPosition";
	rename -uid "259D492B-4B51-3577-3C2B-FA8B59AD31DA";
	setAttr ".op" 4;
createNode composeMatrix -n "wheel_hinge_ik_rotatePlane_worldMatrix";
	rename -uid "484D2B25-4F91-DC26-C3D8-A39463A6A9D1";
	setAttr ".omat" -type "matrix" 2.6367396177562341e-007 0.99999999999992883 2.695673868013948e-007 0
		 0.71487719607256806 4.9915627187147038e-013 -0.69925002290698779 0 -0.69925002290693805 3.7708160133265167e-007 -0.7148771960725171 0
		 5.0644669532775879 1.2687605619430542 15.344563484191895 1;
createNode distanceBetween -n "wheel_hinge_ik_upperLength";
	rename -uid "7481C00A-4B79-1756-A33F-F9B080274F57";
createNode distanceBetween -n "wheel_hinge_ik_lowerLength";
	rename -uid "9E333E1D-4812-BE11-FFFB-0D9AB7E145B4";
createNode vectorProduct -n "wheel_hinge_ik_end_worldPosition";
	rename -uid "05B701B1-4CE5-19C6-389A-57845D39EBC4";
	setAttr ".op" 4;
createNode distanceBetween -n "wheel_hinge_ik_currentLength";
	rename -uid "D2FABFBD-4BA2-B58B-CDFE-1D909CEE48D4";
createNode network -n "wheel_hinge_ik_INPUT";
	rename -uid "43FA35D2-4F45-EA53-221C-97BC21DBF0E2";
	addAttr -ci true -k true -sn "upperLength" -ln "upperLength" -at "double";
	addAttr -ci true -k true -sn "lowerLength" -ln "lowerLength" -at "double";
	addAttr -ci true -k true -sn "currentLength" -ln "currentLength" -at "double";
	setAttr -k on ".upperLength";
	setAttr -k on ".lowerLength";
	setAttr -k on ".currentLength";
createNode expression -n "wheel_hinge_ik_expression";
	rename -uid "9A2F707D-4DDE-E923-3EBF-D2A2C48F37D6";
	setAttr -k on ".nds";
	setAttr -s 3 ".in";
	setAttr -s 3 ".in";
	setAttr -s 2 ".out";
	setAttr ".ixp" -type "string" "float $a = .I[0];\nfloat $b = .I[1];\nfloat $c = clamp(0.0, $a + $b, .I[2]);\n\nfloat $sa = $a * $a; \nfloat $sb = $b * $b;\nfloat $sc = $c * $c;\n\nfloat $B = clamp(-1.0, 1.0, ($sc + $sa - $sb) / (2.0 * $a * $c));\nfloat $C = clamp(-1.0, 1.0, ($sa + $sb - $sc) / (2.0 * $a * $b));\n\nfloat $baseAngle = -rad_to_deg(acos($B));\nfloat $bendAngle = 180 - rad_to_deg(acos($C));\n\n.O[0] = $baseAngle;\n.O[1] = $bendAngle;";
createNode composeMatrix -n "wheel_hinge_ik_bend_matrix";
	rename -uid "6FADBFC5-4AFC-D675-2AF4-D5B7EDAD4E4A";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 -3.2694519105369579e-006 0.99999999999465539 0
		 0 -0.99999999999465539 -3.2694519105369579e-006 0 0 0 0.83047544956508068 1;
createNode multMatrix -n "wheel_hinge_ik_bend_worldMatrix";
	rename -uid "9803FBBB-4839-FAC1-3041-E583CA81177C";
	setAttr -s 3 ".i";
createNode multMatrix -n "wheel_hinge_ik_end_worldMatrix";
	rename -uid "6D7B6019-4428-7540-CD43-25AECFB6A968";
	setAttr -s 4 ".i";
createNode composeMatrix -n "wheel_composeMatrix1";
	rename -uid "A2AB6085-494F-0995-37E6-6F9C4F5FC361";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.81232330298567812 1;
createNode inverseMatrix -n "wheel_hinge_ik_bend_worldInverseMatrix";
	rename -uid "1EEA6FC9-4CB6-A7B3-FD25-1392D555B8E8";
createNode network -n "wheel_hinge_ik_bend_pass";
	rename -uid "BD61DDE2-4FCF-407F-0520-CDBF9E36801F";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode network -n "wheel_hinge_ik_end_pass";
	rename -uid "19946156-4930-6DD4-38FF-13BEC1B6E685";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode inverseMatrix -n "wheel_hinge_ik_end_worldInverseMatrix";
	rename -uid "6C83C62A-428F-1551-D36B-ADB1C5269C83";
createNode vectorProduct -n "wheel_rod_ik_start_worldPosition";
	rename -uid "25B99B97-46C1-5A72-F5F2-0F9BBF3A8EB2";
	setAttr ".op" 4;
createNode vectorProduct -n "wheel_rod_ik_end_worldPosition";
	rename -uid "F18F6A77-49C0-E033-F93F-59861B27E77C";
	setAttr ".op" 4;
createNode distanceBetween -n "wheel_rod_ik_currentLength";
	rename -uid "D45B2A57-4C87-954C-5D18-0DABF3F948FC";
createNode distanceBetween -n "wheel_rod_ik_upperLength";
	rename -uid "7CB436C1-461D-2F36-661D-63928B40E38A";
createNode distanceBetween -n "wheel_rod_ik_lowerLength";
	rename -uid "93C04A44-4E76-DCC0-1A13-C180D585B132";
createNode network -n "wheel_rod_ik_INPUT";
	rename -uid "24997E71-4193-D2D6-3CB1-808522F34120";
	addAttr -ci true -k true -sn "upperLength" -ln "upperLength" -at "double";
	addAttr -ci true -k true -sn "lowerLength" -ln "lowerLength" -at "double";
	addAttr -ci true -k true -sn "currentLength" -ln "currentLength" -at "double";
	setAttr -k on ".upperLength";
	setAttr -k on ".lowerLength";
	setAttr -k on ".currentLength";
createNode network -n "wheel_rod_ik_OUTPUT";
	rename -uid "9F0A65E5-499A-D7B6-D574-1580CC060CED";
	addAttr -ci true -k true -sn "baseAngle" -ln "baseAngle" -at "doubleAngle";
	addAttr -ci true -k true -sn "bendAngle" -ln "bendAngle" -at "doubleAngle";
	setAttr -k on ".baseAngle";
	setAttr -k on ".bendAngle";
createNode expression -n "wheel_rod_ik_expression";
	rename -uid "3851A1EB-481B-FA1F-5F91-77AB65AAB690";
	setAttr -k on ".nds";
	setAttr -s 3 ".in";
	setAttr -s 3 ".in";
	setAttr -s 2 ".out";
	setAttr ".ixp" -type "string" "float $a = .I[0];\nfloat $b = .I[1];\nfloat $c = .I[2];\n\n$b = pow(pow($c, 2.0) - pow($a, 2.0), 0.5);\n\nfloat $sa = $a * $a; \nfloat $sb = $b * $b;\nfloat $sc = $c * $c;\n\nfloat $B = clamp(-1.0, 1.0, ($sc + $sa - $sb) / (2.0 * $a * $c));\nfloat $C = clamp(-1.0, 1.0, ($sa + $sb - $sc) / (2.0 * $a * $b));\n\nfloat $baseAngle = rad_to_deg(acos($B));\nfloat $bendAngle = -rad_to_deg(acos($C));\n\n.O[0] = $baseAngle;\n.O[1] = $bendAngle;";
createNode composeMatrix -n "wheel_rod_ik_rotatePlane_worldMatrix";
	rename -uid "DD7567F1-4F98-7670-C901-86B197F26CD2";
	setAttr ".omat" -type "matrix" 3.1978580383729138e-006 5.5511151231257827e-017 0.99999999999488676 0
		 0.98659547535312986 0.16318507285526396 -3.1549922714924072e-006 0 -0.16318507285442946 0.98659547535817449 5.2184269705435327e-007 0
		 4.2521457672119141 1.2687609195709229 14.51408863067627 1;
createNode composeMatrix -n "wheel_rod_ik_base_matrix";
	rename -uid "B4773227-4611-6EC5-5CE4-E582D643B6B0";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 0.16367758774410923 0.98651388599972045 0
		 0 -0.98651388599972045 0.16367758774410923 0 0 0 0 1;
createNode composeMatrix -n "wheel_rod_ik_bend_matrix";
	rename -uid "116321B1-420B-7266-E50D-6E9540C0C0C2";
	setAttr ".omat" -type "matrix" 1 0 -0 0 -0 -1.3349124472483709e-008 -0.99999999999999989 0
		 0 0.99999999999999989 -1.3349124472483709e-008 0 0 0 0.32497754201123741 1;
createNode multMatrix -n "wheel_rod_ik_bend_worldMatrix";
	rename -uid "BD323D2C-429E-684D-FF63-DCB3CAF95F8C";
	setAttr -s 3 ".i";
createNode unitConversion -n "wheel_unitConversion13";
	rename -uid "EC1AC59D-432D-121B-938F-FB9EB13AC4FF";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "wheel_unitConversion14";
	rename -uid "37FFD65A-475E-DD3B-B313-A487864CFFF6";
	setAttr ".cf" 0.017453292519943295;
createNode network -n "wheel_rod_ik_pass";
	rename -uid "B2A56F8A-438B-0352-6DBF-41B46738701F";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode unitConversion -n "wheel_unitConversion11";
	rename -uid "7A9CD39D-4033-0EA3-9244-D0AC604D3D69";
	setAttr ".cf" 0.017453292519943295;
createNode network -n "wheel_hinge_ik_OUTPUT";
	rename -uid "782B81F1-4DB5-9C14-5E02-AE91BF261F63";
	addAttr -ci true -k true -sn "baseAngle" -ln "baseAngle" -at "doubleAngle";
	addAttr -ci true -k true -sn "bendAngle" -ln "bendAngle" -at "doubleAngle";
	setAttr -k on ".baseAngle";
	setAttr -k on ".bendAngle";
createNode composeMatrix -n "wheel_hinge_ik_base_matrix";
	rename -uid "2FBFA2CB-4D8F-3001-DDD6-0EA53ED9A598";
	setAttr ".omat" -type "matrix" 1 0 -0 0 -0 0.71487520953597716 -0.69925205383387523 0
		 0 0.69925205383387523 0.71487520953597716 0 0 0 0 1;
createNode unitConversion -n "wheel_unitConversion12";
	rename -uid "053C0208-42AF-92A8-4F36-D3BF504C3FE3";
	setAttr ".cf" 0.017453292519943295;
createNode multMatrix -n "wheel_hinge_ik_matrix_localTo_struct_axle";
	rename -uid "FB9DADEA-4503-2EF1-CDB8-07A83BEB5BE9";
	setAttr -s 2 ".i";
createNode vectorProduct -n "wheel_hinge_ik_position_localTo_struct_axle";
	rename -uid "2B4384A3-4852-BAD4-45AF-A9A34B0819B2";
	setAttr ".op" 4;
createNode condition -n "wheel_strut_swivel_upVector";
	rename -uid "60A17B77-485C-C583-C632-E7922961D75C";
	setAttr ".op" 3;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" -1 0 0 ;
createNode multMatrix -n "wheel_base_fk_ctrl_matrix";
	rename -uid "CF88C99D-4A63-3527-A5B5-D982648FD4EC";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_base_fk_ctrl_srt";
	rename -uid "85E0B384-4434-94AF-BF3C-9BBF81117A4F";
	setAttr ".ot" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "wheel_base_fk_ctrl_parentMatrix";
	rename -uid "AB6EFA35-42AA-D588-45E1-C4A738FCA99A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_base_fk_ctrl_srtOffset_inWorld";
	rename -uid "06493A19-402D-1932-9491-50A41942BAB7";
	setAttr ".ot" -type "double3" 5.0644669532775861 1.2687605023384094 15.344563722610474 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode quatToEuler -n "wheel_base_fk_ctrl_rotation";
	rename -uid "A214316E-4491-1E36-F590-10893E33EBDF";
	setAttr ".iro" 1;
createNode composeMatrix -n "wheel_hinge_fk_ctrl_parentMatrix_localTo_base";
	rename -uid "4D430635-4224-F8CF-3F45-4BA32FA6C5E9";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.8817841970012523e-016 0 0 1;
createNode multMatrix -n "wheel_base_fk_worldMatrix";
	rename -uid "48F7AD08-4B91-B701-2FB4-BF9BA6E1B397";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_hinge_fk_ctrl_srtOffset_inWorld";
	rename -uid "CF4071B9-4C2B-1504-DC33-6484D7D0612B";
	setAttr ".ot" -type "double3" 5.0644691884517643 1.2687605023384094 14.514088273048401 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "wheel_hinge_fk_ctrl_parentMatrix";
	rename -uid "DC20CDCB-4118-D76D-F028-FCACA981FF8F";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "wheel_base_fk_worldInverseMatrix";
	rename -uid "87989D55-44C1-F6C2-D777-638EAE68D765";
	setAttr ".omat" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 0 0 1 0 -5.0644669532775843 -1.2687605023384094 -15.344563722610472 1;
createNode multMatrix -n "wheel_rod_fk_ctrl_parentMatrix";
	rename -uid "2C7814A7-4780-3A30-FA0B-C8A68F3351C0";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_fk_ctrl_srt_inWorld";
	rename -uid "374614C2-474D-675B-B147-0092859B6551";
	setAttr ".ot" -type "double3" 4.2521458854662386 1.268761 14.514088277550542 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "wheel_rod_fk_ctrl_matrix";
	rename -uid "8F84BD49-420D-3834-EE79-D99124282075";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_fk_ctrl_srt";
	rename -uid "4F7B5972-4C14-A9A8-67B5-D1AD61D94762";
	setAttr ".ot" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode quatToEuler -n "wheel_rod_fk_ctrl_rotation";
	rename -uid "39302833-43B9-1B29-8E7F-1E984F116B05";
	setAttr ".iro" 2;
createNode composeMatrix -n "wheel_rod_fk_matrix";
	rename -uid "581CADA6-4CE9-9579-E730-95B76231F747";
createNode multMatrix -n "wheel_rod_fk_worldMatrix";
	rename -uid "CB05B8CA-42A7-C761-6BC7-1A84597724F0";
	setAttr -s 2 ".i";
createNode multMatrix -n "wheel_fk_ctrl_parentMatrix";
	rename -uid "35A48162-4F4C-53F8-766F-D297ACA0235C";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_fk_ctrl_srtOffset_inWorld";
	rename -uid "EDBB9266-4891-B583-0683-2BAB06BDA689";
	setAttr ".ot" -type "double3" 3.9281462421404334 1.6577291488647459 14.514100675316657 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode multMatrix -n "wheel_fk_ctrl_matrix";
	rename -uid "1CDB7D21-429B-7D97-31D2-17B4CF28BAD6";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_fk_ctrl_srt";
	rename -uid "9E202C6D-4D13-8330-2CF7-E6859EBAE246";
	setAttr ".ot" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode quatToEuler -n "wheel_fk_ctrl_rotation";
	rename -uid "DB0682D2-42F8-EAC7-3AC8-9A84A5312EFA";
createNode composeMatrix -n "wheel_fk_matrix";
	rename -uid "345AC3EC-4201-9262-C25B-2BA0CF2DB29C";
createNode multMatrix -n "wheel_fk_worldMatrix";
	rename -uid "A6AD4CC2-4F38-F52A-2E8D-D6B14A3A970F";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "wheel_rod_fk_worldInverseMatrix";
	rename -uid "52CDBEB2-4FD3-3C26-BF67-D68CD54C9F50";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.2521458854662386 -1.2687610000000002 -14.514088277550544 1;
createNode inverseMatrix -n "wheel_fk_worldInverseMatrix";
	rename -uid "E8C00298-4130-0B89-6558-9BA4B1850296";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.928146242140433 -1.6577291488647456 -14.514100675316655 1;
createNode multMatrix -n "wheel_hinge_fk_ctrl_matrix";
	rename -uid "E6EF2F3F-441C-97D1-7CCB-76A74902169F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_hinge_fk_ctrl_srt";
	rename -uid "7844B510-4AF1-E200-3FAA-10A48D851907";
	setAttr ".ot" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "wheel_hinge_fk_matrix";
	rename -uid "C4F42CBC-41AD-238E-8E4B-FBA7209EC148";
createNode multMatrix -n "wheel_hinge_fk_worldMatrix";
	rename -uid "AA92FBB9-489B-CF6D-9CDE-539AB3B69632";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "wheel_hinge_fk_worldInverseMatrix";
	rename -uid "29B38121-4920-077D-0F2A-0099EB4F9F5B";
	setAttr ".omat" -type "matrix" 1 -5.5511151231257827e-017 0 0 0 1 0 0 5.5511151231257827e-017 0 1 0
		 -5.0644691884517652 -1.2687605023384094 -14.514088273048403 1;
createNode network -n "wheel_hinge_fk_pass";
	rename -uid "6DB36CD4-468A-D9D0-0D75-57AD68849D79";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode network -n "wheel_base_fk_pass";
	rename -uid "E609543B-4FC1-651C-C1EB-ED9FE31430ED";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode network -n "wheel_rod_fk_pass";
	rename -uid "91C8BF67-4ADC-A406-016C-CF81EEA2351C";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode network -n "wheel_fk_pass";
	rename -uid "7ABB3624-490D-A85A-8B51-6685057BE219";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode network -n "wheel_base_fk_parent_pass";
	rename -uid "DAF74AE7-4381-E64C-1567-ADB366F0D2BF";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "wheel_base_fk_matrix_localTo_foot";
	rename -uid "E46635D5-449A-C122-296B-7D83FFAD2A9D";
	setAttr -s 2 ".i";
createNode composeMatrix -n "wheel_strut_axle_fk_matrix_localTo_foot";
	rename -uid "7DE8B288-4D85-BDF1-357F-2C8ECACB9BCC";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.56446695327758523 -0.00023949766159048202 -0.0024362773895258982 1;
createNode decomposeMatrix -n "wheel_base_fk_srt_localTo_foot";
	rename -uid "FD84B774-47F3-E468-8AC6-F998C226035E";
	setAttr ".ot" -type "double3" 0.56446695327758523 -0.00023949766159048202 -0.0024362773895258982 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "wheel_strut_axle_fk_worldMatrix";
	rename -uid "3091C67D-4072-2497-3575-67A413AD9370";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_strut_axle_fk_srt_inWorld";
	rename -uid "5A9C0961-4E3B-CDEE-A29F-8D9BFEC2C7C0";
	setAttr ".ot" -type "double3" 5.0644669532775852 1.2687605023384094 15.344563722610474 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode pairBlend -n "wheel_strut_axle_blend_translateRotate";
	rename -uid "3D16E2E1-4063-4F8B-689B-65ABC2A3CD96";
	setAttr ".ri" 1;
createNode blendColors -n "wheel_strut_axle_blend_scale";
	rename -uid "2EB9B627-40E8-1DC8-ADF9-BEBBD5B5C16D";
createNode multMatrix -n "wheel_hinge_fk_matrix_localTo_strut_axle";
	rename -uid "E9900970-4672-764D-D860-74A58112A272";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_hinge_fk_srt_localTo_base";
	rename -uid "27B61191-480E-E223-51D0-5EAECC5EDAA8";
	setAttr ".ot" -type "double3" 2.2351741790771484e-006 0 -0.83047544956207098 ;
	setAttr ".os" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "wheel_strut_swivel_fk_matrix_localTo_base";
	rename -uid "B53AC2FE-4C4E-D525-1B40-BEA2B46CB5D4";
	setAttr ".uer" no;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.001890579859415098 0 -0.48798680305480957 1;
createNode multMatrix -n "wheel_strut_swivel_fk_worldMatrix";
	rename -uid "FB21E679-4DBB-AB29-2704-3EB270510A53";
	setAttr -s 2 ".i";
createNode network -n "wheel_strut_axle_fk_pass";
	rename -uid "7E5AC7EA-4ED8-1D83-E1B7-8B89467D7042";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode inverseMatrix -n "wheel_strut_axle_fk_worldInverseMatrix";
	rename -uid "D9C5E2D9-4137-350E-20A1-569092D859DA";
	setAttr ".omat" -type "matrix" 0.99999999999999989 0 0 0 0 1 0 0 0 0 1 0 -5.0644669532775843 -1.2687605023384094 -15.344563722610472 1;
createNode inverseMatrix -n "wheel_strut_swivel_fk_worldInverseMatrix";
	rename -uid "8527CA31-4978-7EDF-766A-30B4A78A038C";
createNode network -n "wheel_strut_swivel_fk_pass";
	rename -uid "40235F13-4229-ACDE-A0F8-7EBB0BB0C810";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode pairBlend -n "wheel_strut_swivel_blend_translateRotate";
	rename -uid "C97FF332-4B97-E1A5-7CB3-AA91E70DFA18";
	setAttr ".ri" 1;
createNode blendColors -n "wheel_strut_swivel_blend_scale";
	rename -uid "4CA0178D-4C1F-9877-A735-0BBDC929AC7E";
createNode decomposeMatrix -n "wheel_strut_swivel_fk_srt_inWorld";
	rename -uid "1788AE7E-4807-C3BA-F69F-CBB67CBC37FD";
	setAttr ".ot" -type "double3" 5.0625763734181701 1.2687605023384094 14.856576919555664 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "wheel_strut_swivel_ik_srt_inWorld";
	rename -uid "7180D35E-4D94-6301-1422-DFA3358B1749";
	setAttr ".ot" -type "double3" 5.0625763734181719 1.2687605023384094 14.856576919555664 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode pairBlend -n "wheel_strut_hinge_blend_translateRotate";
	rename -uid "BDC78D6A-4D1F-B0EB-B669-8FB43BD1AE81";
	setAttr ".ri" 1;
createNode blendColors -n "wheel_strut_hinge_blend_scale";
	rename -uid "CDFCC1F8-4EB4-DCFC-1384-BAA19CD530D2";
createNode decomposeMatrix -n "wheel_strut_hinge_fk_srt_inWorld";
	rename -uid "EB8E74E6-45C5-DCE9-E124-D897FEA04E0C";
	setAttr ".ot" -type "double3" 5.0644691884517643 1.2687605023384094 14.514088273048401 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode multMatrix -n "wheel_rod_fk_matrix_localTo_hinge";
	rename -uid "4EF54F58-4D1A-52B1-9FA2-6E83D2C41649";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_fk_srt_localTo_hinge";
	rename -uid "E531E0B2-4446-BF66-C78E-01B4B8739379";
	setAttr ".ot" -type "double3" -0.81232330298552569 4.9766159038178159e-007 4.5021391059663074e-009 ;
	setAttr ".or" -type "double3" 0 0 -3.1805546814635168e-015 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode quatToEuler -n "wheel_rod_fk_rotation_localTo_hinge";
	rename -uid "B3804001-43B4-3206-F442-F589605F16AB";
	setAttr ".iro" 2;
createNode composeMatrix -n "wheel_rod_hinge_fk_matrix_localTo_strut_hinge";
	rename -uid "356ABBB7-41AA-0663-837B-C98A78618E28";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.81232330298552569 4.9766159038178159e-007 4.5021391059663074e-009 1;
createNode multMatrix -n "wheel_rod_hinge_fk_worldMatrix";
	rename -uid "E6CEDACE-4E3A-64EA-022D-BFA17488A66B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_hinge_fk_srt_inWorld";
	rename -uid "C0856FC2-4632-509D-457C-9DB7F54294B6";
	setAttr ".ot" -type "double3" 4.2521458854662386 1.2687609999999998 14.51408827755054 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode pairBlend -n "wheel_rod_hinge_blend_translateRotate";
	rename -uid "4F48E643-4E3E-6321-1A2F-D1925ADF5B38";
	setAttr ".ri" 1;
createNode blendColors -n "wheel_rod_hinge_blend_scale";
	rename -uid "E63EDD67-4FC6-BA20-1448-9BB3394DADC5";
createNode multMatrix -n "wheel_rod_axle_fk_worldMatrix";
	rename -uid "5EACD614-4890-D830-2E19-22824A36B524";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_axle_fk_srt_inWorld";
	rename -uid "E9E92368-4EEB-3AB0-E2CC-C7A365992ACC";
	setAttr ".ot" -type "double3" 3.928146242140433 1.2939529418945312 14.514088277550544 ;
	setAttr ".os" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".oqw" 1;
createNode pairBlend -n "wheel_rod_axle_blend_translateRotate";
	rename -uid "5DB7E9F8-4B76-9100-564C-5C870DF5F8FD";
	setAttr ".ri" 1;
createNode blendColors -n "wheel_rod_axle_blend_scale";
	rename -uid "5420CB2E-4814-FEDE-0716-7C8AD51A97C4";
createNode decomposeMatrix -n "wheel_rod_swivel_fk_srt_inWorld";
	rename -uid "A99138DE-4A6E-4BF8-9EAC-3291578B222E";
	setAttr ".ot" -type "double3" 3.9281462421404334 1.6577291488647459 14.514100675316657 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode pairBlend -n "wheel_rod_swivel_blend_translateRotate";
	rename -uid "CFFBE3A7-443B-16AE-DC45-D4A219440F10";
	setAttr ".ri" 1;
createNode blendColors -n "wheel_rod_swivel_blend_scale";
	rename -uid "89922E2F-4982-75BA-F8A5-958ED8422C74";
createNode network -n "wheel_rod_swivel_pass";
	rename -uid "81D7532F-4A4F-E94D-D2E1-D9852FE2B218";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode composeMatrix -n "wheel_rod_swivel_worldMatrix";
	rename -uid "FD0C0B41-48AC-6542-6851-C5A7F887ED98";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.9281462421404361 1.6577291488647461 14.514100675316657 1;
createNode inverseMatrix -n "wheel_rod_swivel_worldInverseMatrix";
	rename -uid "32406B28-4F73-F7F2-3B00-90A987E61F86";
createNode reverse -n "wheel_ikfk_controls_visibility";
	rename -uid "0D0FBC98-4D00-A827-0C90-78B62DDBB57D";
createNode multMatrix -n "wheel_hinge_ik_ctrl_parentMatrix";
	rename -uid "F917DC99-4612-6590-DDCF-A294285C47F8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_hinge_ik_ctrl_srtOffset_inWorld";
	rename -uid "C9F21FBB-4CF3-FF9B-8EE0-249664ECFF86";
	setAttr ".ot" -type "double3" 4.2521458854662395 1.268761 14.514088277550542 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode multMatrix -n "wheel_rod_ik_ctrl_parentMatrix";
	rename -uid "38D3D2A0-410F-7BBF-370C-39950DC84D31";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_ik_ctrl_srtOffset_inWorld";
	rename -uid "5E466E85-409B-B639-D1E0-2E886C4E414E";
	setAttr ".ot" -type "double3" 3.9281462421404356 3.2276201248168945 14.514088277550544 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode multMatrix -n "wheel_rod_pv_ctrl_parentMatrix";
	rename -uid "A2D1FA0B-4BC1-77A0-4D7E-5AA04FFC5C2F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "wheel_rod_pv_ctrl_srtOffset_inWorld";
	rename -uid "AF85CD05-4D22-3E3B-3F07-6886E750DD60";
	setAttr ".ot" -type "double3" 3.2529928786011286 1.2687592084256545 14.514091782996804 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode vectorProduct -n "wheel_hinge_start_guided_position_localTo_foot";
	rename -uid "B5823394-41FC-DCC9-7086-F1A7D4D52146";
	setAttr ".op" 4;
createNode vectorProduct -n "wheel_base_guided_position_localTo_foot";
	rename -uid "0AEED568-4487-33F4-3A11-12B8D7DCBD53";
	setAttr ".op" 4;
createNode plusMinusAverage -n "wheel_strut_axle_guided_upVector";
	rename -uid "DAAEFFFA-4310-3290-A9C5-3A8A5A1ECBBD";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "wheel_strut_axle_guided_upVector_normal";
	rename -uid "B47BC0D6-42C8-1B76-2C39-24BAA7680658";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "wheel_hinge_end_guided_position_localTo_foot";
	rename -uid "C4FE1FF2-40B3-FF1D-CFF2-6CA399B7CA72";
	setAttr ".op" 4;
createNode plusMinusAverage -n "wheel_strut_hinge_guided_upVector";
	rename -uid "0B5A9B1C-4D28-9782-85A0-4D881EE98CA0";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "wheel_strut_hinge_guided_upVector_normal";
	rename -uid "F7CBD942-4315-926F-2412-0ABCE393CC87";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "wheel_rod_pv_guided_position_localTo_foot";
	rename -uid "836F6C28-432E-04F4-4B23-7FB907243300";
	setAttr ".op" 4;
createNode plusMinusAverage -n "wheel_rod_hinge_guided_upVector";
	rename -uid "FCFD3FF5-4525-CF80-E594-8BB914E3526B";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "wheel_rod_hinge_guided_upVector_normal";
	rename -uid "E5640862-4A25-13BC-13B7-AF85BFD8450D";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "wheel_rod_axle_guided_position_localTo_foot";
	rename -uid "536642FF-4CA0-44CE-6A92-A5911448F244";
	setAttr ".op" 4;
createNode vectorProduct -n "wheel_rod_end_guided_position_localTo_foot";
	rename -uid "DF37303E-4CE9-6C5F-7BC6-BEA16C95163B";
	setAttr ".op" 4;
createNode plusMinusAverage -n "wheel_rod_axle_guided_upVector";
	rename -uid "8BE5593A-4689-ACA4-381A-6C8C8644DBEA";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "wheel_rod_axle_guided_upVector_normal";
	rename -uid "337814EF-4263-EF25-41E4-E19E27D370E8";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode vectorProduct -n "wheel_guided_position_localTo_foot";
	rename -uid "FB34B2D5-4523-E9E8-2C21-968F3675B042";
	setAttr ".op" 4;
createNode vectorProduct -n "wheel_cover_ik_guided_position_localTo_foot";
	rename -uid "4B2813C0-4922-7468-1949-D6B7949B9A75";
	setAttr ".op" 4;
createNode plusMinusAverage -n "wheel_cover_guided_upVector";
	rename -uid "F8940794-4FEA-BA2D-C5EA-CEBAF29516F0";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "wheel_cover_guided_upVector_normal";
	rename -uid "CBB8AAC4-413A-3BB3-026A-5A98E005B269";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "42D8CBD3-4E9E-2FE4-4AA4-079C2A756DE7";
	setAttr -s 16 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "guides";
	setAttr ".tgi[0].vl" -type "double2" -2501.3735269779727 -1177.3809055960367 ;
	setAttr ".tgi[0].vh" -type "double2" 3951.3734693601518 570.23807257887199 ;
	setAttr -s 32 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -120.25334167480469;
	setAttr ".tgi[0].ni[0].y" 193.90684509277344;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 493.32321166992187;
	setAttr ".tgi[0].ni[1].y" 400.068115234375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 648.06915283203125;
	setAttr ".tgi[0].ni[2].y" -83.576148986816406;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 354.95062255859375;
	setAttr ".tgi[0].ni[3].y" -642.1224365234375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -350.47549438476562;
	setAttr ".tgi[0].ni[4].y" -640.2747802734375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -423.9927978515625;
	setAttr ".tgi[0].ni[5].y" 180.40289306640625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 289.48519897460938;
	setAttr ".tgi[0].ni[6].y" -81.366653442382812;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -458.55145263671875;
	setAttr ".tgi[0].ni[7].y" 512.6082763671875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 199.67059326171875;
	setAttr ".tgi[0].ni[8].y" 398.2720947265625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1114.3011474609375;
	setAttr ".tgi[0].ni[9].y" -78.767143249511719;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -106.15592956542969;
	setAttr ".tgi[0].ni[10].y" -140.64389038085937;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 747.82574462890625;
	setAttr ".tgi[0].ni[11].y" 405.83419799804687;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -77.195938110351562;
	setAttr ".tgi[0].ni[12].y" -350.80410766601562;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -338.32846069335937;
	setAttr ".tgi[0].ni[13].y" -725.8831787109375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -454.9002685546875;
	setAttr ".tgi[0].ni[14].y" 417.63772583007812;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -447.85198974609375;
	setAttr ".tgi[0].ni[15].y" -51.409191131591797;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -26.100107192993164;
	setAttr ".tgi[0].ni[16].y" -729.099365234375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -398.53762817382812;
	setAttr ".tgi[0].ni[17].y" -328.13192749023437;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 724.7431640625;
	setAttr ".tgi[0].ni[18].y" -546.7972412109375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -120.68336486816406;
	setAttr ".tgi[0].ni[19].y" 318.39700317382812;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1134.8463134765625;
	setAttr ".tgi[0].ni[20].y" -274.46453857421875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 539.29840087890625;
	setAttr ".tgi[0].ni[21].y" 235.60540771484375;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 269.60015869140625;
	setAttr ".tgi[0].ni[22].y" -235.62203979492187;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -465.53579711914062;
	setAttr ".tgi[0].ni[23].y" 342.92117309570312;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -22.683448791503906;
	setAttr ".tgi[0].ni[24].y" -615.583251953125;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 1096.0792236328125;
	setAttr ".tgi[0].ni[25].y" -606.433349609375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 273.834228515625;
	setAttr ".tgi[0].ni[26].y" 227.1859130859375;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -391.99002075195312;
	setAttr ".tgi[0].ni[27].y" -235.77511596679687;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -135.29328918457031;
	setAttr ".tgi[0].ni[28].y" 491.41494750976563;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 834.9598388671875;
	setAttr ".tgi[0].ni[29].y" 260.81304931640625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -75.946632385253906;
	setAttr ".tgi[0].ni[30].y" -254.87538146972656;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 576.23284912109375;
	setAttr ".tgi[0].ni[31].y" -233.08447265625;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "ik_controls";
	setAttr ".tgi[1].vl" -type "double2" -1195.1922601996343 -66.666664017573439 ;
	setAttr ".tgi[1].vh" -type "double2" 2163.0493645975912 842.85710936500868 ;
	setAttr -s 10 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 812.84954833984375;
	setAttr ".tgi[1].ni[0].y" 243.06806945800781;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 35.518924713134766;
	setAttr ".tgi[1].ni[1].y" 580.380126953125;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 9.9924077987670898;
	setAttr ".tgi[1].ni[2].y" 177.35377502441406;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 531.42095947265625;
	setAttr ".tgi[1].ni[3].y" 243.06806945800781;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 9.9924077987670898;
	setAttr ".tgi[1].ni[4].y" 307.35379028320312;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 296.947509765625;
	setAttr ".tgi[1].ni[5].y" 516.09442138671875;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 824.09033203125;
	setAttr ".tgi[1].ni[6].y" 516.09442138671875;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 271.42098999023437;
	setAttr ".tgi[1].ni[7].y" 243.06806945800781;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 35.518924713134766;
	setAttr ".tgi[1].ni[8].y" 450.380126953125;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 556.94744873046875;
	setAttr ".tgi[1].ni[9].y" 516.09442138671875;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "hinge_ik";
	setAttr ".tgi[2].vl" -type "double2" -266.39193080646561 -745.23806562499499 ;
	setAttr ".tgi[2].vh" -type "double2" 4511.6298573539843 548.80950200179348 ;
	setAttr -s 23 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 136.11083984375;
	setAttr ".tgi[2].ni[0].y" 45.2822265625;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" -504.621826171875;
	setAttr ".tgi[2].ni[1].y" -255.57328796386719;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 1945.893310546875;
	setAttr ".tgi[2].ni[2].y" -147.88481140136719;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" -513.13134765625;
	setAttr ".tgi[2].ni[3].y" -25.238933563232422;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 2315.47021484375;
	setAttr ".tgi[2].ni[4].y" -45.152503967285156;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 505.39511108398437;
	setAttr ".tgi[2].ni[5].y" -25.555320739746094;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 1083.2589111328125;
	setAttr ".tgi[2].ni[6].y" -40.934707641601562;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" -155.36825561523437;
	setAttr ".tgi[2].ni[7].y" -164.90788269042969;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" -158.85208129882813;
	setAttr ".tgi[2].ni[8].y" -248.5194091796875;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" 133.60499572753906;
	setAttr ".tgi[2].ni[9].y" 184.605224609375;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" 2657.183349609375;
	setAttr ".tgi[2].ni[10].y" -150.41484069824219;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" -504.45376586914062;
	setAttr ".tgi[2].ni[11].y" 232.18486022949219;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" -522.662109375;
	setAttr ".tgi[2].ni[12].y" -96.776634216308594;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" -185.56130981445312;
	setAttr ".tgi[2].ni[13].y" -29.039134979248047;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" 2643.19287109375;
	setAttr ".tgi[2].ni[14].y" 11.815535545349121;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" 2964.682861328125;
	setAttr ".tgi[2].ni[15].y" -47.780235290527344;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" -510.35775756835937;
	setAttr ".tgi[2].ni[16].y" 49.603412628173828;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" -515.142822265625;
	setAttr ".tgi[2].ni[17].y" -165.58338928222656;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" 1931.71923828125;
	setAttr ".tgi[2].ni[18].y" 188.4654541015625;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 823.25250244140625;
	setAttr ".tgi[2].ni[19].y" -153.3873291015625;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" 2315.650634765625;
	setAttr ".tgi[2].ni[20].y" 68.130241394042969;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" 1949.3326416015625;
	setAttr ".tgi[2].ni[21].y" -240.60227966308594;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" 2948.948486328125;
	setAttr ".tgi[2].ni[22].y" 69.382118225097656;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "strut_axle";
	setAttr ".tgi[3].vl" -type "double2" -900.27468950102332 -219.04761034344818 ;
	setAttr ".tgi[3].vh" -type "double2" 2093.1317849582842 591.66664315594744 ;
	setAttr -s 22 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 1453.2978515625;
	setAttr ".tgi[3].ni[0].y" 491.77865600585937;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" -59.309795379638672;
	setAttr ".tgi[3].ni[1].y" 325.36422729492187;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" -75.605072021484375;
	setAttr ".tgi[3].ni[2].y" 471.38265991210937;
	setAttr ".tgi[3].ni[2].nvs" 18304;
	setAttr ".tgi[3].ni[3].x" 1117.414306640625;
	setAttr ".tgi[3].ni[3].y" 289.59439086914062;
	setAttr ".tgi[3].ni[3].nvs" 18304;
	setAttr ".tgi[3].ni[4].x" 2484.914794921875;
	setAttr ".tgi[3].ni[4].y" 285.3875732421875;
	setAttr ".tgi[3].ni[4].nvs" 18304;
	setAttr ".tgi[3].ni[5].x" 534.1756591796875;
	setAttr ".tgi[3].ni[5].y" 145.79315185546875;
	setAttr ".tgi[3].ni[5].nvs" 18304;
	setAttr ".tgi[3].ni[6].x" 2113.01025390625;
	setAttr ".tgi[3].ni[6].y" 433.93850708007813;
	setAttr ".tgi[3].ni[6].nvs" 18304;
	setAttr ".tgi[3].ni[7].x" 227.75840759277344;
	setAttr ".tgi[3].ni[7].y" 79.720077514648438;
	setAttr ".tgi[3].ni[7].nvs" 18304;
	setAttr ".tgi[3].ni[8].x" -55.867568969726563;
	setAttr ".tgi[3].ni[8].y" 141.96356201171875;
	setAttr ".tgi[3].ni[8].nvs" 18304;
	setAttr ".tgi[3].ni[9].x" 1459.5142822265625;
	setAttr ".tgi[3].ni[9].y" 211.63197326660156;
	setAttr ".tgi[3].ni[9].nvs" 18304;
	setAttr ".tgi[3].ni[10].x" 535.406982421875;
	setAttr ".tgi[3].ni[10].y" 471.26004028320312;
	setAttr ".tgi[3].ni[10].nvs" 18304;
	setAttr ".tgi[3].ni[11].x" 1766.6005859375;
	setAttr ".tgi[3].ni[11].y" 289.37399291992187;
	setAttr ".tgi[3].ni[11].nvs" 18304;
	setAttr ".tgi[3].ni[12].x" 835.317138671875;
	setAttr ".tgi[3].ni[12].y" 478.13043212890625;
	setAttr ".tgi[3].ni[12].nvs" 18304;
	setAttr ".tgi[3].ni[13].x" 2903.033203125;
	setAttr ".tgi[3].ni[13].y" 375.55255126953125;
	setAttr ".tgi[3].ni[13].nvs" 18304;
	setAttr ".tgi[3].ni[14].x" 1772.0919189453125;
	setAttr ".tgi[3].ni[14].y" 404.84683227539062;
	setAttr ".tgi[3].ni[14].nvs" 18304;
	setAttr ".tgi[3].ni[15].x" 2112.123291015625;
	setAttr ".tgi[3].ni[15].y" 286.47122192382812;
	setAttr ".tgi[3].ni[15].nvs" 18304;
	setAttr ".tgi[3].ni[16].x" 2117.84130859375;
	setAttr ".tgi[3].ni[16].y" 365.93325805664062;
	setAttr ".tgi[3].ni[16].nvs" 18304;
	setAttr ".tgi[3].ni[17].x" 838.85223388671875;
	setAttr ".tgi[3].ni[17].y" 145.61505126953125;
	setAttr ".tgi[3].ni[17].nvs" 18304;
	setAttr ".tgi[3].ni[18].x" 2479.453857421875;
	setAttr ".tgi[3].ni[18].y" 416.3260498046875;
	setAttr ".tgi[3].ni[18].nvs" 18304;
	setAttr ".tgi[3].ni[19].x" 1120.2843017578125;
	setAttr ".tgi[3].ni[19].y" 405.20022583007812;
	setAttr ".tgi[3].ni[19].nvs" 18304;
	setAttr ".tgi[3].ni[20].x" 248.17770385742187;
	setAttr ".tgi[3].ni[20].y" 470.8287353515625;
	setAttr ".tgi[3].ni[20].nvs" 18304;
	setAttr ".tgi[3].ni[21].x" 225.73362731933594;
	setAttr ".tgi[3].ni[21].y" 3.0478274822235107;
	setAttr ".tgi[3].ni[21].nvs" 18304;
	setAttr ".tgi[4].tn" -type "string" "strut_swivel";
	setAttr ".tgi[4].vl" -type "double2" -755.49447547385262 -29.761903579275216 ;
	setAttr ".tgi[4].vh" -type "double2" 3055.4943840800684 1002.3809125499116 ;
	setAttr -s 27 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" 232.33370971679687;
	setAttr ".tgi[4].ni[0].y" 564.11688232421875;
	setAttr ".tgi[4].ni[0].nvs" 18304;
	setAttr ".tgi[4].ni[1].x" 1482.3477783203125;
	setAttr ".tgi[4].ni[1].y" 117.79953765869141;
	setAttr ".tgi[4].ni[1].nvs" 18304;
	setAttr ".tgi[4].ni[2].x" 1309.654296875;
	setAttr ".tgi[4].ni[2].y" 762.63677978515625;
	setAttr ".tgi[4].ni[2].nvs" 18304;
	setAttr ".tgi[4].ni[3].x" 2092.44921875;
	setAttr ".tgi[4].ni[3].y" 460.04641723632812;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" 540.63153076171875;
	setAttr ".tgi[4].ni[4].y" 673.9420166015625;
	setAttr ".tgi[4].ni[4].nvs" 18304;
	setAttr ".tgi[4].ni[5].x" 2396.473388671875;
	setAttr ".tgi[4].ni[5].y" 647.9459228515625;
	setAttr ".tgi[4].ni[5].nvs" 18304;
	setAttr ".tgi[4].ni[6].x" 2654.965576171875;
	setAttr ".tgi[4].ni[6].y" 783.120849609375;
	setAttr ".tgi[4].ni[6].nvs" 18304;
	setAttr ".tgi[4].ni[7].x" 3041.046630859375;
	setAttr ".tgi[4].ni[7].y" 762.45477294921875;
	setAttr ".tgi[4].ni[7].nvs" 18304;
	setAttr ".tgi[4].ni[8].x" -336.4290771484375;
	setAttr ".tgi[4].ni[8].y" 509.1522216796875;
	setAttr ".tgi[4].ni[8].nvs" 18304;
	setAttr ".tgi[4].ni[9].x" 2070.649169921875;
	setAttr ".tgi[4].ni[9].y" 860.04681396484375;
	setAttr ".tgi[4].ni[9].nvs" 18304;
	setAttr ".tgi[4].ni[10].x" -20.530359268188477;
	setAttr ".tgi[4].ni[10].y" 758.8533935546875;
	setAttr ".tgi[4].ni[10].nvs" 18304;
	setAttr ".tgi[4].ni[11].x" 855.03851318359375;
	setAttr ".tgi[4].ni[11].y" 367.47732543945312;
	setAttr ".tgi[4].ni[11].nvs" 18304;
	setAttr ".tgi[4].ni[12].x" 999.88470458984375;
	setAttr ".tgi[4].ni[12].y" 671.775634765625;
	setAttr ".tgi[4].ni[12].nvs" 18304;
	setAttr ".tgi[4].ni[13].x" 213.60932922363281;
	setAttr ".tgi[4].ni[13].y" 121.71334075927734;
	setAttr ".tgi[4].ni[13].nvs" 18304;
	setAttr ".tgi[4].ni[14].x" -12.579286575317383;
	setAttr ".tgi[4].ni[14].y" 652.52752685546875;
	setAttr ".tgi[4].ni[14].nvs" 18304;
	setAttr ".tgi[4].ni[15].x" -347.10684204101562;
	setAttr ".tgi[4].ni[15].y" 218.51551818847656;
	setAttr ".tgi[4].ni[15].nvs" 18304;
	setAttr ".tgi[4].ni[16].x" 293.80975341796875;
	setAttr ".tgi[4].ni[16].y" 211.39115905761719;
	setAttr ".tgi[4].ni[16].nvs" 18304;
	setAttr ".tgi[4].ni[17].x" 257.15225219726562;
	setAttr ".tgi[4].ni[17].y" 673.05450439453125;
	setAttr ".tgi[4].ni[17].nvs" 18304;
	setAttr ".tgi[4].ni[18].x" 624.36468505859375;
	setAttr ".tgi[4].ni[18].y" 210.08462524414062;
	setAttr ".tgi[4].ni[18].nvs" 18304;
	setAttr ".tgi[4].ni[19].x" 2674.2568359375;
	setAttr ".tgi[4].ni[19].y" 716.4912109375;
	setAttr ".tgi[4].ni[19].nvs" 18304;
	setAttr ".tgi[4].ni[20].x" 2681.359375;
	setAttr ".tgi[4].ni[20].y" 637.467041015625;
	setAttr ".tgi[4].ni[20].nvs" 18304;
	setAttr ".tgi[4].ni[21].x" 3325.943115234375;
	setAttr ".tgi[4].ni[21].y" 704.68841552734375;
	setAttr ".tgi[4].ni[21].nvs" 18304;
	setAttr ".tgi[4].ni[22].x" 1835.89453125;
	setAttr ".tgi[4].ni[22].y" 492.83740234375;
	setAttr ".tgi[4].ni[22].nvs" 18304;
	setAttr ".tgi[4].ni[23].x" 3053.097412109375;
	setAttr ".tgi[4].ni[23].y" 635.89453125;
	setAttr ".tgi[4].ni[23].nvs" 18304;
	setAttr ".tgi[4].ni[24].x" 2395.306396484375;
	setAttr ".tgi[4].ni[24].y" 778.630859375;
	setAttr ".tgi[4].ni[24].nvs" 18304;
	setAttr ".tgi[4].ni[25].x" 1166.3089599609375;
	setAttr ".tgi[4].ni[25].y" 114.17086791992187;
	setAttr ".tgi[4].ni[25].nvs" 18304;
	setAttr ".tgi[4].ni[26].x" -17.724416732788086;
	setAttr ".tgi[4].ni[26].y" 212.76968383789062;
	setAttr ".tgi[4].ni[26].nvs" 18304;
	setAttr ".tgi[5].tn" -type "string" "strut_hinge";
	setAttr ".tgi[5].vl" -type "double2" -1993.3149391077993 -598.80950001497206 ;
	setAttr ".tgi[5].vh" -type "double2" 2309.9815931912635 566.66664414935735 ;
	setAttr -s 16 ".tgi[5].ni";
	setAttr ".tgi[5].ni[0].x" -32.878456115722656;
	setAttr ".tgi[5].ni[0].y" 194.48432922363281;
	setAttr ".tgi[5].ni[0].nvs" 18304;
	setAttr ".tgi[5].ni[1].x" -39.346141815185547;
	setAttr ".tgi[5].ni[1].y" -33.225666046142578;
	setAttr ".tgi[5].ni[1].nvs" 18304;
	setAttr ".tgi[5].ni[2].x" 223.19737243652344;
	setAttr ".tgi[5].ni[2].y" 43.199344635009766;
	setAttr ".tgi[5].ni[2].nvs" 18304;
	setAttr ".tgi[5].ni[3].x" -288.648193359375;
	setAttr ".tgi[5].ni[3].y" 42.960792541503906;
	setAttr ".tgi[5].ni[3].nvs" 18304;
	setAttr ".tgi[5].ni[4].x" 2039.0003662109375;
	setAttr ".tgi[5].ni[4].y" 126.13386535644531;
	setAttr ".tgi[5].ni[4].nvs" 18304;
	setAttr ".tgi[5].ni[5].x" 1365.154296875;
	setAttr ".tgi[5].ni[5].y" 55.969539642333984;
	setAttr ".tgi[5].ni[5].nvs" 18304;
	setAttr ".tgi[5].ni[6].x" 2404.403564453125;
	setAttr ".tgi[5].ni[6].y" 191.40557861328125;
	setAttr ".tgi[5].ni[6].nvs" 18304;
	setAttr ".tgi[5].ni[7].x" 1752.9796142578125;
	setAttr ".tgi[5].ni[7].y" 260.96578979492187;
	setAttr ".tgi[5].ni[7].nvs" 18304;
	setAttr ".tgi[5].ni[8].x" 837.4405517578125;
	setAttr ".tgi[5].ni[8].y" 191.12301635742187;
	setAttr ".tgi[5].ni[8].nvs" 18304;
	setAttr ".tgi[5].ni[9].x" -44.298263549804688;
	setAttr ".tgi[5].ni[9].y" -135.0340576171875;
	setAttr ".tgi[5].ni[9].nvs" 18304;
	setAttr ".tgi[5].ni[10].x" 1742.2257080078125;
	setAttr ".tgi[5].ni[10].y" 53.882080078125;
	setAttr ".tgi[5].ni[10].nvs" 18304;
	setAttr ".tgi[5].ni[11].x" 1091.2518310546875;
	setAttr ".tgi[5].ni[11].y" 76.050491333007812;
	setAttr ".tgi[5].ni[11].nvs" 18304;
	setAttr ".tgi[5].ni[12].x" 1737.3807373046875;
	setAttr ".tgi[5].ni[12].y" 169.98454284667969;
	setAttr ".tgi[5].ni[12].nvs" 18304;
	setAttr ".tgi[5].ni[13].x" 528.60504150390625;
	setAttr ".tgi[5].ni[13].y" 44.813388824462891;
	setAttr ".tgi[5].ni[13].nvs" 18304;
	setAttr ".tgi[5].ni[14].x" 2035.7640380859375;
	setAttr ".tgi[5].ni[14].y" 222.65974426269531;
	setAttr ".tgi[5].ni[14].nvs" 18304;
	setAttr ".tgi[5].ni[15].x" 1367.6937255859375;
	setAttr ".tgi[5].ni[15].y" 192.97996520996094;
	setAttr ".tgi[5].ni[15].nvs" 18304;
	setAttr ".tgi[6].tn" -type "string" "rod_ik";
	setAttr ".tgi[6].vl" -type "double2" -2595.4669298324434 -658.33330717351805 ;
	setAttr ".tgi[6].vh" -type "double2" 3241.8954755742525 922.61901095746202 ;
	setAttr -s 28 ".tgi[6].ni";
	setAttr ".tgi[6].ni[0].x" 320.36734008789063;
	setAttr ".tgi[6].ni[0].y" 701.71771240234375;
	setAttr ".tgi[6].ni[0].nvs" 18304;
	setAttr ".tgi[6].ni[1].x" 833.62554931640625;
	setAttr ".tgi[6].ni[1].y" 274.24334716796875;
	setAttr ".tgi[6].ni[1].nvs" 18304;
	setAttr ".tgi[6].ni[2].x" 137.43052673339844;
	setAttr ".tgi[6].ni[2].y" -320.42529296875;
	setAttr ".tgi[6].ni[2].nvs" 18304;
	setAttr ".tgi[6].ni[3].x" 12.022037506103516;
	setAttr ".tgi[6].ni[3].y" 691.63653564453125;
	setAttr ".tgi[6].ni[3].nvs" 18304;
	setAttr ".tgi[6].ni[4].x" 2015.6065673828125;
	setAttr ".tgi[6].ni[4].y" -87.194007873535156;
	setAttr ".tgi[6].ni[4].nvs" 18304;
	setAttr ".tgi[6].ni[5].x" -236.94781494140625;
	setAttr ".tgi[6].ni[5].y" -334.22225952148437;
	setAttr ".tgi[6].ni[5].nvs" 18304;
	setAttr ".tgi[6].ni[6].x" 2357.04638671875;
	setAttr ".tgi[6].ni[6].y" 45.186637878417969;
	setAttr ".tgi[6].ni[6].nvs" 18304;
	setAttr ".tgi[6].ni[7].x" -213.22254943847656;
	setAttr ".tgi[6].ni[7].y" 167.8441162109375;
	setAttr ".tgi[6].ni[7].nvs" 18304;
	setAttr ".tgi[6].ni[8].x" 156.28799438476562;
	setAttr ".tgi[6].ni[8].y" 281.99179077148437;
	setAttr ".tgi[6].ni[8].nvs" 18304;
	setAttr ".tgi[6].ni[9].x" 147.23187255859375;
	setAttr ".tgi[6].ni[9].y" 473.66409301757812;
	setAttr ".tgi[6].ni[9].nvs" 18304;
	setAttr ".tgi[6].ni[10].x" 1397.2109375;
	setAttr ".tgi[6].ni[10].y" -141.67868041992187;
	setAttr ".tgi[6].ni[10].nvs" 18304;
	setAttr ".tgi[6].ni[11].x" -206.64170837402344;
	setAttr ".tgi[6].ni[11].y" 85.526329040527344;
	setAttr ".tgi[6].ni[11].nvs" 18304;
	setAttr ".tgi[6].ni[12].x" 144.89787292480469;
	setAttr ".tgi[6].ni[12].y" -2.2385241985321045;
	setAttr ".tgi[6].ni[12].nvs" 18304;
	setAttr ".tgi[6].ni[13].x" -496.1060791015625;
	setAttr ".tgi[6].ni[13].y" 627.1768798828125;
	setAttr ".tgi[6].ni[13].nvs" 18304;
	setAttr ".tgi[6].ni[14].x" 1397.2109375;
	setAttr ".tgi[6].ni[14].y" -11.678679466247559;
	setAttr ".tgi[6].ni[14].nvs" 18304;
	setAttr ".tgi[6].ni[15].x" 124.36837005615234;
	setAttr ".tgi[6].ni[15].y" -222.4591064453125;
	setAttr ".tgi[6].ni[15].nvs" 18304;
	setAttr ".tgi[6].ni[16].x" 523.6143798828125;
	setAttr ".tgi[6].ni[16].y" 11.583589553833008;
	setAttr ".tgi[6].ni[16].nvs" 18304;
	setAttr ".tgi[6].ni[17].x" 1096.5540771484375;
	setAttr ".tgi[6].ni[17].y" -96.234825134277344;
	setAttr ".tgi[6].ni[17].nvs" 18304;
	setAttr ".tgi[6].ni[18].x" 145.23713684082031;
	setAttr ".tgi[6].ni[18].y" 81.52252197265625;
	setAttr ".tgi[6].ni[18].nvs" 18304;
	setAttr ".tgi[6].ni[19].x" 1692.9769287109375;
	setAttr ".tgi[6].ni[19].y" -87.265998840332031;
	setAttr ".tgi[6].ni[19].nvs" 18304;
	setAttr ".tgi[6].ni[20].x" -496.48190307617187;
	setAttr ".tgi[6].ni[20].y" 753.0931396484375;
	setAttr ".tgi[6].ni[20].nvs" 18304;
	setAttr ".tgi[6].ni[21].x" 2668.19384765625;
	setAttr ".tgi[6].ni[21].y" -25.248071670532227;
	setAttr ".tgi[6].ni[21].nvs" 18304;
	setAttr ".tgi[6].ni[22].x" 2015.6737060546875;
	setAttr ".tgi[6].ni[22].y" -191.91864013671875;
	setAttr ".tgi[6].ni[22].nvs" 18304;
	setAttr ".tgi[6].ni[23].x" -216.28401184082031;
	setAttr ".tgi[6].ni[23].y" -227.95639038085937;
	setAttr ".tgi[6].ni[23].nvs" 18304;
	setAttr ".tgi[6].ni[24].x" -255.96966552734375;
	setAttr ".tgi[6].ni[24].y" 682.8857421875;
	setAttr ".tgi[6].ni[24].nvs" 18304;
	setAttr ".tgi[6].ni[25].x" 816.6351318359375;
	setAttr ".tgi[6].ni[25].y" -214.69879150390625;
	setAttr ".tgi[6].ni[25].nvs" 18304;
	setAttr ".tgi[6].ni[26].x" 1687.7886962890625;
	setAttr ".tgi[6].ni[26].y" 47.530223846435547;
	setAttr ".tgi[6].ni[26].nvs" 18304;
	setAttr ".tgi[6].ni[27].x" -204.87501525878906;
	setAttr ".tgi[6].ni[27].y" -3.988879919052124;
	setAttr ".tgi[6].ni[27].nvs" 18304;
	setAttr ".tgi[7].tn" -type "string" "rod_hinge";
	setAttr ".tgi[7].vl" -type "double2" -1692.3076250614347 -353.57141452176558 ;
	setAttr ".tgi[7].vh" -type "double2" 3063.7361419943227 934.52377238916847 ;
	setAttr -s 22 ".tgi[7].ni";
	setAttr ".tgi[7].ni[0].x" 2393.225341796875;
	setAttr ".tgi[7].ni[0].y" 463.70391845703125;
	setAttr ".tgi[7].ni[0].nvs" 18304;
	setAttr ".tgi[7].ni[1].x" 1081.0032958984375;
	setAttr ".tgi[7].ni[1].y" 493.99478149414062;
	setAttr ".tgi[7].ni[1].nvs" 18304;
	setAttr ".tgi[7].ni[2].x" 1556.959228515625;
	setAttr ".tgi[7].ni[2].y" 325.081787109375;
	setAttr ".tgi[7].ni[2].nvs" 18304;
	setAttr ".tgi[7].ni[3].x" 1799.6954345703125;
	setAttr ".tgi[7].ni[3].y" 562.90191650390625;
	setAttr ".tgi[7].ni[3].nvs" 18304;
	setAttr ".tgi[7].ni[4].x" 1315.612060546875;
	setAttr ".tgi[7].ni[4].y" 434.15628051757813;
	setAttr ".tgi[7].ni[4].nvs" 18304;
	setAttr ".tgi[7].ni[5].x" 529.18475341796875;
	setAttr ".tgi[7].ni[5].y" 382.47161865234375;
	setAttr ".tgi[7].ni[5].nvs" 18304;
	setAttr ".tgi[7].ni[6].x" -57.825424194335938;
	setAttr ".tgi[7].ni[6].y" 322.58914184570312;
	setAttr ".tgi[7].ni[6].nvs" 18304;
	setAttr ".tgi[7].ni[7].x" -53.925586700439453;
	setAttr ".tgi[7].ni[7].y" 220.56797790527344;
	setAttr ".tgi[7].ni[7].nvs" 18304;
	setAttr ".tgi[7].ni[8].x" 788.1236572265625;
	setAttr ".tgi[7].ni[8].y" 213.14822387695312;
	setAttr ".tgi[7].ni[8].nvs" 18304;
	setAttr ".tgi[7].ni[9].x" 2686.496337890625;
	setAttr ".tgi[7].ni[9].y" 453.63040161132812;
	setAttr ".tgi[7].ni[9].nvs" 18304;
	setAttr ".tgi[7].ni[10].x" 2397.252685546875;
	setAttr ".tgi[7].ni[10].y" 379.13247680664062;
	setAttr ".tgi[7].ni[10].nvs" 18304;
	setAttr ".tgi[7].ni[11].x" 1055.9278564453125;
	setAttr ".tgi[7].ni[11].y" 322.7899169921875;
	setAttr ".tgi[7].ni[11].nvs" 18304;
	setAttr ".tgi[7].ni[12].x" 2072.24560546875;
	setAttr ".tgi[7].ni[12].y" 325.09243774414062;
	setAttr ".tgi[7].ni[12].nvs" 18304;
	setAttr ".tgi[7].ni[13].x" 2073.580322265625;
	setAttr ".tgi[7].ni[13].y" 509.31063842773437;
	setAttr ".tgi[7].ni[13].nvs" 18304;
	setAttr ".tgi[7].ni[14].x" 504.07247924804687;
	setAttr ".tgi[7].ni[14].y" 212.94013977050781;
	setAttr ".tgi[7].ni[14].nvs" 18304;
	setAttr ".tgi[7].ni[15].x" 808.3251953125;
	setAttr ".tgi[7].ni[15].y" 494.59716796875;
	setAttr ".tgi[7].ni[15].nvs" 18304;
	setAttr ".tgi[7].ni[16].x" 537.48394775390625;
	setAttr ".tgi[7].ni[16].y" 562.36529541015625;
	setAttr ".tgi[7].ni[16].nvs" 18304;
	setAttr ".tgi[7].ni[17].x" 1566.024169921875;
	setAttr ".tgi[7].ni[17].y" 494.0191650390625;
	setAttr ".tgi[7].ni[17].nvs" 18304;
	setAttr ".tgi[7].ni[18].x" 203.17214965820313;
	setAttr ".tgi[7].ni[18].y" 102.58129119873047;
	setAttr ".tgi[7].ni[18].nvs" 18304;
	setAttr ".tgi[7].ni[19].x" 175.11563110351562;
	setAttr ".tgi[7].ni[19].y" -146.41915893554687;
	setAttr ".tgi[7].ni[19].nvs" 18304;
	setAttr ".tgi[7].ni[20].x" 2070.798095703125;
	setAttr ".tgi[7].ni[20].y" 422.22845458984375;
	setAttr ".tgi[7].ni[20].nvs" 18304;
	setAttr ".tgi[7].ni[21].x" 1292.7843017578125;
	setAttr ".tgi[7].ni[21].y" 225.62525939941406;
	setAttr ".tgi[7].ni[21].nvs" 18304;
	setAttr ".tgi[8].tn" -type "string" "rod_axle";
	setAttr ".tgi[8].vl" -type "double2" -1781.410185623376 -399.99998410542872 ;
	setAttr ".tgi[8].vh" -type "double2" 1721.8863784648297 548.80950200179359 ;
	setAttr -s 17 ".tgi[8].ni";
	setAttr ".tgi[8].ni[0].x" 2318.5576171875;
	setAttr ".tgi[8].ni[0].y" 249.27317810058594;
	setAttr ".tgi[8].ni[0].nvs" 18304;
	setAttr ".tgi[8].ni[1].x" 455.77728271484375;
	setAttr ".tgi[8].ni[1].y" 222.93417358398437;
	setAttr ".tgi[8].ni[1].nvs" 18304;
	setAttr ".tgi[8].ni[2].x" -128.28909301757812;
	setAttr ".tgi[8].ni[2].y" 359.19137573242187;
	setAttr ".tgi[8].ni[2].nvs" 18304;
	setAttr ".tgi[8].ni[3].x" 1983.3148193359375;
	setAttr ".tgi[8].ni[3].y" 186.4735107421875;
	setAttr ".tgi[8].ni[3].nvs" 18304;
	setAttr ".tgi[8].ni[4].x" 1661.939697265625;
	setAttr ".tgi[8].ni[4].y" 51.749393463134766;
	setAttr ".tgi[8].ni[4].nvs" 18304;
	setAttr ".tgi[8].ni[5].x" -420.58529663085937;
	setAttr ".tgi[8].ni[5].y" 44.933162689208984;
	setAttr ".tgi[8].ni[5].nvs" 18304;
	setAttr ".tgi[8].ni[6].x" 1653.0037841796875;
	setAttr ".tgi[8].ni[6].y" 363.98928833007812;
	setAttr ".tgi[8].ni[6].nvs" 18304;
	setAttr ".tgi[8].ni[7].x" -138.08750915527344;
	setAttr ".tgi[8].ni[7].y" 277.565673828125;
	setAttr ".tgi[8].ni[7].nvs" 18304;
	setAttr ".tgi[8].ni[8].x" -429.84356689453125;
	setAttr ".tgi[8].ni[8].y" 130.3653564453125;
	setAttr ".tgi[8].ni[8].nvs" 18304;
	setAttr ".tgi[8].ni[9].x" 141.49159240722656;
	setAttr ".tgi[8].ni[9].y" 212.00979614257812;
	setAttr ".tgi[8].ni[9].nvs" 18304;
	setAttr ".tgi[8].ni[10].x" 1010.5744018554687;
	setAttr ".tgi[8].ni[10].y" -60.708236694335938;
	setAttr ".tgi[8].ni[10].nvs" 18304;
	setAttr ".tgi[8].ni[11].x" 726.40924072265625;
	setAttr ".tgi[8].ni[11].y" 52.100261688232422;
	setAttr ".tgi[8].ni[11].nvs" 18304;
	setAttr ".tgi[8].ni[12].x" -428.136962890625;
	setAttr ".tgi[8].ni[12].y" 218.3375244140625;
	setAttr ".tgi[8].ni[12].nvs" 18304;
	setAttr ".tgi[8].ni[13].x" 1975.295654296875;
	setAttr ".tgi[8].ni[13].y" 275.83004760742187;
	setAttr ".tgi[8].ni[13].nvs" 18304;
	setAttr ".tgi[8].ni[14].x" 1366.7301025390625;
	setAttr ".tgi[8].ni[14].y" 53.987941741943359;
	setAttr ".tgi[8].ni[14].nvs" 18304;
	setAttr ".tgi[8].ni[15].x" -436.01181030273437;
	setAttr ".tgi[8].ni[15].y" 357.15240478515625;
	setAttr ".tgi[8].ni[15].nvs" 18304;
	setAttr ".tgi[8].ni[16].x" 1419.6298828125;
	setAttr ".tgi[8].ni[16].y" 223.75996398925781;
	setAttr ".tgi[8].ni[16].nvs" 18304;
	setAttr ".tgi[9].tn" -type "string" "rod_swivel";
	setAttr ".tgi[9].vl" -type "double2" -3334.0200140380944 -1323.8094712060617 ;
	setAttr ".tgi[9].vh" -type "double2" 6463.7817944344406 1329.7618519219163 ;
	setAttr -s 19 ".tgi[9].ni";
	setAttr ".tgi[9].ni[0].x" 1172.998291015625;
	setAttr ".tgi[9].ni[0].y" 497.6474609375;
	setAttr ".tgi[9].ni[0].nvs" 18304;
	setAttr ".tgi[9].ni[1].x" 1483.4384765625;
	setAttr ".tgi[9].ni[1].y" 287.80300903320312;
	setAttr ".tgi[9].ni[1].nvs" 18304;
	setAttr ".tgi[9].ni[2].x" 1174.8416748046875;
	setAttr ".tgi[9].ni[2].y" 286.57333374023437;
	setAttr ".tgi[9].ni[2].nvs" 18304;
	setAttr ".tgi[9].ni[3].x" 2973.936279296875;
	setAttr ".tgi[9].ni[3].y" 151.35467529296875;
	setAttr ".tgi[9].ni[3].nvs" 18304;
	setAttr ".tgi[9].ni[4].x" 2696.91357421875;
	setAttr ".tgi[9].ni[4].y" 507.486572265625;
	setAttr ".tgi[9].ni[4].nvs" 18304;
	setAttr ".tgi[9].ni[5].x" 3206.219482421875;
	setAttr ".tgi[9].ni[5].y" 263.99017333984375;
	setAttr ".tgi[9].ni[5].nvs" 18304;
	setAttr ".tgi[9].ni[6].x" 598.22412109375;
	setAttr ".tgi[9].ni[6].y" 285.02792358398437;
	setAttr ".tgi[9].ni[6].nvs" 18304;
	setAttr ".tgi[9].ni[7].x" 2260.939697265625;
	setAttr ".tgi[9].ni[7].y" 491.37005615234375;
	setAttr ".tgi[9].ni[7].nvs" 18304;
	setAttr ".tgi[9].ni[8].x" -301.31707763671875;
	setAttr ".tgi[9].ni[8].y" 98.17230224609375;
	setAttr ".tgi[9].ni[8].nvs" 18304;
	setAttr ".tgi[9].ni[9].x" -564.48870849609375;
	setAttr ".tgi[9].ni[9].y" 287.189453125;
	setAttr ".tgi[9].ni[9].nvs" 18304;
	setAttr ".tgi[9].ni[10].x" 0.16173414885997772;
	setAttr ".tgi[9].ni[10].y" 190.1097412109375;
	setAttr ".tgi[9].ni[10].nvs" 18304;
	setAttr ".tgi[9].ni[11].x" 878.68743896484375;
	setAttr ".tgi[9].ni[11].y" 179.75140380859375;
	setAttr ".tgi[9].ni[11].nvs" 18304;
	setAttr ".tgi[9].ni[12].x" -565.6036376953125;
	setAttr ".tgi[9].ni[12].y" 189.49830627441406;
	setAttr ".tgi[9].ni[12].nvs" 18304;
	setAttr ".tgi[9].ni[13].x" 2706.02783203125;
	setAttr ".tgi[9].ni[13].y" 267.35635375976562;
	setAttr ".tgi[9].ni[13].nvs" 18304;
	setAttr ".tgi[9].ni[14].x" 2258.676025390625;
	setAttr ".tgi[9].ni[14].y" 252.92306518554687;
	setAttr ".tgi[9].ni[14].nvs" 18304;
	setAttr ".tgi[9].ni[15].x" 1990.1790771484375;
	setAttr ".tgi[9].ni[15].y" 381.35397338867187;
	setAttr ".tgi[9].ni[15].nvs" 18304;
	setAttr ".tgi[9].ni[16].x" 1475.7841796875;
	setAttr ".tgi[9].ni[16].y" 492.50997924804687;
	setAttr ".tgi[9].ni[16].nvs" 18304;
	setAttr ".tgi[9].ni[17].x" -294.69888305664062;
	setAttr ".tgi[9].ni[17].y" 14.440606117248535;
	setAttr ".tgi[9].ni[17].nvs" 18304;
	setAttr ".tgi[9].ni[18].x" 287.881103515625;
	setAttr ".tgi[9].ni[18].y" 192.11578369140625;
	setAttr ".tgi[9].ni[18].nvs" 18304;
	setAttr ".tgi[10].tn" -type "string" "wheel1";
	setAttr ".tgi[10].vl" -type "double2" -1538.1409645207953 -266.6666560702858 ;
	setAttr ".tgi[10].vh" -type "double2" 2417.9028343241043 804.76187278354109 ;
	setAttr -s 19 ".tgi[10].ni";
	setAttr ".tgi[10].ni[0].x" 2047.26416015625;
	setAttr ".tgi[10].ni[0].y" 133.37422180175781;
	setAttr ".tgi[10].ni[0].nvs" 18304;
	setAttr ".tgi[10].ni[1].x" -243.70472717285156;
	setAttr ".tgi[10].ni[1].y" 242.21080017089844;
	setAttr ".tgi[10].ni[1].nvs" 18304;
	setAttr ".tgi[10].ni[2].x" 563.3074951171875;
	setAttr ".tgi[10].ni[2].y" 371.19998168945312;
	setAttr ".tgi[10].ni[2].nvs" 18304;
	setAttr ".tgi[10].ni[3].x" 68.183547973632812;
	setAttr ".tgi[10].ni[3].y" 515.80712890625;
	setAttr ".tgi[10].ni[3].nvs" 18304;
	setAttr ".tgi[10].ni[4].x" 932.85858154296875;
	setAttr ".tgi[10].ni[4].y" 75.4381103515625;
	setAttr ".tgi[10].ni[4].nvs" 18304;
	setAttr ".tgi[10].ni[5].x" 564.22637939453125;
	setAttr ".tgi[10].ni[5].y" 189.39877319335937;
	setAttr ".tgi[10].ni[5].nvs" 18304;
	setAttr ".tgi[10].ni[6].x" 850.6097412109375;
	setAttr ".tgi[10].ni[6].y" 516.5377197265625;
	setAttr ".tgi[10].ni[6].nvs" 18304;
	setAttr ".tgi[10].ni[7].x" 339.21853637695312;
	setAttr ".tgi[10].ni[7].y" 516.76007080078125;
	setAttr ".tgi[10].ni[7].nvs" 18304;
	setAttr ".tgi[10].ni[8].x" 2791.8486328125;
	setAttr ".tgi[10].ni[8].y" 234.33735656738281;
	setAttr ".tgi[10].ni[8].nvs" 18304;
	setAttr ".tgi[10].ni[9].x" 968.337158203125;
	setAttr ".tgi[10].ni[9].y" 244.47695922851562;
	setAttr ".tgi[10].ni[9].nvs" 18304;
	setAttr ".tgi[10].ni[10].x" 1253.4468994140625;
	setAttr ".tgi[10].ni[10].y" 139.0201416015625;
	setAttr ".tgi[10].ni[10].nvs" 18304;
	setAttr ".tgi[10].ni[11].x" 1806.7476806640625;
	setAttr ".tgi[10].ni[11].y" 40.781021118164063;
	setAttr ".tgi[10].ni[11].nvs" 18304;
	setAttr ".tgi[10].ni[12].x" 59.507694244384766;
	setAttr ".tgi[10].ni[12].y" 243.36607360839844;
	setAttr ".tgi[10].ni[12].nvs" 18304;
	setAttr ".tgi[10].ni[13].x" 2574.823486328125;
	setAttr ".tgi[10].ni[13].y" 232.96012878417969;
	setAttr ".tgi[10].ni[13].nvs" 18304;
	setAttr ".tgi[10].ni[14].x" 1548.164306640625;
	setAttr ".tgi[10].ni[14].y" 135.63258361816406;
	setAttr ".tgi[10].ni[14].nvs" 18304;
	setAttr ".tgi[10].ni[15].x" 2317.369384765625;
	setAttr ".tgi[10].ni[15].y" 243.38558959960937;
	setAttr ".tgi[10].ni[15].nvs" 18304;
	setAttr ".tgi[10].ni[16].x" 584.402587890625;
	setAttr ".tgi[10].ni[16].y" 515.14166259765625;
	setAttr ".tgi[10].ni[16].nvs" 18304;
	setAttr ".tgi[10].ni[17].x" 855.646728515625;
	setAttr ".tgi[10].ni[17].y" 370.71218872070312;
	setAttr ".tgi[10].ni[17].nvs" 18304;
	setAttr ".tgi[10].ni[18].x" -236.38983154296875;
	setAttr ".tgi[10].ni[18].y" 105.43894958496094;
	setAttr ".tgi[10].ni[18].nvs" 18304;
	setAttr ".tgi[11].tn" -type "string" "wheel_cover";
	setAttr ".tgi[11].vl" -type "double2" -1151.3277930781828 -470.23807655251301 ;
	setAttr ".tgi[11].vh" -type "double2" 2316.8039372425128 469.04760040934201 ;
	setAttr -s 14 ".tgi[11].ni";
	setAttr ".tgi[11].ni[0].x" 22.369911193847656;
	setAttr ".tgi[11].ni[0].y" 223.5413818359375;
	setAttr ".tgi[11].ni[0].nvs" 18304;
	setAttr ".tgi[11].ni[1].x" 286.38656616210937;
	setAttr ".tgi[11].ni[1].y" -126.21849060058594;
	setAttr ".tgi[11].ni[1].nvs" 18304;
	setAttr ".tgi[11].ni[2].x" 551.76470947265625;
	setAttr ".tgi[11].ni[2].y" 21.428569793701172;
	setAttr ".tgi[11].ni[2].nvs" 18304;
	setAttr ".tgi[11].ni[3].x" 878.27490234375;
	setAttr ".tgi[11].ni[3].y" 284.33224487304687;
	setAttr ".tgi[11].ni[3].nvs" 18304;
	setAttr ".tgi[11].ni[4].x" 851.18096923828125;
	setAttr ".tgi[11].ni[4].y" 23.445375442504883;
	setAttr ".tgi[11].ni[4].nvs" 18304;
	setAttr ".tgi[11].ni[5].x" 568.27490234375;
	setAttr ".tgi[11].ni[5].y" 284.33224487304687;
	setAttr ".tgi[11].ni[5].nvs" 18304;
	setAttr ".tgi[11].ni[6].x" 278.23529052734375;
	setAttr ".tgi[11].ni[6].y" -51.680671691894531;
	setAttr ".tgi[11].ni[6].nvs" 18304;
	setAttr ".tgi[11].ni[7].x" 1133.8070068359375;
	setAttr ".tgi[11].ni[7].y" 97.723854064941406;
	setAttr ".tgi[11].ni[7].nvs" 18304;
	setAttr ".tgi[11].ni[8].x" 1658.4559326171875;
	setAttr ".tgi[11].ni[8].y" 88.538223266601563;
	setAttr ".tgi[11].ni[8].nvs" 18304;
	setAttr ".tgi[11].ni[9].x" 28.319326400756836;
	setAttr ".tgi[11].ni[9].y" 20.672267913818359;
	setAttr ".tgi[11].ni[9].nvs" 18304;
	setAttr ".tgi[11].ni[10].x" 30.588258743286133;
	setAttr ".tgi[11].ni[10].y" 96.386543273925781;
	setAttr ".tgi[11].ni[10].nvs" 18304;
	setAttr ".tgi[11].ni[11].x" 32.560615539550781;
	setAttr ".tgi[11].ni[11].y" 284.33224487304687;
	setAttr ".tgi[11].ni[11].nvs" 18304;
	setAttr ".tgi[11].ni[12].x" 293.98919677734375;
	setAttr ".tgi[11].ni[12].y" 284.33224487304687;
	setAttr ".tgi[11].ni[12].nvs" 18304;
	setAttr ".tgi[11].ni[13].x" 1398.22998046875;
	setAttr ".tgi[11].ni[13].y" 99.444358825683594;
	setAttr ".tgi[11].ni[13].nvs" 18304;
	setAttr ".tgi[12].tn" -type "string" "base_fk_ctrl";
	setAttr ".tgi[12].vl" -type "double2" -1773.3515778849935 -617.85711830570665 ;
	setAttr ".tgi[12].vh" -type "double2" 3237.6372339852114 739.2856849091404 ;
	setAttr -s 13 ".tgi[12].ni";
	setAttr ".tgi[12].ni[0].x" 587.05364990234375;
	setAttr ".tgi[12].ni[0].y" 86.373550415039063;
	setAttr ".tgi[12].ni[0].nvs" 18304;
	setAttr ".tgi[12].ni[1].x" -1070.0008544921875;
	setAttr ".tgi[12].ni[1].y" 210.05874633789062;
	setAttr ".tgi[12].ni[1].nvs" 18304;
	setAttr ".tgi[12].ni[2].x" -220.87852478027344;
	setAttr ".tgi[12].ni[2].y" 80.695091247558594;
	setAttr ".tgi[12].ni[2].nvs" 18304;
	setAttr ".tgi[12].ni[3].x" -1411.7327880859375;
	setAttr ".tgi[12].ni[3].y" -22.590433120727539;
	setAttr ".tgi[12].ni[3].nvs" 18304;
	setAttr ".tgi[12].ni[4].x" -1418.7396240234375;
	setAttr ".tgi[12].ni[4].y" 98.0621337890625;
	setAttr ".tgi[12].ni[4].nvs" 18304;
	setAttr ".tgi[12].ni[5].x" 1481.8525390625;
	setAttr ".tgi[12].ni[5].y" 221.15809631347656;
	setAttr ".tgi[12].ni[5].nvs" 18304;
	setAttr ".tgi[12].ni[6].x" 299.61944580078125;
	setAttr ".tgi[12].ni[6].y" -5.6809220314025879;
	setAttr ".tgi[12].ni[6].nvs" 18304;
	setAttr ".tgi[12].ni[7].x" 49.387779235839844;
	setAttr ".tgi[12].ni[7].y" 85.265266418457031;
	setAttr ".tgi[12].ni[7].nvs" 18304;
	setAttr ".tgi[12].ni[8].x" -509.29299926757812;
	setAttr ".tgi[12].ni[8].y" -26.71916389465332;
	setAttr ".tgi[12].ni[8].nvs" 18304;
	setAttr ".tgi[12].ni[9].x" -493.111083984375;
	setAttr ".tgi[12].ni[9].y" 81.463645935058594;
	setAttr ".tgi[12].ni[9].nvs" 18304;
	setAttr ".tgi[12].ni[10].x" -773.717529296875;
	setAttr ".tgi[12].ni[10].y" 74.551116943359375;
	setAttr ".tgi[12].ni[10].nvs" 18304;
	setAttr ".tgi[12].ni[11].x" 935.20416259765625;
	setAttr ".tgi[12].ni[11].y" 217.09066772460938;
	setAttr ".tgi[12].ni[11].nvs" 18304;
	setAttr ".tgi[12].ni[12].x" 1227.9058837890625;
	setAttr ".tgi[12].ni[12].y" 312.02713012695312;
	setAttr ".tgi[12].ni[12].nvs" 18304;
	setAttr ".tgi[13].tn" -type "string" "hinge_fk_ctrl";
	setAttr ".tgi[13].vl" -type "double2" 1125.4578307361996 -417.85712625299249 ;
	setAttr ".tgi[13].vh" -type "double2" 4822.160980545711 583.33331015375018 ;
	setAttr -s 12 ".tgi[13].ni";
	setAttr ".tgi[13].ni[0].x" 2063.935302734375;
	setAttr ".tgi[13].ni[0].y" 34.674442291259766;
	setAttr ".tgi[13].ni[0].nvs" 18304;
	setAttr ".tgi[13].ni[1].x" 3132.34814453125;
	setAttr ".tgi[13].ni[1].y" -40.177047729492188;
	setAttr ".tgi[13].ni[1].nvs" 18304;
	setAttr ".tgi[13].ni[2].x" 3404.86962890625;
	setAttr ".tgi[13].ni[2].y" 111.49814605712891;
	setAttr ".tgi[13].ni[2].nvs" 18304;
	setAttr ".tgi[13].ni[3].x" 1798.4215087890625;
	setAttr ".tgi[13].ni[3].y" 0.8061555027961731;
	setAttr ".tgi[13].ni[3].nvs" 18304;
	setAttr ".tgi[13].ni[4].x" 1499.3455810546875;
	setAttr ".tgi[13].ni[4].y" 99.023361206054687;
	setAttr ".tgi[13].ni[4].nvs" 18304;
	setAttr ".tgi[13].ni[5].x" 1790.27734375;
	setAttr ".tgi[13].ni[5].y" 98.915336608886719;
	setAttr ".tgi[13].ni[5].nvs" 18304;
	setAttr ".tgi[13].ni[6].x" 939.6796875;
	setAttr ".tgi[13].ni[6].y" 1.135655403137207;
	setAttr ".tgi[13].ni[6].nvs" 18304;
	setAttr ".tgi[13].ni[7].x" 2890.484130859375;
	setAttr ".tgi[13].ni[7].y" 107.00323486328125;
	setAttr ".tgi[13].ni[7].nvs" 18304;
	setAttr ".tgi[13].ni[8].x" 936.1697998046875;
	setAttr ".tgi[13].ni[8].y" 102.99088287353516;
	setAttr ".tgi[13].ni[8].nvs" 18304;
	setAttr ".tgi[13].ni[9].x" 1216.5020751953125;
	setAttr ".tgi[13].ni[9].y" 101.67973327636719;
	setAttr ".tgi[13].ni[9].nvs" 18304;
	setAttr ".tgi[13].ni[10].x" 2333.7607421875;
	setAttr ".tgi[13].ni[10].y" 38.864276885986328;
	setAttr ".tgi[13].ni[10].nvs" 18304;
	setAttr ".tgi[13].ni[11].x" 2586.907470703125;
	setAttr ".tgi[13].ni[11].y" 42.776805877685547;
	setAttr ".tgi[13].ni[11].nvs" 18304;
	setAttr ".tgi[14].tn" -type "string" "rod_fk_ctrl";
	setAttr ".tgi[14].vl" -type "double2" 2803.1592292718015 -724.99997119108957 ;
	setAttr ".tgi[14].vh" -type "double2" 7607.5546427578847 576.19045329472465 ;
	setAttr -s 13 ".tgi[14].ni";
	setAttr ".tgi[14].ni[0].x" 5360.2021484375;
	setAttr ".tgi[14].ni[0].y" 4.1479048728942871;
	setAttr ".tgi[14].ni[0].nvs" 18304;
	setAttr ".tgi[14].ni[1].x" 4180.544921875;
	setAttr ".tgi[14].ni[1].y" 5.9633541107177734;
	setAttr ".tgi[14].ni[1].nvs" 18304;
	setAttr ".tgi[14].ni[2].x" 3407.040283203125;
	setAttr ".tgi[14].ni[2].y" 104.98597717285156;
	setAttr ".tgi[14].ni[2].nvs" 18304;
	setAttr ".tgi[14].ni[3].x" 5610.3203125;
	setAttr ".tgi[14].ni[3].y" -99.849937438964844;
	setAttr ".tgi[14].ni[3].nvs" 18304;
	setAttr ".tgi[14].ni[4].x" 4664.85546875;
	setAttr ".tgi[14].ni[4].y" -86.634475708007812;
	setAttr ".tgi[14].ni[4].nvs" 18304;
	setAttr ".tgi[14].ni[5].x" 4430.4482421875;
	setAttr ".tgi[14].ni[5].y" -84.14453125;
	setAttr ".tgi[14].ni[5].nvs" 18304;
	setAttr ".tgi[14].ni[6].x" 3658.068115234375;
	setAttr ".tgi[14].ni[6].y" -4.3927559852600098;
	setAttr ".tgi[14].ni[6].nvs" 18304;
	setAttr ".tgi[14].ni[7].x" 3362.6328125;
	setAttr ".tgi[14].ni[7].y" -152.47270202636719;
	setAttr ".tgi[14].ni[7].nvs" 18304;
	setAttr ".tgi[14].ni[8].x" 4884.5234375;
	setAttr ".tgi[14].ni[8].y" -151.25465393066406;
	setAttr ".tgi[14].ni[8].nvs" 18304;
	setAttr ".tgi[14].ni[9].x" 5860.56884765625;
	setAttr ".tgi[14].ni[9].y" 4.4640288352966309;
	setAttr ".tgi[14].ni[9].nvs" 18304;
	setAttr ".tgi[14].ni[10].x" 5124.771484375;
	setAttr ".tgi[14].ni[10].y" -81.281700134277344;
	setAttr ".tgi[14].ni[10].nvs" 18304;
	setAttr ".tgi[14].ni[11].x" 3911.449462890625;
	setAttr ".tgi[14].ni[11].y" -5.8615808486938477;
	setAttr ".tgi[14].ni[11].nvs" 18304;
	setAttr ".tgi[14].ni[12].x" 4172.609375;
	setAttr ".tgi[14].ni[12].y" -83.279571533203125;
	setAttr ".tgi[14].ni[12].nvs" 18304;
	setAttr ".tgi[15].tn" -type "string" "wheel_fk_ctrl";
	setAttr ".tgi[15].vl" -type "double2" 7088.0949564396524 -456.54760090604736 ;
	setAttr ".tgi[15].vh" -type "double2" 8994.0472616562911 669.64283053364193 ;
	setAttr -s 13 ".tgi[15].ni";
	setAttr ".tgi[15].ni[0].x" 6733.25244140625;
	setAttr ".tgi[15].ni[0].y" 22.994270324707031;
	setAttr ".tgi[15].ni[0].nvs" 18304;
	setAttr ".tgi[15].ni[1].x" 8032.30517578125;
	setAttr ".tgi[15].ni[1].y" 117.90538024902344;
	setAttr ".tgi[15].ni[1].nvs" 18304;
	setAttr ".tgi[15].ni[2].x" 5375.04345703125;
	setAttr ".tgi[15].ni[2].y" 109.58985900878906;
	setAttr ".tgi[15].ni[2].nvs" 18304;
	setAttr ".tgi[15].ni[3].x" 5943.03857421875;
	setAttr ".tgi[15].ni[3].y" 112.72475433349609;
	setAttr ".tgi[15].ni[3].nvs" 18304;
	setAttr ".tgi[15].ni[4].x" 7785.533203125;
	setAttr ".tgi[15].ni[4].y" 12.109553337097168;
	setAttr ".tgi[15].ni[4].nvs" 18304;
	setAttr ".tgi[15].ni[5].x" 6973.77392578125;
	setAttr ".tgi[15].ni[5].y" -36.087802886962891;
	setAttr ".tgi[15].ni[5].nvs" 18304;
	setAttr ".tgi[15].ni[6].x" 7494.791015625;
	setAttr ".tgi[15].ni[6].y" 112.72475433349609;
	setAttr ".tgi[15].ni[6].nvs" 18304;
	setAttr ".tgi[15].ni[7].x" 5674.130859375;
	setAttr ".tgi[15].ni[7].y" 111.88441467285156;
	setAttr ".tgi[15].ni[7].nvs" 18304;
	setAttr ".tgi[15].ni[8].x" 6489.25732421875;
	setAttr ".tgi[15].ni[8].y" 22.808786392211914;
	setAttr ".tgi[15].ni[8].nvs" 18304;
	setAttr ".tgi[15].ni[9].x" 6212.44091796875;
	setAttr ".tgi[15].ni[9].y" 19.960494995117188;
	setAttr ".tgi[15].ni[9].nvs" 18304;
	setAttr ".tgi[15].ni[10].x" 7221.10546875;
	setAttr ".tgi[15].ni[10].y" 27.010467529296875;
	setAttr ".tgi[15].ni[10].nvs" 18304;
	setAttr ".tgi[15].ni[11].x" 5398.33349609375;
	setAttr ".tgi[15].ni[11].y" 0.14048998057842255;
	setAttr ".tgi[15].ni[11].nvs" 18304;
	setAttr ".tgi[15].ni[12].x" 6212.193359375;
	setAttr ".tgi[15].ni[12].y" 115.75527191162109;
	setAttr ".tgi[15].ni[12].nvs" 18304;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "A6C1B574-4B83-8BB3-BEE5-BC86831E9BA4";
	setAttr ".ihi" 0;
	setAttr -s 384 ".hyp";
select -ne :time1;
	setAttr ".o" 37;
	setAttr ".unw" 37;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 155 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".ovt" no;
	setAttr ".povt" no;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "hyperLayout1.msg" "wheel_cmpt.hl";
connectAttr "wheel_ctrl.msg" "wheel_cmpt.pni[0].pnod";
connectAttr "wheel_cover_ik_ctrl.msg" "wheel_cmpt.pni[1].pnod";
connectAttr "wheel_hinge_ik_ctrl.msg" "wheel_cmpt.pni[2].pnod";
connectAttr "wheel_rod_pv_ctrl.msg" "wheel_cmpt.pni[3].pnod";
connectAttr "wheel_rod_ik_ctrl.msg" "wheel_cmpt.pni[4].pnod";
connectAttr "wheel_base_fk_ctrl.msg" "wheel_cmpt.pni[5].pnod";
connectAttr "wheel_hinge_fk_ctrl.msg" "wheel_cmpt.pni[6].pnod";
connectAttr "wheel_rod_fk_ctrl.msg" "wheel_cmpt.pni[7].pnod";
connectAttr "wheel_fk_ctrl.msg" "wheel_cmpt.pni[8].pnod";
connectAttr "strut_axle_guided_srtOffset.upVectorX" "strut_axle_srtOffset.upVectorX"
		;
connectAttr "strut_axle_guided_srtOffset.upVectorY" "strut_axle_srtOffset.upVectorY"
		;
connectAttr "strut_axle_guided_srtOffset.upVectorZ" "strut_axle_srtOffset.upVectorZ"
		;
connectAttr "strut_axle_guided_srtOffset.tx" "strut_axle_srtOffset.tx";
connectAttr "strut_axle_guided_srtOffset.ty" "strut_axle_srtOffset.ty";
connectAttr "strut_axle_guided_srtOffset.tz" "strut_axle_srtOffset.tz";
connectAttr "strut_axle_guided_srtOffset.upVectorZ" "strut_axle_srtOffset.guide_attr[0]"
		;
connectAttr "strut_axle_guided_srtOffset.upVectorX" "strut_axle_srtOffset.guide_attr[1]"
		;
connectAttr "strut_axle_guided_srtOffset.upVectorY" "strut_axle_srtOffset.guide_attr[2]"
		;
connectAttr "strut_axle_guided_srtOffset.tz" "strut_axle_srtOffset.guide_attr[3]"
		;
connectAttr "strut_axle_guided_srtOffset.ty" "strut_axle_srtOffset.guide_attr[4]"
		;
connectAttr "strut_axle_guided_srtOffset.tx" "strut_axle_srtOffset.guide_attr[5]"
		;
connectAttr "strut_swivel_guided_srtOffset.tx" "strut_swivel_srtOffset.tx";
connectAttr "strut_swivel_guided_srtOffset.ty" "strut_swivel_srtOffset.ty";
connectAttr "strut_swivel_guided_srtOffset.tz" "strut_swivel_srtOffset.tz";
connectAttr "strut_swivel_guided_srtOffset.tz" "strut_swivel_srtOffset.guide_attr[0]"
		;
connectAttr "strut_swivel_guided_srtOffset.ty" "strut_swivel_srtOffset.guide_attr[1]"
		;
connectAttr "strut_swivel_guided_srtOffset.tx" "strut_swivel_srtOffset.guide_attr[2]"
		;
connectAttr "strut_hinge_guided_srtOffset.upVectorX" "strut_hinge_srtOffset.upVectorX"
		;
connectAttr "strut_hinge_guided_srtOffset.upVectorY" "strut_hinge_srtOffset.upVectorY"
		;
connectAttr "strut_hinge_guided_srtOffset.upVectorZ" "strut_hinge_srtOffset.upVectorZ"
		;
connectAttr "strut_hinge_guided_srtOffset.tx" "strut_hinge_srtOffset.tx";
connectAttr "strut_hinge_guided_srtOffset.ty" "strut_hinge_srtOffset.ty";
connectAttr "strut_hinge_guided_srtOffset.tz" "strut_hinge_srtOffset.tz";
connectAttr "strut_hinge_guided_srtOffset.tz" "strut_hinge_srtOffset.guide_attr[0]"
		;
connectAttr "strut_hinge_guided_srtOffset.ty" "strut_hinge_srtOffset.guide_attr[1]"
		;
connectAttr "strut_hinge_guided_srtOffset.tx" "strut_hinge_srtOffset.guide_attr[2]"
		;
connectAttr "strut_hinge_guided_srtOffset.upVectorZ" "strut_hinge_srtOffset.guide_attr[3]"
		;
connectAttr "strut_hinge_guided_srtOffset.upVectorX" "strut_hinge_srtOffset.guide_attr[4]"
		;
connectAttr "strut_hinge_guided_srtOffset.upVectorY" "strut_hinge_srtOffset.guide_attr[5]"
		;
connectAttr "rod_hinge_guided_srtOffset.upVectorX" "rod_hinge_srtOffset.upVectorX"
		;
connectAttr "rod_hinge_guided_srtOffset.upVectorY" "rod_hinge_srtOffset.upVectorY"
		;
connectAttr "rod_hinge_guided_srtOffset.upVectorZ" "rod_hinge_srtOffset.upVectorZ"
		;
connectAttr "rod_hinge_guided_srtOffset.tx" "rod_hinge_srtOffset.tx";
connectAttr "rod_hinge_guided_srtOffset.ty" "rod_hinge_srtOffset.ty";
connectAttr "rod_hinge_guided_srtOffset.tz" "rod_hinge_srtOffset.tz";
connectAttr "rod_hinge_guided_srtOffset.tx" "rod_hinge_srtOffset.guide_attr[0]";
connectAttr "rod_hinge_guided_srtOffset.ty" "rod_hinge_srtOffset.guide_attr[1]";
connectAttr "rod_hinge_guided_srtOffset.tz" "rod_hinge_srtOffset.guide_attr[2]";
connectAttr "rod_hinge_guided_srtOffset.upVectorX" "rod_hinge_srtOffset.guide_attr[3]"
		;
connectAttr "rod_hinge_guided_srtOffset.upVectorY" "rod_hinge_srtOffset.guide_attr[4]"
		;
connectAttr "rod_hinge_guided_srtOffset.upVectorZ" "rod_hinge_srtOffset.guide_attr[5]"
		;
connectAttr "rod_axle_guided_srtOffset.upVectorX" "rod_axle_srtOffset.upVectorX"
		;
connectAttr "rod_axle_guided_srtOffset.upVectorY" "rod_axle_srtOffset.upVectorY"
		;
connectAttr "rod_axle_guided_srtOffset.upVectorZ" "rod_axle_srtOffset.upVectorZ"
		;
connectAttr "rod_axle_guided_srtOffset.tx" "rod_axle_srtOffset.tx";
connectAttr "rod_axle_guided_srtOffset.ty" "rod_axle_srtOffset.ty";
connectAttr "rod_axle_guided_srtOffset.tz" "rod_axle_srtOffset.tz";
connectAttr "rod_axle_guided_srtOffset.upVectorY" "rod_axle_srtOffset.guide_attr[0]"
		;
connectAttr "rod_axle_guided_srtOffset.upVectorX" "rod_axle_srtOffset.guide_attr[1]"
		;
connectAttr "rod_axle_guided_srtOffset.upVectorZ" "rod_axle_srtOffset.guide_attr[2]"
		;
connectAttr "rod_axle_guided_srtOffset.tz" "rod_axle_srtOffset.guide_attr[3]";
connectAttr "rod_axle_guided_srtOffset.tx" "rod_axle_srtOffset.guide_attr[4]";
connectAttr "rod_axle_guided_srtOffset.ty" "rod_axle_srtOffset.guide_attr[5]";
connectAttr "rod_swivel_guided_srtOffset.tx" "rod_swivel_srtOffset.tx";
connectAttr "rod_swivel_guided_srtOffset.ty" "rod_swivel_srtOffset.ty";
connectAttr "rod_swivel_guided_srtOffset.tz" "rod_swivel_srtOffset.tz";
connectAttr "rod_swivel_guided_srtOffset.tz" "rod_swivel_srtOffset.guide_attr[0]"
		;
connectAttr "rod_swivel_guided_srtOffset.tx" "rod_swivel_srtOffset.guide_attr[1]"
		;
connectAttr "rod_swivel_guided_srtOffset.ty" "rod_swivel_srtOffset.guide_attr[2]"
		;
connectAttr "wheel_guided_srtOffset.tx" "wheel_srtOffset.tx";
connectAttr "wheel_guided_srtOffset.ty" "wheel_srtOffset.ty";
connectAttr "wheel_guided_srtOffset.tz" "wheel_srtOffset.tz";
connectAttr "wheel_guided_srtOffset.rx" "wheel_srtOffset.rx";
connectAttr "wheel_guided_srtOffset.ry" "wheel_srtOffset.ry";
connectAttr "wheel_guided_srtOffset.rz" "wheel_srtOffset.rz";
connectAttr "wheel_guided_srtOffset.rz" "wheel_srtOffset.guide_attr[0]";
connectAttr "wheel_guided_srtOffset.rx" "wheel_srtOffset.guide_attr[1]";
connectAttr "wheel_guided_srtOffset.ry" "wheel_srtOffset.guide_attr[2]";
connectAttr "wheel_guided_srtOffset.tz" "wheel_srtOffset.guide_attr[3]";
connectAttr "wheel_guided_srtOffset.tx" "wheel_srtOffset.guide_attr[4]";
connectAttr "wheel_guided_srtOffset.ty" "wheel_srtOffset.guide_attr[5]";
connectAttr "wheelCover_ctrl_guided_srtOffset.tx" "wheelCover_ctrl_srtOffset.tx"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.ty" "wheelCover_ctrl_srtOffset.ty"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.tz" "wheelCover_ctrl_srtOffset.tz"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.rx" "wheelCover_ctrl_srtOffset.rx"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.ry" "wheelCover_ctrl_srtOffset.ry"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.rz" "wheelCover_ctrl_srtOffset.rz"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.rx" "wheelCover_ctrl_srtOffset.guide_attr[0]"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.ry" "wheelCover_ctrl_srtOffset.guide_attr[1]"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.tz" "wheelCover_ctrl_srtOffset.guide_attr[2]"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.ty" "wheelCover_ctrl_srtOffset.guide_attr[3]"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.tx" "wheelCover_ctrl_srtOffset.guide_attr[4]"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.rz" "wheelCover_ctrl_srtOffset.guide_attr[5]"
		;
connectAttr "wheelCover_guided_srtOffset.upVectorX" "wheelCover_srtOffset.upVectorX"
		;
connectAttr "wheelCover_guided_srtOffset.upVectorY" "wheelCover_srtOffset.upVectorY"
		;
connectAttr "wheelCover_guided_srtOffset.upVectorZ" "wheelCover_srtOffset.upVectorZ"
		;
connectAttr "wheelCover_guided_srtOffset.upVectorY" "wheelCover_srtOffset.guide_attr[0]"
		;
connectAttr "wheelCover_guided_srtOffset.upVectorX" "wheelCover_srtOffset.guide_attr[1]"
		;
connectAttr "wheelCover_guided_srtOffset.upVectorZ" "wheelCover_srtOffset.guide_attr[2]"
		;
connectAttr "hinge_ik_base_guided_srtOffset.tx" "hinge_ik_base_srtOffset.tx";
connectAttr "hinge_ik_base_guided_srtOffset.ty" "hinge_ik_base_srtOffset.ty";
connectAttr "hinge_ik_base_guided_srtOffset.tz" "hinge_ik_base_srtOffset.tz";
connectAttr "hinge_ik_base_guided_srtOffset.tz" "hinge_ik_base_srtOffset.guide_attr[0]"
		;
connectAttr "hinge_ik_base_guided_srtOffset.ty" "hinge_ik_base_srtOffset.guide_attr[1]"
		;
connectAttr "hinge_ik_base_guided_srtOffset.tx" "hinge_ik_base_srtOffset.guide_attr[2]"
		;
connectAttr "hinge_ik_bend_guided_srtOffset.tx" "hinge_ik_bend_srtOffset.tx";
connectAttr "hinge_ik_bend_guided_srtOffset.ty" "hinge_ik_bend_srtOffset.ty";
connectAttr "hinge_ik_bend_guided_srtOffset.tz" "hinge_ik_bend_srtOffset.tz";
connectAttr "hinge_ik_bend_guided_srtOffset.ty" "hinge_ik_bend_srtOffset.guide_attr[0]"
		;
connectAttr "hinge_ik_bend_guided_srtOffset.tx" "hinge_ik_bend_srtOffset.guide_attr[1]"
		;
connectAttr "hinge_ik_bend_guided_srtOffset.tz" "hinge_ik_bend_srtOffset.guide_attr[2]"
		;
connectAttr "hinge_ik_end_guided_srtOffset.tx" "hinge_ik_end_srtOffset.tx";
connectAttr "hinge_ik_end_guided_srtOffset.ty" "hinge_ik_end_srtOffset.ty";
connectAttr "hinge_ik_end_guided_srtOffset.tz" "hinge_ik_end_srtOffset.tz";
connectAttr "hinge_ik_end_guided_srtOffset.tx" "hinge_ik_end_srtOffset.guide_attr[0]"
		;
connectAttr "hinge_ik_end_guided_srtOffset.ty" "hinge_ik_end_srtOffset.guide_attr[1]"
		;
connectAttr "hinge_ik_end_guided_srtOffset.tz" "hinge_ik_end_srtOffset.guide_attr[2]"
		;
connectAttr "rod_ik_base_guided_srtOffset.tx" "rod_ik_base_srtOffset.tx";
connectAttr "rod_ik_base_guided_srtOffset.ty" "rod_ik_base_srtOffset.ty";
connectAttr "rod_ik_base_guided_srtOffset.tz" "rod_ik_base_srtOffset.tz";
connectAttr "rod_ik_base_guided_srtOffset.tz" "rod_ik_base_srtOffset.guide_attr[0]"
		;
connectAttr "rod_ik_base_guided_srtOffset.ty" "rod_ik_base_srtOffset.guide_attr[1]"
		;
connectAttr "rod_ik_base_guided_srtOffset.tx" "rod_ik_base_srtOffset.guide_attr[2]"
		;
connectAttr "rod_ik_bend_guided_srtOffset.tx" "rod_ik_bend_srtOffset.tx";
connectAttr "rod_ik_bend_guided_srtOffset.ty" "rod_ik_bend_srtOffset.ty";
connectAttr "rod_ik_bend_guided_srtOffset.tz" "rod_ik_bend_srtOffset.tz";
connectAttr "rod_ik_bend_guided_srtOffset.ty" "rod_ik_bend_srtOffset.guide_attr[0]"
		;
connectAttr "rod_ik_bend_guided_srtOffset.tx" "rod_ik_bend_srtOffset.guide_attr[1]"
		;
connectAttr "rod_ik_bend_guided_srtOffset.tz" "rod_ik_bend_srtOffset.guide_attr[2]"
		;
connectAttr "rod_ik_end_guided_srtOffset.tx" "rod_ik_end_srtOffset.tx";
connectAttr "rod_ik_end_guided_srtOffset.ty" "rod_ik_end_srtOffset.ty";
connectAttr "rod_ik_end_guided_srtOffset.tz" "rod_ik_end_srtOffset.tz";
connectAttr "rod_ik_end_guided_srtOffset.tx" "rod_ik_end_srtOffset.guide_attr[0]"
		;
connectAttr "rod_ik_end_guided_srtOffset.ty" "rod_ik_end_srtOffset.guide_attr[1]"
		;
connectAttr "rod_ik_end_guided_srtOffset.tz" "rod_ik_end_srtOffset.guide_attr[2]"
		;
connectAttr "base_fk_guided_srtOffset.tx" "base_fk_srtOffset.tx";
connectAttr "base_fk_guided_srtOffset.ty" "base_fk_srtOffset.ty";
connectAttr "base_fk_guided_srtOffset.tz" "base_fk_srtOffset.tz";
connectAttr "base_fk_guided_srtOffset.rx" "base_fk_srtOffset.rx";
connectAttr "base_fk_guided_srtOffset.ry" "base_fk_srtOffset.ry";
connectAttr "base_fk_guided_srtOffset.rz" "base_fk_srtOffset.rz";
connectAttr "base_fk_guided_srtOffset.tz" "base_fk_srtOffset.guide_attr[0]";
connectAttr "base_fk_guided_srtOffset.tx" "base_fk_srtOffset.guide_attr[1]";
connectAttr "base_fk_guided_srtOffset.ty" "base_fk_srtOffset.guide_attr[2]";
connectAttr "base_fk_guided_srtOffset.rz" "base_fk_srtOffset.guide_attr[3]";
connectAttr "base_fk_guided_srtOffset.rx" "base_fk_srtOffset.guide_attr[4]";
connectAttr "base_fk_guided_srtOffset.ry" "base_fk_srtOffset.guide_attr[5]";
connectAttr "hinge_fk_guided_srtOffset.tx" "hinge_fk_srtOffset.tx";
connectAttr "hinge_fk_guided_srtOffset.ty" "hinge_fk_srtOffset.ty";
connectAttr "hinge_fk_guided_srtOffset.tz" "hinge_fk_srtOffset.tz";
connectAttr "hinge_fk_guided_srtOffset.rx" "hinge_fk_srtOffset.rx";
connectAttr "hinge_fk_guided_srtOffset.ry" "hinge_fk_srtOffset.ry";
connectAttr "hinge_fk_guided_srtOffset.rz" "hinge_fk_srtOffset.rz";
connectAttr "hinge_fk_guided_srtOffset.ry" "hinge_fk_srtOffset.guide_attr[0]";
connectAttr "hinge_fk_guided_srtOffset.rx" "hinge_fk_srtOffset.guide_attr[1]";
connectAttr "hinge_fk_guided_srtOffset.rz" "hinge_fk_srtOffset.guide_attr[2]";
connectAttr "hinge_fk_guided_srtOffset.tz" "hinge_fk_srtOffset.guide_attr[3]";
connectAttr "hinge_fk_guided_srtOffset.ty" "hinge_fk_srtOffset.guide_attr[4]";
connectAttr "hinge_fk_guided_srtOffset.tx" "hinge_fk_srtOffset.guide_attr[5]";
connectAttr "rod_fk_guided_srtOffset.tx" "rod_fk_srtOffset.tx";
connectAttr "rod_fk_guided_srtOffset.ty" "rod_fk_srtOffset.ty";
connectAttr "rod_fk_guided_srtOffset.tz" "rod_fk_srtOffset.tz";
connectAttr "rod_fk_guided_srtOffset.rx" "rod_fk_srtOffset.rx";
connectAttr "rod_fk_guided_srtOffset.ry" "rod_fk_srtOffset.ry";
connectAttr "rod_fk_guided_srtOffset.rz" "rod_fk_srtOffset.rz";
connectAttr "rod_fk_guided_srtOffset.ry" "rod_fk_srtOffset.guide_attr[0]";
connectAttr "rod_fk_guided_srtOffset.rx" "rod_fk_srtOffset.guide_attr[1]";
connectAttr "rod_fk_guided_srtOffset.rz" "rod_fk_srtOffset.guide_attr[2]";
connectAttr "rod_fk_guided_srtOffset.tz" "rod_fk_srtOffset.guide_attr[3]";
connectAttr "rod_fk_guided_srtOffset.ty" "rod_fk_srtOffset.guide_attr[4]";
connectAttr "rod_fk_guided_srtOffset.tx" "rod_fk_srtOffset.guide_attr[5]";
connectAttr "wheel_fk_guided_srtOffset.tx" "wheel_fk_srtOffset.tx";
connectAttr "wheel_fk_guided_srtOffset.ty" "wheel_fk_srtOffset.ty";
connectAttr "wheel_fk_guided_srtOffset.tz" "wheel_fk_srtOffset.tz";
connectAttr "wheel_fk_guided_srtOffset.rx" "wheel_fk_srtOffset.rx";
connectAttr "wheel_fk_guided_srtOffset.ry" "wheel_fk_srtOffset.ry";
connectAttr "wheel_fk_guided_srtOffset.rz" "wheel_fk_srtOffset.rz";
connectAttr "wheel_fk_guided_srtOffset.tz" "wheel_fk_srtOffset.guide_attr[0]";
connectAttr "wheel_fk_guided_srtOffset.ty" "wheel_fk_srtOffset.guide_attr[1]";
connectAttr "wheel_fk_guided_srtOffset.tx" "wheel_fk_srtOffset.guide_attr[2]";
connectAttr "wheel_fk_guided_srtOffset.ry" "wheel_fk_srtOffset.guide_attr[3]";
connectAttr "wheel_fk_guided_srtOffset.rx" "wheel_fk_srtOffset.guide_attr[4]";
connectAttr "wheel_fk_guided_srtOffset.rz" "wheel_fk_srtOffset.guide_attr[5]";
connectAttr "hinge_ik_ctrl_guided_srtOffset.tx" "hinge_ik_ctrl_srtOffset.tx";
connectAttr "hinge_ik_ctrl_guided_srtOffset.ty" "hinge_ik_ctrl_srtOffset.ty";
connectAttr "hinge_ik_ctrl_guided_srtOffset.tz" "hinge_ik_ctrl_srtOffset.tz";
connectAttr "hinge_ik_ctrl_guided_srtOffset.rx" "hinge_ik_ctrl_srtOffset.rx";
connectAttr "hinge_ik_ctrl_guided_srtOffset.ry" "hinge_ik_ctrl_srtOffset.ry";
connectAttr "hinge_ik_ctrl_guided_srtOffset.rz" "hinge_ik_ctrl_srtOffset.rz";
connectAttr "hinge_ik_ctrl_guided_srtOffset.ry" "hinge_ik_ctrl_srtOffset.guide_attr[0]"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.rx" "hinge_ik_ctrl_srtOffset.guide_attr[1]"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.rz" "hinge_ik_ctrl_srtOffset.guide_attr[2]"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.tz" "hinge_ik_ctrl_srtOffset.guide_attr[3]"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.ty" "hinge_ik_ctrl_srtOffset.guide_attr[4]"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.tx" "hinge_ik_ctrl_srtOffset.guide_attr[5]"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.tx" "rod_ik_ctrl_srtOffset.tx";
connectAttr "rod_ik_ctrl_guided_srtOffset.ty" "rod_ik_ctrl_srtOffset.ty";
connectAttr "rod_ik_ctrl_guided_srtOffset.tz" "rod_ik_ctrl_srtOffset.tz";
connectAttr "rod_ik_ctrl_guided_srtOffset.rx" "rod_ik_ctrl_srtOffset.rx";
connectAttr "rod_ik_ctrl_guided_srtOffset.ry" "rod_ik_ctrl_srtOffset.ry";
connectAttr "rod_ik_ctrl_guided_srtOffset.rz" "rod_ik_ctrl_srtOffset.rz";
connectAttr "rod_ik_ctrl_guided_srtOffset.rz" "rod_ik_ctrl_srtOffset.guide_attr[0]"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.rx" "rod_ik_ctrl_srtOffset.guide_attr[1]"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.ry" "rod_ik_ctrl_srtOffset.guide_attr[2]"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.tz" "rod_ik_ctrl_srtOffset.guide_attr[3]"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.ty" "rod_ik_ctrl_srtOffset.guide_attr[4]"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.tx" "rod_ik_ctrl_srtOffset.guide_attr[5]"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.tx" "rod_pv_ctrl_srtOffset.tx";
connectAttr "rod_pv_ctrl_guided_srtOffset.ty" "rod_pv_ctrl_srtOffset.ty";
connectAttr "rod_pv_ctrl_guided_srtOffset.tz" "rod_pv_ctrl_srtOffset.tz";
connectAttr "rod_pv_ctrl_guided_srtOffset.rx" "rod_pv_ctrl_srtOffset.rx";
connectAttr "rod_pv_ctrl_guided_srtOffset.ry" "rod_pv_ctrl_srtOffset.ry";
connectAttr "rod_pv_ctrl_guided_srtOffset.rz" "rod_pv_ctrl_srtOffset.rz";
connectAttr "rod_pv_ctrl_guided_srtOffset.ty" "rod_pv_ctrl_srtOffset.guide_attr[0]"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.tx" "rod_pv_ctrl_srtOffset.guide_attr[1]"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.tz" "rod_pv_ctrl_srtOffset.guide_attr[2]"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.rz" "rod_pv_ctrl_srtOffset.guide_attr[3]"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.ry" "rod_pv_ctrl_srtOffset.guide_attr[4]"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.rx" "rod_pv_ctrl_srtOffset.guide_attr[5]"
		;
connectAttr "foot_srt.t" "foot_guided_srt.t";
connectAttr "foot_srt.r" "foot_guided_srt.r";
connectAttr "foot_srt.s" "foot_guided_srt.s";
connectAttr "wheel_strut_axle_guided_upVector_normal.o" "strut_axle_guided_srtOffset.upVector"
		;
connectAttr "strut_axle_guided_srtOffset_pointConstraint1.ctx" "strut_axle_guided_srtOffset.tx"
		;
connectAttr "strut_axle_guided_srtOffset_pointConstraint1.cty" "strut_axle_guided_srtOffset.ty"
		;
connectAttr "strut_axle_guided_srtOffset_pointConstraint1.ctz" "strut_axle_guided_srtOffset.tz"
		;
connectAttr "strut_swivel_guided_srtOffset_pointConstraint1.ctx" "strut_swivel_guided_srtOffset.tx"
		;
connectAttr "strut_swivel_guided_srtOffset_pointConstraint1.cty" "strut_swivel_guided_srtOffset.ty"
		;
connectAttr "strut_swivel_guided_srtOffset_pointConstraint1.ctz" "strut_swivel_guided_srtOffset.tz"
		;
connectAttr "wheel_strut_hinge_guided_upVector_normal.o" "strut_hinge_guided_srtOffset.upVector"
		;
connectAttr "strut_hinge_guided_srtOffset_pointConstraint1.ctx" "strut_hinge_guided_srtOffset.tx"
		;
connectAttr "strut_hinge_guided_srtOffset_pointConstraint1.cty" "strut_hinge_guided_srtOffset.ty"
		;
connectAttr "strut_hinge_guided_srtOffset_pointConstraint1.ctz" "strut_hinge_guided_srtOffset.tz"
		;
connectAttr "wheel_rod_hinge_guided_upVector_normal.o" "rod_hinge_guided_srtOffset.upVector"
		;
connectAttr "rod_hinge_guided_srtOffset_pointConstraint1.ctx" "rod_hinge_guided_srtOffset.tx"
		;
connectAttr "rod_hinge_guided_srtOffset_pointConstraint1.cty" "rod_hinge_guided_srtOffset.ty"
		;
connectAttr "rod_hinge_guided_srtOffset_pointConstraint1.ctz" "rod_hinge_guided_srtOffset.tz"
		;
connectAttr "wheel_rod_axle_guided_upVector_normal.o" "rod_axle_guided_srtOffset.upVector"
		;
connectAttr "rod_axle_guided_srtOffset_pointConstraint1.ctx" "rod_axle_guided_srtOffset.tx"
		;
connectAttr "rod_axle_guided_srtOffset_pointConstraint1.cty" "rod_axle_guided_srtOffset.ty"
		;
connectAttr "rod_axle_guided_srtOffset_pointConstraint1.ctz" "rod_axle_guided_srtOffset.tz"
		;
connectAttr "rod_swivel_guided_srtOffset_pointConstraint1.ctx" "rod_swivel_guided_srtOffset.tx"
		;
connectAttr "rod_swivel_guided_srtOffset_pointConstraint1.cty" "rod_swivel_guided_srtOffset.ty"
		;
connectAttr "rod_swivel_guided_srtOffset_pointConstraint1.ctz" "rod_swivel_guided_srtOffset.tz"
		;
connectAttr "wheel_guided_srtOffset2_pointConstraint1.ctx" "wheel_guided_srtOffset.tx"
		;
connectAttr "wheel_guided_srtOffset2_pointConstraint1.cty" "wheel_guided_srtOffset.ty"
		;
connectAttr "wheel_guided_srtOffset2_pointConstraint1.ctz" "wheel_guided_srtOffset.tz"
		;
connectAttr "wheel_guided_srtOffset2_aimConstraint1.crx" "wheel_guided_srtOffset.rx"
		;
connectAttr "wheel_guided_srtOffset2_aimConstraint1.cry" "wheel_guided_srtOffset.ry"
		;
connectAttr "wheel_guided_srtOffset2_aimConstraint1.crz" "wheel_guided_srtOffset.rz"
		;
connectAttr "wheel_guided_srtOffset.pim" "wheel_guided_srtOffset2_pointConstraint1.cpim"
		;
connectAttr "wheel_guided_srtOffset.rp" "wheel_guided_srtOffset2_pointConstraint1.crp"
		;
connectAttr "wheel_guided_srtOffset.rpt" "wheel_guided_srtOffset2_pointConstraint1.crt"
		;
connectAttr "wheel_guide_srt.t" "wheel_guided_srtOffset2_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_guide_srt.rp" "wheel_guided_srtOffset2_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_guide_srt.rpt" "wheel_guided_srtOffset2_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_guide_srt.pm" "wheel_guided_srtOffset2_pointConstraint1.tg[0].tpm"
		;
connectAttr "wheel_guided_srtOffset2_pointConstraint1.w0" "wheel_guided_srtOffset2_pointConstraint1.tg[0].tw"
		;
connectAttr "wheel_guided_srtOffset.pim" "wheel_guided_srtOffset2_aimConstraint1.cpim"
		;
connectAttr "wheel_guided_srtOffset.t" "wheel_guided_srtOffset2_aimConstraint1.ct"
		;
connectAttr "wheel_guided_srtOffset.rp" "wheel_guided_srtOffset2_aimConstraint1.crp"
		;
connectAttr "wheel_guided_srtOffset.rpt" "wheel_guided_srtOffset2_aimConstraint1.crt"
		;
connectAttr "wheel_guided_srtOffset.ro" "wheel_guided_srtOffset2_aimConstraint1.cro"
		;
connectAttr "wheel_ctrl_aim_guide_srt.t" "wheel_guided_srtOffset2_aimConstraint1.tg[0].tt"
		;
connectAttr "wheel_ctrl_aim_guide_srt.rp" "wheel_guided_srtOffset2_aimConstraint1.tg[0].trp"
		;
connectAttr "wheel_ctrl_aim_guide_srt.rpt" "wheel_guided_srtOffset2_aimConstraint1.tg[0].trt"
		;
connectAttr "wheel_ctrl_aim_guide_srt.pm" "wheel_guided_srtOffset2_aimConstraint1.tg[0].tpm"
		;
connectAttr "wheel_guided_srtOffset2_aimConstraint1.w0" "wheel_guided_srtOffset2_aimConstraint1.tg[0].tw"
		;
connectAttr "wheel_ctrl_up_guide_srt.wm" "wheel_guided_srtOffset2_aimConstraint1.wum"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset_pointConstraint1.ctx" "wheelCover_ctrl_guided_srtOffset.tx"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset_pointConstraint1.cty" "wheelCover_ctrl_guided_srtOffset.ty"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset_pointConstraint1.ctz" "wheelCover_ctrl_guided_srtOffset.tz"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset_orientConstraint1.crx" "wheelCover_ctrl_guided_srtOffset.rx"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset_orientConstraint1.cry" "wheelCover_ctrl_guided_srtOffset.ry"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset_orientConstraint1.crz" "wheelCover_ctrl_guided_srtOffset.rz"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.pim" "wheelCover_ctrl_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.rp" "wheelCover_ctrl_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.rpt" "wheelCover_ctrl_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_cover_ik_guide_srt.t" "wheelCover_ctrl_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_cover_ik_guide_srt.rp" "wheelCover_ctrl_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_cover_ik_guide_srt.rpt" "wheelCover_ctrl_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_cover_ik_guide_srt.pm" "wheelCover_ctrl_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset_pointConstraint1.w0" "wheelCover_ctrl_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.ro" "wheelCover_ctrl_guided_srtOffset_orientConstraint1.cro"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.pim" "wheelCover_ctrl_guided_srtOffset_orientConstraint1.cpim"
		;
connectAttr "wheel_cover_ik_guide_srt.r" "wheelCover_ctrl_guided_srtOffset_orientConstraint1.tg[0].tr"
		;
connectAttr "wheel_cover_ik_guide_srt.ro" "wheelCover_ctrl_guided_srtOffset_orientConstraint1.tg[0].tro"
		;
connectAttr "wheel_cover_ik_guide_srt.pm" "wheelCover_ctrl_guided_srtOffset_orientConstraint1.tg[0].tpm"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset_orientConstraint1.w0" "wheelCover_ctrl_guided_srtOffset_orientConstraint1.tg[0].tw"
		;
connectAttr "wheel_cover_guided_upVector_normal.o" "wheelCover_guided_srtOffset.upVector"
		;
connectAttr "rod_swivel_guided_srtOffset.pim" "rod_swivel_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "rod_swivel_guided_srtOffset.rp" "rod_swivel_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "rod_swivel_guided_srtOffset.rpt" "rod_swivel_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_rod_swivel_guide_srt.t" "rod_swivel_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_rod_swivel_guide_srt.rp" "rod_swivel_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_rod_swivel_guide_srt.rpt" "rod_swivel_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_rod_swivel_guide_srt.pm" "rod_swivel_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "rod_swivel_guided_srtOffset_pointConstraint1.w0" "rod_swivel_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "rod_axle_guided_srtOffset.pim" "rod_axle_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "rod_axle_guided_srtOffset.rp" "rod_axle_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "rod_axle_guided_srtOffset.rpt" "rod_axle_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_rod_axle_guide_srt.t" "rod_axle_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_rod_axle_guide_srt.rp" "rod_axle_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_rod_axle_guide_srt.rpt" "rod_axle_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_rod_axle_guide_srt.pm" "rod_axle_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "rod_axle_guided_srtOffset_pointConstraint1.w0" "rod_axle_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "rod_hinge_guided_srtOffset.pim" "rod_hinge_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "rod_hinge_guided_srtOffset.rp" "rod_hinge_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "rod_hinge_guided_srtOffset.rpt" "rod_hinge_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_rod_hinge_guide_srt.t" "rod_hinge_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_rod_hinge_guide_srt.rp" "rod_hinge_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_rod_hinge_guide_srt.rpt" "rod_hinge_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_rod_hinge_guide_srt.pm" "rod_hinge_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "rod_hinge_guided_srtOffset_pointConstraint1.w0" "rod_hinge_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "strut_hinge_guided_srtOffset.pim" "strut_hinge_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "strut_hinge_guided_srtOffset.rp" "strut_hinge_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "strut_hinge_guided_srtOffset.rpt" "strut_hinge_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_strut_hinge_guide_srt.t" "strut_hinge_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_strut_hinge_guide_srt.rp" "strut_hinge_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_strut_hinge_guide_srt.rpt" "strut_hinge_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_strut_hinge_guide_srt.pm" "strut_hinge_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "strut_hinge_guided_srtOffset_pointConstraint1.w0" "strut_hinge_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "strut_swivel_guided_srtOffset.pim" "strut_swivel_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "strut_swivel_guided_srtOffset.rp" "strut_swivel_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "strut_swivel_guided_srtOffset.rpt" "strut_swivel_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_strut_swivel_guide_srt.t" "strut_swivel_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_strut_swivel_guide_srt.rp" "strut_swivel_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_strut_swivel_guide_srt.rpt" "strut_swivel_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_strut_swivel_guide_srt.pm" "strut_swivel_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "strut_swivel_guided_srtOffset_pointConstraint1.w0" "strut_swivel_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "strut_axle_guided_srtOffset.pim" "strut_axle_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "strut_axle_guided_srtOffset.rp" "strut_axle_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "strut_axle_guided_srtOffset.rpt" "strut_axle_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_strut_axle_guide_srt.t" "strut_axle_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_strut_axle_guide_srt.rp" "strut_axle_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_strut_axle_guide_srt.rpt" "strut_axle_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_strut_axle_guide_srt.pm" "strut_axle_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "strut_axle_guided_srtOffset_pointConstraint1.w0" "strut_axle_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "hinge_ik_base_guided_srtOffset_pointConstraint1.ctx" "hinge_ik_base_guided_srtOffset.tx"
		;
connectAttr "hinge_ik_base_guided_srtOffset_pointConstraint1.cty" "hinge_ik_base_guided_srtOffset.ty"
		;
connectAttr "hinge_ik_base_guided_srtOffset_pointConstraint1.ctz" "hinge_ik_base_guided_srtOffset.tz"
		;
connectAttr "hinge_ik_bend_guided_srtOffset_pointConstraint1.ctx" "hinge_ik_bend_guided_srtOffset.tx"
		;
connectAttr "hinge_ik_bend_guided_srtOffset_pointConstraint1.cty" "hinge_ik_bend_guided_srtOffset.ty"
		;
connectAttr "hinge_ik_bend_guided_srtOffset_pointConstraint1.ctz" "hinge_ik_bend_guided_srtOffset.tz"
		;
connectAttr "hinge_ik_end_guided_srtOffset_pointConstraint1.ctx" "hinge_ik_end_guided_srtOffset.tx"
		;
connectAttr "hinge_ik_end_guided_srtOffset_pointConstraint1.cty" "hinge_ik_end_guided_srtOffset.ty"
		;
connectAttr "hinge_ik_end_guided_srtOffset_pointConstraint1.ctz" "hinge_ik_end_guided_srtOffset.tz"
		;
connectAttr "hinge_ik_end_guided_srtOffset.pim" "hinge_ik_end_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "hinge_ik_end_guided_srtOffset.rp" "hinge_ik_end_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "hinge_ik_end_guided_srtOffset.rpt" "hinge_ik_end_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_hinge_end_guide_srt.t" "hinge_ik_end_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_hinge_end_guide_srt.rp" "hinge_ik_end_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_hinge_end_guide_srt.rpt" "hinge_ik_end_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_hinge_end_guide_srt.pm" "hinge_ik_end_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "hinge_ik_end_guided_srtOffset_pointConstraint1.w0" "hinge_ik_end_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "rod_ik_base_guided_srtOffset_pointConstraint1.ctx" "rod_ik_base_guided_srtOffset.tx"
		;
connectAttr "rod_ik_base_guided_srtOffset_pointConstraint1.cty" "rod_ik_base_guided_srtOffset.ty"
		;
connectAttr "rod_ik_base_guided_srtOffset_pointConstraint1.ctz" "rod_ik_base_guided_srtOffset.tz"
		;
connectAttr "rod_ik_bend_guided_srtOffset_pointConstraint1.ctx" "rod_ik_bend_guided_srtOffset.tx"
		;
connectAttr "rod_ik_bend_guided_srtOffset_pointConstraint1.cty" "rod_ik_bend_guided_srtOffset.ty"
		;
connectAttr "rod_ik_bend_guided_srtOffset_pointConstraint1.ctz" "rod_ik_bend_guided_srtOffset.tz"
		;
connectAttr "rod_ik_end_guided_srtOffset_pointConstraint1.ctx" "rod_ik_end_guided_srtOffset.tx"
		;
connectAttr "rod_ik_end_guided_srtOffset_pointConstraint1.cty" "rod_ik_end_guided_srtOffset.ty"
		;
connectAttr "rod_ik_end_guided_srtOffset_pointConstraint1.ctz" "rod_ik_end_guided_srtOffset.tz"
		;
connectAttr "rod_ik_end_guided_srtOffset.pim" "rod_ik_end_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "rod_ik_end_guided_srtOffset.rp" "rod_ik_end_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "rod_ik_end_guided_srtOffset.rpt" "rod_ik_end_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_rod_end_guide_srt.t" "rod_ik_end_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_rod_end_guide_srt.rp" "rod_ik_end_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_rod_end_guide_srt.rpt" "rod_ik_end_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_rod_end_guide_srt.pm" "rod_ik_end_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "rod_ik_end_guided_srtOffset_pointConstraint1.w0" "rod_ik_end_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "rod_ik_bend_guided_srtOffset.pim" "rod_ik_bend_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "rod_ik_bend_guided_srtOffset.rp" "rod_ik_bend_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "rod_ik_bend_guided_srtOffset.rpt" "rod_ik_bend_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_rod_axle_guide_srt.t" "rod_ik_bend_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_rod_axle_guide_srt.rp" "rod_ik_bend_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_rod_axle_guide_srt.rpt" "rod_ik_bend_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_rod_axle_guide_srt.pm" "rod_ik_bend_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "rod_ik_bend_guided_srtOffset_pointConstraint1.w0" "rod_ik_bend_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "rod_ik_base_guided_srtOffset.pim" "rod_ik_base_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "rod_ik_base_guided_srtOffset.rp" "rod_ik_base_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "rod_ik_base_guided_srtOffset.rpt" "rod_ik_base_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "rod_fk_guided_srtOffset.t" "rod_ik_base_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "rod_fk_guided_srtOffset.rp" "rod_ik_base_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "rod_fk_guided_srtOffset.rpt" "rod_ik_base_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "rod_fk_guided_srtOffset.pm" "rod_ik_base_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "rod_ik_base_guided_srtOffset_pointConstraint1.w0" "rod_ik_base_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "hinge_ik_bend_guided_srtOffset.pim" "hinge_ik_bend_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "hinge_ik_bend_guided_srtOffset.rp" "hinge_ik_bend_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "hinge_ik_bend_guided_srtOffset.rpt" "hinge_ik_bend_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_hinge_start_guide_srt.t" "hinge_ik_bend_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_hinge_start_guide_srt.rp" "hinge_ik_bend_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_hinge_start_guide_srt.rpt" "hinge_ik_bend_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_hinge_start_guide_srt.pm" "hinge_ik_bend_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "hinge_ik_bend_guided_srtOffset_pointConstraint1.w0" "hinge_ik_bend_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "hinge_ik_base_guided_srtOffset.pim" "hinge_ik_base_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "hinge_ik_base_guided_srtOffset.rp" "hinge_ik_base_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "hinge_ik_base_guided_srtOffset.rpt" "hinge_ik_base_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_strut_axle_guide_srt.t" "hinge_ik_base_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_strut_axle_guide_srt.rp" "hinge_ik_base_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_strut_axle_guide_srt.rpt" "hinge_ik_base_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_strut_axle_guide_srt.pm" "hinge_ik_base_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "hinge_ik_base_guided_srtOffset_pointConstraint1.w0" "hinge_ik_base_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "hinge_ik_guided_srtOffset_pointConstraint1.ctx" "hinge_ik_ctrl_guided_srtOffset.tx"
		;
connectAttr "hinge_ik_guided_srtOffset_pointConstraint1.cty" "hinge_ik_ctrl_guided_srtOffset.ty"
		;
connectAttr "hinge_ik_guided_srtOffset_pointConstraint1.ctz" "hinge_ik_ctrl_guided_srtOffset.tz"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.crx" "hinge_ik_ctrl_guided_srtOffset.rx"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.cry" "hinge_ik_ctrl_guided_srtOffset.ry"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.crz" "hinge_ik_ctrl_guided_srtOffset.rz"
		;
connectAttr "rod_ik_guided_srtOffset_pointConstraint1.ctx" "rod_ik_ctrl_guided_srtOffset.tx"
		;
connectAttr "rod_ik_guided_srtOffset_pointConstraint1.cty" "rod_ik_ctrl_guided_srtOffset.ty"
		;
connectAttr "rod_ik_guided_srtOffset_pointConstraint1.ctz" "rod_ik_ctrl_guided_srtOffset.tz"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset_orientConstraint1.crx" "rod_ik_ctrl_guided_srtOffset.rx"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset_orientConstraint1.cry" "rod_ik_ctrl_guided_srtOffset.ry"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset_orientConstraint1.crz" "rod_ik_ctrl_guided_srtOffset.rz"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.pim" "rod_ik_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.rp" "rod_ik_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.rpt" "rod_ik_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_rod_end_guide_srt.t" "rod_ik_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_rod_end_guide_srt.rp" "rod_ik_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_rod_end_guide_srt.rpt" "rod_ik_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_rod_end_guide_srt.pm" "rod_ik_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "rod_ik_guided_srtOffset_pointConstraint1.w0" "rod_ik_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.ro" "rod_ik_ctrl_guided_srtOffset_orientConstraint1.cro"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset.pim" "rod_ik_ctrl_guided_srtOffset_orientConstraint1.cpim"
		;
connectAttr "wheel_rod_end_guide_srt.r" "rod_ik_ctrl_guided_srtOffset_orientConstraint1.tg[0].tr"
		;
connectAttr "wheel_rod_end_guide_srt.ro" "rod_ik_ctrl_guided_srtOffset_orientConstraint1.tg[0].tro"
		;
connectAttr "wheel_rod_end_guide_srt.pm" "rod_ik_ctrl_guided_srtOffset_orientConstraint1.tg[0].tpm"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset_orientConstraint1.w0" "rod_ik_ctrl_guided_srtOffset_orientConstraint1.tg[0].tw"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.pim" "hinge_ik_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.rp" "hinge_ik_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.rpt" "hinge_ik_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_hinge_end_guide_srt.t" "hinge_ik_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_hinge_end_guide_srt.rp" "hinge_ik_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_hinge_end_guide_srt.rpt" "hinge_ik_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_hinge_end_guide_srt.pm" "hinge_ik_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "hinge_ik_guided_srtOffset_pointConstraint1.w0" "hinge_ik_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset_pointConstraint1.ctx" "rod_pv_ctrl_guided_srtOffset.tx"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset_pointConstraint1.cty" "rod_pv_ctrl_guided_srtOffset.ty"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset_pointConstraint1.ctz" "rod_pv_ctrl_guided_srtOffset.tz"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset_orientConstraint1.crx" "rod_pv_ctrl_guided_srtOffset.rx"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset_orientConstraint1.cry" "rod_pv_ctrl_guided_srtOffset.ry"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset_orientConstraint1.crz" "rod_pv_ctrl_guided_srtOffset.rz"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.pim" "rod_pv_ctrl_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.rp" "rod_pv_ctrl_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.rpt" "rod_pv_ctrl_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_rod_pv_guide_srt.t" "rod_pv_ctrl_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_rod_pv_guide_srt.rp" "rod_pv_ctrl_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_rod_pv_guide_srt.rpt" "rod_pv_ctrl_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_rod_pv_guide_srt.pm" "rod_pv_ctrl_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset_pointConstraint1.w0" "rod_pv_ctrl_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.ro" "rod_pv_ctrl_guided_srtOffset_orientConstraint1.cro"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.pim" "rod_pv_ctrl_guided_srtOffset_orientConstraint1.cpim"
		;
connectAttr "wheel_rod_pv_guide_srt.r" "rod_pv_ctrl_guided_srtOffset_orientConstraint1.tg[0].tr"
		;
connectAttr "wheel_rod_pv_guide_srt.ro" "rod_pv_ctrl_guided_srtOffset_orientConstraint1.tg[0].tro"
		;
connectAttr "wheel_rod_pv_guide_srt.pm" "rod_pv_ctrl_guided_srtOffset_orientConstraint1.tg[0].tpm"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset_orientConstraint1.w0" "rod_pv_ctrl_guided_srtOffset_orientConstraint1.tg[0].tw"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.ro" "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.cro"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.pim" "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.cpim"
		;
connectAttr "wheel_hinge_end_guide_srt.r" "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.tg[0].tr"
		;
connectAttr "wheel_hinge_end_guide_srt.ro" "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.tg[0].tro"
		;
connectAttr "wheel_hinge_end_guide_srt.pm" "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.tg[0].tpm"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.w0" "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.tg[0].tw"
		;
connectAttr "base_fk_guided_srtOffset_pointConstraint1.ctx" "base_fk_guided_srtOffset.tx"
		;
connectAttr "base_fk_guided_srtOffset_pointConstraint1.cty" "base_fk_guided_srtOffset.ty"
		;
connectAttr "base_fk_guided_srtOffset_pointConstraint1.ctz" "base_fk_guided_srtOffset.tz"
		;
connectAttr "base_fk_guided_srtOffset_aimConstraint1.crx" "base_fk_guided_srtOffset.rx"
		;
connectAttr "base_fk_guided_srtOffset_aimConstraint1.cry" "base_fk_guided_srtOffset.ry"
		;
connectAttr "base_fk_guided_srtOffset_aimConstraint1.crz" "base_fk_guided_srtOffset.rz"
		;
connectAttr "hinge_fk_guided_srtOffset_pointConstraint1.ctx" "hinge_fk_guided_srtOffset.tx"
		;
connectAttr "hinge_fk_guided_srtOffset_pointConstraint1.cty" "hinge_fk_guided_srtOffset.ty"
		;
connectAttr "hinge_fk_guided_srtOffset_pointConstraint1.ctz" "hinge_fk_guided_srtOffset.tz"
		;
connectAttr "hinge_fk_guided_srtOffset_aimConstraint1.crx" "hinge_fk_guided_srtOffset.rx"
		;
connectAttr "hinge_fk_guided_srtOffset_aimConstraint1.cry" "hinge_fk_guided_srtOffset.ry"
		;
connectAttr "hinge_fk_guided_srtOffset_aimConstraint1.crz" "hinge_fk_guided_srtOffset.rz"
		;
connectAttr "rod_fk_guided_srtOffset_pointConstraint1.ctx" "rod_fk_guided_srtOffset.tx"
		;
connectAttr "rod_fk_guided_srtOffset_pointConstraint1.cty" "rod_fk_guided_srtOffset.ty"
		;
connectAttr "rod_fk_guided_srtOffset_pointConstraint1.ctz" "rod_fk_guided_srtOffset.tz"
		;
connectAttr "rod_fk_guided_srtOffset_aimConstraint1.crx" "rod_fk_guided_srtOffset.rx"
		;
connectAttr "rod_fk_guided_srtOffset_aimConstraint1.cry" "rod_fk_guided_srtOffset.ry"
		;
connectAttr "rod_fk_guided_srtOffset_aimConstraint1.crz" "rod_fk_guided_srtOffset.rz"
		;
connectAttr "wheel_fk_guided_srtOffset_pointConstraint1.ctx" "wheel_fk_guided_srtOffset.tx"
		;
connectAttr "wheel_fk_guided_srtOffset_pointConstraint1.cty" "wheel_fk_guided_srtOffset.ty"
		;
connectAttr "wheel_fk_guided_srtOffset_pointConstraint1.ctz" "wheel_fk_guided_srtOffset.tz"
		;
connectAttr "wheel_fk_guided_srtOffset_aimConstraint1.crx" "wheel_fk_guided_srtOffset.rx"
		;
connectAttr "wheel_fk_guided_srtOffset_aimConstraint1.cry" "wheel_fk_guided_srtOffset.ry"
		;
connectAttr "wheel_fk_guided_srtOffset_aimConstraint1.crz" "wheel_fk_guided_srtOffset.rz"
		;
connectAttr "wheel_fk_guided_srtOffset.pim" "wheel_fk_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "wheel_fk_guided_srtOffset.rp" "wheel_fk_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "wheel_fk_guided_srtOffset.rpt" "wheel_fk_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_rod_start_guide_srt.t" "wheel_fk_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_rod_start_guide_srt.rp" "wheel_fk_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_rod_start_guide_srt.rpt" "wheel_fk_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_rod_start_guide_srt.pm" "wheel_fk_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "wheel_fk_guided_srtOffset_pointConstraint1.w0" "wheel_fk_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "wheel_fk_guided_srtOffset.pim" "wheel_fk_guided_srtOffset_aimConstraint1.cpim"
		;
connectAttr "wheel_fk_guided_srtOffset.t" "wheel_fk_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "wheel_fk_guided_srtOffset.rp" "wheel_fk_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "wheel_fk_guided_srtOffset.rpt" "wheel_fk_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "wheel_fk_guided_srtOffset.ro" "wheel_fk_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "wheel_fk_aim_guide_srt.t" "wheel_fk_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "wheel_fk_aim_guide_srt.rp" "wheel_fk_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "wheel_fk_aim_guide_srt.rpt" "wheel_fk_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "wheel_fk_aim_guide_srt.pm" "wheel_fk_guided_srtOffset_aimConstraint1.tg[0].tpm"
		;
connectAttr "wheel_fk_guided_srtOffset_aimConstraint1.w0" "wheel_fk_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "wheel_fk_up_guide_srt.wm" "wheel_fk_guided_srtOffset_aimConstraint1.wum"
		;
connectAttr "rod_fk_guided_srtOffset.pim" "rod_fk_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "rod_fk_guided_srtOffset.rp" "rod_fk_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "rod_fk_guided_srtOffset.rpt" "rod_fk_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_hinge_end_guide_srt.t" "rod_fk_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_hinge_end_guide_srt.rp" "rod_fk_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_hinge_end_guide_srt.rpt" "rod_fk_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_hinge_end_guide_srt.pm" "rod_fk_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "rod_fk_guided_srtOffset_pointConstraint1.w0" "rod_fk_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "rod_fk_guided_srtOffset.pim" "rod_fk_guided_srtOffset_aimConstraint1.cpim"
		;
connectAttr "rod_fk_guided_srtOffset.t" "rod_fk_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "rod_fk_guided_srtOffset.rp" "rod_fk_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "rod_fk_guided_srtOffset.rpt" "rod_fk_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "rod_fk_guided_srtOffset.ro" "rod_fk_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "wheel_rod_fk_ctrl_aim_guide_srt.t" "rod_fk_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "wheel_rod_fk_ctrl_aim_guide_srt.rp" "rod_fk_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "wheel_rod_fk_ctrl_aim_guide_srt.rpt" "rod_fk_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "wheel_rod_fk_ctrl_aim_guide_srt.pm" "rod_fk_guided_srtOffset_aimConstraint1.tg[0].tpm"
		;
connectAttr "rod_fk_guided_srtOffset_aimConstraint1.w0" "rod_fk_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "wheel_rod_fk_ctrl_up_guide_srt.wm" "rod_fk_guided_srtOffset_aimConstraint1.wum"
		;
connectAttr "hinge_fk_guided_srtOffset.pim" "hinge_fk_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "hinge_fk_guided_srtOffset.rp" "hinge_fk_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "hinge_fk_guided_srtOffset.rpt" "hinge_fk_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_hinge_start_guide_srt.t" "hinge_fk_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_hinge_start_guide_srt.rp" "hinge_fk_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_hinge_start_guide_srt.rpt" "hinge_fk_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_hinge_start_guide_srt.pm" "hinge_fk_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "hinge_fk_guided_srtOffset_pointConstraint1.w0" "hinge_fk_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "hinge_fk_guided_srtOffset.pim" "hinge_fk_guided_srtOffset_aimConstraint1.cpim"
		;
connectAttr "hinge_fk_guided_srtOffset.t" "hinge_fk_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "hinge_fk_guided_srtOffset.rp" "hinge_fk_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "hinge_fk_guided_srtOffset.rpt" "hinge_fk_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "hinge_fk_guided_srtOffset.ro" "hinge_fk_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "wheel_hinge_fk_ctrl_aim_guide_srt.t" "hinge_fk_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "wheel_hinge_fk_ctrl_aim_guide_srt.rp" "hinge_fk_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "wheel_hinge_fk_ctrl_aim_guide_srt.rpt" "hinge_fk_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "wheel_hinge_fk_ctrl_aim_guide_srt.pm" "hinge_fk_guided_srtOffset_aimConstraint1.tg[0].tpm"
		;
connectAttr "hinge_fk_guided_srtOffset_aimConstraint1.w0" "hinge_fk_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "wheel_hinge_fk_ctrl_up_guide_srt.wm" "hinge_fk_guided_srtOffset_aimConstraint1.wum"
		;
connectAttr "base_fk_guided_srtOffset.pim" "base_fk_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "base_fk_guided_srtOffset.rp" "base_fk_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "base_fk_guided_srtOffset.rpt" "base_fk_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "wheel_base_guide_srt.t" "base_fk_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "wheel_base_guide_srt.rp" "base_fk_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "wheel_base_guide_srt.rpt" "base_fk_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "wheel_base_guide_srt.pm" "base_fk_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "base_fk_guided_srtOffset_pointConstraint1.w0" "base_fk_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "base_fk_guided_srtOffset.pim" "base_fk_guided_srtOffset_aimConstraint1.cpim"
		;
connectAttr "base_fk_guided_srtOffset.t" "base_fk_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "base_fk_guided_srtOffset.rp" "base_fk_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "base_fk_guided_srtOffset.rpt" "base_fk_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "base_fk_guided_srtOffset.ro" "base_fk_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "wheel_base_fk_ctrl_aim_guide_srt.t" "base_fk_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "wheel_base_fk_ctrl_aim_guide_srt.rp" "base_fk_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "wheel_base_fk_ctrl_aim_guide_srt.rpt" "base_fk_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "wheel_base_fk_ctrl_aim_guide_srt.pm" "base_fk_guided_srtOffset_aimConstraint1.tg[0].tpm"
		;
connectAttr "base_fk_guided_srtOffset_aimConstraint1.w0" "base_fk_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "wheel_base_fk_ctrl_up_guide_srt.wm" "base_fk_guided_srtOffset_aimConstraint1.wum"
		;
connectAttr "world_srt.wim" "wheel_rod_ik_rotatePlane_aimConstraint.cpim";
connectAttr "wheel_rod_pv_ctrl.wm" "wheel_rod_ik_rotatePlane_aimConstraint.wum";
connectAttr "wheel_rod_ik_start_worldPosition.o" "wheel_rod_ik_rotatePlane_aimConstraint.ct"
		;
connectAttr "wheel_rod_ik_end_worldPosition.o" "wheel_rod_ik_rotatePlane_aimConstraint.tg[0].tt"
		;
connectAttr "world_srt.wm" "wheel_rod_ik_rotatePlane_aimConstraint.tg[0].tpm";
connectAttr "world_srt.wim" "wheel_hinge_ik_rotatePlane_aimConstraint.cpim";
connectAttr "wheel_hinge_ik_ctrl.t" "wheel_hinge_ik_rotatePlane_aimConstraint.tg[0].tt"
		;
connectAttr "wheel_hinge_ik_ctrl.pm" "wheel_hinge_ik_rotatePlane_aimConstraint.tg[0].tpm"
		;
connectAttr "wheel_hinge_ik_start_worldPosition.o" "wheel_hinge_ik_rotatePlane_aimConstraint.ct"
		;
connectAttr "foot_srt.wm" "wheel_hinge_ik_rotatePlane_aimConstraint.wum";
connectAttr "wheel_strut_hinge_targetTranslate.o3" "wheel_strut_hinge_aimConstraint.tg[0].tt"
		;
connectAttr "wheel_strut_swivel_ik_pass.worldMatrix" "wheel_strut_hinge_aimConstraint.tg[0].tpm"
		;
connectAttr "wheel_hinge_ik_end_pass.worldMatrix" "wheel_strut_hinge_aimConstraint.wum"
		;
connectAttr "wheel_strut_swivel_ik_pass.worldInverseMatrix" "wheel_strut_hinge_aimConstraint.cpim"
		;
connectAttr "strut_hinge_srtOffset.t" "wheel_strut_hinge_aimConstraint.ct";
connectAttr "strut_hinge_srtOffset.upVector" "wheel_strut_hinge_aimConstraint.u"
		;
connectAttr "strut_swivel_srtOffset.t" "wheel_strut_swivel_aimConistraint.ct";
connectAttr "wheel_strut_axle_ik_pass.worldInverseMatrix" "wheel_strut_swivel_aimConistraint.cpim"
		;
connectAttr "wheel_strut_swivel_targetTranslate.o3" "wheel_strut_swivel_aimConistraint.tg[0].tt"
		;
connectAttr "wheel_strut_axle_ik_pass.worldMatrix" "wheel_strut_swivel_aimConistraint.tg[0].tpm"
		;
connectAttr "wheel_hinge_ik_end_pass.worldMatrix" "wheel_strut_swivel_aimConistraint.wum"
		;
connectAttr "wheel_strut_swivel_upVector.oc" "wheel_strut_swivel_aimConistraint.u"
		;
connectAttr "wheel_strut_axle_targetTranslate.o3" "wheel_strut_axle_aimConstraint.tg[0].tt"
		;
connectAttr "foot_srt.wm" "wheel_strut_axle_aimConstraint.tg[0].tpm";
connectAttr "strut_axle_srtOffset.t" "wheel_strut_axle_aimConstraint.ct";
connectAttr "wheel_hinge_ik_bend_pass.worldMatrix" "wheel_strut_axle_aimConstraint.wum"
		;
connectAttr "foot_srt.wim" "wheel_strut_axle_aimConstraint.cpim";
connectAttr "strut_axle_srtOffset.upVector" "wheel_strut_axle_aimConstraint.u";
connectAttr "wheel_strut_hinge_ik_pass.worldInverseMatrix" "wheel_rod_hinge_aimConstriant.cpim"
		;
connectAttr "rod_hinge_srtOffset.t" "wheel_rod_hinge_aimConstriant.ct";
connectAttr "wheel_rod_ik_pass.worldMatrix" "wheel_rod_hinge_aimConstriant.wum";
connectAttr "wheel_rod_hinge_targetTranslate.o3" "wheel_rod_hinge_aimConstriant.tg[0].tt"
		;
connectAttr "wheel_strut_hinge_ik_pass.worldMatrix" "wheel_rod_hinge_aimConstriant.tg[0].tpm"
		;
connectAttr "rod_hinge_srtOffset.upVector" "wheel_rod_hinge_aimConstriant.u";
connectAttr "wheel_rod_axle_targetTranslate.o3" "wheel_rod_axle_aimConstriant.tg[0].tt"
		;
connectAttr "wheel_rod_hinge_ik_pass.worldMatrix" "wheel_rod_axle_aimConstriant.tg[0].tpm"
		;
connectAttr "wheel_rod_ik_ctrl.wm" "wheel_rod_axle_aimConstriant.wum";
connectAttr "wheel_rod_hinge_ik_pass.worldInverseMatrix" "wheel_rod_axle_aimConstriant.cpim"
		;
connectAttr "rod_axle_srtOffset.t" "wheel_rod_axle_aimConstriant.ct";
connectAttr "rod_axle_srtOffset.upVector" "wheel_rod_axle_aimConstriant.u";
connectAttr "rod_swivel_srtOffset.t" "wheel_rod_swivel_aimConstraint.ct";
connectAttr "wheel_rod_swivel_targetTranslate.o3" "wheel_rod_swivel_aimConstraint.tg[0].tt"
		;
connectAttr "wheel_rod_axle_ik_pass.worldMatrix" "wheel_rod_swivel_aimConstraint.tg[0].tpm"
		;
connectAttr "wheel_rod_ik_ctrl.wm" "wheel_rod_swivel_aimConstraint.wum";
connectAttr "wheel_rod_axle_ik_pass.worldInverseMatrix" "wheel_rod_swivel_aimConstraint.cpim"
		;
connectAttr "wheel_cover_ik_ctrl.wm" "wheel_cover_aimConstraint.wum";
connectAttr "wheelCover_srtOffset.t" "wheel_cover_aimConstraint.ct";
connectAttr "wheel_cover_targetTranslate.o3" "wheel_cover_aimConstraint.tg[0].tt"
		;
connectAttr "wheel_parent_pass.worldMatrix" "wheel_cover_aimConstraint.tg[0].tpm"
		;
connectAttr "wheel_parent_pass.worldInverseMatrix" "wheel_cover_aimConstraint.cpim"
		;
connectAttr "wheelCover_srtOffset.upVector" "wheel_cover_aimConstraint.u";
connectAttr "wheel_ctrl_srtOffset_inWorld.ot" "wheel_ctrl_srtOffset.t";
connectAttr "wheel_ctrl_srtOffset_inWorld.or" "wheel_ctrl_srtOffset.r";
connectAttr "wheel_ctrl_srtOffset_inWorld.os" "wheel_ctrl_srtOffset.s";
connectAttr "wheel_cover_ctrl_srtOffset_inWorld.ot" "wheel_cover_ik_ctrl_srtOffset.t"
		;
connectAttr "wheel_cover_ctrl_srtOffset_inWorld.or" "wheel_cover_ik_ctrl_srtOffset.r"
		;
connectAttr "wheel_cover_ctrl_srtOffset_inWorld.os" "wheel_cover_ik_ctrl_srtOffset.s"
		;
connectAttr "wheel_hinge_ik_ctrl_srtOffset_inWorld.ot" "wheel_hinge_ik_ctrl_srtOffset.t"
		;
connectAttr "wheel_hinge_ik_ctrl_srtOffset_inWorld.or" "wheel_hinge_ik_ctrl_srtOffset.r"
		;
connectAttr "wheel_hinge_ik_ctrl_srtOffset_inWorld.os" "wheel_hinge_ik_ctrl_srtOffset.s"
		;
connectAttr "wheel_ikfk_controls_visibility.ix" "wheel_hinge_ik_ctrlShape.v";
connectAttr "wheel_rod_pv_ctrl_srtOffset_inWorld.ot" "wheel_rod_pv_ctrl_srtOffset.t"
		;
connectAttr "wheel_rod_pv_ctrl_srtOffset_inWorld.or" "wheel_rod_pv_ctrl_srtOffset.r"
		;
connectAttr "wheel_rod_pv_ctrl_srtOffset_inWorld.os" "wheel_rod_pv_ctrl_srtOffset.s"
		;
connectAttr "wheel_ikfk_controls_visibility.ix" "wheel_curveShape3.v";
connectAttr "wheel_rod_ik_ctrl_srtOffset_inWorld.ot" "wheel_rod_ik_ctrl_srtOffset.t"
		;
connectAttr "wheel_rod_ik_ctrl_srtOffset_inWorld.or" "wheel_rod_ik_ctrl_srtOffset.r"
		;
connectAttr "wheel_rod_ik_ctrl_srtOffset_inWorld.os" "wheel_rod_ik_ctrl_srtOffset.s"
		;
connectAttr "wheel_ikfk_controls_visibility.ix" "wheel_rod_ik_ctrlShape.v";
connectAttr "wheel_base_fk_ctrl_srtOffset_inWorld.ot" "wheel_base_fk_ctrl_srtOffset.t"
		;
connectAttr "wheel_base_fk_ctrl_srtOffset_inWorld.or" "wheel_base_fk_ctrl_srtOffset.r"
		;
connectAttr "wheel_base_fk_ctrl_srtOffset_inWorld.os" "wheel_base_fk_ctrl_srtOffset.s"
		;
connectAttr "wheel_ikfk_controls_visibility.ox" "wheel_base_fk_ctrlShape.v";
connectAttr "wheel_hinge_fk_ctrl_srtOffset_inWorld.ot" "wheel_hinge_fk_ctrl_srtOffset.t"
		;
connectAttr "wheel_hinge_fk_ctrl_srtOffset_inWorld.or" "wheel_hinge_fk_ctrl_srtOffset.r"
		;
connectAttr "wheel_hinge_fk_ctrl_srtOffset_inWorld.os" "wheel_hinge_fk_ctrl_srtOffset.s"
		;
connectAttr "wheel_ikfk_controls_visibility.ox" "wheel_hinge_fk_ctrlShape.v";
connectAttr "wheel_rod_fk_ctrl_srt_inWorld.ot" "wheel_rod_fk_ctrl_srtOffset.t";
connectAttr "wheel_rod_fk_ctrl_srt_inWorld.or" "wheel_rod_fk_ctrl_srtOffset.r";
connectAttr "wheel_rod_fk_ctrl_srt_inWorld.os" "wheel_rod_fk_ctrl_srtOffset.s";
connectAttr "wheel_ikfk_controls_visibility.ox" "wheel_rod_fk_ctrlShape.v";
connectAttr "wheel_fk_ctrl_srtOffset_inWorld.ot" "wheel_fk_ctrl_srtOffset.t";
connectAttr "wheel_fk_ctrl_srtOffset_inWorld.or" "wheel_fk_ctrl_srtOffset.r";
connectAttr "wheel_fk_ctrl_srtOffset_inWorld.os" "wheel_fk_ctrl_srtOffset.s";
connectAttr "wheel_ikfk_controls_visibility.ox" "wheel_fk_ctrlShape.v";
connectAttr "wheel_strut_axle_blend_translateRotate.ot" "strut_axle_srt.t";
connectAttr "wheel_strut_axle_blend_translateRotate.or" "strut_axle_srt.r";
connectAttr "wheel_strut_axle_blend_scale.op" "strut_axle_srt.s";
connectAttr "wheel_strut_swivel_blend_translateRotate.ot" "strut_swivel_srt.t";
connectAttr "wheel_strut_swivel_blend_translateRotate.or" "strut_swivel_srt.r";
connectAttr "wheel_strut_swivel_blend_scale.op" "strut_swivel_srt.s";
connectAttr "wheel_strut_hinge_blend_translateRotate.ot" "strut_hinge_srt.t";
connectAttr "wheel_strut_hinge_blend_translateRotate.or" "strut_hinge_srt.r";
connectAttr "wheel_strut_hinge_blend_scale.op" "strut_hinge_srt.s";
connectAttr "wheel_rod_hinge_blend_translateRotate.ot" "rod_hinge_srt.t";
connectAttr "wheel_rod_hinge_blend_translateRotate.or" "rod_hinge_srt.r";
connectAttr "wheel_rod_hinge_blend_scale.op" "rod_hinge_srt.s";
connectAttr "wheel_rod_axle_blend_translateRotate.ot" "rod_axle_srt.t";
connectAttr "wheel_rod_axle_blend_translateRotate.or" "rod_axle_srt.r";
connectAttr "wheel_rod_axle_blend_scale.op" "rod_axle_srt.s";
connectAttr "wheel_rod_swivel_blend_translateRotate.ot" "rod_swivel_srt.t";
connectAttr "wheel_rod_swivel_blend_translateRotate.or" "rod_swivel_srt.r";
connectAttr "wheel_rod_swivel_blend_scale.op" "rod_swivel_srt.s";
connectAttr "wheel_srt_inWorld.ot" "wheel_srt.t";
connectAttr "wheel_srt_inWorld.or" "wheel_srt.r";
connectAttr "wheel_srt_inWorld.os" "wheel_srt.s";
connectAttr "wheel_cover_srt_inWorld.ot" "wheel_cover_srt.t";
connectAttr "wheel_cover_srt_inWorld.or" "wheel_cover_srt.r";
connectAttr "wheel_cover_srt_inWorld.os" "wheel_cover_srt.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "strut_axle_srtOffset.t" "wheel_strut_axle_targetTranslate.i3[0]";
connectAttr "wheel_strut_axle_aimConstraint.ct" "wheel_strut_axle_matrix_localTo_foot.it"
		;
connectAttr "wheel_strut_axle_aimConstraint.cr" "wheel_strut_axle_matrix_localTo_foot.ir"
		;
connectAttr "wheel_strut_axle_matrix_localTo_foot.omat" "wheel_strut_axle_ik_worldMatrix.i[0]"
		;
connectAttr "foot_srt.wm" "wheel_strut_axle_ik_worldMatrix.i[1]";
connectAttr "wheel_strut_axle_ik_pass.worldMatrix" "wheel_strut_axle_ik_srt_inWorld.imat"
		;
connectAttr "wheel_strut_axle_ik_worldMatrix.o" "wheel_strut_axle_ik_worldInverseMatrix.imat"
		;
connectAttr "wheel_strut_axle_ik_worldInverseMatrix.omat" "wheel_strut_axle_ik_pass.worldInverseMatrix"
		;
connectAttr "wheel_strut_axle_ik_worldMatrix.o" "wheel_strut_axle_ik_pass.worldMatrix"
		;
connectAttr "strut_swivel_srtOffset.t" "wheel_strut_swivel_targetTranslate.i3[0]"
		;
connectAttr "wheel_strut_swivel_aimConistraint.ct" "wheel_strut_swivel_ik_matrix_localTo_axle.it"
		;
connectAttr "wheel_strut_swivel_aimConistraint.cr" "wheel_strut_swivel_ik_matrix_localTo_axle.ir"
		;
connectAttr "wheel_strut_swivel_ik_matrix_localTo_axle.omat" "wheel_strut_swivel_ik_worldMatrix.i[0]"
		;
connectAttr "wheel_strut_axle_ik_pass.worldMatrix" "wheel_strut_swivel_ik_worldMatrix.i[1]"
		;
connectAttr "wheel_strut_swivel_ik_worldMatrix.o" "wheel_strut_swivel_ik_worldInverseMatrix.imat"
		;
connectAttr "wheel_strut_swivel_ik_worldMatrix.o" "wheel_strut_swivel_ik_pass.worldMatrix"
		;
connectAttr "wheel_strut_swivel_ik_worldInverseMatrix.omat" "wheel_strut_swivel_ik_pass.worldInverseMatrix"
		;
connectAttr "strut_hinge_srtOffset.t" "wheel_strut_hinge_targetTranslate.i3[0]";
connectAttr "wheel_strut_hinge_aimConstraint.ct" "wheel_strut_hinge_matrix_localTo_swivel.it"
		;
connectAttr "wheel_strut_hinge_aimConstraint.cr" "wheel_strut_hinge_matrix_localTo_swivel.ir"
		;
connectAttr "wheel_strut_hinge_matrix_localTo_swivel.omat" "wheel_strut_hinge_worldMatrix.i[0]"
		;
connectAttr "wheel_strut_swivel_ik_pass.worldMatrix" "wheel_strut_hinge_worldMatrix.i[1]"
		;
connectAttr "wheel_strut_hinge_ik_pass.worldMatrix" "wheel_strut_hinge_ik_srt_inWorld.imat"
		;
connectAttr "wheel_strut_hinge_worldMatrix.o" "wheel_strut_hinge_worldInverseMatrix.imat"
		;
connectAttr "wheel_strut_hinge_worldInverseMatrix.omat" "wheel_strut_hinge_ik_pass.worldInverseMatrix"
		;
connectAttr "wheel_strut_hinge_worldMatrix.o" "wheel_strut_hinge_ik_pass.worldMatrix"
		;
connectAttr "rod_hinge_srtOffset.t" "wheel_rod_hinge_targetTranslate.i3[0]";
connectAttr "wheel_rod_hinge_aimConstriant.ct" "wheel_rod_hinge_matrix_localTo_strut_hinge.it"
		;
connectAttr "wheel_rod_hinge_aimConstriant.cr" "wheel_rod_hinge_matrix_localTo_strut_hinge.ir"
		;
connectAttr "wheel_rod_hinge_matrix_localTo_strut_hinge.omat" "wheel_rod_hinge_worldMatrix.i[0]"
		;
connectAttr "wheel_strut_hinge_ik_pass.worldMatrix" "wheel_rod_hinge_worldMatrix.i[1]"
		;
connectAttr "wheel_rod_hinge_ik_pass.worldMatrix" "wheel_rod_hinge_ik_srt_inWorld.imat"
		;
connectAttr "wheel_rod_hinge_worldMatrix.o" "wheel_rod_hinge_ik_pass.worldMatrix"
		;
connectAttr "wheel_rod_hinge_worldInverseMatrix.omat" "wheel_rod_hinge_ik_pass.worldInverseMatrix"
		;
connectAttr "wheel_rod_hinge_worldMatrix.o" "wheel_rod_hinge_worldInverseMatrix.imat"
		;
connectAttr "rod_axle_srtOffset.t" "wheel_rod_axle_targetTranslate.i3[0]";
connectAttr "wheel_rod_axle_aimConstriant.ct" "wheel_rod_axle_matrix_localTo_hinge.it"
		;
connectAttr "wheel_rod_axle_aimConstriant.cr" "wheel_rod_axle_matrix_localTo_hinge.ir"
		;
connectAttr "wheel_rod_axle_matrix_localTo_hinge.omat" "wheel_rod_axle_ik_worldMatrix.i[0]"
		;
connectAttr "wheel_rod_hinge_ik_pass.worldMatrix" "wheel_rod_axle_ik_worldMatrix.i[1]"
		;
connectAttr "wheel_rod_axle_ik_pass.worldMatrix" "wheel_rod_axle_ik_srt_inWorld.imat"
		;
connectAttr "wheel_rod_axle_ik_worldMatrix.o" "wheel_rod_axle_ik_pass.worldMatrix"
		;
connectAttr "wheel_rod_axle_ik_worldInverseMatrix.omat" "wheel_rod_axle_ik_pass.worldInverseMatrix"
		;
connectAttr "wheel_rod_axle_ik_worldMatrix.o" "wheel_rod_axle_ik_worldInverseMatrix.imat"
		;
connectAttr "rod_swivel_srtOffset.t" "wheel_rod_swivel_targetTranslate.i3[0]";
connectAttr "wheel_rod_swivel_aimConstraint.ct" "wheel_rod_swivel_matrix_localTo_axle.it"
		;
connectAttr "wheel_rod_swivel_aimConstraint.cr" "wheel_rod_swivel_matrix_localTo_axle.ir"
		;
connectAttr "wheel_rod_swivel_matrix_localTo_axle.omat" "wheel_rod_swivel_ik_worldMatrix.i[0]"
		;
connectAttr "wheel_rod_axle_ik_pass.worldMatrix" "wheel_rod_swivel_ik_worldMatrix.i[1]"
		;
connectAttr "wheel_rod_swivel_ik_pass.worldMatrix" "wheel_rod_swivel_ik_srt_inWorld.imat"
		;
connectAttr "wheel_rod_swivel_ik_worldMatrix.o" "wheel_rod_swivel_ik_pass.worldMatrix"
		;
connectAttr "wheel_rod_swivel_ik_worldInverseMatrix.omat" "wheel_rod_swivel_ik_pass.worldInverseMatrix"
		;
connectAttr "wheel_rod_swivel_ik_worldMatrix.o" "wheel_rod_swivel_ik_worldInverseMatrix.imat"
		;
connectAttr "wheel_srtOffset.m" "wheel_ctrl_parentMatrix.i[0]";
connectAttr "wheel_rod_swivel_pass.worldMatrix" "wheel_ctrl_parentMatrix.i[1]";
connectAttr "wheel_ctrl_parentMatrix.o" "wheel_ctrl_srtOffset_inWorld.imat";
connectAttr "wheel_worldMatrix.o" "wheel_srt_inWorld.imat";
connectAttr "wheel_ctrl_parentMatrix.o" "wheel_ctrl_parentInverseMatrix.imat";
connectAttr "wheel_ctrl.wm" "wheel_ctrl_matrix.i[0]";
connectAttr "wheel_parent_pass.worldInverseMatrix" "wheel_ctrl_matrix.i[1]";
connectAttr "wheel_ctrl_matrix.o" "wheel_ctrl_srt.imat";
connectAttr "wheel_ctrl_srt.oq" "wheel_ctrl_rotation.iq";
connectAttr "wheel_ctrl_srt.ot" "wheel_matrix.it";
connectAttr "wheel_ctrl_rotation.orx" "wheel_matrix.irx";
connectAttr "wheel_matrix.omat" "wheel_worldMatrix.i[0]";
connectAttr "wheel_parent_pass.worldMatrix" "wheel_worldMatrix.i[1]";
connectAttr "wheelCover_ctrl_srtOffset.m" "wheel_cover_ctrl_parentMatrix.i[0]";
connectAttr "wheel_ctrl_srtOffset.wm" "wheel_cover_ctrl_parentMatrix.i[1]";
connectAttr "wheel_cover_ctrl_parentMatrix.o" "wheel_cover_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "wheelCover_srtOffset.t" "wheel_cover_targetTranslate.i3[0]";
connectAttr "wheel_cover_aimConstraint.ct" "wheel_cover_matrix.it";
connectAttr "wheel_cover_aimConstraint.cr" "wheel_cover_matrix.ir";
connectAttr "wheel_ctrl_parentMatrix.o" "wheel_parent_pass.worldMatrix";
connectAttr "wheel_ctrl_parentInverseMatrix.omat" "wheel_parent_pass.worldInverseMatrix"
		;
connectAttr "wheel_cover_matrix.omat" "wheel_cover_multMatrix.i[0]";
connectAttr "wheel_parent_pass.worldMatrix" "wheel_cover_multMatrix.i[1]";
connectAttr "wheel_cover_multMatrix.o" "wheel_cover_srt_inWorld.imat";
connectAttr "hinge_ik_base_srtOffset.t" "wheel_hinge_ik_start_worldPosition.i1";
connectAttr "foot_srt.wm" "wheel_hinge_ik_start_worldPosition.m";
connectAttr "wheel_hinge_ik_rotatePlane_aimConstraint.ct" "wheel_hinge_ik_rotatePlane_worldMatrix.it"
		;
connectAttr "wheel_hinge_ik_rotatePlane_aimConstraint.cr" "wheel_hinge_ik_rotatePlane_worldMatrix.ir"
		;
connectAttr "hinge_ik_bend_srtOffset.t" "wheel_hinge_ik_upperLength.p2";
connectAttr "hinge_ik_end_srtOffset.t" "wheel_hinge_ik_lowerLength.p2";
connectAttr "wheel_hinge_ik_ctrl.wm" "wheel_hinge_ik_end_worldPosition.m";
connectAttr "wheel_hinge_ik_end_worldPosition.o" "wheel_hinge_ik_currentLength.p1"
		;
connectAttr "wheel_hinge_ik_start_worldPosition.o" "wheel_hinge_ik_currentLength.p2"
		;
connectAttr "wheel_hinge_ik_currentLength.d" "wheel_hinge_ik_INPUT.currentLength"
		;
connectAttr "wheel_hinge_ik_upperLength.d" "wheel_hinge_ik_INPUT.upperLength";
connectAttr "wheel_hinge_ik_lowerLength.d" "wheel_hinge_ik_INPUT.lowerLength";
connectAttr "wheel_hinge_ik_INPUT.upperLength" "wheel_hinge_ik_expression.in[0]"
		;
connectAttr "wheel_hinge_ik_INPUT.lowerLength" "wheel_hinge_ik_expression.in[1]"
		;
connectAttr "wheel_hinge_ik_INPUT.currentLength" "wheel_hinge_ik_expression.in[2]"
		;
connectAttr ":time1.o" "wheel_hinge_ik_expression.tim";
connectAttr "wheel_hinge_ik_INPUT.upperLength" "wheel_hinge_ik_bend_matrix.itz";
connectAttr "wheel_hinge_ik_OUTPUT.bendAngle" "wheel_hinge_ik_bend_matrix.irx";
connectAttr "wheel_hinge_ik_bend_matrix.omat" "wheel_hinge_ik_bend_worldMatrix.i[0]"
		;
connectAttr "wheel_hinge_ik_base_matrix.omat" "wheel_hinge_ik_bend_worldMatrix.i[1]"
		;
connectAttr "wheel_hinge_ik_rotatePlane_worldMatrix.omat" "wheel_hinge_ik_bend_worldMatrix.i[2]"
		;
connectAttr "wheel_composeMatrix1.omat" "wheel_hinge_ik_end_worldMatrix.i[0]";
connectAttr "wheel_hinge_ik_bend_matrix.omat" "wheel_hinge_ik_end_worldMatrix.i[1]"
		;
connectAttr "wheel_hinge_ik_base_matrix.omat" "wheel_hinge_ik_end_worldMatrix.i[2]"
		;
connectAttr "wheel_hinge_ik_rotatePlane_worldMatrix.omat" "wheel_hinge_ik_end_worldMatrix.i[3]"
		;
connectAttr "wheel_hinge_ik_INPUT.lowerLength" "wheel_composeMatrix1.itz";
connectAttr "wheel_hinge_ik_bend_worldMatrix.o" "wheel_hinge_ik_bend_worldInverseMatrix.imat"
		;
connectAttr "wheel_hinge_ik_bend_worldMatrix.o" "wheel_hinge_ik_bend_pass.worldMatrix"
		;
connectAttr "wheel_hinge_ik_bend_worldInverseMatrix.omat" "wheel_hinge_ik_bend_pass.worldInverseMatrix"
		;
connectAttr "wheel_hinge_ik_end_worldMatrix.o" "wheel_hinge_ik_end_pass.worldMatrix"
		;
connectAttr "wheel_hinge_ik_end_worldInverseMatrix.omat" "wheel_hinge_ik_end_pass.worldInverseMatrix"
		;
connectAttr "wheel_hinge_ik_end_worldMatrix.o" "wheel_hinge_ik_end_worldInverseMatrix.imat"
		;
connectAttr "rod_ik_base_srtOffset.t" "wheel_rod_ik_start_worldPosition.i1";
connectAttr "wheel_strut_hinge_ik_pass.worldMatrix" "wheel_rod_ik_start_worldPosition.m"
		;
connectAttr "wheel_rod_ik_ctrl.wm" "wheel_rod_ik_end_worldPosition.m";
connectAttr "wheel_rod_ik_start_worldPosition.o" "wheel_rod_ik_currentLength.p1"
		;
connectAttr "wheel_rod_ik_end_worldPosition.o" "wheel_rod_ik_currentLength.p2";
connectAttr "rod_ik_bend_srtOffset.t" "wheel_rod_ik_upperLength.p2";
connectAttr "rod_ik_end_srtOffset.t" "wheel_rod_ik_lowerLength.p2";
connectAttr "wheel_rod_ik_currentLength.d" "wheel_rod_ik_INPUT.currentLength";
connectAttr "wheel_rod_ik_upperLength.d" "wheel_rod_ik_INPUT.upperLength";
connectAttr "wheel_rod_ik_lowerLength.d" "wheel_rod_ik_INPUT.lowerLength";
connectAttr "wheel_unitConversion13.o" "wheel_rod_ik_OUTPUT.baseAngle";
connectAttr "wheel_unitConversion14.o" "wheel_rod_ik_OUTPUT.bendAngle";
connectAttr "wheel_rod_ik_INPUT.upperLength" "wheel_rod_ik_expression.in[0]";
connectAttr "wheel_rod_ik_INPUT.lowerLength" "wheel_rod_ik_expression.in[1]";
connectAttr "wheel_rod_ik_INPUT.currentLength" "wheel_rod_ik_expression.in[2]";
connectAttr ":time1.o" "wheel_rod_ik_expression.tim";
connectAttr "wheel_rod_ik_rotatePlane_aimConstraint.ct" "wheel_rod_ik_rotatePlane_worldMatrix.it"
		;
connectAttr "wheel_rod_ik_rotatePlane_aimConstraint.cr" "wheel_rod_ik_rotatePlane_worldMatrix.ir"
		;
connectAttr "wheel_rod_ik_OUTPUT.baseAngle" "wheel_rod_ik_base_matrix.irx";
connectAttr "wheel_rod_ik_OUTPUT.bendAngle" "wheel_rod_ik_bend_matrix.irx";
connectAttr "wheel_rod_ik_INPUT.upperLength" "wheel_rod_ik_bend_matrix.itz";
connectAttr "wheel_rod_ik_bend_matrix.omat" "wheel_rod_ik_bend_worldMatrix.i[0]"
		;
connectAttr "wheel_rod_ik_base_matrix.omat" "wheel_rod_ik_bend_worldMatrix.i[1]"
		;
connectAttr "wheel_rod_ik_rotatePlane_worldMatrix.omat" "wheel_rod_ik_bend_worldMatrix.i[2]"
		;
connectAttr "wheel_rod_ik_expression.out[0]" "wheel_unitConversion13.i";
connectAttr "wheel_rod_ik_expression.out[1]" "wheel_unitConversion14.i";
connectAttr "wheel_rod_ik_bend_worldMatrix.o" "wheel_rod_ik_pass.worldMatrix";
connectAttr "wheel_hinge_ik_expression.out[0]" "wheel_unitConversion11.i";
connectAttr "wheel_unitConversion12.o" "wheel_hinge_ik_OUTPUT.bendAngle";
connectAttr "wheel_unitConversion11.o" "wheel_hinge_ik_OUTPUT.baseAngle";
connectAttr "wheel_hinge_ik_OUTPUT.baseAngle" "wheel_hinge_ik_base_matrix.irx";
connectAttr "wheel_hinge_ik_expression.out[1]" "wheel_unitConversion12.i";
connectAttr "wheel_hinge_ik_ctrl.wm" "wheel_hinge_ik_matrix_localTo_struct_axle.i[0]"
		;
connectAttr "wheel_strut_axle_ik_pass.worldInverseMatrix" "wheel_hinge_ik_matrix_localTo_struct_axle.i[1]"
		;
connectAttr "wheel_hinge_ik_matrix_localTo_struct_axle.o" "wheel_hinge_ik_position_localTo_struct_axle.m"
		;
connectAttr "wheel_hinge_ik_position_localTo_struct_axle.ox" "wheel_strut_swivel_upVector.ft"
		;
connectAttr "wheel_base_fk_ctrl.wm" "wheel_base_fk_ctrl_matrix.i[0]";
connectAttr "wheel_base_fk_ctrl_srtOffset.wim" "wheel_base_fk_ctrl_matrix.i[1]";
connectAttr "wheel_base_fk_ctrl_matrix.o" "wheel_base_fk_ctrl_srt.imat";
connectAttr "base_fk_srtOffset.m" "wheel_base_fk_ctrl_parentMatrix.i[0]";
connectAttr "foot_srt.wm" "wheel_base_fk_ctrl_parentMatrix.i[1]";
connectAttr "wheel_base_fk_ctrl_parentMatrix.o" "wheel_base_fk_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "wheel_base_fk_ctrl_srt.oq" "wheel_base_fk_ctrl_rotation.iq";
connectAttr "wheel_base_fk_ctrl_rotation.orx" "wheel_hinge_fk_ctrl_parentMatrix_localTo_base.irx"
		;
connectAttr "wheel_base_fk_ctrl_rotation.orz" "wheel_hinge_fk_ctrl_parentMatrix_localTo_base.irz"
		;
connectAttr "wheel_base_fk_ctrl_rotation.iro" "wheel_hinge_fk_ctrl_parentMatrix_localTo_base.ro"
		;
connectAttr "wheel_base_fk_ctrl_srt.ot" "wheel_hinge_fk_ctrl_parentMatrix_localTo_base.it"
		;
connectAttr "wheel_hinge_fk_ctrl_parentMatrix_localTo_base.omat" "wheel_base_fk_worldMatrix.i[0]"
		;
connectAttr "wheel_base_fk_ctrl_parentMatrix.o" "wheel_base_fk_worldMatrix.i[1]"
		;
connectAttr "wheel_hinge_fk_ctrl_parentMatrix.o" "wheel_hinge_fk_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "hinge_fk_srtOffset.m" "wheel_hinge_fk_ctrl_parentMatrix.i[0]";
connectAttr "wheel_base_fk_pass.worldMatrix" "wheel_hinge_fk_ctrl_parentMatrix.i[1]"
		;
connectAttr "wheel_base_fk_worldMatrix.o" "wheel_base_fk_worldInverseMatrix.imat"
		;
connectAttr "rod_fk_srtOffset.m" "wheel_rod_fk_ctrl_parentMatrix.i[0]";
connectAttr "wheel_hinge_fk_pass.worldMatrix" "wheel_rod_fk_ctrl_parentMatrix.i[1]"
		;
connectAttr "wheel_rod_fk_ctrl_parentMatrix.o" "wheel_rod_fk_ctrl_srt_inWorld.imat"
		;
connectAttr "wheel_rod_fk_ctrl.wm" "wheel_rod_fk_ctrl_matrix.i[0]";
connectAttr "wheel_rod_fk_ctrl_srtOffset.wim" "wheel_rod_fk_ctrl_matrix.i[1]";
connectAttr "wheel_rod_fk_ctrl_matrix.o" "wheel_rod_fk_ctrl_srt.imat";
connectAttr "wheel_rod_fk_ctrl_srt.oq" "wheel_rod_fk_ctrl_rotation.iq";
connectAttr "wheel_rod_fk_ctrl_rotation.orx" "wheel_rod_fk_matrix.irx";
connectAttr "wheel_rod_fk_ctrl_rotation.ory" "wheel_rod_fk_matrix.iry";
connectAttr "wheel_rod_fk_ctrl_rotation.iro" "wheel_rod_fk_matrix.ro";
connectAttr "wheel_rod_fk_matrix.omat" "wheel_rod_fk_worldMatrix.i[0]";
connectAttr "wheel_rod_fk_ctrl_srtOffset.wm" "wheel_rod_fk_worldMatrix.i[1]";
connectAttr "wheel_fk_srtOffset.m" "wheel_fk_ctrl_parentMatrix.i[0]";
connectAttr "wheel_rod_fk_pass.worldMatrix" "wheel_fk_ctrl_parentMatrix.i[1]";
connectAttr "wheel_fk_ctrl_parentMatrix.o" "wheel_fk_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "wheel_fk_ctrl.wm" "wheel_fk_ctrl_matrix.i[0]";
connectAttr "wheel_fk_ctrl_srtOffset.wim" "wheel_fk_ctrl_matrix.i[1]";
connectAttr "wheel_fk_ctrl_matrix.o" "wheel_fk_ctrl_srt.imat";
connectAttr "wheel_fk_ctrl_srt.oq" "wheel_fk_ctrl_rotation.iq";
connectAttr "wheel_fk_ctrl_rotation.ory" "wheel_fk_matrix.iry";
connectAttr "wheel_fk_matrix.omat" "wheel_fk_worldMatrix.i[0]";
connectAttr "wheel_fk_ctrl_srtOffset.wm" "wheel_fk_worldMatrix.i[1]";
connectAttr "wheel_rod_fk_worldMatrix.o" "wheel_rod_fk_worldInverseMatrix.imat";
connectAttr "wheel_fk_worldMatrix.o" "wheel_fk_worldInverseMatrix.imat";
connectAttr "wheel_hinge_fk_ctrl.wm" "wheel_hinge_fk_ctrl_matrix.i[0]";
connectAttr "wheel_hinge_fk_ctrl_srtOffset.wim" "wheel_hinge_fk_ctrl_matrix.i[1]"
		;
connectAttr "wheel_hinge_fk_ctrl_matrix.o" "wheel_hinge_fk_ctrl_srt.imat";
connectAttr "wheel_hinge_fk_ctrl_srt.ory" "wheel_hinge_fk_matrix.iry";
connectAttr "wheel_hinge_fk_ctrl_srt.orz" "wheel_hinge_fk_matrix.irz";
connectAttr "wheel_hinge_fk_matrix.omat" "wheel_hinge_fk_worldMatrix.i[0]";
connectAttr "wheel_hinge_fk_ctrl_srtOffset.wm" "wheel_hinge_fk_worldMatrix.i[1]"
		;
connectAttr "wheel_hinge_fk_worldMatrix.o" "wheel_hinge_fk_worldInverseMatrix.imat"
		;
connectAttr "wheel_hinge_fk_worldMatrix.o" "wheel_hinge_fk_pass.worldMatrix";
connectAttr "wheel_hinge_fk_worldInverseMatrix.omat" "wheel_hinge_fk_pass.worldInverseMatrix"
		;
connectAttr "wheel_base_fk_worldMatrix.o" "wheel_base_fk_pass.worldMatrix";
connectAttr "wheel_base_fk_worldInverseMatrix.omat" "wheel_base_fk_pass.worldInverseMatrix"
		;
connectAttr "wheel_rod_fk_worldMatrix.o" "wheel_rod_fk_pass.worldMatrix";
connectAttr "wheel_rod_fk_worldInverseMatrix.omat" "wheel_rod_fk_pass.worldInverseMatrix"
		;
connectAttr "wheel_fk_worldInverseMatrix.omat" "wheel_fk_pass.worldInverseMatrix"
		;
connectAttr "wheel_fk_worldMatrix.o" "wheel_fk_pass.worldMatrix";
connectAttr "wheel_base_fk_pass.worldMatrix" "wheel_base_fk_matrix_localTo_foot.i[0]"
		;
connectAttr "foot_srt.wim" "wheel_base_fk_matrix_localTo_foot.i[1]";
connectAttr "wheel_base_fk_srt_localTo_foot.ot" "wheel_strut_axle_fk_matrix_localTo_foot.it"
		;
connectAttr "wheel_base_fk_srt_localTo_foot.orx" "wheel_strut_axle_fk_matrix_localTo_foot.irx"
		;
connectAttr "wheel_base_fk_matrix_localTo_foot.o" "wheel_base_fk_srt_localTo_foot.imat"
		;
connectAttr "wheel_strut_axle_fk_matrix_localTo_foot.omat" "wheel_strut_axle_fk_worldMatrix.i[0]"
		;
connectAttr "foot_srt.wm" "wheel_strut_axle_fk_worldMatrix.i[1]";
connectAttr "wheel_strut_axle_fk_pass.worldMatrix" "wheel_strut_axle_fk_srt_inWorld.imat"
		;
connectAttr "settings.fkik" "wheel_strut_axle_blend_translateRotate.w";
connectAttr "wheel_strut_axle_fk_srt_inWorld.ot" "wheel_strut_axle_blend_translateRotate.it1"
		;
connectAttr "wheel_strut_axle_fk_srt_inWorld.or" "wheel_strut_axle_blend_translateRotate.ir1"
		;
connectAttr "wheel_strut_axle_ik_srt_inWorld.ot" "wheel_strut_axle_blend_translateRotate.it2"
		;
connectAttr "wheel_strut_axle_ik_srt_inWorld.or" "wheel_strut_axle_blend_translateRotate.ir2"
		;
connectAttr "wheel_strut_axle_fk_srt_inWorld.os" "wheel_strut_axle_blend_scale.c2"
		;
connectAttr "wheel_strut_axle_ik_srt_inWorld.os" "wheel_strut_axle_blend_scale.c1"
		;
connectAttr "settings.fkik" "wheel_strut_axle_blend_scale.b";
connectAttr "wheel_hinge_fk_pass.worldMatrix" "wheel_hinge_fk_matrix_localTo_strut_axle.i[0]"
		;
connectAttr "wheel_strut_axle_fk_pass.worldInverseMatrix" "wheel_hinge_fk_matrix_localTo_strut_axle.i[1]"
		;
connectAttr "wheel_hinge_fk_matrix_localTo_strut_axle.o" "wheel_hinge_fk_srt_localTo_base.imat"
		;
connectAttr "strut_swivel_srtOffset.t" "wheel_strut_swivel_fk_matrix_localTo_base.it"
		;
connectAttr "wheel_hinge_fk_srt_localTo_base.orz" "wheel_strut_swivel_fk_matrix_localTo_base.irz"
		;
connectAttr "wheel_hinge_fk_srt_localTo_base.oqz" "wheel_strut_swivel_fk_matrix_localTo_base.iqz"
		;
connectAttr "wheel_hinge_fk_srt_localTo_base.oqw" "wheel_strut_swivel_fk_matrix_localTo_base.iqw"
		;
connectAttr "wheel_strut_swivel_fk_matrix_localTo_base.omat" "wheel_strut_swivel_fk_worldMatrix.i[0]"
		;
connectAttr "wheel_strut_axle_fk_pass.worldMatrix" "wheel_strut_swivel_fk_worldMatrix.i[1]"
		;
connectAttr "wheel_strut_axle_fk_worldMatrix.o" "wheel_strut_axle_fk_pass.worldMatrix"
		;
connectAttr "wheel_strut_axle_fk_worldInverseMatrix.omat" "wheel_strut_axle_fk_pass.worldInverseMatrix"
		;
connectAttr "wheel_strut_axle_fk_worldMatrix.o" "wheel_strut_axle_fk_worldInverseMatrix.imat"
		;
connectAttr "wheel_strut_swivel_fk_worldMatrix.o" "wheel_strut_swivel_fk_worldInverseMatrix.imat"
		;
connectAttr "wheel_strut_swivel_fk_worldInverseMatrix.omat" "wheel_strut_swivel_fk_pass.worldInverseMatrix"
		;
connectAttr "wheel_strut_swivel_fk_worldMatrix.o" "wheel_strut_swivel_fk_pass.worldMatrix"
		;
connectAttr "wheel_strut_swivel_fk_srt_inWorld.ot" "wheel_strut_swivel_blend_translateRotate.it1"
		;
connectAttr "wheel_strut_swivel_fk_srt_inWorld.or" "wheel_strut_swivel_blend_translateRotate.ir1"
		;
connectAttr "wheel_strut_swivel_ik_srt_inWorld.ot" "wheel_strut_swivel_blend_translateRotate.it2"
		;
connectAttr "wheel_strut_swivel_ik_srt_inWorld.or" "wheel_strut_swivel_blend_translateRotate.ir2"
		;
connectAttr "settings.fkik" "wheel_strut_swivel_blend_translateRotate.w";
connectAttr "wheel_strut_swivel_fk_srt_inWorld.os" "wheel_strut_swivel_blend_scale.c2"
		;
connectAttr "wheel_strut_swivel_ik_srt_inWorld.os" "wheel_strut_swivel_blend_scale.c1"
		;
connectAttr "settings.fkik" "wheel_strut_swivel_blend_scale.b";
connectAttr "wheel_strut_swivel_fk_pass.worldMatrix" "wheel_strut_swivel_fk_srt_inWorld.imat"
		;
connectAttr "wheel_strut_swivel_ik_pass.worldMatrix" "wheel_strut_swivel_ik_srt_inWorld.imat"
		;
connectAttr "settings.fkik" "wheel_strut_hinge_blend_translateRotate.w";
connectAttr "wheel_strut_hinge_ik_srt_inWorld.ot" "wheel_strut_hinge_blend_translateRotate.it2"
		;
connectAttr "wheel_strut_hinge_ik_srt_inWorld.or" "wheel_strut_hinge_blend_translateRotate.ir2"
		;
connectAttr "wheel_strut_hinge_fk_srt_inWorld.ot" "wheel_strut_hinge_blend_translateRotate.it1"
		;
connectAttr "wheel_strut_hinge_fk_srt_inWorld.or" "wheel_strut_hinge_blend_translateRotate.ir1"
		;
connectAttr "settings.fkik" "wheel_strut_hinge_blend_scale.b";
connectAttr "wheel_strut_hinge_ik_srt_inWorld.os" "wheel_strut_hinge_blend_scale.c1"
		;
connectAttr "wheel_strut_hinge_fk_srt_inWorld.os" "wheel_strut_hinge_blend_scale.c2"
		;
connectAttr "wheel_hinge_fk_pass.worldMatrix" "wheel_strut_hinge_fk_srt_inWorld.imat"
		;
connectAttr "wheel_rod_fk_pass.worldMatrix" "wheel_rod_fk_matrix_localTo_hinge.i[0]"
		;
connectAttr "wheel_hinge_fk_pass.worldInverseMatrix" "wheel_rod_fk_matrix_localTo_hinge.i[1]"
		;
connectAttr "wheel_rod_fk_matrix_localTo_hinge.o" "wheel_rod_fk_srt_localTo_hinge.imat"
		;
connectAttr "wheel_rod_fk_srt_localTo_hinge.oq" "wheel_rod_fk_rotation_localTo_hinge.iq"
		;
connectAttr "wheel_rod_fk_rotation_localTo_hinge.ory" "wheel_rod_hinge_fk_matrix_localTo_strut_hinge.iry"
		;
connectAttr "wheel_rod_fk_srt_localTo_hinge.ot" "wheel_rod_hinge_fk_matrix_localTo_strut_hinge.it"
		;
connectAttr "wheel_rod_hinge_fk_matrix_localTo_strut_hinge.omat" "wheel_rod_hinge_fk_worldMatrix.i[0]"
		;
connectAttr "wheel_hinge_fk_pass.worldMatrix" "wheel_rod_hinge_fk_worldMatrix.i[1]"
		;
connectAttr "wheel_rod_hinge_fk_worldMatrix.o" "wheel_rod_hinge_fk_srt_inWorld.imat"
		;
connectAttr "settings.fkik" "wheel_rod_hinge_blend_translateRotate.w";
connectAttr "wheel_rod_hinge_fk_srt_inWorld.ot" "wheel_rod_hinge_blend_translateRotate.it1"
		;
connectAttr "wheel_rod_hinge_fk_srt_inWorld.or" "wheel_rod_hinge_blend_translateRotate.ir1"
		;
connectAttr "wheel_rod_hinge_ik_srt_inWorld.ot" "wheel_rod_hinge_blend_translateRotate.it2"
		;
connectAttr "wheel_rod_hinge_ik_srt_inWorld.or" "wheel_rod_hinge_blend_translateRotate.ir2"
		;
connectAttr "settings.fkik" "wheel_rod_hinge_blend_scale.b";
connectAttr "wheel_rod_hinge_fk_srt_inWorld.os" "wheel_rod_hinge_blend_scale.c2"
		;
connectAttr "wheel_rod_hinge_ik_srt_inWorld.os" "wheel_rod_hinge_blend_scale.c1"
		;
connectAttr "rod_axle_srtOffset.m" "wheel_rod_axle_fk_worldMatrix.i[0]";
connectAttr "wheel_rod_fk_pass.worldMatrix" "wheel_rod_axle_fk_worldMatrix.i[1]"
		;
connectAttr "wheel_rod_axle_fk_worldMatrix.o" "wheel_rod_axle_fk_srt_inWorld.imat"
		;
connectAttr "wheel_rod_axle_fk_srt_inWorld.ot" "wheel_rod_axle_blend_translateRotate.it1"
		;
connectAttr "wheel_rod_axle_fk_srt_inWorld.or" "wheel_rod_axle_blend_translateRotate.ir1"
		;
connectAttr "wheel_rod_axle_ik_srt_inWorld.ot" "wheel_rod_axle_blend_translateRotate.it2"
		;
connectAttr "wheel_rod_axle_ik_srt_inWorld.or" "wheel_rod_axle_blend_translateRotate.ir2"
		;
connectAttr "settings.fkik" "wheel_rod_axle_blend_translateRotate.w";
connectAttr "wheel_rod_axle_ik_srt_inWorld.os" "wheel_rod_axle_blend_scale.c1";
connectAttr "wheel_rod_axle_fk_srt_inWorld.os" "wheel_rod_axle_blend_scale.c2";
connectAttr "settings.fkik" "wheel_rod_axle_blend_scale.b";
connectAttr "wheel_fk_pass.worldMatrix" "wheel_rod_swivel_fk_srt_inWorld.imat";
connectAttr "wheel_rod_swivel_fk_srt_inWorld.ot" "wheel_rod_swivel_blend_translateRotate.it1"
		;
connectAttr "wheel_rod_swivel_fk_srt_inWorld.or" "wheel_rod_swivel_blend_translateRotate.ir1"
		;
connectAttr "wheel_rod_swivel_ik_srt_inWorld.ot" "wheel_rod_swivel_blend_translateRotate.it2"
		;
connectAttr "wheel_rod_swivel_ik_srt_inWorld.or" "wheel_rod_swivel_blend_translateRotate.ir2"
		;
connectAttr "settings.fkik" "wheel_rod_swivel_blend_translateRotate.w";
connectAttr "wheel_rod_swivel_fk_srt_inWorld.os" "wheel_rod_swivel_blend_scale.c2"
		;
connectAttr "wheel_rod_swivel_ik_srt_inWorld.os" "wheel_rod_swivel_blend_scale.c1"
		;
connectAttr "settings.fkik" "wheel_rod_swivel_blend_scale.b";
connectAttr "wheel_rod_swivel_worldMatrix.omat" "wheel_rod_swivel_pass.worldMatrix"
		;
connectAttr "wheel_rod_swivel_worldInverseMatrix.omat" "wheel_rod_swivel_pass.worldInverseMatrix"
		;
connectAttr "wheel_rod_swivel_blend_translateRotate.ot" "wheel_rod_swivel_worldMatrix.it"
		;
connectAttr "wheel_rod_swivel_blend_translateRotate.or" "wheel_rod_swivel_worldMatrix.ir"
		;
connectAttr "wheel_rod_swivel_blend_scale.op" "wheel_rod_swivel_worldMatrix.is";
connectAttr "wheel_rod_swivel_worldMatrix.omat" "wheel_rod_swivel_worldInverseMatrix.imat"
		;
connectAttr "settings.fkik" "wheel_ikfk_controls_visibility.ix";
connectAttr "hinge_ik_ctrl_srtOffset.m" "wheel_hinge_ik_ctrl_parentMatrix.i[0]";
connectAttr "foot_srt.wm" "wheel_hinge_ik_ctrl_parentMatrix.i[1]";
connectAttr "wheel_hinge_ik_ctrl_parentMatrix.o" "wheel_hinge_ik_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "wheel_hinge_ik_ctrl.m" "wheel_rod_ik_ctrl_parentMatrix.i[0]";
connectAttr "rod_ik_ctrl_srtOffset.wm" "wheel_rod_ik_ctrl_parentMatrix.i[1]";
connectAttr "wheel_rod_ik_ctrl_parentMatrix.o" "wheel_rod_ik_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "rod_pv_ctrl_srtOffset.m" "wheel_rod_pv_ctrl_parentMatrix.i[0]";
connectAttr "wheel_hinge_ik_ctrl.wm" "wheel_rod_pv_ctrl_parentMatrix.i[1]";
connectAttr "wheel_rod_pv_ctrl_parentMatrix.o" "wheel_rod_pv_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "wheel_hinge_start_guide_srt.t" "wheel_hinge_start_guided_position_localTo_foot.i1"
		;
connectAttr "foot_guided_srt.wim" "wheel_hinge_start_guided_position_localTo_foot.m"
		;
connectAttr "wheel_base_guide_srt.t" "wheel_base_guided_position_localTo_foot.i1"
		;
connectAttr "foot_guided_srt.wim" "wheel_base_guided_position_localTo_foot.m";
connectAttr "wheel_hinge_start_guided_position_localTo_foot.o" "wheel_strut_axle_guided_upVector.i3[0]"
		;
connectAttr "wheel_base_guided_position_localTo_foot.o" "wheel_strut_axle_guided_upVector.i3[1]"
		;
connectAttr "wheel_strut_axle_guided_upVector.o3" "wheel_strut_axle_guided_upVector_normal.i1"
		;
connectAttr "wheel_hinge_end_guide_srt.t" "wheel_hinge_end_guided_position_localTo_foot.i1"
		;
connectAttr "foot_guided_srt.wim" "wheel_hinge_end_guided_position_localTo_foot.m"
		;
connectAttr "wheel_hinge_end_guided_position_localTo_foot.o" "wheel_strut_hinge_guided_upVector.i3[0]"
		;
connectAttr "wheel_hinge_start_guided_position_localTo_foot.o" "wheel_strut_hinge_guided_upVector.i3[1]"
		;
connectAttr "wheel_strut_hinge_guided_upVector.o3" "wheel_strut_hinge_guided_upVector_normal.i1"
		;
connectAttr "wheel_rod_pv_guide_srt.t" "wheel_rod_pv_guided_position_localTo_foot.i1"
		;
connectAttr "foot_guided_srt.wim" "wheel_rod_pv_guided_position_localTo_foot.m";
connectAttr "wheel_rod_pv_guided_position_localTo_foot.o" "wheel_rod_hinge_guided_upVector.i3[0]"
		;
connectAttr "wheel_hinge_end_guided_position_localTo_foot.o" "wheel_rod_hinge_guided_upVector.i3[1]"
		;
connectAttr "wheel_rod_hinge_guided_upVector.o3" "wheel_rod_hinge_guided_upVector_normal.i1"
		;
connectAttr "wheel_rod_axle_guide_srt.t" "wheel_rod_axle_guided_position_localTo_foot.i1"
		;
connectAttr "foot_guided_srt.wim" "wheel_rod_axle_guided_position_localTo_foot.m"
		;
connectAttr "wheel_rod_end_guide_srt.t" "wheel_rod_end_guided_position_localTo_foot.i1"
		;
connectAttr "foot_guided_srt.wim" "wheel_rod_end_guided_position_localTo_foot.m"
		;
connectAttr "wheel_rod_end_guided_position_localTo_foot.o" "wheel_rod_axle_guided_upVector.i3[0]"
		;
connectAttr "wheel_rod_axle_guided_position_localTo_foot.o" "wheel_rod_axle_guided_upVector.i3[1]"
		;
connectAttr "wheel_rod_axle_guided_upVector.o3" "wheel_rod_axle_guided_upVector_normal.i1"
		;
connectAttr "wheel_guide_srt.t" "wheel_guided_position_localTo_foot.i1";
connectAttr "foot_guided_srt.wim" "wheel_guided_position_localTo_foot.m";
connectAttr "wheel_cover_ik_guide_srt.t" "wheel_cover_ik_guided_position_localTo_foot.i1"
		;
connectAttr "foot_guided_srt.wim" "wheel_cover_ik_guided_position_localTo_foot.m"
		;
connectAttr "wheel_cover_ik_guided_position_localTo_foot.o" "wheel_cover_guided_upVector.i3[0]"
		;
connectAttr "wheel_guided_position_localTo_foot.o" "wheel_cover_guided_upVector.i3[1]"
		;
connectAttr "wheel_cover_guided_upVector.o3" "wheel_cover_guided_upVector_normal.i1"
		;
connectAttr "wheel_hinge_end_guided_position_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "wheel_strut_axle_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "wheel_rod_hinge_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "wheel_cover_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "wheel_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "wheel_hinge_end_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "wheel_rod_hinge_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "wheel_base_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "wheel_strut_axle_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "rod_hinge_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "wheel_rod_pv_guided_position_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "strut_axle_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "wheel_rod_end_guided_position_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "wheel_cover_ik_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "foot_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "wheel_rod_pv_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "wheel_cover_ik_guided_position_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "wheel_rod_end_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "wheel_cover_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "wheel_hinge_start_guided_position_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "rod_axle_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "wheel_strut_hinge_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "wheel_rod_axle_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "wheel_hinge_start_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "wheel_guided_position_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "wheelCover_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "wheel_strut_hinge_guided_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "wheel_rod_axle_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "wheel_base_guided_position_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "strut_hinge_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "wheel_rod_axle_guided_position_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "wheel_rod_axle_guided_upVector_normal.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "wheel_hinge_ik_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "rod_ik_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "hinge_ik_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "wheel_hinge_ik_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "foot_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn";
connectAttr "wheel_rod_ik_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "wheel_rod_ik_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "wheel_hinge_ik_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "wheel_hinge_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "wheel_rod_ik_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "wheel_hinge_ik_end_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "hinge_ik_end_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "wheel_hinge_ik_bend_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "foot_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn";
connectAttr "wheel_hinge_ik_end_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "wheel_hinge_ik_currentLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "wheel_hinge_ik_expression.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "wheel_hinge_ik_upperLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "wheel_hinge_ik_lowerLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "wheel_hinge_ik_rotatePlane_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "wheel_hinge_ik_end_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "world_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn";
connectAttr "hinge_ik_base_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "wheel_hinge_ik_start_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "wheel_hinge_ik_bend_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "wheel_hinge_ik_end_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "wheel_hinge_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "hinge_ik_bend_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "wheel_hinge_ik_rotatePlane_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "wheel_hinge_ik_INPUT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "wheel_hinge_ik_bend_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "wheel_composeMatrix1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "wheel_hinge_ik_bend_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "wheel_strut_axle_fk_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "foot_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn";
connectAttr "wheel_base_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "wheel_strut_axle_ik_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "wheel_strut_axle_blend_scale.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "wheel_strut_axle_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "wheel_strut_axle_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "wheel_strut_axle_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "strut_axle_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "wheel_strut_axle_ik_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "wheel_base_fk_srt_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "wheel_strut_axle_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "wheel_strut_axle_fk_matrix_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "strut_axle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[13].dn";
connectAttr "wheel_strut_axle_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "wheel_strut_axle_ik_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[16].dn";
connectAttr "wheel_strut_axle_matrix_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "wheel_strut_axle_blend_translateRotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[18].dn"
		;
connectAttr "wheel_strut_axle_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[19].dn"
		;
connectAttr "wheel_base_fk_matrix_localTo_foot.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[20].dn"
		;
connectAttr "wheel_hinge_ik_bend_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[21].dn"
		;
connectAttr "strut_swivel_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn"
		;
connectAttr "wheel_strut_swivel_ik_matrix_localTo_axle.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "wheel_strut_swivel_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "wheel_strut_swivel_ik_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn"
		;
connectAttr "wheel_hinge_fk_srt_localTo_base.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn"
		;
connectAttr "wheel_strut_swivel_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn"
		;
connectAttr "wheel_strut_swivel_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[6].dn"
		;
connectAttr "wheel_strut_swivel_blend_translateRotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[7].dn"
		;
connectAttr "wheel_strut_axle_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[8].dn"
		;
connectAttr "wheel_strut_swivel_fk_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[9].dn"
		;
connectAttr "wheel_strut_axle_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[10].dn"
		;
connectAttr "wheel_strut_swivel_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "wheel_strut_swivel_fk_matrix_localTo_base.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[12].dn"
		;
connectAttr "wheel_hinge_ik_end_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "wheel_hinge_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[14].dn"
		;
connectAttr "wheel_hinge_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[15].dn"
		;
connectAttr "wheel_hinge_ik_position_localTo_struct_axle.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[16].dn"
		;
connectAttr "wheel_hinge_fk_matrix_localTo_strut_axle.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[17].dn"
		;
connectAttr "wheel_strut_swivel_upVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[18].dn"
		;
connectAttr "settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[19].dn";
connectAttr "wheel_strut_swivel_ik_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[20].dn"
		;
connectAttr "strut_swivel_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[21].dn"
		;
connectAttr "wheel_strut_swivel_ik_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[22].dn"
		;
connectAttr "wheel_strut_swivel_blend_scale.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[23].dn"
		;
connectAttr "wheel_strut_swivel_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[24].dn"
		;
connectAttr "wheel_strut_swivel_aimConistraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[25].dn"
		;
connectAttr "wheel_hinge_ik_matrix_localTo_struct_axle.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[26].dn"
		;
connectAttr "wheel_strut_swivel_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[0].dn"
		;
connectAttr "wheel_strut_hinge_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[1].dn"
		;
connectAttr "wheel_strut_hinge_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[2].dn"
		;
connectAttr "strut_hinge_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[3].dn"
		;
connectAttr "wheel_strut_hinge_blend_scale.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[4].dn"
		;
connectAttr "wheel_hinge_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[5].dn"
		;
connectAttr "strut_hinge_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[6].dn";
connectAttr "wheel_strut_hinge_ik_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[7].dn"
		;
connectAttr "wheel_strut_hinge_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[8].dn"
		;
connectAttr "wheel_hinge_ik_end_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[9].dn"
		;
connectAttr "wheel_strut_hinge_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[10].dn"
		;
connectAttr "wheel_strut_hinge_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[11].dn"
		;
connectAttr "settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[12].dn";
connectAttr "wheel_strut_hinge_matrix_localTo_swivel.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[13].dn"
		;
connectAttr "wheel_strut_hinge_blend_translateRotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[14].dn"
		;
connectAttr "wheel_strut_hinge_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[15].dn"
		;
connectAttr "wheel_rod_pv_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[0].dn"
		;
connectAttr "wheel_rod_ik_rotatePlane_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[1].dn"
		;
connectAttr "wheel_rod_ik_lowerLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[2].dn"
		;
connectAttr "wheel_rod_pv_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[3].dn"
		;
connectAttr "wheel_rod_ik_base_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[4].dn"
		;
connectAttr "rod_ik_end_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[5].dn"
		;
connectAttr "wheel_rod_ik_bend_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[6].dn"
		;
connectAttr "wheel_strut_hinge_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[7].dn"
		;
connectAttr "world_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[8].dn";
connectAttr "wheel_rod_pv_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[9].dn"
		;
connectAttr "wheel_unitConversion13.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[10].dn"
		;
connectAttr "rod_ik_base_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[11].dn"
		;
connectAttr "wheel_rod_ik_end_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[12].dn"
		;
connectAttr "rod_pv_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[13].dn"
		;
connectAttr "wheel_unitConversion14.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[14].dn"
		;
connectAttr "wheel_rod_ik_upperLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[15].dn"
		;
connectAttr "wheel_rod_ik_currentLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[16].dn"
		;
connectAttr "wheel_rod_ik_expression.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[17].dn"
		;
connectAttr "wheel_rod_ik_start_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[18].dn"
		;
connectAttr "wheel_rod_ik_OUTPUT.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[19].dn"
		;
connectAttr "wheel_hinge_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[20].dn"
		;
connectAttr "wheel_rod_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[21].dn"
		;
connectAttr "wheel_rod_ik_bend_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[22].dn"
		;
connectAttr "rod_ik_bend_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[23].dn"
		;
connectAttr "wheel_rod_pv_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[24].dn"
		;
connectAttr "wheel_rod_ik_INPUT.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[25].dn"
		;
connectAttr "wheel_rod_ik_rotatePlane_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[26].dn"
		;
connectAttr "wheel_rod_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[27].dn"
		;
connectAttr "wheel_rod_hinge_blend_translateRotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[0].dn"
		;
connectAttr "wheel_rod_fk_srt_localTo_hinge.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[1].dn"
		;
connectAttr "wheel_rod_hinge_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[2].dn"
		;
connectAttr "wheel_rod_hinge_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[3].dn"
		;
connectAttr "wheel_rod_fk_rotation_localTo_hinge.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[4].dn"
		;
connectAttr "wheel_rod_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[5].dn"
		;
connectAttr "wheel_strut_hinge_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[6].dn"
		;
connectAttr "rod_hinge_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[7].dn"
		;
connectAttr "wheel_rod_hinge_matrix_localTo_strut_hinge.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[8].dn"
		;
connectAttr "rod_hinge_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[9].dn";
connectAttr "wheel_rod_hinge_blend_scale.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[10].dn"
		;
connectAttr "wheel_rod_hinge_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[11].dn"
		;
connectAttr "wheel_rod_hinge_ik_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[12].dn"
		;
connectAttr "wheel_rod_hinge_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[13].dn"
		;
connectAttr "wheel_rod_hinge_aimConstriant.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[14].dn"
		;
connectAttr "wheel_rod_fk_matrix_localTo_hinge.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[15].dn"
		;
connectAttr "wheel_hinge_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[16].dn"
		;
connectAttr "wheel_rod_hinge_fk_matrix_localTo_strut_hinge.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[17].dn"
		;
connectAttr "wheel_rod_hinge_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[18].dn"
		;
connectAttr "wheel_rod_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[19].dn"
		;
connectAttr "settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[20].dn";
connectAttr "wheel_rod_hinge_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[7].ni[21].dn"
		;
connectAttr "rod_axle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[0].dn";
connectAttr "wheel_rod_axle_matrix_localTo_hinge.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[1].dn"
		;
connectAttr "wheel_rod_axle_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[2].dn"
		;
connectAttr "wheel_rod_axle_blend_scale.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[3].dn"
		;
connectAttr "wheel_rod_axle_ik_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[4].dn"
		;
connectAttr "wheel_rod_hinge_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[5].dn"
		;
connectAttr "wheel_rod_axle_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[6].dn"
		;
connectAttr "wheel_rod_axle_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[7].dn"
		;
connectAttr "wheel_rod_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[8].dn"
		;
connectAttr "wheel_rod_axle_aimConstriant.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[9].dn"
		;
connectAttr "wheel_rod_axle_ik_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[10].dn"
		;
connectAttr "wheel_rod_axle_ik_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[11].dn"
		;
connectAttr "rod_axle_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[12].dn"
		;
connectAttr "wheel_rod_axle_blend_translateRotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[13].dn"
		;
connectAttr "wheel_rod_axle_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[14].dn"
		;
connectAttr "wheel_rod_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[15].dn"
		;
connectAttr "settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[8].ni[16].dn";
connectAttr "wheel_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[0].dn";
connectAttr "wheel_rod_swivel_ik_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[1].dn"
		;
connectAttr "wheel_rod_swivel_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[2].dn"
		;
connectAttr "wheel_rod_swivel_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[3].dn"
		;
connectAttr "rod_swivel_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[4].dn";
connectAttr "wheel_rod_swivel_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[5].dn"
		;
connectAttr "wheel_rod_swivel_ik_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[6].dn"
		;
connectAttr "wheel_rod_swivel_blend_translateRotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[7].dn"
		;
connectAttr "wheel_rod_swivel_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[8].dn"
		;
connectAttr "wheel_rod_axle_ik_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[9].dn"
		;
connectAttr "wheel_rod_swivel_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[10].dn"
		;
connectAttr "wheel_rod_swivel_ik_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[11].dn"
		;
connectAttr "rod_swivel_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[12].dn"
		;
connectAttr "wheel_rod_swivel_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[13].dn"
		;
connectAttr "wheel_rod_swivel_blend_scale.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[14].dn"
		;
connectAttr "settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[15].dn";
connectAttr "wheel_rod_swivel_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[16].dn"
		;
connectAttr "wheel_rod_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[17].dn"
		;
connectAttr "wheel_rod_swivel_matrix_localTo_axle.msg" "MayaNodeEditorSavedTabsInfo.tgi[9].ni[18].dn"
		;
connectAttr "wheel_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[0].dn";
connectAttr "wheel_rod_swivel_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[1].dn"
		;
connectAttr "wheel_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[2].dn"
		;
connectAttr "wheelCover_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[3].dn"
		;
connectAttr "wheel_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[4].dn";
connectAttr "wheel_ctrl_parentInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[5].dn"
		;
connectAttr "wheel_cover_ik_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[6].dn"
		;
connectAttr "wheel_cover_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[7].dn"
		;
connectAttr "wheel_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[8].dn";
connectAttr "wheel_parent_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[9].dn"
		;
connectAttr "wheel_ctrl_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[10].dn"
		;
connectAttr "wheel_ctrl_rotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[11].dn"
		;
connectAttr "wheel_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[12].dn"
		;
connectAttr "wheel_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[13].dn"
		;
connectAttr "wheel_ctrl_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[14].dn"
		;
connectAttr "wheel_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[15].dn"
		;
connectAttr "wheel_cover_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[16].dn"
		;
connectAttr "wheel_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[17].dn"
		;
connectAttr "wheel_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[10].ni[18].dn"
		;
connectAttr "wheel_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[0].dn"
		;
connectAttr "wheel_cover_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[1].dn"
		;
connectAttr "wheel_cover_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[2].dn"
		;
connectAttr "wheel_cover_ik_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[3].dn"
		;
connectAttr "wheel_cover_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[4].dn"
		;
connectAttr "wheel_cover_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[5].dn"
		;
connectAttr "wheel_cover_targetTranslate.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[6].dn"
		;
connectAttr "wheel_cover_multMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[7].dn"
		;
connectAttr "wheel_cover_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[8].dn"
		;
connectAttr "wheelCover_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[9].dn"
		;
connectAttr "wheel_parent_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[10].dn"
		;
connectAttr "wheelCover_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[11].dn"
		;
connectAttr "wheel_cover_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[12].dn"
		;
connectAttr "wheel_cover_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[11].ni[13].dn"
		;
connectAttr "wheel_hinge_fk_ctrl_parentMatrix_localTo_base.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[0].dn"
		;
connectAttr "wheel_base_fk_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[1].dn"
		;
connectAttr "wheel_base_fk_ctrl_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[2].dn"
		;
connectAttr "foot_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[3].dn";
connectAttr "base_fk_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[4].dn"
		;
connectAttr "wheel_base_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[5].dn"
		;
connectAttr "wheel_base_fk_ctrl_rotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[6].dn"
		;
connectAttr "wheel_base_fk_ctrl_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[7].dn"
		;
connectAttr "wheel_base_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[8].dn"
		;
connectAttr "wheel_base_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[9].dn"
		;
connectAttr "wheel_base_fk_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[10].dn"
		;
connectAttr "wheel_base_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[11].dn"
		;
connectAttr "wheel_base_fk_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[12].ni[12].dn"
		;
connectAttr "wheel_hinge_fk_ctrl_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[0].dn"
		;
connectAttr "wheel_hinge_fk_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[1].dn"
		;
connectAttr "wheel_hinge_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[2].dn"
		;
connectAttr "wheel_hinge_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[3].dn"
		;
connectAttr "wheel_hinge_fk_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[4].dn"
		;
connectAttr "wheel_hinge_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[5].dn"
		;
connectAttr "hinge_fk_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[6].dn"
		;
connectAttr "wheel_hinge_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[7].dn"
		;
connectAttr "wheel_base_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[8].dn"
		;
connectAttr "wheel_hinge_fk_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[9].dn"
		;
connectAttr "wheel_hinge_fk_ctrl_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[10].dn"
		;
connectAttr "wheel_hinge_fk_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[13].ni[11].dn"
		;
connectAttr "wheel_rod_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[0].dn"
		;
connectAttr "wheel_rod_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[1].dn"
		;
connectAttr "wheel_hinge_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[2].dn"
		;
connectAttr "wheel_rod_fk_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[3].dn"
		;
connectAttr "wheel_rod_fk_ctrl_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[4].dn"
		;
connectAttr "wheel_rod_fk_ctrl_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[5].dn"
		;
connectAttr "wheel_rod_fk_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[6].dn"
		;
connectAttr "rod_fk_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[7].dn"
		;
connectAttr "wheel_rod_fk_ctrl_rotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[8].dn"
		;
connectAttr "wheel_rod_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[9].dn"
		;
connectAttr "wheel_rod_fk_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[10].dn"
		;
connectAttr "wheel_rod_fk_ctrl_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[11].dn"
		;
connectAttr "wheel_rod_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[14].ni[12].dn"
		;
connectAttr "wheel_fk_ctrl_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[0].dn"
		;
connectAttr "wheel_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[1].dn";
connectAttr "wheel_fk_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[2].dn"
		;
connectAttr "wheel_fk_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[3].dn"
		;
connectAttr "wheel_fk_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[4].dn"
		;
connectAttr "wheel_fk_ctrl_rotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[5].dn"
		;
connectAttr "wheel_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[6].dn"
		;
connectAttr "wheel_fk_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[7].dn"
		;
connectAttr "wheel_fk_ctrl_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[8].dn"
		;
connectAttr "wheel_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[9].dn";
connectAttr "wheel_fk_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[10].dn"
		;
connectAttr "wheel_rod_fk_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[11].dn"
		;
connectAttr "wheel_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[15].ni[12].dn"
		;
connectAttr "about.msg" "hyperLayout1.hyp[0].dn";
connectAttr "input.msg" "hyperLayout1.hyp[1].dn";
connectAttr "world_srt.msg" "hyperLayout1.hyp[2].dn";
connectAttr "foot_srt.msg" "hyperLayout1.hyp[3].dn";
connectAttr "strut_axle_srtOffset.msg" "hyperLayout1.hyp[4].dn";
connectAttr "strut_swivel_srtOffset.msg" "hyperLayout1.hyp[5].dn";
connectAttr "strut_hinge_srtOffset.msg" "hyperLayout1.hyp[6].dn";
connectAttr "rod_hinge_srtOffset.msg" "hyperLayout1.hyp[7].dn";
connectAttr "rod_axle_srtOffset.msg" "hyperLayout1.hyp[8].dn";
connectAttr "rod_swivel_srtOffset.msg" "hyperLayout1.hyp[9].dn";
connectAttr "wheel_srtOffset.msg" "hyperLayout1.hyp[10].dn";
connectAttr "wheelCover_ctrl_srtOffset.msg" "hyperLayout1.hyp[11].dn";
connectAttr "wheelCover_srtOffset.msg" "hyperLayout1.hyp[12].dn";
connectAttr "hinge_ik_base_srtOffset.msg" "hyperLayout1.hyp[13].dn";
connectAttr "hinge_ik_bend_srtOffset.msg" "hyperLayout1.hyp[14].dn";
connectAttr "hinge_ik_end_srtOffset.msg" "hyperLayout1.hyp[15].dn";
connectAttr "rod_ik_base_srtOffset.msg" "hyperLayout1.hyp[16].dn";
connectAttr "rod_ik_bend_srtOffset.msg" "hyperLayout1.hyp[17].dn";
connectAttr "rod_ik_end_srtOffset.msg" "hyperLayout1.hyp[18].dn";
connectAttr "base_fk_srtOffset.msg" "hyperLayout1.hyp[19].dn";
connectAttr "hinge_fk_srtOffset.msg" "hyperLayout1.hyp[20].dn";
connectAttr "rod_fk_srtOffset.msg" "hyperLayout1.hyp[21].dn";
connectAttr "wheel_fk_srtOffset.msg" "hyperLayout1.hyp[22].dn";
connectAttr "hinge_ik_ctrl_srtOffset.msg" "hyperLayout1.hyp[23].dn";
connectAttr "rod_ik_ctrl_srtOffset.msg" "hyperLayout1.hyp[24].dn";
connectAttr "rod_pv_ctrl_srtOffset.msg" "hyperLayout1.hyp[25].dn";
connectAttr "settings.msg" "hyperLayout1.hyp[26].dn";
connectAttr "guided.msg" "hyperLayout1.hyp[27].dn";
connectAttr "foot_guided_srt.msg" "hyperLayout1.hyp[28].dn";
connectAttr "strut_axle_guided_srtOffset.msg" "hyperLayout1.hyp[29].dn";
connectAttr "strut_swivel_guided_srtOffset.msg" "hyperLayout1.hyp[30].dn";
connectAttr "strut_hinge_guided_srtOffset.msg" "hyperLayout1.hyp[31].dn";
connectAttr "rod_hinge_guided_srtOffset.msg" "hyperLayout1.hyp[32].dn";
connectAttr "rod_axle_guided_srtOffset.msg" "hyperLayout1.hyp[33].dn";
connectAttr "rod_swivel_guided_srtOffset.msg" "hyperLayout1.hyp[34].dn";
connectAttr "wheel_guided_srtOffset.msg" "hyperLayout1.hyp[35].dn";
connectAttr "wheel_guided_srtOffset_xVectorShape.msg" "hyperLayout1.hyp[36].dn";
connectAttr "wheel_guided_srtOffset_zVectorShape.msg" "hyperLayout1.hyp[37].dn";
connectAttr "wheel_guided_srtOffset_yVectorShape.msg" "hyperLayout1.hyp[38].dn";
connectAttr "wheel_guided_srtOffset2_pointConstraint1.msg" "hyperLayout1.hyp[39].dn"
		;
connectAttr "wheel_guided_srtOffset2_aimConstraint1.msg" "hyperLayout1.hyp[40].dn"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset.msg" "hyperLayout1.hyp[41].dn";
connectAttr "wheelCover_ctrl_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[42].dn"
		;
connectAttr "wheelCover_ctrl_guided_srtOffset_orientConstraint1.msg" "hyperLayout1.hyp[43].dn"
		;
connectAttr "wheelCover_guided_srtOffset.msg" "hyperLayout1.hyp[44].dn";
connectAttr "rod_swivel_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[45].dn"
		;
connectAttr "rod_axle_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[46].dn"
		;
connectAttr "rod_hinge_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[47].dn"
		;
connectAttr "strut_hinge_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[48].dn"
		;
connectAttr "strut_swivel_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[49].dn"
		;
connectAttr "strut_axle_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[50].dn"
		;
connectAttr "hinge_ik_base_guided_srtOffset.msg" "hyperLayout1.hyp[51].dn";
connectAttr "hinge_ik_bend_guided_srtOffset.msg" "hyperLayout1.hyp[52].dn";
connectAttr "hinge_ik_end_guided_srtOffset.msg" "hyperLayout1.hyp[53].dn";
connectAttr "hinge_ik_end_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[54].dn"
		;
connectAttr "rod_ik_base_guided_srtOffset.msg" "hyperLayout1.hyp[55].dn";
connectAttr "rod_ik_bend_guided_srtOffset.msg" "hyperLayout1.hyp[56].dn";
connectAttr "rod_ik_end_guided_srtOffset.msg" "hyperLayout1.hyp[57].dn";
connectAttr "rod_ik_end_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[58].dn"
		;
connectAttr "rod_ik_bend_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[59].dn"
		;
connectAttr "rod_ik_base_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[60].dn"
		;
connectAttr "hinge_ik_bend_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[61].dn"
		;
connectAttr "hinge_ik_base_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[62].dn"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset.msg" "hyperLayout1.hyp[63].dn";
connectAttr "rod_ik_ctrl_guided_srtOffset.msg" "hyperLayout1.hyp[64].dn";
connectAttr "rod_ik_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[65].dn"
		;
connectAttr "rod_ik_ctrl_guided_srtOffset_orientConstraint1.msg" "hyperLayout1.hyp[66].dn"
		;
connectAttr "hinge_ik_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[67].dn"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset.msg" "hyperLayout1.hyp[68].dn";
connectAttr "rod_pv_ctrl_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[69].dn"
		;
connectAttr "rod_pv_ctrl_guided_srtOffset_orientConstraint1.msg" "hyperLayout1.hyp[70].dn"
		;
connectAttr "hinge_ik_ctrl_guided_srtOffset_orientConstraint1.msg" "hyperLayout1.hyp[71].dn"
		;
connectAttr "base_fk_guided_srtOffset.msg" "hyperLayout1.hyp[72].dn";
connectAttr "base_fk_guided_srtOffset_xVectorShape.msg" "hyperLayout1.hyp[73].dn"
		;
connectAttr "base_fk_guided_srtOffset_zVectorShape.msg" "hyperLayout1.hyp[74].dn"
		;
connectAttr "base_fk_guided_srtOffset_yVectorShape.msg" "hyperLayout1.hyp[75].dn"
		;
connectAttr "hinge_fk_guided_srtOffset.msg" "hyperLayout1.hyp[76].dn";
connectAttr "hinge_fk_guided_srtOffset_xVectorShape.msg" "hyperLayout1.hyp[77].dn"
		;
connectAttr "hinge_fk_guided_srtOffset_zVectorShape.msg" "hyperLayout1.hyp[78].dn"
		;
connectAttr "hinge_fk_guided_srtOffset_yVectorShape.msg" "hyperLayout1.hyp[79].dn"
		;
connectAttr "rod_fk_guided_srtOffset.msg" "hyperLayout1.hyp[80].dn";
connectAttr "rod_fk_guided_srtOffset_xVectorShape.msg" "hyperLayout1.hyp[81].dn"
		;
connectAttr "rod_fk_guided_srtOffset_zVectorShape.msg" "hyperLayout1.hyp[82].dn"
		;
connectAttr "rod_fk_guided_srtOffset_yVectorShape.msg" "hyperLayout1.hyp[83].dn"
		;
connectAttr "wheel_fk_guided_srtOffset.msg" "hyperLayout1.hyp[84].dn";
connectAttr "wheel_fk_guided_srtOffset_xVectorShape.msg" "hyperLayout1.hyp[85].dn"
		;
connectAttr "wheel_fk_guided_srtOffset_zVectorShape.msg" "hyperLayout1.hyp[86].dn"
		;
connectAttr "wheel_fk_guided_srtOffset_yVectorShape.msg" "hyperLayout1.hyp[87].dn"
		;
connectAttr "wheel_fk_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[88].dn"
		;
connectAttr "wheel_fk_guided_srtOffset_aimConstraint1.msg" "hyperLayout1.hyp[89].dn"
		;
connectAttr "rod_fk_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[90].dn"
		;
connectAttr "rod_fk_guided_srtOffset_aimConstraint1.msg" "hyperLayout1.hyp[91].dn"
		;
connectAttr "hinge_fk_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[92].dn"
		;
connectAttr "hinge_fk_guided_srtOffset_aimConstraint1.msg" "hyperLayout1.hyp[93].dn"
		;
connectAttr "base_fk_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[94].dn"
		;
connectAttr "base_fk_guided_srtOffset_aimConstraint1.msg" "hyperLayout1.hyp[95].dn"
		;
connectAttr "guides.msg" "hyperLayout1.hyp[96].dn";
connectAttr "wheel_base_guide_srt.msg" "hyperLayout1.hyp[97].dn";
connectAttr "|wheel_cmpt|guides|wheel_base_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[98].dn"
		;
connectAttr "wheel_base_fk_ctrl_aim_guide_srt.msg" "hyperLayout1.hyp[99].dn";
connectAttr "|wheel_cmpt|guides|wheel_base_guide_srt|wheel_base_fk_ctrl_aim_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[100].dn"
		;
connectAttr "wheel_base_fk_ctrl_up_guide_srt.msg" "hyperLayout1.hyp[101].dn";
connectAttr "|wheel_cmpt|guides|wheel_base_guide_srt|wheel_base_fk_ctrl_up_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[102].dn"
		;
connectAttr "wheel_strut_axle_guide_srt.msg" "hyperLayout1.hyp[103].dn";
connectAttr "|wheel_cmpt|guides|wheel_base_guide_srt|wheel_strut_axle_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[104].dn"
		;
connectAttr "wheel_strut_swivel_guide_srt.msg" "hyperLayout1.hyp[105].dn";
connectAttr "|wheel_cmpt|guides|wheel_strut_swivel_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[106].dn"
		;
connectAttr "wheel_hinge_start_guide_srt.msg" "hyperLayout1.hyp[107].dn";
connectAttr "|wheel_cmpt|guides|wheel_hinge_start_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[108].dn"
		;
connectAttr "wheel_hinge_fk_ctrl_aim_guide_srt.msg" "hyperLayout1.hyp[109].dn";
connectAttr "|wheel_cmpt|guides|wheel_hinge_start_guide_srt|wheel_hinge_fk_ctrl_aim_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[110].dn"
		;
connectAttr "wheel_hinge_fk_ctrl_up_guide_srt.msg" "hyperLayout1.hyp[111].dn";
connectAttr "|wheel_cmpt|guides|wheel_hinge_start_guide_srt|wheel_hinge_fk_ctrl_up_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[112].dn"
		;
connectAttr "wheel_strut_hinge_guide_srt.msg" "hyperLayout1.hyp[113].dn";
connectAttr "|wheel_cmpt|guides|wheel_hinge_start_guide_srt|wheel_strut_hinge_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[114].dn"
		;
connectAttr "wheel_hinge_end_guide_srt.msg" "hyperLayout1.hyp[115].dn";
connectAttr "|wheel_cmpt|guides|wheel_hinge_end_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[116].dn"
		;
connectAttr "wheel_rod_fk_ctrl_aim_guide_srt.msg" "hyperLayout1.hyp[117].dn";
connectAttr "|wheel_cmpt|guides|wheel_hinge_end_guide_srt|wheel_rod_fk_ctrl_aim_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[118].dn"
		;
connectAttr "wheel_rod_fk_ctrl_up_guide_srt.msg" "hyperLayout1.hyp[119].dn";
connectAttr "|wheel_cmpt|guides|wheel_hinge_end_guide_srt|wheel_rod_fk_ctrl_up_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[120].dn"
		;
connectAttr "wheel_rod_hinge_guide_srt.msg" "hyperLayout1.hyp[121].dn";
connectAttr "|wheel_cmpt|guides|wheel_hinge_end_guide_srt|wheel_rod_hinge_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[122].dn"
		;
connectAttr "wheel_rod_pv_guide_srt.msg" "hyperLayout1.hyp[123].dn";
connectAttr "|wheel_cmpt|guides|wheel_rod_pv_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[124].dn"
		;
connectAttr "wheel_rod_start_guide_srt.msg" "hyperLayout1.hyp[125].dn";
connectAttr "|wheel_cmpt|guides|wheel_rod_start_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[126].dn"
		;
connectAttr "wheel_fk_aim_guide_srt.msg" "hyperLayout1.hyp[127].dn";
connectAttr "|wheel_cmpt|guides|wheel_rod_start_guide_srt|wheel_fk_aim_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[128].dn"
		;
connectAttr "wheel_fk_up_guide_srt.msg" "hyperLayout1.hyp[129].dn";
connectAttr "|wheel_cmpt|guides|wheel_rod_start_guide_srt|wheel_fk_up_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[130].dn"
		;
connectAttr "wheel_rod_swivel_guide_srt.msg" "hyperLayout1.hyp[131].dn";
connectAttr "|wheel_cmpt|guides|wheel_rod_start_guide_srt|wheel_rod_swivel_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[132].dn"
		;
connectAttr "wheel_rod_end_guide_srt.msg" "hyperLayout1.hyp[133].dn";
connectAttr "|wheel_cmpt|guides|wheel_rod_end_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[134].dn"
		;
connectAttr "wheel_rod_axle_guide_srt.msg" "hyperLayout1.hyp[135].dn";
connectAttr "|wheel_cmpt|guides|wheel_rod_axle_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[136].dn"
		;
connectAttr "wheel_guide_srt.msg" "hyperLayout1.hyp[137].dn";
connectAttr "|wheel_cmpt|guides|wheel_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[138].dn"
		;
connectAttr "wheel_ctrl_aim_guide_srt.msg" "hyperLayout1.hyp[139].dn";
connectAttr "|wheel_cmpt|guides|wheel_guide_srt|wheel_ctrl_aim_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[140].dn"
		;
connectAttr "wheel_ctrl_up_guide_srt.msg" "hyperLayout1.hyp[141].dn";
connectAttr "|wheel_cmpt|guides|wheel_guide_srt|wheel_ctrl_up_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[142].dn"
		;
connectAttr "wheel_cover_ik_guide_srt.msg" "hyperLayout1.hyp[143].dn";
connectAttr "|wheel_cmpt|guides|wheel_cover_ik_guide_srt|wheel_curveShape2.msg" "hyperLayout1.hyp[144].dn"
		;
connectAttr "internal.msg" "hyperLayout1.hyp[145].dn";
connectAttr "wheel_rod_ik_rotatePlane_aimConstraint.msg" "hyperLayout1.hyp[146].dn"
		;
connectAttr "wheel_hinge_ik_rotatePlane_aimConstraint.msg" "hyperLayout1.hyp[147].dn"
		;
connectAttr "wheel_strut_hinge_aimConstraint.msg" "hyperLayout1.hyp[148].dn";
connectAttr "wheel_strut_swivel_aimConistraint.msg" "hyperLayout1.hyp[149].dn";
connectAttr "wheel_strut_axle_aimConstraint.msg" "hyperLayout1.hyp[150].dn";
connectAttr "wheel_rod_hinge_aimConstriant.msg" "hyperLayout1.hyp[151].dn";
connectAttr "wheel_rod_axle_aimConstriant.msg" "hyperLayout1.hyp[152].dn";
connectAttr "wheel_rod_swivel_aimConstraint.msg" "hyperLayout1.hyp[153].dn";
connectAttr "wheel_cover_aimConstraint.msg" "hyperLayout1.hyp[154].dn";
connectAttr "control.msg" "hyperLayout1.hyp[155].dn";
connectAttr "wheel_ctrl_srtOffset.msg" "hyperLayout1.hyp[156].dn";
connectAttr "wheel_ctrl.msg" "hyperLayout1.hyp[157].dn";
connectAttr "wheel_ctrlShape.msg" "hyperLayout1.hyp[158].dn";
connectAttr "wheel_cover_ik_ctrl_srtOffset.msg" "hyperLayout1.hyp[159].dn";
connectAttr "wheel_cover_ik_ctrl.msg" "hyperLayout1.hyp[160].dn";
connectAttr "wheel_cover_ik_ctrlShape.msg" "hyperLayout1.hyp[161].dn";
connectAttr "wheel_ik_controls_hrc.msg" "hyperLayout1.hyp[162].dn";
connectAttr "wheel_hinge_ik_ctrl_srtOffset.msg" "hyperLayout1.hyp[163].dn";
connectAttr "wheel_hinge_ik_ctrl.msg" "hyperLayout1.hyp[164].dn";
connectAttr "wheel_hinge_ik_ctrlShape.msg" "hyperLayout1.hyp[165].dn";
connectAttr "wheel_rod_pv_ctrl_srtOffset.msg" "hyperLayout1.hyp[166].dn";
connectAttr "wheel_rod_pv_ctrl.msg" "hyperLayout1.hyp[167].dn";
connectAttr "wheel_curveShape3.msg" "hyperLayout1.hyp[168].dn";
connectAttr "wheel_rod_ik_ctrl_srtOffset.msg" "hyperLayout1.hyp[169].dn";
connectAttr "wheel_rod_ik_ctrl.msg" "hyperLayout1.hyp[170].dn";
connectAttr "wheel_rod_ik_ctrlShape.msg" "hyperLayout1.hyp[171].dn";
connectAttr "wheel_fk_controls_hrc.msg" "hyperLayout1.hyp[172].dn";
connectAttr "wheel_base_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[173].dn";
connectAttr "wheel_base_fk_ctrl.msg" "hyperLayout1.hyp[174].dn";
connectAttr "wheel_base_fk_ctrlShape.msg" "hyperLayout1.hyp[175].dn";
connectAttr "wheel_hinge_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[176].dn";
connectAttr "wheel_hinge_fk_ctrl.msg" "hyperLayout1.hyp[177].dn";
connectAttr "wheel_hinge_fk_ctrlShape.msg" "hyperLayout1.hyp[178].dn";
connectAttr "wheel_rod_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[179].dn";
connectAttr "wheel_rod_fk_ctrl.msg" "hyperLayout1.hyp[180].dn";
connectAttr "wheel_rod_fk_ctrlShape.msg" "hyperLayout1.hyp[181].dn";
connectAttr "wheel_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[182].dn";
connectAttr "wheel_fk_ctrl.msg" "hyperLayout1.hyp[183].dn";
connectAttr "wheel_fk_ctrlShape.msg" "hyperLayout1.hyp[184].dn";
connectAttr "deform.msg" "hyperLayout1.hyp[185].dn";
connectAttr "strut_axle_srt.msg" "hyperLayout1.hyp[186].dn";
connectAttr "strut_swivel_srt.msg" "hyperLayout1.hyp[187].dn";
connectAttr "strut_hinge_srt.msg" "hyperLayout1.hyp[188].dn";
connectAttr "rod_hinge_srt.msg" "hyperLayout1.hyp[189].dn";
connectAttr "rod_axle_srt.msg" "hyperLayout1.hyp[190].dn";
connectAttr "rod_swivel_srt.msg" "hyperLayout1.hyp[191].dn";
connectAttr "wheel_srt.msg" "hyperLayout1.hyp[192].dn";
connectAttr "wheel_cover_srt.msg" "hyperLayout1.hyp[193].dn";
connectAttr "wheel_rod_pv_guided_position_localTo_foot.msg" "hyperLayout1.hyp[194].dn"
		;
connectAttr "wheel_rod_fk_ctrl_srt_inWorld.msg" "hyperLayout1.hyp[195].dn";
connectAttr "wheel_rod_fk_ctrl_rotation.msg" "hyperLayout1.hyp[196].dn";
connectAttr "wheel_rod_fk_ctrl_srt.msg" "hyperLayout1.hyp[197].dn";
connectAttr "wheel_rod_fk_ctrl_matrix.msg" "hyperLayout1.hyp[198].dn";
connectAttr "wheel_strut_axle_targetTranslate.msg" "hyperLayout1.hyp[199].dn";
connectAttr "wheel_strut_axle_matrix_localTo_foot.msg" "hyperLayout1.hyp[200].dn"
		;
connectAttr "wheel_strut_axle_ik_worldMatrix.msg" "hyperLayout1.hyp[201].dn";
connectAttr "wheel_strut_axle_ik_srt_inWorld.msg" "hyperLayout1.hyp[202].dn";
connectAttr "wheel_strut_axle_ik_pass.msg" "hyperLayout1.hyp[203].dn";
connectAttr "wheel_strut_swivel_targetTranslate.msg" "hyperLayout1.hyp[204].dn";
connectAttr "wheel_strut_swivel_ik_matrix_localTo_axle.msg" "hyperLayout1.hyp[205].dn"
		;
connectAttr "wheel_strut_swivel_ik_worldMatrix.msg" "hyperLayout1.hyp[206].dn";
connectAttr "wheel_strut_swivel_ik_pass.msg" "hyperLayout1.hyp[207].dn";
connectAttr "wheel_strut_hinge_targetTranslate.msg" "hyperLayout1.hyp[208].dn";
connectAttr "wheel_strut_hinge_matrix_localTo_swivel.msg" "hyperLayout1.hyp[209].dn"
		;
connectAttr "wheel_strut_hinge_worldMatrix.msg" "hyperLayout1.hyp[210].dn";
connectAttr "wheel_strut_hinge_ik_srt_inWorld.msg" "hyperLayout1.hyp[211].dn";
connectAttr "wheel_strut_hinge_ik_pass.msg" "hyperLayout1.hyp[212].dn";
connectAttr "wheel_rod_hinge_targetTranslate.msg" "hyperLayout1.hyp[213].dn";
connectAttr "wheel_rod_hinge_matrix_localTo_strut_hinge.msg" "hyperLayout1.hyp[214].dn"
		;
connectAttr "wheel_rod_hinge_worldMatrix.msg" "hyperLayout1.hyp[215].dn";
connectAttr "wheel_rod_hinge_ik_srt_inWorld.msg" "hyperLayout1.hyp[216].dn";
connectAttr "wheel_rod_hinge_ik_pass.msg" "hyperLayout1.hyp[217].dn";
connectAttr "wheel_rod_hinge_worldInverseMatrix.msg" "hyperLayout1.hyp[218].dn";
connectAttr "wheel_rod_axle_targetTranslate.msg" "hyperLayout1.hyp[219].dn";
connectAttr "wheel_rod_axle_matrix_localTo_hinge.msg" "hyperLayout1.hyp[220].dn"
		;
connectAttr "wheel_rod_axle_ik_worldMatrix.msg" "hyperLayout1.hyp[221].dn";
connectAttr "wheel_rod_axle_ik_srt_inWorld.msg" "hyperLayout1.hyp[222].dn";
connectAttr "wheel_rod_axle_ik_pass.msg" "hyperLayout1.hyp[223].dn";
connectAttr "wheel_rod_axle_ik_worldInverseMatrix.msg" "hyperLayout1.hyp[224].dn"
		;
connectAttr "wheel_rod_swivel_targetTranslate.msg" "hyperLayout1.hyp[225].dn";
connectAttr "wheel_rod_swivel_matrix_localTo_axle.msg" "hyperLayout1.hyp[226].dn"
		;
connectAttr "wheel_rod_swivel_ik_worldMatrix.msg" "hyperLayout1.hyp[227].dn";
connectAttr "wheel_rod_swivel_ik_srt_inWorld.msg" "hyperLayout1.hyp[228].dn";
connectAttr "wheel_rod_swivel_ik_pass.msg" "hyperLayout1.hyp[229].dn";
connectAttr "wheel_ctrl_parentMatrix.msg" "hyperLayout1.hyp[230].dn";
connectAttr "wheel_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[231].dn";
connectAttr "wheel_strut_hinge_guided_upVector_normal.msg" "hyperLayout1.hyp[232].dn"
		;
connectAttr "wheel_base_guided_position_localTo_foot.msg" "hyperLayout1.hyp[233].dn"
		;
connectAttr "wheel_strut_axle_guided_upVector_normal.msg" "hyperLayout1.hyp[234].dn"
		;
connectAttr "wheel_hinge_end_guided_position_localTo_foot.msg" "hyperLayout1.hyp[235].dn"
		;
connectAttr "wheel_hinge_start_guided_position_localTo_foot.msg" "hyperLayout1.hyp[236].dn"
		;
connectAttr "wheel_hinge_ik_position_localTo_struct_axle.msg" "hyperLayout1.hyp[237].dn"
		;
connectAttr "wheel_rod_ik_end_worldPosition.msg" "hyperLayout1.hyp[238].dn";
connectAttr "wheel_rod_ik_start_worldPosition.msg" "hyperLayout1.hyp[239].dn";
connectAttr "wheel_hinge_ik_end_worldPosition.msg" "hyperLayout1.hyp[240].dn";
connectAttr "wheel_hinge_ik_start_worldPosition.msg" "hyperLayout1.hyp[241].dn";
connectAttr "wheel_rod_fk_matrix.msg" "hyperLayout1.hyp[242].dn";
connectAttr "wheel_hinge_ik_expression.msg" "hyperLayout1.hyp[243].dn";
connectAttr "wheel_rod_ik_expression.msg" "hyperLayout1.hyp[244].dn";
connectAttr "wheel_rod_fk_ctrl_parentMatrix.msg" "hyperLayout1.hyp[245].dn";
connectAttr "wheel_base_fk_worldMatrix.msg" "hyperLayout1.hyp[246].dn";
connectAttr "wheel_hinge_fk_ctrl_parentMatrix_localTo_base.msg" "hyperLayout1.hyp[247].dn"
		;
connectAttr "wheel_base_fk_ctrl_rotation.msg" "hyperLayout1.hyp[248].dn";
connectAttr "wheel_base_fk_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[249].dn"
		;
connectAttr "wheel_base_fk_ctrl_parentMatrix.msg" "hyperLayout1.hyp[250].dn";
connectAttr "wheel_base_fk_ctrl_srt.msg" "hyperLayout1.hyp[251].dn";
connectAttr "wheel_base_fk_ctrl_matrix.msg" "hyperLayout1.hyp[252].dn";
connectAttr "wheel_hinge_fk_ctrl_parentMatrix.msg" "hyperLayout1.hyp[253].dn";
connectAttr "wheel_hinge_fk_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[254].dn"
		;
connectAttr "wheel_rod_ik_OUTPUT.msg" "hyperLayout1.hyp[255].dn";
connectAttr "wheel_rod_ik_INPUT.msg" "hyperLayout1.hyp[256].dn";
connectAttr "wheel_rod_ik_lowerLength.msg" "hyperLayout1.hyp[257].dn";
connectAttr "wheel_rod_ik_upperLength.msg" "hyperLayout1.hyp[258].dn";
connectAttr "wheel_rod_ik_currentLength.msg" "hyperLayout1.hyp[259].dn";
connectAttr "wheel_hinge_ik_end_pass.msg" "hyperLayout1.hyp[260].dn";
connectAttr "wheel_hinge_ik_bend_pass.msg" "hyperLayout1.hyp[261].dn";
connectAttr "wheel_composeMatrix1.msg" "hyperLayout1.hyp[262].dn";
connectAttr "wheel_hinge_ik_end_worldMatrix.msg" "hyperLayout1.hyp[263].dn";
connectAttr "wheel_hinge_ik_bend_worldMatrix.msg" "hyperLayout1.hyp[264].dn";
connectAttr "wheel_hinge_ik_bend_matrix.msg" "hyperLayout1.hyp[265].dn";
connectAttr "wheel_hinge_ik_INPUT.msg" "hyperLayout1.hyp[266].dn";
connectAttr "wheel_hinge_ik_currentLength.msg" "hyperLayout1.hyp[267].dn";
connectAttr "wheel_hinge_ik_lowerLength.msg" "hyperLayout1.hyp[268].dn";
connectAttr "wheel_hinge_ik_upperLength.msg" "hyperLayout1.hyp[269].dn";
connectAttr "wheel_hinge_ik_rotatePlane_worldMatrix.msg" "hyperLayout1.hyp[270].dn"
		;
connectAttr "wheel_cover_srt_inWorld.msg" "hyperLayout1.hyp[271].dn";
connectAttr "wheel_cover_multMatrix.msg" "hyperLayout1.hyp[272].dn";
connectAttr "wheel_parent_pass.msg" "hyperLayout1.hyp[273].dn";
connectAttr "wheel_cover_matrix.msg" "hyperLayout1.hyp[274].dn";
connectAttr "wheel_cover_targetTranslate.msg" "hyperLayout1.hyp[275].dn";
connectAttr "wheel_cover_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[276].dn";
connectAttr "wheel_cover_ctrl_parentMatrix.msg" "hyperLayout1.hyp[277].dn";
connectAttr "wheel_worldMatrix.msg" "hyperLayout1.hyp[278].dn";
connectAttr "wheel_matrix.msg" "hyperLayout1.hyp[279].dn";
connectAttr "wheel_ctrl_rotation.msg" "hyperLayout1.hyp[280].dn";
connectAttr "wheel_ctrl_srt.msg" "hyperLayout1.hyp[281].dn";
connectAttr "wheel_ctrl_matrix.msg" "hyperLayout1.hyp[282].dn";
connectAttr "wheel_ctrl_parentInverseMatrix.msg" "hyperLayout1.hyp[283].dn";
connectAttr "wheel_srt_inWorld.msg" "hyperLayout1.hyp[284].dn";
connectAttr "wheel_rod_hinge_guided_upVector_normal.msg" "hyperLayout1.hyp[285].dn"
		;
connectAttr "wheel_rod_axle_guided_position_localTo_foot.msg" "hyperLayout1.hyp[286].dn"
		;
connectAttr "wheel_rod_end_guided_position_localTo_foot.msg" "hyperLayout1.hyp[287].dn"
		;
connectAttr "wheel_rod_axle_guided_upVector_normal.msg" "hyperLayout1.hyp[288].dn"
		;
connectAttr "wheel_guided_position_localTo_foot.msg" "hyperLayout1.hyp[289].dn";
connectAttr "wheel_cover_ik_guided_position_localTo_foot.msg" "hyperLayout1.hyp[290].dn"
		;
connectAttr "wheel_cover_guided_upVector_normal.msg" "hyperLayout1.hyp[291].dn";
connectAttr "wheel_rod_fk_worldMatrix.msg" "hyperLayout1.hyp[292].dn";
connectAttr "wheel_fk_ctrl_parentMatrix.msg" "hyperLayout1.hyp[293].dn";
connectAttr "wheel_fk_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[294].dn";
connectAttr "wheel_fk_ctrl_matrix.msg" "hyperLayout1.hyp[295].dn";
connectAttr "wheel_fk_ctrl_srt.msg" "hyperLayout1.hyp[296].dn";
connectAttr "wheel_fk_ctrl_rotation.msg" "hyperLayout1.hyp[297].dn";
connectAttr "wheel_fk_matrix.msg" "hyperLayout1.hyp[298].dn";
connectAttr "wheel_fk_worldMatrix.msg" "hyperLayout1.hyp[299].dn";
connectAttr "wheel_hinge_fk_ctrl_matrix.msg" "hyperLayout1.hyp[300].dn";
connectAttr "wheel_hinge_fk_ctrl_srt.msg" "hyperLayout1.hyp[301].dn";
connectAttr "wheel_hinge_fk_matrix.msg" "hyperLayout1.hyp[302].dn";
connectAttr "wheel_hinge_fk_worldMatrix.msg" "hyperLayout1.hyp[303].dn";
connectAttr "wheel_hinge_fk_pass.msg" "hyperLayout1.hyp[304].dn";
connectAttr "wheel_base_fk_pass.msg" "hyperLayout1.hyp[305].dn";
connectAttr "wheel_rod_fk_pass.msg" "hyperLayout1.hyp[306].dn";
connectAttr "wheel_fk_pass.msg" "hyperLayout1.hyp[307].dn";
connectAttr "wheel_base_fk_matrix_localTo_foot.msg" "hyperLayout1.hyp[308].dn";
connectAttr "wheel_strut_axle_fk_matrix_localTo_foot.msg" "hyperLayout1.hyp[309].dn"
		;
connectAttr "wheel_base_fk_srt_localTo_foot.msg" "hyperLayout1.hyp[310].dn";
connectAttr "wheel_strut_axle_fk_worldMatrix.msg" "hyperLayout1.hyp[311].dn";
connectAttr "wheel_strut_axle_fk_srt_inWorld.msg" "hyperLayout1.hyp[312].dn";
connectAttr "wheel_strut_axle_blend_translateRotate.msg" "hyperLayout1.hyp[313].dn"
		;
connectAttr "wheel_strut_axle_blend_scale.msg" "hyperLayout1.hyp[314].dn";
connectAttr "wheel_hinge_fk_matrix_localTo_strut_axle.msg" "hyperLayout1.hyp[315].dn"
		;
connectAttr "wheel_hinge_fk_srt_localTo_base.msg" "hyperLayout1.hyp[316].dn";
connectAttr "wheel_strut_swivel_fk_matrix_localTo_base.msg" "hyperLayout1.hyp[317].dn"
		;
connectAttr "wheel_strut_swivel_fk_worldMatrix.msg" "hyperLayout1.hyp[318].dn";
connectAttr "wheel_strut_axle_fk_pass.msg" "hyperLayout1.hyp[319].dn";
connectAttr "wheel_strut_swivel_fk_pass.msg" "hyperLayout1.hyp[320].dn";
connectAttr "wheel_strut_swivel_blend_translateRotate.msg" "hyperLayout1.hyp[321].dn"
		;
connectAttr "wheel_strut_swivel_blend_scale.msg" "hyperLayout1.hyp[322].dn";
connectAttr "wheel_strut_swivel_fk_srt_inWorld.msg" "hyperLayout1.hyp[323].dn";
connectAttr "wheel_strut_swivel_ik_srt_inWorld.msg" "hyperLayout1.hyp[324].dn";
connectAttr "wheel_strut_hinge_blend_translateRotate.msg" "hyperLayout1.hyp[325].dn"
		;
connectAttr "wheel_strut_hinge_blend_scale.msg" "hyperLayout1.hyp[326].dn";
connectAttr "wheel_strut_hinge_fk_srt_inWorld.msg" "hyperLayout1.hyp[327].dn";
connectAttr "wheel_rod_fk_matrix_localTo_hinge.msg" "hyperLayout1.hyp[328].dn";
connectAttr "wheel_rod_fk_srt_localTo_hinge.msg" "hyperLayout1.hyp[329].dn";
connectAttr "wheel_rod_fk_rotation_localTo_hinge.msg" "hyperLayout1.hyp[330].dn"
		;
connectAttr "wheel_rod_hinge_fk_matrix_localTo_strut_hinge.msg" "hyperLayout1.hyp[331].dn"
		;
connectAttr "wheel_rod_hinge_fk_worldMatrix.msg" "hyperLayout1.hyp[332].dn";
connectAttr "wheel_rod_hinge_fk_srt_inWorld.msg" "hyperLayout1.hyp[333].dn";
connectAttr "wheel_rod_hinge_blend_translateRotate.msg" "hyperLayout1.hyp[334].dn"
		;
connectAttr "wheel_rod_hinge_blend_scale.msg" "hyperLayout1.hyp[335].dn";
connectAttr "wheel_rod_axle_fk_worldMatrix.msg" "hyperLayout1.hyp[336].dn";
connectAttr "wheel_rod_axle_fk_srt_inWorld.msg" "hyperLayout1.hyp[337].dn";
connectAttr "wheel_rod_axle_blend_translateRotate.msg" "hyperLayout1.hyp[338].dn"
		;
connectAttr "wheel_rod_axle_blend_scale.msg" "hyperLayout1.hyp[339].dn";
connectAttr "wheel_rod_swivel_fk_srt_inWorld.msg" "hyperLayout1.hyp[340].dn";
connectAttr "wheel_rod_swivel_blend_translateRotate.msg" "hyperLayout1.hyp[341].dn"
		;
connectAttr "wheel_rod_swivel_blend_scale.msg" "hyperLayout1.hyp[342].dn";
connectAttr "wheel_rod_swivel_pass.msg" "hyperLayout1.hyp[343].dn";
connectAttr "wheel_rod_swivel_worldMatrix.msg" "hyperLayout1.hyp[344].dn";
connectAttr "wheel_ikfk_controls_visibility.msg" "hyperLayout1.hyp[345].dn";
connectAttr "wheel_hinge_ik_ctrl_parentMatrix.msg" "hyperLayout1.hyp[346].dn";
connectAttr "wheel_hinge_ik_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[347].dn"
		;
connectAttr "wheel_rod_ik_ctrl_parentMatrix.msg" "hyperLayout1.hyp[348].dn";
connectAttr "wheel_rod_ik_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[349].dn"
		;
connectAttr "wheel_rod_pv_ctrl_parentMatrix.msg" "hyperLayout1.hyp[350].dn";
connectAttr "wheel_rod_pv_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[351].dn"
		;
connectAttr "wheel_strut_axle_guided_upVector.msg" "hyperLayout1.hyp[352].dn";
connectAttr "wheel_strut_hinge_guided_upVector.msg" "hyperLayout1.hyp[353].dn";
connectAttr "wheel_rod_hinge_guided_upVector.msg" "hyperLayout1.hyp[354].dn";
connectAttr "wheel_rod_axle_guided_upVector.msg" "hyperLayout1.hyp[355].dn";
connectAttr "wheel_cover_guided_upVector.msg" "hyperLayout1.hyp[356].dn";
connectAttr "wheel_hinge_ik_OUTPUT.msg" "hyperLayout1.hyp[357].dn";
connectAttr "wheel_unitConversion11.msg" "hyperLayout1.hyp[358].dn";
connectAttr "wheel_rod_ik_pass.msg" "hyperLayout1.hyp[359].dn";
connectAttr "wheel_unitConversion14.msg" "hyperLayout1.hyp[360].dn";
connectAttr "wheel_unitConversion13.msg" "hyperLayout1.hyp[361].dn";
connectAttr "wheel_rod_ik_bend_worldMatrix.msg" "hyperLayout1.hyp[362].dn";
connectAttr "wheel_rod_ik_bend_matrix.msg" "hyperLayout1.hyp[363].dn";
connectAttr "wheel_rod_ik_base_matrix.msg" "hyperLayout1.hyp[364].dn";
connectAttr "wheel_rod_ik_rotatePlane_worldMatrix.msg" "hyperLayout1.hyp[365].dn"
		;
connectAttr "wheel_hinge_ik_base_matrix.msg" "hyperLayout1.hyp[366].dn";
connectAttr "wheel_unitConversion12.msg" "hyperLayout1.hyp[367].dn";
connectAttr "wheel_strut_swivel_upVector.msg" "hyperLayout1.hyp[368].dn";
connectAttr "wheel_hinge_ik_matrix_localTo_struct_axle.msg" "hyperLayout1.hyp[369].dn"
		;
connectAttr "wheel_base_fk_worldInverseMatrix.msg" "hyperLayout1.hyp[370].dn";
connectAttr "wheel_fk_worldInverseMatrix.msg" "hyperLayout1.hyp[371].dn";
connectAttr "wheel_hinge_fk_worldInverseMatrix.msg" "hyperLayout1.hyp[372].dn";
connectAttr "wheel_hinge_ik_bend_worldInverseMatrix.msg" "hyperLayout1.hyp[373].dn"
		;
connectAttr "wheel_hinge_ik_end_worldInverseMatrix.msg" "hyperLayout1.hyp[374].dn"
		;
connectAttr "wheel_rod_fk_worldInverseMatrix.msg" "hyperLayout1.hyp[375].dn";
connectAttr "wheel_rod_swivel_ik_worldInverseMatrix.msg" "hyperLayout1.hyp[376].dn"
		;
connectAttr "wheel_rod_swivel_worldInverseMatrix.msg" "hyperLayout1.hyp[377].dn"
		;
connectAttr "wheel_strut_axle_fk_worldInverseMatrix.msg" "hyperLayout1.hyp[378].dn"
		;
connectAttr "wheel_strut_axle_ik_worldInverseMatrix.msg" "hyperLayout1.hyp[379].dn"
		;
connectAttr "wheel_strut_hinge_worldInverseMatrix.msg" "hyperLayout1.hyp[380].dn"
		;
connectAttr "wheel_strut_swivel_fk_worldInverseMatrix.msg" "hyperLayout1.hyp[381].dn"
		;
connectAttr "wheel_strut_swivel_ik_worldInverseMatrix.msg" "hyperLayout1.hyp[382].dn"
		;
connectAttr "wheel_base_fk_parent_pass.msg" "hyperLayout1.hyp[383].dn";
connectAttr "wheel_strut_axle_targetTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_matrix_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_ik_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_ik_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_ik_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_targetTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_ik_matrix_localTo_axle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_ik_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_ik_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_hinge_targetTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_hinge_matrix_localTo_swivel.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_hinge_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_strut_hinge_ik_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_hinge_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_hinge_targetTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_hinge_matrix_localTo_strut_hinge.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_hinge_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_rod_hinge_ik_srt_inWorld.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_hinge_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_axle_targetTranslate.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_axle_matrix_localTo_hinge.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_axle_ik_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_rod_axle_ik_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_rod_axle_ik_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_swivel_targetTranslate.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_swivel_matrix_localTo_axle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_swivel_ik_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_swivel_ik_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_swivel_ik_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_ctrl_parentInverseMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_ctrl_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_ctrl_srt.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_ctrl_rotation.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_cover_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_cover_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_cover_targetTranslate.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_cover_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_cover_multMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_cover_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_ik_start_worldPosition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_ik_rotatePlane_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_ik_upperLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_ik_lowerLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_ik_end_worldPosition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_ik_currentLength.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_hinge_ik_base_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_ik_bend_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_ik_bend_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_ik_end_worldMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_composeMatrix1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_ik_bend_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_ik_end_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_ik_start_worldPosition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_ik_end_worldPosition.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_ik_currentLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_ik_upperLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_ik_lowerLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_ik_rotatePlane_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_ik_base_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_ik_bend_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_ik_bend_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_hinge_ik_matrix_localTo_struct_axle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_ik_position_localTo_struct_axle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_upVector.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_base_fk_ctrl_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_base_fk_ctrl_srt.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_base_fk_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_base_fk_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_base_fk_ctrl_rotation.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_hinge_fk_ctrl_parentMatrix_localTo_base.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_base_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_fk_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_fk_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_base_fk_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_fk_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_fk_ctrl_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_rod_fk_ctrl_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_fk_ctrl_srt.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_fk_ctrl_rotation.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_fk_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_fk_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_fk_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_fk_ctrl_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_fk_ctrl_srt.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_fk_ctrl_rotation.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_fk_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_fk_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_fk_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_hinge_fk_ctrl_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_fk_ctrl_srt.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_fk_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_hinge_fk_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_base_fk_matrix_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_fk_matrix_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_base_fk_srt_localTo_foot.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_strut_axle_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_blend_scale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_hinge_fk_matrix_localTo_strut_axle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_fk_srt_localTo_base.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_fk_matrix_localTo_base.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_fk_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_fk_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_blend_scale.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_strut_swivel_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_swivel_ik_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_hinge_blend_scale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_strut_hinge_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_fk_matrix_localTo_hinge.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_fk_srt_localTo_hinge.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_fk_rotation_localTo_hinge.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_hinge_fk_matrix_localTo_strut_hinge.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_hinge_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_hinge_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_hinge_blend_scale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_rod_axle_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_rod_axle_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_rod_axle_blend_scale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "wheel_rod_swivel_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_swivel_blend_scale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_rod_swivel_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_rod_swivel_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_ik_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_ik_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_ik_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_ik_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_pv_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_pv_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_start_guided_position_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_base_guided_position_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_guided_upVector.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_axle_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_hinge_end_guided_position_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_hinge_guided_upVector.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_strut_hinge_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_pv_guided_position_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_hinge_guided_upVector.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_hinge_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_axle_guided_position_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_end_guided_position_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_rod_axle_guided_upVector.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "wheel_rod_axle_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_guided_position_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_cover_ik_guided_position_localTo_foot.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "wheel_cover_guided_upVector.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "wheel_cover_guided_upVector_normal.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of wheel.ma
