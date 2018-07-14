//Maya ASCII 2016 scene
//Name: shoulder.ma
//Last modified: Mon, Jul 09, 2018 07:59:44 PM
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
	setAttr ".t" -type "double3" 4.5537362412798785 14.78715610914797 16.217361345143598 ;
	setAttr ".r" -type "double3" -9.3383503635975895 -7913.3999999880698 1.0005542454957108e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "01094DA5-418A-91BA-AAEA-C29A88918CEB";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 25.545956075368974;
	setAttr ".ncp" 0.01;
	setAttr ".fcp" 1000;
	setAttr ".coi" 9.6966406829173941;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.41 13.272556304931641 6.75 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A3757C1B-4368-E3FC-40DD-0FAE0CD33AD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.1263234019279462 103.3806819144145 7.734394980439526 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75858DB8-4465-9D67-6547-66AC47F890F7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 4.9796885318041868;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "1923CF4C-4811-C14F-5F11-E4A2E22BA347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.448829102682931 13.322685715902781 105.41850393523183 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AC477CAD-4120-C2E3-CE80-7D900BFF1E75";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 9.8575215312069382;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8723419B-4AC5-F875-88E3-48B503E7BEA8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 108.86808693312123 6.7660609146490094 7.1993239239404252 ;
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".rp" -type "double3" 0 0 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" -1.421085471520201e-014 0 1.4210854715202019e-014 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "950758FD-468D-2068-74AC-BCAF91A18C89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000008;
	setAttr ".ow" 9.3709814707387178;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode dagContainer -n "shoulder_X_cmpt";
	rename -uid "1C88AB18-49E0-F08C-44C0-6F95AEF823AF";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "rporter";
	setAttr ".cdat" -type "string" "2018/07/04 12:58:44";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 2.9550000000000005 13.688261120361332 6.75 ;
	setAttr ".sp" -type "double3" 2.9550000000000005 13.688261120361332 6.75 ;
	setAttr ".aal" -type "attributeAlias" {"shoulder_X_fk_ctrl","publishedNodeInfo[0]"
		} ;
createNode transform -n "about" -p "shoulder_X_cmpt";
	rename -uid "CE6BE7C6-4E7E-2076-4C69-DCA184E353BF";
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
	setAttr ".component_part" -type "string" "shoulder";
	setAttr ".component_type" -type "string" "mechaCatShoulder";
	setAttr ".component_version" -type "string" "1.0.0";
createNode transform -n "input" -p "shoulder_X_cmpt";
	rename -uid "A70DCD5B-4F17-C06C-24FE-9183164958F5";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "parent_srt" -p "input";
	rename -uid "2988D8C8-4C28-90FA-7AB0-DA958E0CC282";
	setAttr ".t" -type "double3" 0 13.187989234924316 5.8977727890014648 ;
createNode transform -n "shoulder_fk_ctrl_srtOffset" -p "parent_srt";
	rename -uid "3862FC62-4525-1D1E-1F79-D6AD0604693F";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "shoulder_end_srtOffset" -p "shoulder_fk_ctrl_srtOffset";
	rename -uid "56E68BFC-4D34-F82B-E659-B0856E430011";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "ik_aim_srtOffset" -p "shoulder_end_srtOffset";
	rename -uid "8E04C6CF-44C2-FDC7-163C-0F9B056970ED";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "ik_start_srtOffset" -p "shoulder_fk_ctrl_srtOffset";
	rename -uid "EC884AEB-4022-EE27-8FA1-5C8472CD2983";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "ik_end_srtOffset" -p "shoulder_fk_ctrl_srtOffset";
	rename -uid "A69036A5-466B-6403-2FA9-CAB3CC97FC2C";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "guided" -p "shoulder_X_cmpt";
	rename -uid "D4FE3F04-4708-BA95-ED46-22AC7C828614";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "parent_guided_srt" -p "guided";
	rename -uid "111BC157-4FFF-2412-76F2-D9AE05C1C33E";
createNode transform -n "shoulder_fk_ctrl_guided_srt" -p "parent_guided_srt";
	rename -uid "3CF97689-4B3D-4820-8EDD-50AB9BEB33B6";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "shoulder_fk_ctrl_guided_srt_xVectorShape" -p "shoulder_fk_ctrl_guided_srt";
	rename -uid "440440C2-40B1-F061-E303-E18827EEC0C2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0.5 0 0
		0.30000000000000004 0 -0.20000000000000001
		0.30000000000000004 0 -0.10000000000000001
		0 0 0
		0 0 0
		0.30000000000000004 0 0.10000000000000001
		0.30000000000000004 0 0.20000000000000001
		0.5 0 0
		;
createNode nurbsCurve -n "shoulder_fk_ctrl_guided_srt_zVectorShape" -p "shoulder_fk_ctrl_guided_srt";
	rename -uid "8AAF4B8A-4FFC-D95A-BEC8-DEAD16C3CDF8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		1.1102230246251565e-016 0 0.5
		0.20000000000000009 0 0.29999999999999999
		0.10000000000000007 0 0.30000000000000004
		0 0 0
		0 0 0
		-0.099999999999999936 0 0.30000000000000004
		-0.19999999999999996 0 0.30000000000000004
		1.1102230246251565e-016 0 0.5
		;
createNode nurbsCurve -n "shoulder_fk_ctrl_guided_srt_yVectorShape" -p "shoulder_fk_ctrl_guided_srt";
	rename -uid "2E0B6F83-448F-BB2A-1F20-348EDDB06AA5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		1.1102230246251565e-016 0.5 0
		-0.19999999999999996 0.30000000000000004 -4.4408920985006264e-017
		-0.099999999999999936 0.30000000000000004 -2.2204460492503132e-017
		0 0 0
		0 0 0
		0.10000000000000007 0.30000000000000004 2.2204460492503132e-017
		0.20000000000000009 0.29999999999999999 4.4408920985006264e-017
		1.1102230246251565e-016 0.5 0
		;
createNode aimConstraint -n "shoulder_fk_ctrl_srt_aimConstraint" -p "shoulder_fk_ctrl_guided_srt";
	rename -uid "C8A190D1-456D-8EDC-F010-E6A5F58BB55E";
	setAttr ".t" -type "double3" 3.3378600994282692e-008 0 0 ;
	setAttr ".wut" 1;
createNode transform -n "shoulder_fk_ctrl_guided_srtOffset" -p "parent_guided_srt";
	rename -uid "318C76CB-4DFE-13DD-C08B-B993F6426047";
createNode transform -n "shoulder_end_guided_srtOffset" -p "shoulder_fk_ctrl_guided_srtOffset";
	rename -uid "CF318915-4D0E-C439-B565-31BAE8A8E945";
createNode transform -n "ik_aim_guided_srtOffset" -p "shoulder_end_guided_srtOffset";
	rename -uid "D0FCD119-4CCF-2A3A-B34E-FF82307B4B46";
createNode transform -n "ik_start_guided_srtOffset" -p "shoulder_fk_ctrl_guided_srtOffset";
	rename -uid "56373F3F-402B-353F-F031-B4B623BFBF2C";
createNode transform -n "ik_end_guided_srtOffset" -p "shoulder_fk_ctrl_guided_srtOffset";
	rename -uid "38595C27-4284-61A5-8515-4CA0D8C0603C";
createNode transform -n "guides" -p "shoulder_X_cmpt";
	rename -uid "3178F563-4176-47B3-3A7C-A2B917F4E7C2";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "shoulder_X_fk_crtl_guide_srt" -p "guides";
	rename -uid "C5F38579-4203-81D6-1B9B-028DE38EE8D1";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.41 13.272556304931641 6.75 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "shoulder_X_curveShape2" -p "shoulder_X_fk_crtl_guide_srt";
	rename -uid "1AC17D5B-47EF-F064-17DF-3081F2B72B65";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1 0 0
		0 0 1
		-1 0 0
		0 0 -1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		0 0 1
		0 -1 0
		0 0 -1
		0 1 0
		0 0 1
		;
createNode transform -n "shoulder_X_fk_crtl_aim_srt" -p "shoulder_X_fk_crtl_guide_srt";
	rename -uid "973EE384-4685-9C3E-3E65-4DB4F70B9539";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "shoulder_X_curveShape2" -p "shoulder_X_fk_crtl_aim_srt";
	rename -uid "AED412B6-4B2B-7E2A-F2A8-D4B3980D231A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25000000000000017 0 0
		1.6653345369377348e-016 0 0.25
		-0.24999999999999983 0 0
		1.6653345369377348e-016 0 -0.25
		0.25000000000000017 0 0
		1.6653345369377348e-016 0.25 0
		-0.24999999999999983 0 0
		1.6653345369377348e-016 -0.25 0
		0.25000000000000017 0 0
		1.6653345369377348e-016 0 0.25
		1.6653345369377348e-016 -0.25 0
		1.6653345369377348e-016 0 -0.25
		1.6653345369377348e-016 0.25 0
		1.6653345369377348e-016 0 0.25
		;
createNode transform -n "shoulder_X_fk_crtl_up_srt" -p "shoulder_X_fk_crtl_guide_srt";
	rename -uid "0E77EBF5-4554-D00C-5A5B-378F3092A6BE";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 2 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "orientation";
createNode nurbsCurve -n "shoulder_X_curveShape2" -p "shoulder_X_fk_crtl_up_srt";
	rename -uid "5577D361-4D9B-6AD2-7E48-10A31461E950";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 25;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25000000000000017 0 0
		1.6653345369377348e-016 0 0.25
		-0.24999999999999983 0 0
		1.6653345369377348e-016 0 -0.25
		0.25000000000000017 0 0
		1.6653345369377348e-016 0.25 0
		-0.24999999999999983 0 0
		1.6653345369377348e-016 -0.25 0
		0.25000000000000017 0 0
		1.6653345369377348e-016 0 0.25
		1.6653345369377348e-016 -0.25 0
		1.6653345369377348e-016 0 -0.25
		1.6653345369377348e-016 0.25 0
		1.6653345369377348e-016 0 0.25
		;
createNode transform -n "shoulder_X_end_guide_srt" -p "guides";
	rename -uid "012399FC-45E6-FA6B-C18F-9EAE233EA2A6";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.5 14.63 6.75 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "shoulder_X_curveShape2" -p "shoulder_X_end_guide_srt";
	rename -uid "213A6603-47D4-E153-3A65-6583E9C42B29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		1.0000000000000007 0 0
		6.6613381477509392e-016 0 1
		-0.99999999999999933 0 0
		6.6613381477509392e-016 0 -1
		1.0000000000000007 0 0
		6.6613381477509392e-016 1 0
		-0.99999999999999933 0 0
		6.6613381477509392e-016 -1 0
		1.0000000000000007 0 0
		6.6613381477509392e-016 0 1
		6.6613381477509392e-016 -1 0
		6.6613381477509392e-016 0 -1
		6.6613381477509392e-016 1 0
		6.6613381477509392e-016 0 1
		;
createNode transform -n "shoulder_X_ik_start_guide_srt" -p "guides";
	rename -uid "FA92ADE8-4D85-1FD6-F8CD-818F0E063540";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.215 14.579059600830078 6.7499999999999991 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "shoulder_X_curveShape2" -p "shoulder_X_ik_start_guide_srt";
	rename -uid "79127CC1-4CE9-D5BA-E716-648627452943";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25000000000000017 0 0
		1.6653345369377348e-016 0 0.25
		-0.24999999999999983 0 0
		1.6653345369377348e-016 0 -0.25
		0.25000000000000017 0 0
		1.6653345369377348e-016 0.25 0
		-0.24999999999999983 0 0
		1.6653345369377348e-016 -0.25 0
		0.25000000000000017 0 0
		1.6653345369377348e-016 0 0.25
		1.6653345369377348e-016 -0.25 0
		1.6653345369377348e-016 0 -0.25
		1.6653345369377348e-016 0.25 0
		1.6653345369377348e-016 0 0.25
		;
createNode transform -n "shoulder_X_ik_end_guide_srt" -p "guides";
	rename -uid "38B4F728-4C3B-D4B9-6709-2B9B49F0D34A";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.747 14.579059600830078 6.7499999999999991 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "shoulder_X_curveShape2" -p "shoulder_X_ik_end_guide_srt";
	rename -uid "706E76F9-4680-D74D-CF9A-259E2B0A2243";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25000000000000017 0 0
		1.6653345369377348e-016 0 0.25
		-0.24999999999999983 0 0
		1.6653345369377348e-016 0 -0.25
		0.25000000000000017 0 0
		1.6653345369377348e-016 0.25 0
		-0.24999999999999983 0 0
		1.6653345369377348e-016 -0.25 0
		0.25000000000000017 0 0
		1.6653345369377348e-016 0 0.25
		1.6653345369377348e-016 -0.25 0
		1.6653345369377348e-016 0 -0.25
		1.6653345369377348e-016 0.25 0
		1.6653345369377348e-016 0 0.25
		;
createNode transform -n "control" -p "shoulder_X_cmpt";
	rename -uid "9F1A5290-4A05-FEA8-CA31-E7AA5EA9F38A";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "shoulder_X_fk_ctrl_srtOffset" -p "control";
	rename -uid "E243E1EC-428B-2619-7B39-BA946CCF5232";
createNode transform -n "shoulder_X_fk_ctrl" -p "shoulder_X_fk_ctrl_srtOffset";
	rename -uid "EF46DC02-4C50-2E7A-4152-7AA0E0BEF185";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "shoulder_X_fk_ctrlShape" -p "shoulder_X_fk_ctrl";
	rename -uid "C7C4F55E-4579-ECFA-F262-3D994334AAC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 2 no 3
		19 0 0.055555555555555552 0.1111111111111111 0.16666666666666666 0.22222222222222221
		 0.27777777777777779 0.33333333333333331 0.3888888888888889 0.44444444444444442 0.5
		 0.55555555555555558 0.61111111111111116 0.66666666666666663 0.72222222222222221 0.77777777777777779
		 0.83333333333333337 0.88888888888888884 0.94444444444444442 1
		19
		-2.2204460492503131e-015 0.94793187158204173 -0.39186120792643325
		-2.2204460492503131e-015 1.5260340642089787 0.00078502948856027483
		-2.2204460492503131e-015 0.94793187158204173 0.3934312669035549
		1.3322676295501878e-015 0.72551564453056061 0.72630067401912202
		2.2204460492503131e-015 0.39264623741499438 0.94871690107060602
		-4.4408920985006262e-016 0 1.0252490347204177
		-1.3322676295501878e-015 -0.39264623741499527 0.94871690107060569
		4.4408920985006262e-016 -0.72551564453056205 0.72630067401912202
		1.3322676295501878e-015 -0.94793187158204351 0.39343126690355473
		1.3322676295501878e-015 -1.5260340642089765 0.0007850294885604405
		1.3322676295501878e-015 -0.94793187158204351 -0.39186120792643403
		4.4408920985006262e-016 -0.72551564453056205 -0.72473061504200087
		-1.3322676295501878e-015 -0.39264623741499527 -0.94714684209348532
		-2.2204460492503131e-015 0 -1.0252490347204166
		2.2204460492503131e-015 0.39264623741499438 -0.94714684209348499
		1.3322676295501878e-015 0.72551564453056061 -0.72473061504200065
		-2.2204460492503131e-015 0.94793187158204173 -0.39186120792643325
		-2.2204460492503131e-015 1.5260340642089787 0.00078502948856027483
		-2.2204460492503131e-015 0.94793187158204173 -0.39186120792643325
		;
createNode transform -n "output" -p "shoulder_X_cmpt";
	rename -uid "51EF4C8B-439F-1955-ED0F-6EB721F1A040";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "shoulder_srt" -p "output";
	rename -uid "805FD296-4CBE-0C83-61FB-C6A0E96CE4BE";
	setAttr ".dla" yes;
createNode transform -n "shoulderEnd_srt" -p "output";
	rename -uid "42654792-4A97-5FD0-ABF4-79BE7C07DD55";
	setAttr ".dla" yes;
createNode transform -n "deform" -p "shoulder_X_cmpt";
	rename -uid "03BF6023-4703-5C36-260B-5B954E5252CD";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "shoulderAxle_srt" -p "deform";
	rename -uid "987AA029-495D-3CB7-4DA1-CFAE4F625905";
	setAttr ".dla" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F8146CCC-469B-E542-D4A3-6C8119AD0BE1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "A514FF6E-44C2-E3BD-0097-F3AC37F752C2";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "922BB33E-4724-CD36-A43D-95B0AB693DE9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0BF97BC3-454B-9C6C-479D-CEBB3C3EFD2F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F625866E-432D-03ED-624F-BB9757A3F342";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "26333FC5-402F-3177-AB47-F48A8120D29F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
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
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 0\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 0\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1173\n                -height 841\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 0\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1173\n            -height 841\n"
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
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
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
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 25 100 -ps 2 75 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 0\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1173\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 0\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1173\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DA70BDE1-4704-CF62-6238-A69A79427D54";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode multMatrix -n "shoulder_X_fk_ctrl_parentMatrix";
	rename -uid "39D5E3C8-42BB-65FA-FB63-C595B46BE6E4";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder_X_fk_ctrl_srtOffset_worldSRT";
	rename -uid "CCBF09D0-46B4-B688-5E9D-D0ABA5BB04A5";
	setAttr ".ot" -type "double3" 1.4099999666213989 13.272556304931641 6.75 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "shoulder_X_fk_ctrl_matrix";
	rename -uid "F601207C-4FCC-5B7B-22D9-20B39124631F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder_X_fk_ctrl_srt";
	rename -uid "CA6B1A3F-44E8-3DF9-2535-50AA3B0CA0BF";
	setAttr ".ot" -type "double3" 0 0 8.8817841970012523e-016 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "shoulder_X_shoulderAxle_matrix";
	rename -uid "BD042AF9-4736-16C9-7A1F-5684CE1D1AB5";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 8.8817841970012523e-016 1;
createNode multMatrix -n "shoulder_X_shoulderAxle_worldMatrix";
	rename -uid "878197DA-461A-1B94-919D-7CA5B3B78A59";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "shoulder_X_shoulderAxle_srt_inWorld";
	rename -uid "0B99B09D-4327-67BF-1CB6-11A633FC340F";
	setAttr ".ot" -type "double3" 1.4099999666213989 13.272556304931641 6.7500000000000009 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode inverseMatrix -n "shoulder_X_fk_ctrl_parentInverseMatrix";
	rename -uid "E5001B00-42D0-EF67-94D3-608867C69BCA";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.4099999666213989 -13.272556304931641 -6.7499999999999991 1;
createNode quatToEuler -n "shoulder_X_fk_ctrl_rotation";
	rename -uid "6603232A-4616-E231-0FA5-F7816775A8A5";
	setAttr ".iro" 1;
createNode decomposeMatrix -n "shoulder_X_shoulderEnd_srt_inWorld";
	rename -uid "3AEBA6C5-4455-D19A-1100-8FAF921AA306";
	setAttr ".ot" -type "double3" 4.4976710081100464 14.629871606826782 5.8977727890014657 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "shoulder_X_shoulderEnd_aim_matrix";
	rename -uid "5FFEA01A-47A2-C502-454D-40BF83FF08DB";
	setAttr -s 3 ".i";
createNode vectorProduct -n "shoulder_X_aim_position";
	rename -uid "3EC03F93-4125-AD89-CDC8-67BBEE654E3F";
	setAttr ".op" 4;
createNode distanceBetween -n "shoulder_X_startEndVector_maxLength";
	rename -uid "3E5E6A98-476A-FECC-3135-7F86A521C7C6";
createNode plusMinusAverage -n "shoulder_X_startEndVector_live";
	rename -uid "568F2BF6-4A69-CEEB-3831-91B8E49DC4FD";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "shoulder_X_startEndVector_unit";
	rename -uid "41FE40D2-4103-4F4E-2887-2CA6622FF254";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multiplyDivide -n "shoulder_X_startEndVector_scaled";
	rename -uid "DFDFFB6E-4276-F9C7-16A9-29992241A4AB";
createNode plusMinusAverage -n "shoulder_X_shoulderEnd_position";
	rename -uid "51F4C243-4F7F-593E-D3D5-8A8D343E6ECA";
	setAttr -s 3 ".i3";
	setAttr -s 3 ".i3";
createNode composeMatrix -n "shoulder_X_shoulderEnd_matrix";
	rename -uid "58157A7C-4CC3-CEFE-B4AD-3180C5C23AC9";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.0876710414886475 1.3573153018951416 -0.85222721099853516 1;
createNode multMatrix -n "shoulder_X_shoulderEnd_worldMatrix";
	rename -uid "8E94398D-42E2-E508-3E68-549B8F917CAF";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "shoulder_X_shoulderAxle_worldInverseMatrix";
	rename -uid "6229D6B7-4453-E18C-D51F-DEBE8774EE35";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.4099999666213989 -13.272556304931641 -6.7500000000000009 1;
createNode multMatrix -n "shoulder_X_fk_ctrl_end_worldMatrix";
	rename -uid "5372FA98-4096-953D-FB9C-62BB61E54206";
	setAttr -s 3 ".i";
createNode multiplyDivide -n "shoulder_X_shoulderEnd_position_offset";
	rename -uid "CB722EB0-4783-1171-98DE-4B8F0B732954";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode composeMatrix -n "shoulder_X_ctrl_matrix";
	rename -uid "438A2455-4796-0FB4-D07E-4699DF79B468";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 8.8817841970012523e-016 1;
createNode vectorProduct -n "shoulder_X_ik_start_guided_position";
	rename -uid "6B582C90-49BA-DC5E-19A8-89A0D5A08265";
	setAttr ".op" 4;
createNode vectorProduct -n "shoulder_X_ctrl_end_guided_position";
	rename -uid "1BF6D6AC-4670-AB9C-6F35-0EB212D811F8";
	setAttr ".op" 4;
createNode vectorProduct -n "shoulder_X_ik_end_guided_position1";
	rename -uid "8BA3F4E1-4CB9-3039-87CC-DCB21C2C1B82";
	setAttr ".op" 4;
createNode vectorProduct -n "shoulder_X_ctrl_guided_position";
	rename -uid "B56B3366-4BAD-60DB-5737-9FBF5B739881";
	setAttr ".op" 4;
createNode vectorProduct -n "shoulder_X_ik_end_guided_position";
	rename -uid "39C7AF46-46AE-2F88-0170-6EAE197F2BEF";
	setAttr ".op" 4;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "AD758F2D-416D-80F5-B6AB-B580640EE9C3";
	setAttr -s 2 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "shoulder";
	setAttr ".tgi[0].vl" -type "double2" -3040.2059117307886 -1266.0219005798624 ;
	setAttr ".tgi[0].vh" -type "double2" 2825.7484170325633 2193.5746050374255 ;
	setAttr -s 34 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -657.14288330078125;
	setAttr ".tgi[0].ni[0].y" 337.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 542.85711669921875;
	setAttr ".tgi[0].ni[1].y" 551.4285888671875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -100;
	setAttr ".tgi[0].ni[2].y" 808.5714111328125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 2000;
	setAttr ".tgi[0].ni[3].y" 337.14285278320312;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -1300;
	setAttr ".tgi[0].ni[4].y" 508.57144165039062;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -2925.71435546875;
	setAttr ".tgi[0].ni[5].y" 331.42855834960937;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1100;
	setAttr ".tgi[0].ni[6].y" 465.71429443359375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -1040;
	setAttr ".tgi[0].ni[7].y" 595.71429443359375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 2514.28564453125;
	setAttr ".tgi[0].ni[8].y" 337.14285278320312;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -100;
	setAttr ".tgi[0].ni[9].y" 165.71427917480469;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -2540;
	setAttr ".tgi[0].ni[10].y" 331.42855834960937;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -357.14285278320312;
	setAttr ".tgi[0].ni[11].y" 465.71429443359375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -2242.857177734375;
	setAttr ".tgi[0].ni[12].y" 208.57142639160156;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -357.14285278320312;
	setAttr ".tgi[0].ni[13].y" 551.4285888671875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 2257.142822265625;
	setAttr ".tgi[0].ni[14].y" 337.14285278320312;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -1900;
	setAttr ".tgi[0].ni[15].y" 508.57144165039062;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 157.14285278320312;
	setAttr ".tgi[0].ni[16].y" 551.4285888671875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1100;
	setAttr ".tgi[0].ni[17].y" 551.4285888671875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -1042.857177734375;
	setAttr ".tgi[0].ni[18].y" 422.85714721679687;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -1900;
	setAttr ".tgi[0].ni[19].y" 208.57142639160156;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" -100;
	setAttr ".tgi[0].ni[20].y" 251.42857360839844;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1700;
	setAttr ".tgi[0].ni[21].y" 808.5714111328125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 414.28570556640625;
	setAttr ".tgi[0].ni[22].y" 680;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -654.28570556640625;
	setAttr ".tgi[0].ni[23].y" 638.5714111328125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1442.857177734375;
	setAttr ".tgi[0].ni[24].y" 808.5714111328125;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -357.14285278320312;
	setAttr ".tgi[0].ni[25].y" 251.42857360839844;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -1682.857177734375;
	setAttr ".tgi[0].ni[26].y" 767.14288330078125;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -2242.857177734375;
	setAttr ".tgi[0].ni[27].y" 508.57144165039062;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -100;
	setAttr ".tgi[0].ni[28].y" 637.14288330078125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 800;
	setAttr ".tgi[0].ni[29].y" 551.4285888671875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -2928.571533203125;
	setAttr ".tgi[0].ni[30].y" 251.42857360839844;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 800;
	setAttr ".tgi[0].ni[31].y" 722.85711669921875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -2242.857177734375;
	setAttr ".tgi[0].ni[32].y" 637.14288330078125;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -1640;
	setAttr ".tgi[0].ni[33].y" 510;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "guides";
	setAttr ".tgi[1].vl" -type "double2" -1126.0517223583684 -1251.576231450415 ;
	setAttr ".tgi[1].vh" -type "double2" 2343.3028124753923 794.56428597647891 ;
	setAttr -s 20 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 785.71429443359375;
	setAttr ".tgi[1].ni[0].y" -75.714286804199219;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1041.4285888671875;
	setAttr ".tgi[1].ni[1].y" -160;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" -371.42855834960937;
	setAttr ".tgi[1].ni[2].y" -504.28570556640625;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" -72.857139587402344;
	setAttr ".tgi[1].ni[3].y" -374.28570556640625;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 1042.857177734375;
	setAttr ".tgi[1].ni[4].y" 10;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" -500;
	setAttr ".tgi[1].ni[5].y" 95.714286804199219;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 1042.857177734375;
	setAttr ".tgi[1].ni[6].y" 95.714286804199219;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 785.71429443359375;
	setAttr ".tgi[1].ni[7].y" -247.14285278320312;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" -371.42855834960937;
	setAttr ".tgi[1].ni[8].y" -418.57144165039062;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" -1014.2857055664062;
	setAttr ".tgi[1].ni[9].y" -375.71429443359375;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" -671.4285888671875;
	setAttr ".tgi[1].ni[10].y" -332.85714721679687;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 1685.7142333984375;
	setAttr ".tgi[1].ni[11].y" -247.14285278320312;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 2488.571533203125;
	setAttr ".tgi[1].ni[12].y" -598.5714111328125;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[1].ni[13].x" -1014.2857055664062;
	setAttr ".tgi[1].ni[13].y" -161.42857360839844;
	setAttr ".tgi[1].ni[13].nvs" 18304;
	setAttr ".tgi[1].ni[14].x" 185.71427917480469;
	setAttr ".tgi[1].ni[14].y" 10;
	setAttr ".tgi[1].ni[14].nvs" 18304;
	setAttr ".tgi[1].ni[15].x" 1342.857177734375;
	setAttr ".tgi[1].ni[15].y" -375.71429443359375;
	setAttr ".tgi[1].ni[15].nvs" 18304;
	setAttr ".tgi[1].ni[16].x" 1342.857177734375;
	setAttr ".tgi[1].ni[16].y" 10;
	setAttr ".tgi[1].ni[16].nvs" 18304;
	setAttr ".tgi[1].ni[17].x" 2028.5714111328125;
	setAttr ".tgi[1].ni[17].y" -247.14285278320312;
	setAttr ".tgi[1].ni[17].nvs" 18304;
	setAttr ".tgi[1].ni[18].x" 1342.857177734375;
	setAttr ".tgi[1].ni[18].y" 95.714286804199219;
	setAttr ".tgi[1].ni[18].nvs" 18304;
	setAttr ".tgi[1].ni[19].x" 1342.857177734375;
	setAttr ".tgi[1].ni[19].y" -161.42857360839844;
	setAttr ".tgi[1].ni[19].nvs" 18304;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "87A82546-4125-5A66-3BEE-73906E0523DD";
	setAttr ".ihi" 0;
	setAttr -s 70 ".hyp";
select -ne :time1;
	setAttr ".o" 60;
	setAttr ".unw" 60;
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
	setAttr -s 28 ".u";
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
connectAttr "hyperLayout1.msg" "shoulder_X_cmpt.hl";
connectAttr "shoulder_X_fk_ctrl.msg" "shoulder_X_cmpt.pni[0].pnod";
connectAttr "shoulder_fk_ctrl_guided_srtOffset.tx" "shoulder_fk_ctrl_srtOffset.tx"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.ty" "shoulder_fk_ctrl_srtOffset.ty"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.tz" "shoulder_fk_ctrl_srtOffset.tz"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.rx" "shoulder_fk_ctrl_srtOffset.rx"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.ry" "shoulder_fk_ctrl_srtOffset.ry"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.rz" "shoulder_fk_ctrl_srtOffset.rz"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.rx" "shoulder_fk_ctrl_srtOffset.guide_attr[0]"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.ry" "shoulder_fk_ctrl_srtOffset.guide_attr[1]"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.rz" "shoulder_fk_ctrl_srtOffset.guide_attr[2]"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.tx" "shoulder_fk_ctrl_srtOffset.guide_attr[3]"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.ty" "shoulder_fk_ctrl_srtOffset.guide_attr[4]"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.tz" "shoulder_fk_ctrl_srtOffset.guide_attr[5]"
		;
connectAttr "shoulder_end_guided_srtOffset.tx" "shoulder_end_srtOffset.tx";
connectAttr "shoulder_end_guided_srtOffset.ty" "shoulder_end_srtOffset.ty";
connectAttr "shoulder_end_guided_srtOffset.tz" "shoulder_end_srtOffset.tz";
connectAttr "shoulder_end_guided_srtOffset.tx" "shoulder_end_srtOffset.guide_attr[0]"
		;
connectAttr "shoulder_end_guided_srtOffset.ty" "shoulder_end_srtOffset.guide_attr[1]"
		;
connectAttr "shoulder_end_guided_srtOffset.tz" "shoulder_end_srtOffset.guide_attr[2]"
		;
connectAttr "ik_aim_guided_srtOffset.tx" "ik_aim_srtOffset.tx";
connectAttr "ik_aim_guided_srtOffset.ty" "ik_aim_srtOffset.ty";
connectAttr "ik_aim_guided_srtOffset.tz" "ik_aim_srtOffset.tz";
connectAttr "ik_aim_guided_srtOffset.tz" "ik_aim_srtOffset.guide_attr[0]";
connectAttr "ik_aim_guided_srtOffset.tx" "ik_aim_srtOffset.guide_attr[1]";
connectAttr "ik_aim_guided_srtOffset.ty" "ik_aim_srtOffset.guide_attr[2]";
connectAttr "ik_start_guided_srtOffset.tx" "ik_start_srtOffset.tx";
connectAttr "ik_start_guided_srtOffset.ty" "ik_start_srtOffset.ty";
connectAttr "ik_start_guided_srtOffset.tz" "ik_start_srtOffset.tz";
connectAttr "ik_start_guided_srtOffset.tz" "ik_start_srtOffset.guide_attr[0]";
connectAttr "ik_start_guided_srtOffset.ty" "ik_start_srtOffset.guide_attr[1]";
connectAttr "ik_start_guided_srtOffset.tx" "ik_start_srtOffset.guide_attr[2]";
connectAttr "ik_end_guided_srtOffset.tx" "ik_end_srtOffset.tx";
connectAttr "ik_end_guided_srtOffset.ty" "ik_end_srtOffset.ty";
connectAttr "ik_end_guided_srtOffset.tz" "ik_end_srtOffset.tz";
connectAttr "ik_end_guided_srtOffset.tz" "ik_end_srtOffset.guide_attr[0]";
connectAttr "ik_end_guided_srtOffset.tx" "ik_end_srtOffset.guide_attr[1]";
connectAttr "ik_end_guided_srtOffset.ty" "ik_end_srtOffset.guide_attr[2]";
connectAttr "parent_srt.t" "parent_guided_srt.t";
connectAttr "parent_srt.r" "parent_guided_srt.r";
connectAttr "parent_srt.s" "parent_guided_srt.s";
connectAttr "shoulder_fk_ctrl_srt_aimConstraint.ct" "shoulder_fk_ctrl_guided_srt.t"
		;
connectAttr "shoulder_fk_ctrl_srt_aimConstraint.cr" "shoulder_fk_ctrl_guided_srt.r"
		;
connectAttr "shoulder_X_ctrl_guided_position.o" "shoulder_fk_ctrl_srt_aimConstraint.ct"
		;
connectAttr "parent_guided_srt.wim" "shoulder_fk_ctrl_srt_aimConstraint.cpim";
connectAttr "shoulder_X_fk_crtl_up_srt.wm" "shoulder_fk_ctrl_srt_aimConstraint.wum"
		;
connectAttr "shoulder_X_fk_crtl_aim_srt.t" "shoulder_fk_ctrl_srt_aimConstraint.tg[0].tt"
		;
connectAttr "shoulder_X_fk_crtl_aim_srt.pm" "shoulder_fk_ctrl_srt_aimConstraint.tg[0].tpm"
		;
connectAttr "shoulder_fk_ctrl_srt_aimConstraint.ct" "shoulder_fk_ctrl_guided_srtOffset.t"
		;
connectAttr "shoulder_fk_ctrl_srt_aimConstraint.cr" "shoulder_fk_ctrl_guided_srtOffset.r"
		;
connectAttr "shoulder_X_ctrl_end_guided_position.o" "shoulder_end_guided_srtOffset.t"
		;
connectAttr "shoulder_X_ik_end_guided_position.o" "ik_aim_guided_srtOffset.t";
connectAttr "shoulder_X_ik_start_guided_position.o" "ik_start_guided_srtOffset.t"
		;
connectAttr "shoulder_X_ik_end_guided_position1.o" "ik_end_guided_srtOffset.t";
connectAttr "shoulder_X_fk_ctrl_srtOffset_worldSRT.ot" "shoulder_X_fk_ctrl_srtOffset.t"
		;
connectAttr "shoulder_X_fk_ctrl_srtOffset_worldSRT.or" "shoulder_X_fk_ctrl_srtOffset.r"
		;
connectAttr "shoulder_X_fk_ctrl_srtOffset_worldSRT.os" "shoulder_X_fk_ctrl_srtOffset.s"
		;
connectAttr "shoulder_X_shoulderAxle_srt_inWorld.ot" "shoulder_srt.t";
connectAttr "shoulder_X_shoulderAxle_srt_inWorld.or" "shoulder_srt.r";
connectAttr "shoulder_X_shoulderAxle_srt_inWorld.os" "shoulder_srt.s";
connectAttr "shoulder_X_shoulderEnd_srt_inWorld.ot" "shoulderEnd_srt.t";
connectAttr "shoulder_X_shoulderEnd_srt_inWorld.or" "shoulderEnd_srt.r";
connectAttr "shoulder_X_shoulderEnd_srt_inWorld.os" "shoulderEnd_srt.s";
connectAttr "shoulder_X_shoulderAxle_srt_inWorld.ot" "shoulderAxle_srt.t";
connectAttr "shoulder_X_shoulderAxle_srt_inWorld.or" "shoulderAxle_srt.r";
connectAttr "shoulder_X_shoulderAxle_srt_inWorld.os" "shoulderAxle_srt.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "shoulder_fk_ctrl_srtOffset.m" "shoulder_X_fk_ctrl_parentMatrix.i[0]"
		;
connectAttr "parent_srt.wm" "shoulder_X_fk_ctrl_parentMatrix.i[1]";
connectAttr "shoulder_X_fk_ctrl_parentMatrix.o" "shoulder_X_fk_ctrl_srtOffset_worldSRT.imat"
		;
connectAttr "shoulder_X_fk_ctrl.wm" "shoulder_X_fk_ctrl_matrix.i[0]";
connectAttr "shoulder_X_fk_ctrl_parentInverseMatrix.omat" "shoulder_X_fk_ctrl_matrix.i[1]"
		;
connectAttr "shoulder_X_fk_ctrl_matrix.o" "shoulder_X_fk_ctrl_srt.imat";
connectAttr "shoulder_X_fk_ctrl_srt.oqx" "shoulder_X_shoulderAxle_matrix.iqx";
connectAttr "shoulder_X_fk_ctrl_srt.oqw" "shoulder_X_shoulderAxle_matrix.iqw";
connectAttr "shoulder_X_fk_ctrl_srt.ot" "shoulder_X_shoulderAxle_matrix.it";
connectAttr "shoulder_X_fk_ctrl_rotation.orx" "shoulder_X_shoulderAxle_matrix.irx"
		;
connectAttr "shoulder_X_fk_ctrl_rotation.iro" "shoulder_X_shoulderAxle_matrix.ro"
		;
connectAttr "shoulder_X_shoulderAxle_matrix.omat" "shoulder_X_shoulderAxle_worldMatrix.i[0]"
		;
connectAttr "shoulder_X_fk_ctrl_parentMatrix.o" "shoulder_X_shoulderAxle_worldMatrix.i[1]"
		;
connectAttr "shoulder_X_shoulderAxle_worldMatrix.o" "shoulder_X_shoulderAxle_srt_inWorld.imat"
		;
connectAttr "shoulder_X_fk_ctrl_parentMatrix.o" "shoulder_X_fk_ctrl_parentInverseMatrix.imat"
		;
connectAttr "shoulder_X_fk_ctrl_srt.oq" "shoulder_X_fk_ctrl_rotation.iq";
connectAttr "shoulder_X_shoulderEnd_worldMatrix.o" "shoulder_X_shoulderEnd_srt_inWorld.imat"
		;
connectAttr "ik_aim_srtOffset.m" "shoulder_X_shoulderEnd_aim_matrix.i[0]";
connectAttr "shoulder_X_fk_ctrl_end_worldMatrix.o" "shoulder_X_shoulderEnd_aim_matrix.i[1]"
		;
connectAttr "shoulder_X_shoulderAxle_worldInverseMatrix.omat" "shoulder_X_shoulderEnd_aim_matrix.i[2]"
		;
connectAttr "shoulder_X_shoulderEnd_aim_matrix.o" "shoulder_X_aim_position.m";
connectAttr "ik_start_srtOffset.t" "shoulder_X_startEndVector_maxLength.p1";
connectAttr "ik_end_srtOffset.t" "shoulder_X_startEndVector_maxLength.p2";
connectAttr "shoulder_X_aim_position.o" "shoulder_X_startEndVector_live.i3[0]";
connectAttr "ik_start_srtOffset.t" "shoulder_X_startEndVector_live.i3[1]";
connectAttr "shoulder_X_startEndVector_live.o3x" "shoulder_X_startEndVector_unit.i1x"
		;
connectAttr "shoulder_X_startEndVector_live.o3y" "shoulder_X_startEndVector_unit.i1y"
		;
connectAttr "shoulder_X_startEndVector_unit.o" "shoulder_X_startEndVector_scaled.i1"
		;
connectAttr "shoulder_X_startEndVector_maxLength.d" "shoulder_X_startEndVector_scaled.i2x"
		;
connectAttr "shoulder_X_startEndVector_maxLength.d" "shoulder_X_startEndVector_scaled.i2y"
		;
connectAttr "shoulder_X_startEndVector_maxLength.d" "shoulder_X_startEndVector_scaled.i2z"
		;
connectAttr "ik_start_srtOffset.t" "shoulder_X_shoulderEnd_position.i3[0]";
connectAttr "shoulder_X_startEndVector_scaled.o" "shoulder_X_shoulderEnd_position.i3[1]"
		;
connectAttr "shoulder_X_shoulderEnd_position_offset.o" "shoulder_X_shoulderEnd_position.i3[2]"
		;
connectAttr "shoulder_X_shoulderEnd_position.o3x" "shoulder_X_shoulderEnd_matrix.itx"
		;
connectAttr "shoulder_X_shoulderEnd_position.o3y" "shoulder_X_shoulderEnd_matrix.ity"
		;
connectAttr "shoulder_X_shoulderEnd_position.o3z" "shoulder_X_shoulderEnd_matrix.itz"
		;
connectAttr "shoulder_X_shoulderEnd_matrix.omat" "shoulder_X_shoulderEnd_worldMatrix.i[0]"
		;
connectAttr "shoulder_X_shoulderAxle_worldMatrix.o" "shoulder_X_shoulderEnd_worldMatrix.i[1]"
		;
connectAttr "shoulder_X_shoulderAxle_worldMatrix.o" "shoulder_X_shoulderAxle_worldInverseMatrix.imat"
		;
connectAttr "shoulder_end_srtOffset.m" "shoulder_X_fk_ctrl_end_worldMatrix.i[0]"
		;
connectAttr "shoulder_X_ctrl_matrix.omat" "shoulder_X_fk_ctrl_end_worldMatrix.i[1]"
		;
connectAttr "shoulder_X_fk_ctrl.pm" "shoulder_X_fk_ctrl_end_worldMatrix.i[2]";
connectAttr "ik_aim_srtOffset.t" "shoulder_X_shoulderEnd_position_offset.i1";
connectAttr "shoulder_X_fk_ctrl_srt.ot" "shoulder_X_ctrl_matrix.it";
connectAttr "shoulder_X_fk_ctrl_rotation.iro" "shoulder_X_ctrl_matrix.ro";
connectAttr "shoulder_X_fk_ctrl_rotation.orx" "shoulder_X_ctrl_matrix.irx";
connectAttr "shoulder_X_fk_ctrl_rotation.orz" "shoulder_X_ctrl_matrix.irz";
connectAttr "shoulder_X_ik_start_guide_srt.t" "shoulder_X_ik_start_guided_position.i1"
		;
connectAttr "shoulder_fk_ctrl_guided_srt.wim" "shoulder_X_ik_start_guided_position.m"
		;
connectAttr "shoulder_X_end_guide_srt.t" "shoulder_X_ctrl_end_guided_position.i1"
		;
connectAttr "shoulder_fk_ctrl_guided_srt.wim" "shoulder_X_ctrl_end_guided_position.m"
		;
connectAttr "shoulder_fk_ctrl_guided_srt.wim" "shoulder_X_ik_end_guided_position1.m"
		;
connectAttr "shoulder_X_ik_end_guide_srt.t" "shoulder_X_ik_end_guided_position1.i1"
		;
connectAttr "shoulder_X_fk_crtl_guide_srt.t" "shoulder_X_ctrl_guided_position.i1"
		;
connectAttr "parent_guided_srt.wim" "shoulder_X_ctrl_guided_position.m";
connectAttr "shoulder_end_guided_srtOffset.wim" "shoulder_X_ik_end_guided_position.m"
		;
connectAttr "shoulder_X_ik_end_guide_srt.t" "shoulder_X_ik_end_guided_position.i1"
		;
connectAttr "shoulder_X_shoulderAxle_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "shoulder_X_startEndVector_live.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ik_start_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "shoulder_X_shoulderEnd_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "shoulder_X_fk_ctrl_rotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "parent_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "shoulder_X_shoulderEnd_position_offset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "shoulder_X_ctrl_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "shoulderEnd_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "shoulderAxle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "shoulder_X_fk_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "ik_aim_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "shoulder_X_fk_ctrl_srtOffset_worldSRT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "shoulder_X_shoulderAxle_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "shoulder_X_shoulderEnd_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "shoulder_X_fk_ctrl_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "shoulder_X_aim_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "shoulder_X_startEndVector_scaled.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "shoulder_X_shoulderAxle_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "shoulder_X_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "shoulder_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "shoulder_X_shoulderEnd_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "ik_end_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "shoulder_X_fk_ctrl_end_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "shoulder_X_shoulderEnd_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "shoulder_X_shoulderAxle_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "shoulder_end_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "shoulder_X_fk_ctrl_parentInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "shoulder_X_shoulderEnd_aim_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "shoulder_X_startEndVector_unit.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "shoulder_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "shoulder_X_startEndVector_maxLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "shoulder_X_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "shoulder_X_fk_ctrl_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "shoulder_X_end_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "shoulder_X_ik_end_guided_position1.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "shoulder_X_fk_crtl_up_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "shoulder_fk_ctrl_srt_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "shoulder_X_ctrl_end_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "shoulder_X_ik_start_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "shoulder_X_ik_start_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "shoulder_X_ik_end_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "shoulder_X_fk_crtl_aim_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "shoulder_X_fk_crtl_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "shoulder_X_ctrl_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "shoulder_X_ik_end_guided_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "guided.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn";
connectAttr "parent_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "shoulder_fk_ctrl_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "shoulder_end_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "ik_aim_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "ik_start_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "ik_end_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[19].dn"
		;
connectAttr "about.msg" "hyperLayout1.hyp[0].dn";
connectAttr "input.msg" "hyperLayout1.hyp[1].dn";
connectAttr "parent_srt.msg" "hyperLayout1.hyp[2].dn";
connectAttr "shoulder_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[3].dn";
connectAttr "shoulder_end_srtOffset.msg" "hyperLayout1.hyp[4].dn";
connectAttr "ik_aim_srtOffset.msg" "hyperLayout1.hyp[5].dn";
connectAttr "ik_start_srtOffset.msg" "hyperLayout1.hyp[6].dn";
connectAttr "ik_end_srtOffset.msg" "hyperLayout1.hyp[7].dn";
connectAttr "guided.msg" "hyperLayout1.hyp[8].dn";
connectAttr "parent_guided_srt.msg" "hyperLayout1.hyp[9].dn";
connectAttr "shoulder_fk_ctrl_guided_srt.msg" "hyperLayout1.hyp[10].dn";
connectAttr "shoulder_fk_ctrl_guided_srt_xVectorShape.msg" "hyperLayout1.hyp[11].dn"
		;
connectAttr "shoulder_fk_ctrl_guided_srt_zVectorShape.msg" "hyperLayout1.hyp[12].dn"
		;
connectAttr "shoulder_fk_ctrl_guided_srt_yVectorShape.msg" "hyperLayout1.hyp[13].dn"
		;
connectAttr "shoulder_fk_ctrl_guided_srtOffset.msg" "hyperLayout1.hyp[14].dn";
connectAttr "shoulder_end_guided_srtOffset.msg" "hyperLayout1.hyp[15].dn";
connectAttr "ik_aim_guided_srtOffset.msg" "hyperLayout1.hyp[16].dn";
connectAttr "ik_start_guided_srtOffset.msg" "hyperLayout1.hyp[17].dn";
connectAttr "ik_end_guided_srtOffset.msg" "hyperLayout1.hyp[18].dn";
connectAttr "guides.msg" "hyperLayout1.hyp[19].dn";
connectAttr "shoulder_X_fk_crtl_guide_srt.msg" "hyperLayout1.hyp[20].dn";
connectAttr "|shoulder_X_cmpt|guides|shoulder_X_fk_crtl_guide_srt|shoulder_X_curveShape2.msg" "hyperLayout1.hyp[21].dn"
		;
connectAttr "shoulder_fk_ctrl_srt_aimConstraint.msg" "hyperLayout1.hyp[22].dn";
connectAttr "shoulder_X_fk_crtl_aim_srt.msg" "hyperLayout1.hyp[23].dn";
connectAttr "|shoulder_X_cmpt|guides|shoulder_X_fk_crtl_guide_srt|shoulder_X_fk_crtl_aim_srt|shoulder_X_curveShape2.msg" "hyperLayout1.hyp[24].dn"
		;
connectAttr "shoulder_X_fk_crtl_up_srt.msg" "hyperLayout1.hyp[25].dn";
connectAttr "|shoulder_X_cmpt|guides|shoulder_X_fk_crtl_guide_srt|shoulder_X_fk_crtl_up_srt|shoulder_X_curveShape2.msg" "hyperLayout1.hyp[26].dn"
		;
connectAttr "shoulder_X_end_guide_srt.msg" "hyperLayout1.hyp[27].dn";
connectAttr "|shoulder_X_cmpt|guides|shoulder_X_end_guide_srt|shoulder_X_curveShape2.msg" "hyperLayout1.hyp[28].dn"
		;
connectAttr "shoulder_X_ik_start_guide_srt.msg" "hyperLayout1.hyp[29].dn";
connectAttr "|shoulder_X_cmpt|guides|shoulder_X_ik_start_guide_srt|shoulder_X_curveShape2.msg" "hyperLayout1.hyp[30].dn"
		;
connectAttr "shoulder_X_ik_end_guide_srt.msg" "hyperLayout1.hyp[31].dn";
connectAttr "|shoulder_X_cmpt|guides|shoulder_X_ik_end_guide_srt|shoulder_X_curveShape2.msg" "hyperLayout1.hyp[32].dn"
		;
connectAttr "control.msg" "hyperLayout1.hyp[33].dn";
connectAttr "shoulder_X_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[34].dn";
connectAttr "shoulder_X_fk_ctrl.msg" "hyperLayout1.hyp[35].dn";
connectAttr "shoulder_X_fk_ctrlShape.msg" "hyperLayout1.hyp[36].dn";
connectAttr "output.msg" "hyperLayout1.hyp[37].dn";
connectAttr "shoulder_srt.msg" "hyperLayout1.hyp[38].dn";
connectAttr "shoulderEnd_srt.msg" "hyperLayout1.hyp[39].dn";
connectAttr "deform.msg" "hyperLayout1.hyp[40].dn";
connectAttr "shoulderAxle_srt.msg" "hyperLayout1.hyp[41].dn";
connectAttr "shoulder_X_startEndVector_unit.msg" "hyperLayout1.hyp[42].dn";
connectAttr "shoulder_X_startEndVector_scaled.msg" "hyperLayout1.hyp[43].dn";
connectAttr "shoulder_X_ik_start_guided_position.msg" "hyperLayout1.hyp[44].dn";
connectAttr "shoulder_X_aim_position.msg" "hyperLayout1.hyp[45].dn";
connectAttr "shoulder_X_shoulderEnd_position_offset.msg" "hyperLayout1.hyp[46].dn"
		;
connectAttr "shoulder_X_ctrl_guided_position.msg" "hyperLayout1.hyp[47].dn";
connectAttr "shoulder_X_ik_end_guided_position.msg" "hyperLayout1.hyp[48].dn";
connectAttr "shoulder_X_ik_end_guided_position1.msg" "hyperLayout1.hyp[49].dn";
connectAttr "shoulder_X_ctrl_end_guided_position.msg" "hyperLayout1.hyp[50].dn";
connectAttr "shoulder_X_shoulderEnd_worldMatrix.msg" "hyperLayout1.hyp[51].dn";
connectAttr "shoulder_X_shoulderAxle_worldInverseMatrix.msg" "hyperLayout1.hyp[52].dn"
		;
connectAttr "shoulder_X_shoulderEnd_matrix.msg" "hyperLayout1.hyp[53].dn";
connectAttr "shoulder_X_ctrl_matrix.msg" "hyperLayout1.hyp[54].dn";
connectAttr "shoulder_X_fk_ctrl_end_worldMatrix.msg" "hyperLayout1.hyp[55].dn";
connectAttr "shoulder_X_shoulderAxle_worldMatrix.msg" "hyperLayout1.hyp[56].dn";
connectAttr "shoulder_X_fk_ctrl_srt.msg" "hyperLayout1.hyp[57].dn";
connectAttr "shoulder_X_fk_ctrl_parentMatrix.msg" "hyperLayout1.hyp[59].dn";
connectAttr "shoulder_X_shoulderAxle_srt_inWorld.msg" "hyperLayout1.hyp[60].dn";
connectAttr "shoulder_X_shoulderAxle_matrix.msg" "hyperLayout1.hyp[61].dn";
connectAttr "shoulder_X_fk_ctrl_srtOffset_worldSRT.msg" "hyperLayout1.hyp[62].dn"
		;
connectAttr "shoulder_X_fk_ctrl_matrix.msg" "hyperLayout1.hyp[63].dn";
connectAttr "shoulder_X_fk_ctrl_parentInverseMatrix.msg" "hyperLayout1.hyp[64].dn"
		;
connectAttr "shoulder_X_shoulderEnd_position.msg" "hyperLayout1.hyp[65].dn";
connectAttr "shoulder_X_startEndVector_live.msg" "hyperLayout1.hyp[66].dn";
connectAttr "shoulder_X_startEndVector_maxLength.msg" "hyperLayout1.hyp[67].dn";
connectAttr "shoulder_X_shoulderEnd_srt_inWorld.msg" "hyperLayout1.hyp[68].dn";
connectAttr "shoulder_X_shoulderEnd_aim_matrix.msg" "hyperLayout1.hyp[69].dn";
connectAttr "shoulder_X_fk_ctrl_rotation.msg" "hyperLayout1.hyp[70].dn";
connectAttr "shoulder_X_fk_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_fk_ctrl_srtOffset_worldSRT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_fk_ctrl_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_X_fk_ctrl_srt.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_X_shoulderAxle_matrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "shoulder_X_shoulderAxle_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_shoulderAxle_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_fk_ctrl_parentInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_fk_ctrl_rotation.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "shoulder_X_shoulderEnd_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_shoulderEnd_aim_matrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_aim_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_X_startEndVector_maxLength.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_startEndVector_live.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "shoulder_X_startEndVector_unit.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "shoulder_X_startEndVector_scaled.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_shoulderEnd_position.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_shoulderEnd_matrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "shoulder_X_shoulderEnd_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_shoulderAxle_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_fk_ctrl_end_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_shoulderEnd_position_offset.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_ctrl_end_guided_position.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_ik_end_guided_position1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_ik_start_guided_position.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_ctrl_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shoulder_X_ctrl_guided_position.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "shoulder_X_ik_end_guided_position.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of shoulder.ma
