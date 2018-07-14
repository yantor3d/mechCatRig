//Maya ASCII 2016 scene
//Name: hingedPiston.ma
//Last modified: Mon, Jul 09, 2018 07:57:39 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" -nodeType "inverseMatrix"
		 "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	rename -uid "7E036801-472B-681B-6445-4288804EF9A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 17.862759414171251 12.918555650959394 11.84310363328399 ;
	setAttr ".r" -type "double3" -8.1383527296532083 -292.99999999992122 -2.0350021085926419e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0B61A373-4552-4D82-0E08-70A9695280D6";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.827481705052683;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.5004115104675284 11.15972488104077 7.3131623679595945 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "BB02C3A3-46C8-5F76-210D-7B932ED72606";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3650CBFF-4FC1-ACAC-8AF5-4DA6B2BC86A2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "19866A65-4D9C-D23A-A966-4592861658F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4999999141693117 12.995398199134407 101.10037603734747 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AA5B6F66-4D6B-F401-5470-DFAD45A647EF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.4857328355800439;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "000586C9-4A43-18C2-42EB-F4B9BF211A72";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.20648292578291 12.39392484219066 4.9289606407796258 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "31D21C0A-4E02-5971-1CD9-4E8C16EFAB7F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 21.566026167096133;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode dagContainer -n "hingedPiston_X_cmpt";
	rename -uid "BC3F6372-44EB-F1BD-2885-BCBDDCB2A912";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "rporter";
	setAttr ".cdat" -type "string" "2018/07/04 12:36:34";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 2.5 6.8743106480174641 4.1359999775886553 ;
	setAttr ".sp" -type "double3" 2.5 6.8743106480174641 4.1359999775886553 ;
	setAttr ".aal" -type "attributeAlias" {"hingedPiston_X_hinge_ctrl","publishedNodeInfo[0]"
		} ;
createNode transform -n "about" -p "hingedPiston_X_cmpt";
	rename -uid "E1FDD06F-493F-18ED-1B5C-508408E1FDBF";
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
	setAttr ".component_part" -type "string" "piston";
	setAttr ".component_type" -type "string" "hingedTelescopingPiston";
	setAttr ".component_version" -type "string" "1.0.0";
createNode transform -n "input" -p "hingedPiston_X_cmpt";
	rename -uid "013AA8C5-4D2C-80BA-1804-E68B6AFEA1F1";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "hipSwivel_srt" -p "input";
	rename -uid "AAE728C0-4421-8621-8661-39B8365853A2";
	setAttr ".t" -type "double3" 4.4999999141693117 13.737309336662292 6.7500000000000027 ;
createNode transform -n "hinge_srtOffset" -p "hipSwivel_srt";
	rename -uid "E0DD0088-4CED-AB12-58E7-C08BE0941CCE";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "piston_rod_clevise_srtOffset" -p "hinge_srtOffset";
	rename -uid "53AA1809-4195-9A7C-CA75-3AA589BBA2BD";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
createNode transform -n "piston_rod_top_srtOffset" -p "piston_rod_clevise_srtOffset";
	rename -uid "F5E6B10B-4B3C-28DA-D209-B7B020480586";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "hipAxle_srt" -p "input";
	rename -uid "0F2A423B-426A-B6A3-C2E3-49B29FA94AF0";
	setAttr ".t" -type "double3" 4.4999999141693117 12.55333411693573 7.3292102813720721 ;
	setAttr ".r" -type "double3" 0.001352741769618585 0 0 ;
createNode transform -n "piston_cyl_clevise_srtOffset" -p "hipAxle_srt";
	rename -uid "6F1D76DD-4B14-7D9F-CD4D-56BB8845C6C8";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
createNode transform -n "telescopeA_btm_srtOffset" -p "piston_cyl_clevise_srtOffset";
	rename -uid "382D4A95-4201-8229-D014-6CA16B0FDF92";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "telescopeA_top_srtOffset" -p "telescopeA_btm_srtOffset";
	rename -uid "E4386BF2-40C0-FEDA-9AA2-7B8E8B1576A9";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "telescopeB_btm_srtOffset" -p "piston_cyl_clevise_srtOffset";
	rename -uid "2AE05177-438A-D358-7796-8283235A6F58";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "telescopeB_top_srtOffset" -p "telescopeB_btm_srtOffset";
	rename -uid "5AED1C24-40F0-91F1-3AE1-0B823A0F4352";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "piston_cyl_top_srtOffset" -p "piston_cyl_clevise_srtOffset";
	rename -uid "F9B48EC0-4D79-24FE-6052-BA91438DF59A";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "telescopeA_srtOffset" -p "piston_cyl_top_srtOffset";
	rename -uid "1F0D94B1-40ED-1EDC-BEBE-6196F0E53795";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "telescopeB_srtOffset" -p "piston_cyl_top_srtOffset";
	rename -uid "C01BD0A4-443E-614B-D7D6-009E9E6D8BD7";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "knee_srt" -p "input";
	rename -uid "3FE545B0-4625-D0AC-3895-D4BA68217A24";
	setAttr ".t" -type "double3" 4.4999998807907096 4.8430002927780151 8.2719999551773107 ;
createNode transform -n "piston_settings" -p "input";
	rename -uid "98F9EFBB-40E1-C0D2-6AD0-6B86CB16F7BD";
	addAttr -ci true -sn "active" -ln "active" -min 0 -max 1 -at "bool";
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
	setAttr -k on ".active";
createNode transform -n "guided" -p "hingedPiston_X_cmpt";
	rename -uid "4584FD80-438B-647C-59DA-B6AB9AD349A6";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "hipSwivel_guided_srt" -p "guided";
	rename -uid "75E91DAB-4623-4165-02AD-AA9330993137";
createNode transform -n "hinge_guided_srtOffset" -p "hipSwivel_guided_srt";
	rename -uid "E648E772-403B-1157-8159-21841C948970";
createNode transform -n "piston_rod_clevise_guided_srtOffset" -p "hinge_guided_srtOffset";
	rename -uid "797965F4-4FE6-A8BA-5E6B-249ED8F0F6C4";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
createNode transform -n "piston_rod_top_guided_srtOffset" -p "piston_rod_clevise_guided_srtOffset";
	rename -uid "F824FDDB-418D-95CC-1267-B98431EC28E2";
createNode pointConstraint -n "piston_rod_top_guided_srtOffset_pointConstraint1" 
		-p "piston_rod_top_guided_srtOffset";
	rename -uid "D03047E8-4A2E-D869-6C3D-BE99F8469632";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_rod_guide_srtW0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 0 -0.320281982421875 -1.9073486328125e-006 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "piston_rod_clevise_guided_srtOffset_pointConstraint1" 
		-p "piston_rod_clevise_guided_srtOffset";
	rename -uid "6B0CF131-4BD9-5C6E-8E19-339753065401";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_rod_clevise_guide_srtW0" -dv 
		1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 0 -1.4705219268798828 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "hinge_guided_srtOffset_pointConstraint1" -p "hinge_guided_srtOffset";
	rename -uid "C1A59C64-443B-BC25-F21D-FDA3496668AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_guide_srtW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 8.5830688334453953e-008 -0.99513423442840576 -0.42632627487182884 ;
	setAttr -k on ".w0";
createNode transform -n "hipAxle_guided_srt" -p "guided";
	rename -uid "2D8AA95B-4626-84FE-0DCD-7B93CDC3EBA3";
createNode transform -n "piston_cyl_clevise_guided_srtOffset" -p "hipAxle_guided_srt";
	rename -uid "C9BC44FA-4E73-9435-DD07-70A61012D792";
	addAttr -ci true -sn "aimVector" -ln "aimVector" -at "double3" -nc 3;
	addAttr -ci true -sn "aimVectorX" -ln "aimVectorX" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorY" -ln "aimVectorY" -at "double" -p "aimVector";
	addAttr -ci true -sn "aimVectorZ" -ln "aimVectorZ" -at "double" -p "aimVector";
	setAttr -k on ".aimVector";
	setAttr -k on ".aimVectorX";
	setAttr -k on ".aimVectorY";
	setAttr -k on ".aimVectorZ";
createNode transform -n "telescopeA_btm_guided_srtOffset" -p "piston_cyl_clevise_guided_srtOffset";
	rename -uid "05C43321-4C3B-F905-85EE-719BDA55D2D4";
createNode transform -n "telescopeA_top_guided_srtOffset" -p "telescopeA_btm_guided_srtOffset";
	rename -uid "46D9E080-47CA-F983-3F14-259D4DC927E1";
createNode pointConstraint -n "telescopeA_top_guided_srtOffset_pointConstraint1" 
		-p "telescopeA_top_guided_srtOffset";
	rename -uid "CEFA7F08-4CD8-71B2-3F40-AC83CE89318B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_telescopeA_end_guide_srtW0" 
		-dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 1.4870481486944289 -3.5108906129899253e-005 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "telescopeA_btm_guided_srtOffset_pointConstraint1" 
		-p "telescopeA_btm_guided_srtOffset";
	rename -uid "E0C4E8A8-4773-569F-1368-07AA91537735";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_telescopeA_guide_srtW0" -dv 
		1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 0.36075401296097631 -8.5173293067342115e-006 ;
	setAttr -k on ".w0";
createNode transform -n "telescopeB_btm_guided_srtOffset" -p "piston_cyl_clevise_guided_srtOffset";
	rename -uid "EF4AA5F7-4B53-CC15-02F5-AA95BB3241AD";
createNode transform -n "telescopeB_top_guided_srtOffset" -p "telescopeB_btm_guided_srtOffset";
	rename -uid "E42CFBC1-4EE7-16E9-B2F6-009D8F12AE3A";
createNode pointConstraint -n "telescopeB_top_guided_srtOffset_pointConstraint1" 
		-p "telescopeB_top_guided_srtOffset";
	rename -uid "ED2AF0DE-4D41-E063-0318-AD88360AE8D6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_telescopeB_end_guide_srtW0" 
		-dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 1.551910399958091 -3.6640290767664396e-005 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "telescopeB_btm_guided_srtOffset_pointConstraint1" 
		-p "telescopeB_btm_guided_srtOffset";
	rename -uid "37373F73-4280-1A6C-9CED-96A05303D0F3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_telescopeB_guide_srtW0" -dv 
		1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 0.41280841815887115 -9.7463232888728157e-006 ;
	setAttr -k on ".w0";
createNode transform -n "piston_cyl_top_guided_srtOffset" -p "piston_cyl_clevise_guided_srtOffset";
	rename -uid "9EFB195B-4127-C45E-947D-27B95091FAA7";
createNode transform -n "telescopeA_guided_srtOffset" -p "piston_cyl_top_guided_srtOffset";
	rename -uid "DB665557-4152-8761-53DD-C49B6399D5C8";
createNode pointConstraint -n "telescopeA_guided_srtOffset_pointConstraint1" -p "telescopeA_guided_srtOffset";
	rename -uid "C048038F-45AB-C674-CFE8-05AC0428FD8D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_telescopeA_end_guide_srtW0" 
		-dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 0.14638614650460902 -3.4561473221117467e-006 ;
	setAttr -k on ".w0";
createNode transform -n "telescopeB_guided_srtOffset" -p "piston_cyl_top_guided_srtOffset";
	rename -uid "CED9099E-47A5-BDAC-3568-D5AB1FBD4191";
createNode pointConstraint -n "telescopeB_guided_srtOffset_pointConstraint1" -p "telescopeB_guided_srtOffset";
	rename -uid "BAAB14B3-4BEE-0C6F-2F39-8F85E3EB6144";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_telescopeB_end_guide_srtW0" 
		-dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 0.26330280296616593 -6.2165259420154939e-006 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "piston_cyl_top_guided_srtOffset_pointConstraint1" 
		-p "piston_cyl_top_guided_srtOffset";
	rename -uid "153B75C5-453A-AB6B-383F-7791A7AF8545";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_cyl_end_guide_srtW0" -dv 1 
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
	setAttr ".rst" -type "double3" 0 1.7014160151507962 -4.0170088114521718e-005 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "piston_cyl_clevise_guided_srtOffset_pointConstraint1" 
		-p "piston_cyl_clevise_guided_srtOffset";
	rename -uid "D2250138-45FA-D1DB-F6C6-CEA669DA5E89";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "piston_cyl_clevise_guide_srt1W0" 
		-dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 8.5830687446275533e-008 -3.578389803844459 -0.3954857932182092 ;
	setAttr -k on ".w0";
createNode transform -n "guides" -p "hingedPiston_X_cmpt";
	rename -uid "644D9847-46B7-0F85-5BAF-99ACFC6AEEA8";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "hingedPiston_X_hinge_guide_srt" -p "guides";
	rename -uid "6748349F-42B1-C5B6-4883-52B2AF030746";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.5 12.742175102233887 6.3236737251281738 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_hinge_guide_srt";
	rename -uid "90122C8D-44E3-4CB1-03D4-C4979D68CEAC";
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
createNode transform -n "hingedPiston_X_piston_rod_clevise_guide_srt" -p "guides";
	rename -uid "2F8F5C9C-478E-EAD2-51C5-CE81A91ACE6B";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.5 12.742175102233887 4.853151798248291 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_rod_clevise_guide_srt";
	rename -uid "5B8D03D8-44BE-01B8-A859-CD82FBBB3E93";
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
createNode transform -n "hingedPiston_X_piston_rod_guide_srt" -p "hingedPiston_X_piston_rod_clevise_guide_srt";
	rename -uid "0C5D58D3-4CBB-7C84-5111-A087CF8C9CF9";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -0.320281982421875 -1.9073486328125e-006 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_rod_guide_srt";
	rename -uid "080F3693-4810-04B8-AD03-7B86DF441881";
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
createNode transform -n "hingedPiston_X_piston_rod_direction_guide_srt" -p "hingedPiston_X_piston_rod_clevise_guide_srt";
	rename -uid "EAD0597A-4363-9A23-587C-47A8FC4E4FC2";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1 -1.9073486328125e-006 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "direction";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_rod_direction_guide_srt";
	rename -uid "975B3C5D-4E3C-FA9E-BCA9-D1960DE3927D";
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
createNode transform -n "hingedPiston_X_piston_cyl_clevise_guide_srt" -p "guides";
	rename -uid "B07E1B26-4165-0E84-8757-D4B7997DC625";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.5 8.9749536514282227 6.9336400032043457 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_cyl_clevise_guide_srt";
	rename -uid "6C6A292F-48A8-0DD7-DF20-F699A0386C86";
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
createNode transform -n "hingedPiston_X_piston_cyl_end_guide_srt" -p "hingedPiston_X_piston_cyl_clevise_guide_srt";
	rename -uid "D1DEDF29-4C68-F722-9B9E-5FB697683A03";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1.701416015625 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_cyl_end_guide_srt";
	rename -uid "FE44E6E6-4C59-7623-D7E7-75A25C52FC06";
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
createNode transform -n "hingedPiston_X_piston_cyl_direction_guide_srt" -p "hingedPiston_X_piston_cyl_clevise_guide_srt";
	rename -uid "D4CB5D46-4FA1-9583-F5E8-82A71FD96209";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -ci true -sn "guide_type" -ln "guide_type" -dt "string" -p "guideData";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".guide_type" -type "string" "direction";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_cyl_direction_guide_srt";
	rename -uid "F5562949-4715-355F-8B1B-26BF8982A132";
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
createNode transform -n "hingedPiston_X_piston_telescopeA_guide_srt" -p "guides";
	rename -uid "170D5494-473E-C2AF-27E9-21B2422ECED5";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.5 9.3357076644897443 6.9336400032043457 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_telescopeA_guide_srt";
	rename -uid "FBF4D557-4F24-8D34-7A73-C3BA830BD4C7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 1.7763568394002505e-015 0
		0 1.7763568394002505e-015 0.25
		-0.25 1.7763568394002505e-015 0
		0 1.7763568394002505e-015 -0.25
		0.25 1.7763568394002505e-015 0
		0 0.25000000000000178 0
		-0.25 1.7763568394002505e-015 0
		0 -0.24999999999999822 0
		0.25 1.7763568394002505e-015 0
		0 1.7763568394002505e-015 0.25
		0 -0.24999999999999822 0
		0 1.7763568394002505e-015 -0.25
		0 0.25000000000000178 0
		0 1.7763568394002505e-015 0.25
		;
createNode transform -n "hingedPiston_X_piston_telescopeA_end_guide_srt" -p "hingedPiston_X_piston_telescopeA_guide_srt";
	rename -uid "FC74D590-4976-BC37-9172-639B76BAF9B0";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1.4870481491088867 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_telescopeA_end_guide_srt";
	rename -uid "121B17FF-48EF-D227-6E28-E48811A2335F";
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
createNode transform -n "hingedPiston_X_piston_telescopeB_guide_srt" -p "guides";
	rename -uid "60A7B63F-4945-8EA1-EC6C-A4B4598377BF";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.5 9.3877620697021484 6.9336400032043457 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_telescopeB_guide_srt";
	rename -uid "8A9B01AB-4DDA-028B-B93A-77AFDDB89F08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.25 1.7763568394002505e-015 0
		0 1.7763568394002505e-015 0.25
		-0.25 1.7763568394002505e-015 0
		0 1.7763568394002505e-015 -0.25
		0.25 1.7763568394002505e-015 0
		0 0.25000000000000178 0
		-0.25 1.7763568394002505e-015 0
		0 -0.24999999999999822 0
		0.25 1.7763568394002505e-015 0
		0 1.7763568394002505e-015 0.25
		0 -0.24999999999999822 0
		0 1.7763568394002505e-015 -0.25
		0 0.25000000000000178 0
		0 1.7763568394002505e-015 0.25
		;
createNode transform -n "hingedPiston_X_piston_telescopeB_end_guide_srt" -p "hingedPiston_X_piston_telescopeB_guide_srt";
	rename -uid "6F7F19FF-467D-B12E-ED7D-4FAE2F48BF58";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1.551910400390625 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_curveShape2" -p "hingedPiston_X_piston_telescopeB_end_guide_srt";
	rename -uid "F36DFC2B-4E95-8B4F-46BF-79A5347FD4B8";
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
createNode transform -n "internal" -p "hingedPiston_X_cmpt";
	rename -uid "55CE07F7-4781-4997-4CF8-5F90711D8EC3";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode aimConstraint -n "hingedPiston_X_piston_rod_aimConstraint" -p "internal";
	rename -uid "257C94D9-4353-8F98-0770-B9990CA2F27B";
	setAttr ".u" -type "double3" 0 0 0 ;
	setAttr ".wut" 4;
createNode aimConstraint -n "hingedPiston_X_piston_cyl_aimConstraint" -p "internal";
	rename -uid "EA1A2E2B-4B94-F407-5302-67A291C82E29";
	setAttr ".u" -type "double3" 0 0 0 ;
	setAttr ".wut" 4;
createNode transform -n "control" -p "hingedPiston_X_cmpt";
	rename -uid "D1FA25C1-4D14-F684-CA4E-39A565219113";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "hingedPiston_X_hinge_ctrl_srtOffset" -p "control";
	rename -uid "A953EB49-48CB-7BD2-4579-82BCE8B6D439";
createNode transform -n "hingedPiston_X_hinge_ctrl" -p "hingedPiston_X_hinge_ctrl_srtOffset";
	rename -uid "EE4E4ABA-4085-513E-974B-DC8010521467";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hingedPiston_X_hinge_ctrlShape" -p "hingedPiston_X_hinge_ctrl";
	rename -uid "32F7AB96-4D88-0CC9-3091-6DB49E81E987";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		-8.8817841970012523e-016 1.0064461938010416 -0.71739610475963644
		-0.50000000000000089 1.0064461938010416 -1.2173961047596364
		-0.25000000000000089 1.0064461938010416 -1.2173961047596364
		-0.25000000000000089 0.98710761239791545 -1.4137440168001882
		-0.25000000000000083 0.92983503902666886 -1.6025463886941991
		-0.25000000000000083 0.83682942656312265 -1.776547651171372
		-0.25000000000000083 0.71166492853610541 -1.9290610332957421
		-0.25000000000000083 0.55915154641173537 -2.0542255313227598
		-0.25000000000000083 0.38515028393456208 -2.1472311437863052
		-0.25000000000000083 0.19634791204055135 -2.2045037171575537
		-0.25000000000000083 -2.6831481122608286e-016 -2.2238422985606769
		-0.50000000000000089 -2.6831481122608286e-016 -2.2238422985606769
		-8.8817841970012523e-016 -0.50000000000000033 -2.2238422985606761
		0.49999999999999911 -2.6831481122608286e-016 -2.2238422985606769
		0.24999999999999917 -2.6831481122608286e-016 -2.2238422985606769
		0.24999999999999917 0.19634791204055135 -2.2045037171575537
		0.24999999999999917 0.38515028393456208 -2.1472311437863052
		0.24999999999999917 0.55915154641173537 -2.0542255313227598
		0.24999999999999917 0.71166492853610541 -1.9290610332957421
		0.24999999999999917 0.83682942656312265 -1.776547651171372
		0.24999999999999911 0.92983503902666886 -1.6025463886941991
		0.24999999999999911 0.98710761239791545 -1.4137440168001882
		0.24999999999999911 1.0064461938010416 -1.2173961047596364
		0.49999999999999911 1.0064461938010416 -1.2173961047596364
		-8.8817841970012523e-016 1.0064461938010416 -0.71739610475963644
		;
createNode transform -n "deform" -p "hingedPiston_X_cmpt";
	rename -uid "C7221447-4C17-1DAE-11DA-5EA66C4EF0AC";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "hinge_srt" -p "deform";
	rename -uid "755131FB-41DC-38E5-19F6-05BE210F2624";
createNode transform -n "piston_rod_srt" -p "deform";
	rename -uid "2496E55A-46E5-9BF5-48AE-B2A39FC4FE66";
createNode transform -n "piston_cyl_srt" -p "deform";
	rename -uid "5FB2C003-4214-6695-32AF-A08C8195FBFE";
createNode transform -n "telescope_A_srt" -p "deform";
	rename -uid "E32F43A3-41D1-63CC-CC21-EABF4E519AC3";
createNode transform -n "telescope_B_srt" -p "deform";
	rename -uid "A56B3AA2-44EB-B02A-D62F-8EAE7E6F8C99";
createNode transform -n "output" -p "hingedPiston_X_cmpt";
	rename -uid "4580DE1B-4D1D-BE06-559F-9B923A75B333";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "hinge_srt" -p "output";
	rename -uid "06243965-4189-86D7-CF48-B38A7E856C0C";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F87FDEA4-4DBA-691B-2965-51BD12E913F7";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "82645ED2-41BE-E5DB-2778-8EAC9AD602B5";
	setAttr -s 3 ".dli[1:2]"  3 2;
createNode displayLayer -n "defaultLayer";
	rename -uid "3E8DF615-49B6-DC1F-69CE-F9A3A73F7899";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D15D3E2A-4B9F-9B9D-D3D3-7081339461F9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F79B1E77-469E-E0C0-0F81-67BFA74EDE72";
	setAttr ".g" yes;
createNode multMatrix -n "hingedPiston_X_hinge_ctrl_parentMatrix";
	rename -uid "A19D7D9D-42D7-DAE7-DC1E-4C9951F26F8B";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hingedPiston_X_hinge_ctrl_srtOffset_inWorld";
	rename -uid "25BEF404-489A-5660-721A-22AE2D990B38";
	setAttr ".ot" -type "double3" 4.5 12.742175102233887 6.3236737251281738 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "hingedPiston_X_hinge_srt_inWorld";
	rename -uid "33B3770A-4668-65E7-588C-228D01D2F5D1";
	setAttr ".ot" -type "double3" 4.5 12.742175102233887 6.3236737251281738 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "hingedPiston_X_piston_rod_matrix_localTo_hinge";
	rename -uid "0C6CAD12-41C8-8D7C-E49C-8BA7E90B04A2";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -1.4705219268798828 1;
createNode multMatrix -n "hingedPiston_X_piston_rod_worldMatrix";
	rename -uid "6D4EB03B-4882-126B-8036-4D8D3DF68587";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hingedPiston_X_piston_rod_srt_inWorld";
	rename -uid "8938DABC-4475-DD7E-D2CC-AE94883E52F9";
	setAttr ".ot" -type "double3" 4.5 12.742175102233887 4.853151798248291 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode animBlendNodeAdditiveRotation -n "hingedPiston_X_piston_rod_rotation_enabled";
	rename -uid "A247FC21-4CFF-53C1-0AFC-D1BA779EBCB8";
	setAttr ".wb" 0;
createNode composeMatrix -n "hingedPiston_X_piston_cyl_matrix_localTo_hipAxle";
	rename -uid "9A64F1DA-4482-F638-66AE-83B512BC580C";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5830687446275533e-008 -3.578389803844459 -0.3954857932182092 1;
createNode animBlendNodeAdditiveRotation -n "hingedPiston_X_piston_cyl_rotation_localTo_hipAxle";
	rename -uid "99FC947D-4F64-FCA6-1DFD-10A7E86B8F55";
	setAttr ".wb" 0;
createNode multMatrix -n "hingedPiston_X_piston_cyl_worldMatrix";
	rename -uid "D55E4BC5-4FEA-29DE-A145-00BE76D21333";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hingedPiston_X_piston_cyl_srt_inWorld";
	rename -uid "470CF972-405A-4553-D0D0-A3BDE62AE144";
	setAttr ".ot" -type "double3" 4.4999999999999991 8.9749536514282227 6.9336400032043457 ;
	setAttr ".or" -type "double3" 0.001352741769618585 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode inverseMatrix -n "piston_cyl_worldInverseMatrix";
	rename -uid "A1338C32-4C8D-45C5-50C9-C6AC3F4AB5D9";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 0.99999999972128872 -2.3609797806911637e-005 0
		 0 2.3609797806905467e-005 0.99999999972128861 0 -4.4999999999999991 -8.975117350765343 -6.933428104430825 1;
createNode inverseMatrix -n "piston_rod_worldInverseMatrix";
	rename -uid "52852BE3-4460-2C25-838F-E2BE389291B5";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 5.5511151231257827e-017 0 0 0 1 0 -4.5 -12.742175102233888 -4.853151798248291 1;
createNode multMatrix -n "hingedPiston_X_telescope_A_worldMatrix";
	rename -uid "BBB14EE8-4143-6309-AAA5-F5BED273CCCC";
	setAttr -s 2 ".i";
createNode multMatrix -n "hingedPiston_X_telescope_B_worldMatrix";
	rename -uid "42031FD1-4746-6949-3FB9-27A283894CA0";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hingedPiston_X_telescope_A_srt_inWorld";
	rename -uid "6F99AAB1-49E3-64A3-76D7-AA8AC86BC860";
	setAttr ".ot" -type "double3" 4.4999999999999991 10.822755813557833 6.9336434593516678 ;
	setAttr ".or" -type "double3" 0.001352741769618585 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqx" 1.1804898904275274e-005;
	setAttr ".oqw" 0.99999999993032218;
createNode decomposeMatrix -n "hingedPiston_X_telescope_B_srt_inWorld";
	rename -uid "2A7421AE-41CE-5AA0-EFD8-FC9FEB211AA4";
	setAttr ".ot" -type "double3" 4.4999999999999991 10.939672470019389 6.9336462197302877 ;
	setAttr ".or" -type "double3" 0.001352741769618585 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqx" 1.1804898904275274e-005;
	setAttr ".oqw" 0.99999999993032218;
createNode network -n "hingedPiston_X_piston_cyl_pass";
	rename -uid "459BB9C7-4FD0-6FD3-42D8-A59A254F3B2D";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode network -n "hingedPiston_X_piston_rod_pass";
	rename -uid "3E37FC03-4D62-18A6-9EC8-EE90E552E42A";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "hingedPiston_X_piston_rod_top_worldMatrix";
	rename -uid "824D58EE-4132-72F6-2A42-EE826E5E7C2A";
	setAttr -s 2 ".i";
createNode distanceBetween -n "hingedPiston_X_telescopeA_length";
	rename -uid "DB800532-4DD6-EEB2-9CBD-AEB8BCE153DC";
createNode distanceBetween -n "hingedPiston_X_telescopeB_length";
	rename -uid "F621EDE3-42FB-6013-032F-69BAE65C56AA";
createNode addDoubleLinear -n "hingedPiston_X_telescopeB_maxLength";
	rename -uid "F88F985F-49AA-8D6C-FC99-CF878221E62F";
createNode distanceBetween -n "hingedPiston_X_piston_length";
	rename -uid "66D34CA0-41A9-0D52-EC54-F990D750E9EC";
createNode blendColors -n "hingedPiston_X_telescopeB_activeLength";
	rename -uid "DF5767A7-41B6-029D-376B-D9AFED6330F0";
createNode composeMatrix -n "hingedPiston_X_telescopeB_matrix_localTo_piston_cyl";
	rename -uid "037EB0DD-4868-18EC-D94B-299669160463";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.26330280303955078 0 1;
createNode blendColors -n "hingedPiston_X_telescopeA_activeLength";
	rename -uid "CFD8F703-4242-BE16-4298-AFA23FDBC5A2";
createNode composeMatrix -n "hingedPiston_X_telescopeA_matrix_localTo_piston_cyl";
	rename -uid "B544319C-4C69-378B-5E18-B5A6941A29D0";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.14638614654541016 0 1;
createNode multMatrix -n "hingedPiston_X_piston_cyl_top_worldMatrix";
	rename -uid "11C8CF4B-4892-7E52-14E3-7ABF7112C4F9";
	setAttr -s 2 ".i";
createNode distanceBetween -n "hingedPiston_X_telescopeB_restLength";
	rename -uid "B4B6E17A-4A14-7F93-98C6-268DBFE9DF8E";
createNode distanceBetween -n "hingedPiston_X_telescopeA_restLength";
	rename -uid "D057B466-4D91-E327-D201-6887D311E717";
createNode clamp -n "hingedPiston_X_telescopeB_extended_length";
	rename -uid "64CA7A85-4893-DDF8-12A2-62A16D4B9602";
createNode clamp -n "hingedPiston_X_telescopeA_extended_length";
	rename -uid "7E86EBE0-46D4-1A9D-3362-DA8BE52588E6";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F26CA26C-45DC-9543-2D27-F78683392CB2";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
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
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1079\n                -height 841\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1079\n            -height 841\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
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
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 31 100 -ps 2 69 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1079\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1079\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 4 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3D3C95D6-4AA4-EED2-BA52-5F9D11C26BC8";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 96 -ast 1 -aet 96 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "hingedPiston_X_telescopeA_position_localTo_piston_cyl";
	rename -uid "E7BB999E-48C5-0F5C-37D1-67A396611A30";
createNode multiplyDivide -n "hingedPiston_X_telescopeB_position_localTo_piston_cyl";
	rename -uid "5107E134-45EE-4C51-4D5C-0089326057DA";
createNode hyperLayout -n "hyperLayout1";
	rename -uid "3207FD41-44E5-047C-9675-95AFD1987D33";
	setAttr ".ihi" 0;
	setAttr -s 115 ".hyp";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9E0D28EA-4381-D172-071C-1AA3D8BF108D";
	setAttr -s 4 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "hinge";
	setAttr ".tgi[0].vl" -type "double2" -5274.3587647747881 -1958.3332555161614 ;
	setAttr ".tgi[0].vh" -type "double2" 6769.5968005974628 1303.5713767721563 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 861.41693115234375;
	setAttr ".tgi[0].ni[0].y" -82.243690490722656;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 552.26513671875;
	setAttr ".tgi[0].ni[1].y" -89.821052551269531;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1126.563720703125;
	setAttr ".tgi[0].ni[2].y" -82.69854736328125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -277.56271362304687;
	setAttr ".tgi[0].ni[3].y" -17.675168991088867;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 28.932598114013672;
	setAttr ".tgi[0].ni[4].y" -92.3739013671875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -280.92434692382812;
	setAttr ".tgi[0].ni[5].y" -110.84033203125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1378.2781982421875;
	setAttr ".tgi[0].ni[6].y" -82.673835754394531;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 299.23171997070312;
	setAttr ".tgi[0].ni[7].y" -95.219657897949219;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "piston_rod";
	setAttr ".tgi[1].vl" -type "double2" -429.80767522866961 -520.23807456569159 ;
	setAttr ".tgi[1].vh" -type "double2" 3869.0932528494545 644.04759345546711 ;
	setAttr -s 13 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" -179.24369812011719;
	setAttr ".tgi[1].ni[0].y" 123.28142547607422;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1395.9447021484375;
	setAttr ".tgi[1].ni[1].y" 42.069869995117187;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" -186.44032287597656;
	setAttr ".tgi[1].ni[2].y" 23.096551895141602;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 1399.5;
	setAttr ".tgi[1].ni[3].y" 213.39010620117187;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 1124.10693359375;
	setAttr ".tgi[1].ni[4].y" 123.74740600585937;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 265.441162109375;
	setAttr ".tgi[1].ni[5].y" 39.775909423828125;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 1675.7601318359375;
	setAttr ".tgi[1].ni[6].y" 121.15943908691406;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 282.61474609375;
	setAttr ".tgi[1].ni[7].y" -122.29150390625;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 1649.0655517578125;
	setAttr ".tgi[1].ni[8].y" 214.61470031738281;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 573.0283203125;
	setAttr ".tgi[1].ni[9].y" -43.072887420654297;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" -187.64704895019531;
	setAttr ".tgi[1].ni[10].y" -127.47898864746094;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 837.88079833984375;
	setAttr ".tgi[1].ni[11].y" 42.373058319091797;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" -176.8907470703125;
	setAttr ".tgi[1].ni[12].y" -232.01679992675781;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "piston_cylinder";
	setAttr ".tgi[2].vl" -type "double2" -2834.7984221537668 -913.09520181209587 ;
	setAttr ".tgi[2].vh" -type "double2" 4501.4650225930527 1073.8094811401677 ;
	setAttr -s 12 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -69.159660339355469;
	setAttr ".tgi[2].ni[0].y" 229.66386413574219;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" 628.291748046875;
	setAttr ".tgi[2].ni[1].y" 156.41717529296875;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" -79.243698120117187;
	setAttr ".tgi[2].ni[2].y" 136.42218017578125;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 297.72283935546875;
	setAttr ".tgi[2].ni[3].y" 75.804092407226563;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 918.5426025390625;
	setAttr ".tgi[2].ni[4].y" 79.050727844238281;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 1520.53271484375;
	setAttr ".tgi[2].ni[5].y" -85.535308837890625;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 1823.5740966796875;
	setAttr ".tgi[2].ni[6].y" 133.17323303222656;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" 1263.1480712890625;
	setAttr ".tgi[2].ni[7].y" -0.48386725783348083;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 295.3822021484375;
	setAttr ".tgi[2].ni[8].y" 201.62461853027344;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" -76.003715515136719;
	setAttr ".tgi[2].ni[9].y" 62.862522125244141;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" 1542.16162109375;
	setAttr ".tgi[2].ni[10].y" 130.25515747070312;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" -73.675041198730469;
	setAttr ".tgi[2].ni[11].y" -4.1582226753234863;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "telescope";
	setAttr ".tgi[3].vl" -type "double2" -626.19045130790334 -41.071426939396687 ;
	setAttr ".tgi[3].vh" -type "double2" 1283.3332823382507 1085.1190045002925 ;
	setAttr -s 31 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 231.37664794921875;
	setAttr ".tgi[3].ni[0].y" 793.87841796875;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" -45.696525573730469;
	setAttr ".tgi[3].ni[1].y" 254.06730651855469;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" -1319.647216796875;
	setAttr ".tgi[3].ni[2].y" 549.92510986328125;
	setAttr ".tgi[3].ni[2].nvs" 18304;
	setAttr ".tgi[3].ni[3].x" -1349.4368896484375;
	setAttr ".tgi[3].ni[3].y" 808.12445068359375;
	setAttr ".tgi[3].ni[3].nvs" 18304;
	setAttr ".tgi[3].ni[4].x" -631.0860595703125;
	setAttr ".tgi[3].ni[4].y" 804.0087890625;
	setAttr ".tgi[3].ni[4].nvs" 18304;
	setAttr ".tgi[3].ni[5].x" 1625.2547607421875;
	setAttr ".tgi[3].ni[5].y" 912.9525146484375;
	setAttr ".tgi[3].ni[5].nvs" 18304;
	setAttr ".tgi[3].ni[6].x" -1011.9846801757812;
	setAttr ".tgi[3].ni[6].y" 981.4810791015625;
	setAttr ".tgi[3].ni[6].nvs" 18304;
	setAttr ".tgi[3].ni[7].x" -1013.0922241210937;
	setAttr ".tgi[3].ni[7].y" 554.07501220703125;
	setAttr ".tgi[3].ni[7].nvs" 18304;
	setAttr ".tgi[3].ni[8].x" 1334.50341796875;
	setAttr ".tgi[3].ni[8].y" 921.14202880859375;
	setAttr ".tgi[3].ni[8].nvs" 18304;
	setAttr ".tgi[3].ni[9].x" 550.31072998046875;
	setAttr ".tgi[3].ni[9].y" 682.90057373046875;
	setAttr ".tgi[3].ni[9].nvs" 18304;
	setAttr ".tgi[3].ni[10].x" 1888.9569091796875;
	setAttr ".tgi[3].ni[10].y" 997.4881591796875;
	setAttr ".tgi[3].ni[10].nvs" 18304;
	setAttr ".tgi[3].ni[11].x" -1026.9644775390625;
	setAttr ".tgi[3].ni[11].y" 807.34716796875;
	setAttr ".tgi[3].ni[11].nvs" 18304;
	setAttr ".tgi[3].ni[12].x" 556.8431396484375;
	setAttr ".tgi[3].ni[12].y" 467.19662475585938;
	setAttr ".tgi[3].ni[12].nvs" 18304;
	setAttr ".tgi[3].ni[13].x" -1358.1983642578125;
	setAttr ".tgi[3].ni[13].y" 963.97998046875;
	setAttr ".tgi[3].ni[13].nvs" 18304;
	setAttr ".tgi[3].ni[14].x" 1333.45703125;
	setAttr ".tgi[3].ni[14].y" 997.73681640625;
	setAttr ".tgi[3].ni[14].nvs" 18304;
	setAttr ".tgi[3].ni[15].x" -1313.1400146484375;
	setAttr ".tgi[3].ni[15].y" 668.9288330078125;
	setAttr ".tgi[3].ni[15].nvs" 18304;
	setAttr ".tgi[3].ni[16].x" 227.22282409667969;
	setAttr ".tgi[3].ni[16].y" 458.72006225585937;
	setAttr ".tgi[3].ni[16].nvs" 18304;
	setAttr ".tgi[3].ni[17].x" 240.50390625;
	setAttr ".tgi[3].ni[17].y" 326.40103149414062;
	setAttr ".tgi[3].ni[17].nvs" 18304;
	setAttr ".tgi[3].ni[18].x" 840.58270263671875;
	setAttr ".tgi[3].ni[18].y" 405.0421142578125;
	setAttr ".tgi[3].ni[18].nvs" 18305;
	setAttr ".tgi[3].ni[19].x" 1894.2520751953125;
	setAttr ".tgi[3].ni[19].y" 910.88336181640625;
	setAttr ".tgi[3].ni[19].nvs" 18304;
	setAttr ".tgi[3].ni[20].x" -1361.639404296875;
	setAttr ".tgi[3].ni[20].y" 1041.79296875;
	setAttr ".tgi[3].ni[20].nvs" 18304;
	setAttr ".tgi[3].ni[21].x" 221.06950378417969;
	setAttr ".tgi[3].ni[21].y" 564.5736083984375;
	setAttr ".tgi[3].ni[21].nvs" 18304;
	setAttr ".tgi[3].ni[22].x" -535.42376708984375;
	setAttr ".tgi[3].ni[22].y" 555.1405029296875;
	setAttr ".tgi[3].ni[22].nvs" 18304;
	setAttr ".tgi[3].ni[23].x" -46.390632629394531;
	setAttr ".tgi[3].ni[23].y" 801.65069580078125;
	setAttr ".tgi[3].ni[23].nvs" 18304;
	setAttr ".tgi[3].ni[24].x" 1626.8150634765625;
	setAttr ".tgi[3].ni[24].y" 997.4881591796875;
	setAttr ".tgi[3].ni[24].nvs" 18304;
	setAttr ".tgi[3].ni[25].x" 1085.8201904296875;
	setAttr ".tgi[3].ni[25].y" 695.10736083984375;
	setAttr ".tgi[3].ni[25].nvs" 18304;
	setAttr ".tgi[3].ni[26].x" 572.0909423828125;
	setAttr ".tgi[3].ni[26].y" 336.91534423828125;
	setAttr ".tgi[3].ni[26].nvs" 18304;
	setAttr ".tgi[3].ni[27].x" -978.789306640625;
	setAttr ".tgi[3].ni[27].y" 671.032958984375;
	setAttr ".tgi[3].ni[27].nvs" 18304;
	setAttr ".tgi[3].ni[28].x" 1112.9522705078125;
	setAttr ".tgi[3].ni[28].y" 485.48309326171875;
	setAttr ".tgi[3].ni[28].nvs" 18304;
	setAttr ".tgi[3].ni[29].x" 851.02410888671875;
	setAttr ".tgi[3].ni[29].y" 604.22943115234375;
	setAttr ".tgi[3].ni[29].nvs" 18305;
	setAttr ".tgi[3].ni[30].x" 238.076171875;
	setAttr ".tgi[3].ni[30].y" 684.0263671875;
	setAttr ".tgi[3].ni[30].nvs" 18304;
select -ne :time1;
	setAttr ".o" 41;
	setAttr ".unw" 41;
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
	setAttr -s 31 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "hyperLayout1.msg" "hingedPiston_X_cmpt.hl";
connectAttr "hingedPiston_X_hinge_ctrl.msg" "hingedPiston_X_cmpt.pni[0].pnod";
connectAttr "hinge_guided_srtOffset.tx" "hinge_srtOffset.tx";
connectAttr "hinge_guided_srtOffset.ty" "hinge_srtOffset.ty";
connectAttr "hinge_guided_srtOffset.tz" "hinge_srtOffset.tz";
connectAttr "hinge_guided_srtOffset.tz" "hinge_srtOffset.guide_attr[0]";
connectAttr "hinge_guided_srtOffset.tx" "hinge_srtOffset.guide_attr[1]";
connectAttr "hinge_guided_srtOffset.ty" "hinge_srtOffset.guide_attr[2]";
connectAttr "piston_rod_clevise_guided_srtOffset.aimVectorX" "piston_rod_clevise_srtOffset.aimVectorX"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.aimVectorY" "piston_rod_clevise_srtOffset.aimVectorY"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.aimVectorZ" "piston_rod_clevise_srtOffset.aimVectorZ"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.tx" "piston_rod_clevise_srtOffset.tx"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.ty" "piston_rod_clevise_srtOffset.ty"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.tz" "piston_rod_clevise_srtOffset.tz"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.ty" "piston_rod_clevise_srtOffset.guide_attr[0]"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.tx" "piston_rod_clevise_srtOffset.guide_attr[1]"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.tz" "piston_rod_clevise_srtOffset.guide_attr[2]"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.aimVectorY" "piston_rod_clevise_srtOffset.guide_attr[3]"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.aimVectorX" "piston_rod_clevise_srtOffset.guide_attr[4]"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.aimVectorZ" "piston_rod_clevise_srtOffset.guide_attr[5]"
		;
connectAttr "piston_rod_top_guided_srtOffset.tx" "piston_rod_top_srtOffset.tx";
connectAttr "piston_rod_top_guided_srtOffset.ty" "piston_rod_top_srtOffset.ty";
connectAttr "piston_rod_top_guided_srtOffset.tz" "piston_rod_top_srtOffset.tz";
connectAttr "piston_rod_top_guided_srtOffset.ty" "piston_rod_top_srtOffset.guide_attr[0]"
		;
connectAttr "piston_rod_top_guided_srtOffset.tx" "piston_rod_top_srtOffset.guide_attr[1]"
		;
connectAttr "piston_rod_top_guided_srtOffset.tz" "piston_rod_top_srtOffset.guide_attr[2]"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.aimVectorX" "piston_cyl_clevise_srtOffset.aimVectorX"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.aimVectorY" "piston_cyl_clevise_srtOffset.aimVectorY"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.aimVectorZ" "piston_cyl_clevise_srtOffset.aimVectorZ"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.tx" "piston_cyl_clevise_srtOffset.tx"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.ty" "piston_cyl_clevise_srtOffset.ty"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.tz" "piston_cyl_clevise_srtOffset.tz"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.aimVectorZ" "piston_cyl_clevise_srtOffset.guide_attr[0]"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.aimVectorX" "piston_cyl_clevise_srtOffset.guide_attr[1]"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.aimVectorY" "piston_cyl_clevise_srtOffset.guide_attr[2]"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.tz" "piston_cyl_clevise_srtOffset.guide_attr[3]"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.tx" "piston_cyl_clevise_srtOffset.guide_attr[4]"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.ty" "piston_cyl_clevise_srtOffset.guide_attr[5]"
		;
connectAttr "telescopeA_btm_guided_srtOffset.tx" "telescopeA_btm_srtOffset.tx";
connectAttr "telescopeA_btm_guided_srtOffset.ty" "telescopeA_btm_srtOffset.ty";
connectAttr "telescopeA_btm_guided_srtOffset.tz" "telescopeA_btm_srtOffset.tz";
connectAttr "telescopeA_btm_guided_srtOffset.tz" "telescopeA_btm_srtOffset.guide_attr[0]"
		;
connectAttr "telescopeA_btm_guided_srtOffset.ty" "telescopeA_btm_srtOffset.guide_attr[1]"
		;
connectAttr "telescopeA_btm_guided_srtOffset.tx" "telescopeA_btm_srtOffset.guide_attr[2]"
		;
connectAttr "telescopeA_top_guided_srtOffset.tx" "telescopeA_top_srtOffset.tx";
connectAttr "telescopeA_top_guided_srtOffset.ty" "telescopeA_top_srtOffset.ty";
connectAttr "telescopeA_top_guided_srtOffset.tz" "telescopeA_top_srtOffset.tz";
connectAttr "telescopeA_top_guided_srtOffset.ty" "telescopeA_top_srtOffset.guide_attr[0]"
		;
connectAttr "telescopeA_top_guided_srtOffset.tx" "telescopeA_top_srtOffset.guide_attr[1]"
		;
connectAttr "telescopeA_top_guided_srtOffset.tz" "telescopeA_top_srtOffset.guide_attr[2]"
		;
connectAttr "telescopeB_btm_guided_srtOffset.tx" "telescopeB_btm_srtOffset.tx";
connectAttr "telescopeB_btm_guided_srtOffset.ty" "telescopeB_btm_srtOffset.ty";
connectAttr "telescopeB_btm_guided_srtOffset.tz" "telescopeB_btm_srtOffset.tz";
connectAttr "telescopeB_btm_guided_srtOffset.tx" "telescopeB_btm_srtOffset.guide_attr[0]"
		;
connectAttr "telescopeB_btm_guided_srtOffset.ty" "telescopeB_btm_srtOffset.guide_attr[1]"
		;
connectAttr "telescopeB_btm_guided_srtOffset.tz" "telescopeB_btm_srtOffset.guide_attr[2]"
		;
connectAttr "telescopeB_top_guided_srtOffset.tx" "telescopeB_top_srtOffset.tx";
connectAttr "telescopeB_top_guided_srtOffset.ty" "telescopeB_top_srtOffset.ty";
connectAttr "telescopeB_top_guided_srtOffset.tz" "telescopeB_top_srtOffset.tz";
connectAttr "telescopeB_top_guided_srtOffset.tz" "telescopeB_top_srtOffset.guide_attr[0]"
		;
connectAttr "telescopeB_top_guided_srtOffset.tx" "telescopeB_top_srtOffset.guide_attr[1]"
		;
connectAttr "telescopeB_top_guided_srtOffset.ty" "telescopeB_top_srtOffset.guide_attr[2]"
		;
connectAttr "piston_cyl_top_guided_srtOffset.tx" "piston_cyl_top_srtOffset.tx";
connectAttr "piston_cyl_top_guided_srtOffset.ty" "piston_cyl_top_srtOffset.ty";
connectAttr "piston_cyl_top_guided_srtOffset.tz" "piston_cyl_top_srtOffset.tz";
connectAttr "piston_cyl_top_guided_srtOffset.tz" "piston_cyl_top_srtOffset.guide_attr[0]"
		;
connectAttr "piston_cyl_top_guided_srtOffset.tx" "piston_cyl_top_srtOffset.guide_attr[1]"
		;
connectAttr "piston_cyl_top_guided_srtOffset.ty" "piston_cyl_top_srtOffset.guide_attr[2]"
		;
connectAttr "telescopeA_guided_srtOffset.tx" "telescopeA_srtOffset.tx";
connectAttr "telescopeA_guided_srtOffset.ty" "telescopeA_srtOffset.ty";
connectAttr "telescopeA_guided_srtOffset.tz" "telescopeA_srtOffset.tz";
connectAttr "telescopeA_guided_srtOffset.ty" "telescopeA_srtOffset.guide_attr[0]"
		;
connectAttr "telescopeA_guided_srtOffset.tx" "telescopeA_srtOffset.guide_attr[1]"
		;
connectAttr "telescopeA_guided_srtOffset.tz" "telescopeA_srtOffset.guide_attr[2]"
		;
connectAttr "telescopeB_guided_srtOffset.tx" "telescopeB_srtOffset.tx";
connectAttr "telescopeB_guided_srtOffset.ty" "telescopeB_srtOffset.ty";
connectAttr "telescopeB_guided_srtOffset.tz" "telescopeB_srtOffset.tz";
connectAttr "telescopeB_guided_srtOffset.tz" "telescopeB_srtOffset.guide_attr[0]"
		;
connectAttr "telescopeB_guided_srtOffset.tx" "telescopeB_srtOffset.guide_attr[1]"
		;
connectAttr "telescopeB_guided_srtOffset.ty" "telescopeB_srtOffset.guide_attr[2]"
		;
connectAttr "hipSwivel_srt.t" "hipSwivel_guided_srt.t";
connectAttr "hipSwivel_srt.r" "hipSwivel_guided_srt.r";
connectAttr "hipSwivel_srt.s" "hipSwivel_guided_srt.s";
connectAttr "hinge_guided_srtOffset_pointConstraint1.ctx" "hinge_guided_srtOffset.tx"
		;
connectAttr "hinge_guided_srtOffset_pointConstraint1.cty" "hinge_guided_srtOffset.ty"
		;
connectAttr "hinge_guided_srtOffset_pointConstraint1.ctz" "hinge_guided_srtOffset.tz"
		;
connectAttr "hingedPiston_X_piston_rod_direction_guide_srt.t" "piston_rod_clevise_guided_srtOffset.aimVector"
		;
connectAttr "piston_rod_clevise_guided_srtOffset_pointConstraint1.ctx" "piston_rod_clevise_guided_srtOffset.tx"
		;
connectAttr "piston_rod_clevise_guided_srtOffset_pointConstraint1.cty" "piston_rod_clevise_guided_srtOffset.ty"
		;
connectAttr "piston_rod_clevise_guided_srtOffset_pointConstraint1.ctz" "piston_rod_clevise_guided_srtOffset.tz"
		;
connectAttr "piston_rod_top_guided_srtOffset_pointConstraint1.ctx" "piston_rod_top_guided_srtOffset.tx"
		;
connectAttr "piston_rod_top_guided_srtOffset_pointConstraint1.cty" "piston_rod_top_guided_srtOffset.ty"
		;
connectAttr "piston_rod_top_guided_srtOffset_pointConstraint1.ctz" "piston_rod_top_guided_srtOffset.tz"
		;
connectAttr "piston_rod_top_guided_srtOffset.pim" "piston_rod_top_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "piston_rod_top_guided_srtOffset.rp" "piston_rod_top_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "piston_rod_top_guided_srtOffset.rpt" "piston_rod_top_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_rod_guide_srt.t" "piston_rod_top_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_rod_guide_srt.rp" "piston_rod_top_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_rod_guide_srt.rpt" "piston_rod_top_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_rod_guide_srt.pm" "piston_rod_top_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "piston_rod_top_guided_srtOffset_pointConstraint1.w0" "piston_rod_top_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.pim" "piston_rod_clevise_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.rp" "piston_rod_clevise_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "piston_rod_clevise_guided_srtOffset.rpt" "piston_rod_clevise_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_rod_clevise_guide_srt.t" "piston_rod_clevise_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_rod_clevise_guide_srt.rp" "piston_rod_clevise_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_rod_clevise_guide_srt.rpt" "piston_rod_clevise_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_rod_clevise_guide_srt.pm" "piston_rod_clevise_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "piston_rod_clevise_guided_srtOffset_pointConstraint1.w0" "piston_rod_clevise_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "hinge_guided_srtOffset.pim" "hinge_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "hinge_guided_srtOffset.rp" "hinge_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "hinge_guided_srtOffset.rpt" "hinge_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_hinge_guide_srt.t" "hinge_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_hinge_guide_srt.rp" "hinge_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_hinge_guide_srt.rpt" "hinge_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_hinge_guide_srt.pm" "hinge_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "hinge_guided_srtOffset_pointConstraint1.w0" "hinge_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "hipAxle_srt.t" "hipAxle_guided_srt.t";
connectAttr "hipAxle_srt.r" "hipAxle_guided_srt.r";
connectAttr "hipAxle_srt.s" "hipAxle_guided_srt.s";
connectAttr "hingedPiston_X_piston_cyl_direction_guide_srt.t" "piston_cyl_clevise_guided_srtOffset.aimVector"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset_pointConstraint1.ctx" "piston_cyl_clevise_guided_srtOffset.tx"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset_pointConstraint1.cty" "piston_cyl_clevise_guided_srtOffset.ty"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset_pointConstraint1.ctz" "piston_cyl_clevise_guided_srtOffset.tz"
		;
connectAttr "telescopeA_btm_guided_srtOffset_pointConstraint1.ctx" "telescopeA_btm_guided_srtOffset.tx"
		;
connectAttr "telescopeA_btm_guided_srtOffset_pointConstraint1.cty" "telescopeA_btm_guided_srtOffset.ty"
		;
connectAttr "telescopeA_btm_guided_srtOffset_pointConstraint1.ctz" "telescopeA_btm_guided_srtOffset.tz"
		;
connectAttr "telescopeA_top_guided_srtOffset_pointConstraint1.ctx" "telescopeA_top_guided_srtOffset.tx"
		;
connectAttr "telescopeA_top_guided_srtOffset_pointConstraint1.cty" "telescopeA_top_guided_srtOffset.ty"
		;
connectAttr "telescopeA_top_guided_srtOffset_pointConstraint1.ctz" "telescopeA_top_guided_srtOffset.tz"
		;
connectAttr "telescopeA_top_guided_srtOffset.pim" "telescopeA_top_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "telescopeA_top_guided_srtOffset.rp" "telescopeA_top_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "telescopeA_top_guided_srtOffset.rpt" "telescopeA_top_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_telescopeA_end_guide_srt.t" "telescopeA_top_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_telescopeA_end_guide_srt.rp" "telescopeA_top_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_telescopeA_end_guide_srt.rpt" "telescopeA_top_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_telescopeA_end_guide_srt.pm" "telescopeA_top_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "telescopeA_top_guided_srtOffset_pointConstraint1.w0" "telescopeA_top_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "telescopeA_btm_guided_srtOffset.pim" "telescopeA_btm_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "telescopeA_btm_guided_srtOffset.rp" "telescopeA_btm_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "telescopeA_btm_guided_srtOffset.rpt" "telescopeA_btm_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_telescopeA_guide_srt.t" "telescopeA_btm_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_telescopeA_guide_srt.rp" "telescopeA_btm_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_telescopeA_guide_srt.rpt" "telescopeA_btm_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_telescopeA_guide_srt.pm" "telescopeA_btm_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "telescopeA_btm_guided_srtOffset_pointConstraint1.w0" "telescopeA_btm_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "telescopeB_btm_guided_srtOffset_pointConstraint1.ctx" "telescopeB_btm_guided_srtOffset.tx"
		;
connectAttr "telescopeB_btm_guided_srtOffset_pointConstraint1.cty" "telescopeB_btm_guided_srtOffset.ty"
		;
connectAttr "telescopeB_btm_guided_srtOffset_pointConstraint1.ctz" "telescopeB_btm_guided_srtOffset.tz"
		;
connectAttr "telescopeB_top_guided_srtOffset_pointConstraint1.ctx" "telescopeB_top_guided_srtOffset.tx"
		;
connectAttr "telescopeB_top_guided_srtOffset_pointConstraint1.cty" "telescopeB_top_guided_srtOffset.ty"
		;
connectAttr "telescopeB_top_guided_srtOffset_pointConstraint1.ctz" "telescopeB_top_guided_srtOffset.tz"
		;
connectAttr "telescopeB_top_guided_srtOffset.pim" "telescopeB_top_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "telescopeB_top_guided_srtOffset.rp" "telescopeB_top_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "telescopeB_top_guided_srtOffset.rpt" "telescopeB_top_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_telescopeB_end_guide_srt.t" "telescopeB_top_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_telescopeB_end_guide_srt.rp" "telescopeB_top_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_telescopeB_end_guide_srt.rpt" "telescopeB_top_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_telescopeB_end_guide_srt.pm" "telescopeB_top_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "telescopeB_top_guided_srtOffset_pointConstraint1.w0" "telescopeB_top_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "telescopeB_btm_guided_srtOffset.pim" "telescopeB_btm_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "telescopeB_btm_guided_srtOffset.rp" "telescopeB_btm_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "telescopeB_btm_guided_srtOffset.rpt" "telescopeB_btm_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_telescopeB_guide_srt.t" "telescopeB_btm_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_telescopeB_guide_srt.rp" "telescopeB_btm_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_telescopeB_guide_srt.rpt" "telescopeB_btm_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_telescopeB_guide_srt.pm" "telescopeB_btm_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "telescopeB_btm_guided_srtOffset_pointConstraint1.w0" "telescopeB_btm_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "piston_cyl_top_guided_srtOffset_pointConstraint1.ctx" "piston_cyl_top_guided_srtOffset.tx"
		;
connectAttr "piston_cyl_top_guided_srtOffset_pointConstraint1.cty" "piston_cyl_top_guided_srtOffset.ty"
		;
connectAttr "piston_cyl_top_guided_srtOffset_pointConstraint1.ctz" "piston_cyl_top_guided_srtOffset.tz"
		;
connectAttr "telescopeA_guided_srtOffset_pointConstraint1.ctx" "telescopeA_guided_srtOffset.tx"
		;
connectAttr "telescopeA_guided_srtOffset_pointConstraint1.cty" "telescopeA_guided_srtOffset.ty"
		;
connectAttr "telescopeA_guided_srtOffset_pointConstraint1.ctz" "telescopeA_guided_srtOffset.tz"
		;
connectAttr "telescopeA_guided_srtOffset.pim" "telescopeA_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "telescopeA_guided_srtOffset.rp" "telescopeA_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "telescopeA_guided_srtOffset.rpt" "telescopeA_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_telescopeA_end_guide_srt.t" "telescopeA_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_telescopeA_end_guide_srt.rp" "telescopeA_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_telescopeA_end_guide_srt.rpt" "telescopeA_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_telescopeA_end_guide_srt.pm" "telescopeA_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "telescopeA_guided_srtOffset_pointConstraint1.w0" "telescopeA_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "telescopeB_guided_srtOffset_pointConstraint1.ctx" "telescopeB_guided_srtOffset.tx"
		;
connectAttr "telescopeB_guided_srtOffset_pointConstraint1.cty" "telescopeB_guided_srtOffset.ty"
		;
connectAttr "telescopeB_guided_srtOffset_pointConstraint1.ctz" "telescopeB_guided_srtOffset.tz"
		;
connectAttr "telescopeB_guided_srtOffset.pim" "telescopeB_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "telescopeB_guided_srtOffset.rp" "telescopeB_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "telescopeB_guided_srtOffset.rpt" "telescopeB_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_telescopeB_end_guide_srt.t" "telescopeB_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_telescopeB_end_guide_srt.rp" "telescopeB_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_telescopeB_end_guide_srt.rpt" "telescopeB_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_telescopeB_end_guide_srt.pm" "telescopeB_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "telescopeB_guided_srtOffset_pointConstraint1.w0" "telescopeB_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "piston_cyl_top_guided_srtOffset.pim" "piston_cyl_top_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "piston_cyl_top_guided_srtOffset.rp" "piston_cyl_top_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "piston_cyl_top_guided_srtOffset.rpt" "piston_cyl_top_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_cyl_end_guide_srt.t" "piston_cyl_top_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_cyl_end_guide_srt.rp" "piston_cyl_top_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_cyl_end_guide_srt.rpt" "piston_cyl_top_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_cyl_end_guide_srt.pm" "piston_cyl_top_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "piston_cyl_top_guided_srtOffset_pointConstraint1.w0" "piston_cyl_top_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.pim" "piston_cyl_clevise_guided_srtOffset_pointConstraint1.cpim"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.rp" "piston_cyl_clevise_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset.rpt" "piston_cyl_clevise_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "hingedPiston_X_piston_cyl_clevise_guide_srt.t" "piston_cyl_clevise_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "hingedPiston_X_piston_cyl_clevise_guide_srt.rp" "piston_cyl_clevise_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "hingedPiston_X_piston_cyl_clevise_guide_srt.rpt" "piston_cyl_clevise_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "hingedPiston_X_piston_cyl_clevise_guide_srt.pm" "piston_cyl_clevise_guided_srtOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset_pointConstraint1.w0" "piston_cyl_clevise_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "piston_cyl_clevise_srtOffset.t" "hingedPiston_X_piston_rod_aimConstraint.tg[0].tt"
		;
connectAttr "hipAxle_srt.wm" "hingedPiston_X_piston_rod_aimConstraint.tg[0].tpm"
		;
connectAttr "piston_rod_clevise_srtOffset.t" "hingedPiston_X_piston_rod_aimConstraint.ct"
		;
connectAttr "hingedPiston_X_hinge_ctrl.wim" "hingedPiston_X_piston_rod_aimConstraint.cpim"
		;
connectAttr "hingedPiston_X_hinge_ctrl.wm" "hingedPiston_X_piston_rod_aimConstraint.wum"
		;
connectAttr "piston_rod_clevise_srtOffset.aimVector" "hingedPiston_X_piston_rod_aimConstraint.a"
		;
connectAttr "piston_rod_clevise_srtOffset.t" "hingedPiston_X_piston_cyl_aimConstraint.tg[0].tt"
		;
connectAttr "hingedPiston_X_hinge_ctrl.wm" "hingedPiston_X_piston_cyl_aimConstraint.tg[0].tpm"
		;
connectAttr "piston_cyl_clevise_srtOffset.t" "hingedPiston_X_piston_cyl_aimConstraint.ct"
		;
connectAttr "hipAxle_srt.wm" "hingedPiston_X_piston_cyl_aimConstraint.wum";
connectAttr "hipAxle_srt.wim" "hingedPiston_X_piston_cyl_aimConstraint.cpim";
connectAttr "piston_cyl_clevise_srtOffset.aimVector" "hingedPiston_X_piston_cyl_aimConstraint.a"
		;
connectAttr "hingedPiston_X_hinge_ctrl_srtOffset_inWorld.ot" "hingedPiston_X_hinge_ctrl_srtOffset.t"
		;
connectAttr "hingedPiston_X_hinge_ctrl_srtOffset_inWorld.or" "hingedPiston_X_hinge_ctrl_srtOffset.r"
		;
connectAttr "hingedPiston_X_hinge_ctrl_srtOffset_inWorld.os" "hingedPiston_X_hinge_ctrl_srtOffset.s"
		;
connectAttr "hingedPiston_X_hinge_srt_inWorld.ot" "|hingedPiston_X_cmpt|deform|hinge_srt.oclr"
		;
connectAttr "hingedPiston_X_hinge_srt_inWorld.ot" "|hingedPiston_X_cmpt|deform|hinge_srt.t"
		;
connectAttr "hingedPiston_X_hinge_srt_inWorld.or" "|hingedPiston_X_cmpt|deform|hinge_srt.r"
		;
connectAttr "hingedPiston_X_hinge_srt_inWorld.os" "|hingedPiston_X_cmpt|deform|hinge_srt.s"
		;
connectAttr "hingedPiston_X_piston_rod_srt_inWorld.ot" "piston_rod_srt.t";
connectAttr "hingedPiston_X_piston_rod_srt_inWorld.or" "piston_rod_srt.r";
connectAttr "hingedPiston_X_piston_rod_srt_inWorld.os" "piston_rod_srt.s";
connectAttr "hingedPiston_X_piston_cyl_srt_inWorld.ot" "piston_cyl_srt.t";
connectAttr "hingedPiston_X_piston_cyl_srt_inWorld.or" "piston_cyl_srt.r";
connectAttr "hingedPiston_X_piston_cyl_srt_inWorld.os" "piston_cyl_srt.s";
connectAttr "hingedPiston_X_telescope_A_srt_inWorld.ot" "telescope_A_srt.t";
connectAttr "hingedPiston_X_telescope_A_srt_inWorld.or" "telescope_A_srt.r";
connectAttr "hingedPiston_X_telescope_A_srt_inWorld.os" "telescope_A_srt.s";
connectAttr "hingedPiston_X_telescope_B_srt_inWorld.ot" "telescope_B_srt.t";
connectAttr "hingedPiston_X_telescope_B_srt_inWorld.or" "telescope_B_srt.r";
connectAttr "hingedPiston_X_telescope_B_srt_inWorld.os" "telescope_B_srt.s";
connectAttr "hingedPiston_X_hinge_srt_inWorld.ot" "|hingedPiston_X_cmpt|output|hinge_srt.t"
		;
connectAttr "hingedPiston_X_hinge_srt_inWorld.or" "|hingedPiston_X_cmpt|output|hinge_srt.r"
		;
connectAttr "hingedPiston_X_hinge_srt_inWorld.os" "|hingedPiston_X_cmpt|output|hinge_srt.s"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hinge_srtOffset.m" "hingedPiston_X_hinge_ctrl_parentMatrix.i[0]";
connectAttr "hipSwivel_srt.wm" "hingedPiston_X_hinge_ctrl_parentMatrix.i[1]";
connectAttr "hingedPiston_X_hinge_ctrl_parentMatrix.o" "hingedPiston_X_hinge_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "hingedPiston_X_hinge_ctrl.wm" "hingedPiston_X_hinge_srt_inWorld.imat"
		;
connectAttr "hingedPiston_X_piston_rod_aimConstraint.ct" "hingedPiston_X_piston_rod_matrix_localTo_hinge.it"
		;
connectAttr "hingedPiston_X_piston_rod_rotation_enabled.o" "hingedPiston_X_piston_rod_matrix_localTo_hinge.ir"
		;
connectAttr "hingedPiston_X_piston_rod_matrix_localTo_hinge.omat" "hingedPiston_X_piston_rod_worldMatrix.i[0]"
		;
connectAttr "hingedPiston_X_hinge_ctrl.wm" "hingedPiston_X_piston_rod_worldMatrix.i[1]"
		;
connectAttr "hingedPiston_X_piston_rod_worldMatrix.o" "hingedPiston_X_piston_rod_srt_inWorld.imat"
		;
connectAttr "hingedPiston_X_piston_rod_aimConstraint.cr" "hingedPiston_X_piston_rod_rotation_enabled.ia"
		;
connectAttr "piston_settings.active" "hingedPiston_X_piston_rod_rotation_enabled.wa"
		;
connectAttr "hingedPiston_X_piston_cyl_aimConstraint.ct" "hingedPiston_X_piston_cyl_matrix_localTo_hipAxle.it"
		;
connectAttr "hingedPiston_X_piston_cyl_rotation_localTo_hipAxle.o" "hingedPiston_X_piston_cyl_matrix_localTo_hipAxle.ir"
		;
connectAttr "hingedPiston_X_piston_cyl_aimConstraint.cr" "hingedPiston_X_piston_cyl_rotation_localTo_hipAxle.ia"
		;
connectAttr "piston_settings.active" "hingedPiston_X_piston_cyl_rotation_localTo_hipAxle.wa"
		;
connectAttr "hingedPiston_X_piston_cyl_matrix_localTo_hipAxle.omat" "hingedPiston_X_piston_cyl_worldMatrix.i[0]"
		;
connectAttr "hipAxle_srt.wm" "hingedPiston_X_piston_cyl_worldMatrix.i[1]";
connectAttr "hingedPiston_X_piston_cyl_worldMatrix.o" "hingedPiston_X_piston_cyl_srt_inWorld.imat"
		;
connectAttr "hingedPiston_X_piston_cyl_worldMatrix.o" "piston_cyl_worldInverseMatrix.imat"
		;
connectAttr "hingedPiston_X_piston_rod_worldMatrix.o" "piston_rod_worldInverseMatrix.imat"
		;
connectAttr "hingedPiston_X_telescopeA_matrix_localTo_piston_cyl.omat" "hingedPiston_X_telescope_A_worldMatrix.i[0]"
		;
connectAttr "hingedPiston_X_piston_cyl_top_worldMatrix.o" "hingedPiston_X_telescope_A_worldMatrix.i[1]"
		;
connectAttr "hingedPiston_X_telescopeB_matrix_localTo_piston_cyl.omat" "hingedPiston_X_telescope_B_worldMatrix.i[0]"
		;
connectAttr "hingedPiston_X_piston_cyl_top_worldMatrix.o" "hingedPiston_X_telescope_B_worldMatrix.i[1]"
		;
connectAttr "hingedPiston_X_telescope_A_worldMatrix.o" "hingedPiston_X_telescope_A_srt_inWorld.imat"
		;
connectAttr "hingedPiston_X_telescope_B_worldMatrix.o" "hingedPiston_X_telescope_B_srt_inWorld.imat"
		;
connectAttr "hingedPiston_X_piston_cyl_worldMatrix.o" "hingedPiston_X_piston_cyl_pass.worldMatrix"
		;
connectAttr "piston_cyl_worldInverseMatrix.omat" "hingedPiston_X_piston_cyl_pass.worldInverseMatrix"
		;
connectAttr "hingedPiston_X_piston_rod_worldMatrix.o" "hingedPiston_X_piston_rod_pass.worldMatrix"
		;
connectAttr "piston_rod_worldInverseMatrix.omat" "hingedPiston_X_piston_rod_pass.worldInverseMatrix"
		;
connectAttr "piston_rod_top_srtOffset.m" "hingedPiston_X_piston_rod_top_worldMatrix.i[0]"
		;
connectAttr "hingedPiston_X_piston_rod_pass.worldMatrix" "hingedPiston_X_piston_rod_top_worldMatrix.i[1]"
		;
connectAttr "telescopeA_top_srtOffset.t" "hingedPiston_X_telescopeA_length.p2";
connectAttr "telescopeB_top_srtOffset.t" "hingedPiston_X_telescopeB_length.p2";
connectAttr "hingedPiston_X_telescopeB_length.d" "hingedPiston_X_telescopeB_maxLength.i1"
		;
connectAttr "hingedPiston_X_telescopeA_length.d" "hingedPiston_X_telescopeB_maxLength.i2"
		;
connectAttr "hingedPiston_X_piston_rod_top_worldMatrix.o" "hingedPiston_X_piston_length.im1"
		;
connectAttr "hingedPiston_X_piston_cyl_top_worldMatrix.o" "hingedPiston_X_piston_length.im2"
		;
connectAttr "piston_settings.active" "hingedPiston_X_telescopeB_activeLength.b";
connectAttr "hingedPiston_X_telescopeB_extended_length.opr" "hingedPiston_X_telescopeB_activeLength.c1r"
		;
connectAttr "hingedPiston_X_telescopeB_restLength.d" "hingedPiston_X_telescopeB_activeLength.c2r"
		;
connectAttr "hingedPiston_X_telescopeB_position_localTo_piston_cyl.o" "hingedPiston_X_telescopeB_matrix_localTo_piston_cyl.it"
		;
connectAttr "piston_settings.active" "hingedPiston_X_telescopeA_activeLength.b";
connectAttr "hingedPiston_X_telescopeA_extended_length.opr" "hingedPiston_X_telescopeA_activeLength.c1r"
		;
connectAttr "hingedPiston_X_telescopeA_restLength.d" "hingedPiston_X_telescopeA_activeLength.c2r"
		;
connectAttr "hingedPiston_X_telescopeA_position_localTo_piston_cyl.o" "hingedPiston_X_telescopeA_matrix_localTo_piston_cyl.it"
		;
connectAttr "piston_cyl_top_srtOffset.m" "hingedPiston_X_piston_cyl_top_worldMatrix.i[0]"
		;
connectAttr "hingedPiston_X_piston_cyl_pass.worldMatrix" "hingedPiston_X_piston_cyl_top_worldMatrix.i[1]"
		;
connectAttr "telescopeB_srtOffset.t" "hingedPiston_X_telescopeB_restLength.p2";
connectAttr "telescopeA_srtOffset.t" "hingedPiston_X_telescopeA_restLength.p2";
connectAttr "hingedPiston_X_piston_length.d" "hingedPiston_X_telescopeB_extended_length.ipr"
		;
connectAttr "hingedPiston_X_telescopeB_maxLength.o" "hingedPiston_X_telescopeB_extended_length.mxr"
		;
connectAttr "hingedPiston_X_piston_length.d" "hingedPiston_X_telescopeA_extended_length.ipr"
		;
connectAttr "hingedPiston_X_telescopeA_length.d" "hingedPiston_X_telescopeA_extended_length.mxr"
		;
connectAttr "hingedPiston_X_telescopeA_activeLength.opr" "hingedPiston_X_telescopeA_position_localTo_piston_cyl.i2x"
		;
connectAttr "hingedPiston_X_telescopeA_activeLength.opr" "hingedPiston_X_telescopeA_position_localTo_piston_cyl.i2y"
		;
connectAttr "hingedPiston_X_telescopeA_activeLength.opr" "hingedPiston_X_telescopeA_position_localTo_piston_cyl.i2z"
		;
connectAttr "piston_cyl_clevise_srtOffset.aimVector" "hingedPiston_X_telescopeA_position_localTo_piston_cyl.i1"
		;
connectAttr "hingedPiston_X_telescopeB_activeLength.opr" "hingedPiston_X_telescopeB_position_localTo_piston_cyl.i2x"
		;
connectAttr "hingedPiston_X_telescopeB_activeLength.opr" "hingedPiston_X_telescopeB_position_localTo_piston_cyl.i2y"
		;
connectAttr "hingedPiston_X_telescopeB_activeLength.opr" "hingedPiston_X_telescopeB_position_localTo_piston_cyl.i2z"
		;
connectAttr "piston_cyl_clevise_srtOffset.aimVector" "hingedPiston_X_telescopeB_position_localTo_piston_cyl.i1"
		;
connectAttr "about.msg" "hyperLayout1.hyp[0].dn";
connectAttr "input.msg" "hyperLayout1.hyp[1].dn";
connectAttr "hipSwivel_srt.msg" "hyperLayout1.hyp[2].dn";
connectAttr "hinge_srtOffset.msg" "hyperLayout1.hyp[3].dn";
connectAttr "piston_rod_clevise_srtOffset.msg" "hyperLayout1.hyp[4].dn";
connectAttr "piston_rod_top_srtOffset.msg" "hyperLayout1.hyp[5].dn";
connectAttr "hipAxle_srt.msg" "hyperLayout1.hyp[6].dn";
connectAttr "piston_cyl_clevise_srtOffset.msg" "hyperLayout1.hyp[7].dn";
connectAttr "telescopeA_btm_srtOffset.msg" "hyperLayout1.hyp[8].dn";
connectAttr "telescopeA_top_srtOffset.msg" "hyperLayout1.hyp[9].dn";
connectAttr "telescopeB_btm_srtOffset.msg" "hyperLayout1.hyp[10].dn";
connectAttr "telescopeB_top_srtOffset.msg" "hyperLayout1.hyp[11].dn";
connectAttr "piston_cyl_top_srtOffset.msg" "hyperLayout1.hyp[12].dn";
connectAttr "telescopeA_srtOffset.msg" "hyperLayout1.hyp[13].dn";
connectAttr "telescopeB_srtOffset.msg" "hyperLayout1.hyp[14].dn";
connectAttr "knee_srt.msg" "hyperLayout1.hyp[15].dn";
connectAttr "piston_settings.msg" "hyperLayout1.hyp[16].dn";
connectAttr "guided.msg" "hyperLayout1.hyp[17].dn";
connectAttr "hipSwivel_guided_srt.msg" "hyperLayout1.hyp[18].dn";
connectAttr "hinge_guided_srtOffset.msg" "hyperLayout1.hyp[19].dn";
connectAttr "piston_rod_clevise_guided_srtOffset.msg" "hyperLayout1.hyp[20].dn";
connectAttr "piston_rod_top_guided_srtOffset.msg" "hyperLayout1.hyp[21].dn";
connectAttr "piston_rod_top_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[22].dn"
		;
connectAttr "piston_rod_clevise_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[23].dn"
		;
connectAttr "hinge_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[24].dn"
		;
connectAttr "hipAxle_guided_srt.msg" "hyperLayout1.hyp[25].dn";
connectAttr "piston_cyl_clevise_guided_srtOffset.msg" "hyperLayout1.hyp[26].dn";
connectAttr "telescopeA_btm_guided_srtOffset.msg" "hyperLayout1.hyp[27].dn";
connectAttr "telescopeA_top_guided_srtOffset.msg" "hyperLayout1.hyp[28].dn";
connectAttr "telescopeA_top_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[29].dn"
		;
connectAttr "telescopeA_btm_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[30].dn"
		;
connectAttr "telescopeB_btm_guided_srtOffset.msg" "hyperLayout1.hyp[31].dn";
connectAttr "telescopeB_top_guided_srtOffset.msg" "hyperLayout1.hyp[32].dn";
connectAttr "telescopeB_top_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[33].dn"
		;
connectAttr "telescopeB_btm_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[34].dn"
		;
connectAttr "piston_cyl_top_guided_srtOffset.msg" "hyperLayout1.hyp[35].dn";
connectAttr "telescopeA_guided_srtOffset.msg" "hyperLayout1.hyp[36].dn";
connectAttr "telescopeA_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[37].dn"
		;
connectAttr "telescopeB_guided_srtOffset.msg" "hyperLayout1.hyp[38].dn";
connectAttr "telescopeB_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[39].dn"
		;
connectAttr "piston_cyl_top_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[40].dn"
		;
connectAttr "piston_cyl_clevise_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[41].dn"
		;
connectAttr "guides.msg" "hyperLayout1.hyp[42].dn";
connectAttr "hingedPiston_X_hinge_guide_srt.msg" "hyperLayout1.hyp[43].dn";
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_hinge_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[44].dn"
		;
connectAttr "hingedPiston_X_piston_rod_clevise_guide_srt.msg" "hyperLayout1.hyp[45].dn"
		;
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_rod_clevise_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[46].dn"
		;
connectAttr "hingedPiston_X_piston_rod_guide_srt.msg" "hyperLayout1.hyp[47].dn";
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_rod_clevise_guide_srt|hingedPiston_X_piston_rod_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[48].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_clevise_guide_srt.msg" "hyperLayout1.hyp[49].dn"
		;
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_cyl_clevise_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[50].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_end_guide_srt.msg" "hyperLayout1.hyp[51].dn"
		;
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_cyl_clevise_guide_srt|hingedPiston_X_piston_cyl_end_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[52].dn"
		;
connectAttr "hingedPiston_X_piston_telescopeA_guide_srt.msg" "hyperLayout1.hyp[53].dn"
		;
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_telescopeA_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[54].dn"
		;
connectAttr "hingedPiston_X_piston_telescopeA_end_guide_srt.msg" "hyperLayout1.hyp[55].dn"
		;
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_telescopeA_guide_srt|hingedPiston_X_piston_telescopeA_end_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[56].dn"
		;
connectAttr "hingedPiston_X_piston_telescopeB_guide_srt.msg" "hyperLayout1.hyp[57].dn"
		;
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_telescopeB_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[58].dn"
		;
connectAttr "hingedPiston_X_piston_telescopeB_end_guide_srt.msg" "hyperLayout1.hyp[59].dn"
		;
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_telescopeB_guide_srt|hingedPiston_X_piston_telescopeB_end_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[60].dn"
		;
connectAttr "internal.msg" "hyperLayout1.hyp[61].dn";
connectAttr "hingedPiston_X_piston_rod_aimConstraint.msg" "hyperLayout1.hyp[62].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_aimConstraint.msg" "hyperLayout1.hyp[63].dn"
		;
connectAttr "control.msg" "hyperLayout1.hyp[64].dn";
connectAttr "hingedPiston_X_hinge_ctrl_srtOffset.msg" "hyperLayout1.hyp[65].dn";
connectAttr "hingedPiston_X_hinge_ctrl.msg" "hyperLayout1.hyp[66].dn";
connectAttr "hingedPiston_X_hinge_ctrlShape.msg" "hyperLayout1.hyp[67].dn";
connectAttr "deform.msg" "hyperLayout1.hyp[68].dn";
connectAttr "|hingedPiston_X_cmpt|deform|hinge_srt.msg" "hyperLayout1.hyp[69].dn"
		;
connectAttr "piston_rod_srt.msg" "hyperLayout1.hyp[70].dn";
connectAttr "piston_cyl_srt.msg" "hyperLayout1.hyp[71].dn";
connectAttr "telescope_A_srt.msg" "hyperLayout1.hyp[72].dn";
connectAttr "telescope_B_srt.msg" "hyperLayout1.hyp[73].dn";
connectAttr "output.msg" "hyperLayout1.hyp[74].dn";
connectAttr "hingedPiston_X_telescopeA_position_localTo_piston_cyl.msg" "hyperLayout1.hyp[75].dn"
		;
connectAttr "hingedPiston_X_telescopeB_position_localTo_piston_cyl.msg" "hyperLayout1.hyp[76].dn"
		;
connectAttr "hingedPiston_X_hinge_ctrl_parentMatrix.msg" "hyperLayout1.hyp[77].dn"
		;
connectAttr "hingedPiston_X_hinge_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[78].dn"
		;
connectAttr "hingedPiston_X_telescopeA_matrix_localTo_piston_cyl.msg" "hyperLayout1.hyp[79].dn"
		;
connectAttr "hingedPiston_X_telescopeA_activeLength.msg" "hyperLayout1.hyp[80].dn"
		;
connectAttr "hingedPiston_X_telescopeB_maxLength.msg" "hyperLayout1.hyp[81].dn";
connectAttr "hingedPiston_X_piston_length.msg" "hyperLayout1.hyp[82].dn";
connectAttr "hingedPiston_X_telescopeB_activeLength.msg" "hyperLayout1.hyp[83].dn"
		;
connectAttr "hingedPiston_X_telescopeB_matrix_localTo_piston_cyl.msg" "hyperLayout1.hyp[84].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_top_worldMatrix.msg" "hyperLayout1.hyp[85].dn"
		;
connectAttr "hingedPiston_X_telescopeB_length.msg" "hyperLayout1.hyp[86].dn";
connectAttr "hingedPiston_X_telescopeA_length.msg" "hyperLayout1.hyp[87].dn";
connectAttr "hingedPiston_X_piston_rod_top_worldMatrix.msg" "hyperLayout1.hyp[88].dn"
		;
connectAttr "hingedPiston_X_piston_rod_pass.msg" "hyperLayout1.hyp[89].dn";
connectAttr "hingedPiston_X_piston_cyl_pass.msg" "hyperLayout1.hyp[90].dn";
connectAttr "hingedPiston_X_telescope_B_srt_inWorld.msg" "hyperLayout1.hyp[91].dn"
		;
connectAttr "hingedPiston_X_telescope_A_srt_inWorld.msg" "hyperLayout1.hyp[92].dn"
		;
connectAttr "hingedPiston_X_telescope_B_worldMatrix.msg" "hyperLayout1.hyp[93].dn"
		;
connectAttr "hingedPiston_X_telescope_A_worldMatrix.msg" "hyperLayout1.hyp[94].dn"
		;
connectAttr "hingedPiston_X_piston_rod_srt_inWorld.msg" "hyperLayout1.hyp[95].dn"
		;
connectAttr "hingedPiston_X_hinge_srt_inWorld.msg" "hyperLayout1.hyp[96].dn";
connectAttr "hingedPiston_X_piston_cyl_worldMatrix.msg" "hyperLayout1.hyp[97].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_srt_inWorld.msg" "hyperLayout1.hyp[98].dn"
		;
connectAttr "hingedPiston_X_piston_rod_rotation_enabled.msg" "hyperLayout1.hyp[99].dn"
		;
connectAttr "hingedPiston_X_piston_rod_matrix_localTo_hinge.msg" "hyperLayout1.hyp[100].dn"
		;
connectAttr "hingedPiston_X_piston_rod_worldMatrix.msg" "hyperLayout1.hyp[101].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_matrix_localTo_hipAxle.msg" "hyperLayout1.hyp[102].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_rotation_localTo_hipAxle.msg" "hyperLayout1.hyp[103].dn"
		;
connectAttr "hingedPiston_X_telescopeA_restLength.msg" "hyperLayout1.hyp[104].dn"
		;
connectAttr "hingedPiston_X_telescopeB_restLength.msg" "hyperLayout1.hyp[105].dn"
		;
connectAttr "hingedPiston_X_telescopeA_extended_length.msg" "hyperLayout1.hyp[106].dn"
		;
connectAttr "hingedPiston_X_telescopeB_extended_length.msg" "hyperLayout1.hyp[107].dn"
		;
connectAttr "piston_rod_worldInverseMatrix.msg" "hyperLayout1.hyp[108].dn";
connectAttr "piston_cyl_worldInverseMatrix.msg" "hyperLayout1.hyp[109].dn";
connectAttr "|hingedPiston_X_cmpt|output|hinge_srt.msg" "hyperLayout1.hyp[110].dn"
		;
connectAttr "hingedPiston_X_piston_rod_direction_guide_srt.msg" "hyperLayout1.hyp[111].dn"
		;
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_rod_clevise_guide_srt|hingedPiston_X_piston_rod_direction_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[112].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_direction_guide_srt.msg" "hyperLayout1.hyp[113].dn"
		;
connectAttr "|hingedPiston_X_cmpt|guides|hingedPiston_X_piston_cyl_clevise_guide_srt|hingedPiston_X_piston_cyl_direction_guide_srt|hingedPiston_X_curveShape2.msg" "hyperLayout1.hyp[114].dn"
		;
connectAttr "hingedPiston_X_hinge_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "hingedPiston_X_hinge_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "hingedPiston_X_hinge_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "hinge_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "hingedPiston_X_hinge_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "hipSwivel_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "|hingedPiston_X_cmpt|deform|hinge_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "hingedPiston_X_hinge_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "hingedPiston_X_hinge_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "piston_rod_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "piston_rod_clevise_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "hingedPiston_X_piston_rod_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "hingedPiston_X_piston_rod_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "hingedPiston_X_piston_rod_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "hingedPiston_X_piston_rod_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "piston_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn";
connectAttr "piston_rod_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn";
connectAttr "hingedPiston_X_piston_rod_rotation_enabled.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "piston_cyl_clevise_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "hingedPiston_X_piston_rod_matrix_localTo_hinge.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "hipAxle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn";
connectAttr "hingedPiston_X_hinge_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_rotation_localTo_hipAxle.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "piston_rod_clevise_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_matrix_localTo_hipAxle.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "piston_cyl_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "piston_cyl_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn";
connectAttr "hingedPiston_X_piston_cyl_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "piston_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn";
connectAttr "piston_cyl_clevise_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "hipAxle_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn";
connectAttr "hingedPiston_X_telescopeA_restLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "telescopeB_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "telescopeB_top_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "piston_rod_top_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "hingedPiston_X_piston_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "hingedPiston_X_telescope_B_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_top_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "hingedPiston_X_telescopeB_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "hingedPiston_X_telescope_B_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "hingedPiston_X_telescopeA_activeLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "telescope_A_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "hingedPiston_X_piston_rod_top_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "hingedPiston_X_telescopeB_activeLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "piston_cyl_top_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "hingedPiston_X_telescope_A_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "telescopeA_top_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "hingedPiston_X_telescopeB_extended_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "hingedPiston_X_telescopeB_restLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "hingedPiston_X_telescopeB_position_localTo_piston_cyl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[18].dn"
		;
connectAttr "telescope_B_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[19].dn"
		;
connectAttr "hingedPiston_X_piston_cyl_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[20].dn"
		;
connectAttr "piston_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[21].dn"
		;
connectAttr "hingedPiston_X_telescopeB_maxLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[22].dn"
		;
connectAttr "telescopeA_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[23].dn"
		;
connectAttr "hingedPiston_X_telescope_A_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[24].dn"
		;
connectAttr "hingedPiston_X_telescopeA_matrix_localTo_piston_cyl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[25].dn"
		;
connectAttr "piston_cyl_clevise_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[26].dn"
		;
connectAttr "hingedPiston_X_telescopeA_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[27].dn"
		;
connectAttr "hingedPiston_X_telescopeB_matrix_localTo_piston_cyl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[28].dn"
		;
connectAttr "hingedPiston_X_telescopeA_position_localTo_piston_cyl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[29].dn"
		;
connectAttr "hingedPiston_X_telescopeA_extended_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[30].dn"
		;
connectAttr "hingedPiston_X_hinge_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_hinge_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_hinge_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_piston_rod_matrix_localTo_hinge.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_piston_rod_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_piston_rod_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_piston_cyl_matrix_localTo_hipAxle.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_piston_cyl_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_piston_cyl_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "piston_cyl_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "piston_rod_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "hingedPiston_X_telescope_A_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescope_B_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescope_A_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescope_B_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_piston_rod_top_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeA_length.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeB_length.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeB_maxLength.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_piston_length.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "hingedPiston_X_telescopeB_activeLength.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeB_matrix_localTo_piston_cyl.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeA_activeLength.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeA_matrix_localTo_piston_cyl.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_piston_cyl_top_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeB_restLength.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeA_restLength.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeB_extended_length.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeA_extended_length.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeA_position_localTo_piston_cyl.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hingedPiston_X_telescopeB_position_localTo_piston_cyl.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of hingedPiston.ma
