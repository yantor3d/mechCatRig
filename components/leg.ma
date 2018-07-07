//Maya ASCII 2016 scene
//Name: leg.ma
//Last modified: Sat, Jul 07, 2018 03:42:25 PM
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
	rename -uid "C0EFDD4D-44E1-E52F-9791-1482D903FBCF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.326543985431577 5.4140477302012986 31.13964421785283 ;
	setAttr ".r" -type "double3" -2.7383503889404408 -7884.9999999514748 -1.213356354874827e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "01094DA5-418A-91BA-AAEA-C29A88918CEB";
	setAttr -k off ".v" no;
	setAttr ".fl" 25.545956075368974;
	setAttr ".ncp" 0.01;
	setAttr ".fcp" 1000;
	setAttr ".coi" 21.324338089500245;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.5524999999999998 8.2524999976158142 14.185098160050405 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A3757C1B-4368-E3FC-40DD-0FAE0CD33AD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.1514520725375403 103.75543456497324 10.83705416826527 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75858DB8-4465-9D67-6547-66AC47F890F7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 31.515744420997457;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "1923CF4C-4811-C14F-5F11-E4A2E22BA347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.7316830441134687 14.041402014007927 105.17480305669288 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AC477CAD-4120-C2E3-CE80-7D900BFF1E75";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.215749815242336;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8723419B-4AC5-F875-88E3-48B503E7BEA8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 111.8773906465821 8.0437943560551979 7.0552734739787253 ;
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".rp" -type "double3" 0 0 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" -1.421085471520201e-014 0 1.4210854715202019e-014 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "950758FD-468D-2068-74AC-BCAF91A18C89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000008;
	setAttr ".ow" 44.986799098187724;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode dagContainer -n "leg_X_cmpt";
	rename -uid "D9A9A887-4C0C-3D97-CF6B-99B21A7A1DA6";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 8 ".pni";
	setAttr ".ctor" -type "string" "rporter";
	setAttr ".cdat" -type "string" "2018/07/04 10:19:56";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.375 8.2524999976158142 7.253572940826416 ;
	setAttr ".sp" -type "double3" 3.375 8.2524999976158142 7.253572940826416 ;
	setAttr ".oclr" -type "float3" 1 1 0 ;
	setAttr ".aal" -type "attributeAlias" {"child","canBeChild[0]","parent","canBeParent[0]"
		,"hip_fk_ctrl","publishedNodeInfo[0]","knee_fk_ctrl","publishedNodeInfo[1]","ankle_fk_ctrl"
		,"publishedNodeInfo[2]","ikFoot_ctrl","publishedNodeInfo[3]","ikToe_ctrl","publishedNodeInfo[4]"
		,"ikBall_ctrl","publishedNodeInfo[5]","ikAnkle_ctrl","publishedNodeInfo[6]","ik_poleVector_ctrl"
		,"publishedNodeInfo[7]"} ;
createNode transform -n "about" -p "leg_X_cmpt";
	rename -uid "351A749E-4445-64AC-E5D8-A2BE492BD485";
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
	setAttr ".component_part" -type "string" "leg";
	setAttr ".component_type" -type "string" "mechaCatLeg";
	setAttr ".component_version" -type "string" "1.0.0";
createNode transform -n "input" -p "leg_X_cmpt";
	rename -uid "B63C48F7-4F7A-1BF0-511F-719EC4AA8693";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "root_srt" -p "input";
	rename -uid "8FCA2532-46AB-F695-A9E7-3B87A3A03FFA";
createNode transform -n "ikFoot_srtOffset" -p "root_srt";
	rename -uid "A196142D-4B9D-6F01-F99E-789AF86E3297";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "ankle_ik_srtOffset" -p "ikFoot_srtOffset";
	rename -uid "652B0FE5-4347-4FEB-47C9-97A68216F25F";
createNode transform -n "poleVector_srtOffset" -p "root_srt";
	rename -uid "5A86BE01-4404-F17D-AA80-EB8F72D9CDDF";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "shoulder_srt" -p "input";
	rename -uid "C0CCF9A5-4AB4-F35D-7773-94B67B45B6DB";
	setAttr ".t" -type "double3" 1.41 13.272556304931641 6.7499999999999991 ;
createNode transform -n "shoulder_ik_start_srtOffset" -p "|leg_X_cmpt|input|shoulder_srt";
	rename -uid "A5D40D62-4C30-1D44-B2D6-D891BCACA1DB";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "shoulder_ik_end_srtOffset" -p "|leg_X_cmpt|input|shoulder_srt";
	rename -uid "6A71F177-40D5-DB7E-D055-A4A42934F71F";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "shoulderEnd_srt" -p "input";
	rename -uid "4F6A2A3D-49BB-036D-70BC-F58526F0F2A0";
	setAttr ".t" -type "double3" 4.5 14.629999995231628 6.75 ;
createNode transform -n "hip_srtOffset" -p "shoulderEnd_srt";
	rename -uid "3FA08002-468D-5389-5875-DFAB87F64042";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "knee_srtOffset" -p "hip_srtOffset";
	rename -uid "972FEB3F-4471-ED40-0B12-E1B74292B3B4";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "knee_ik_srtOffset" -p "knee_srtOffset";
	rename -uid "277B577C-4CC6-05E6-48AD-3B8D71C17401";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "ankle_srtOffset" -p "knee_srtOffset";
	rename -uid "211DB235-47CC-A063-5D60-83B64A43237D";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "ankle_ik_srtOffset" -p "ankle_srtOffset";
	rename -uid "402378F6-4AE3-B89D-0CC9-5A93077ECDD2";
createNode transform -n "foot_srtOffset" -p "ankle_srtOffset";
	rename -uid "3F841D64-4298-1F2A-2D64-02B98FDD007E";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "ball_srtOffset" -p "foot_srtOffset";
	rename -uid "34D43E44-4442-C10D-0225-5E924F898714";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "toe_srtOffset" -p "ball_srtOffset";
	rename -uid "F61C26EB-4371-268F-3E88-FFA65BC29E10";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "foot_ik_srtOffset" -p "foot_srtOffset";
	rename -uid "04B9B329-4061-EF3E-396F-2896EC76AE14";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "hip_ik_srtOffset" -p "hip_srtOffset";
	rename -uid "00A5C975-47C8-916A-8864-D08573AFBCF4";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999944 ;
createNode transform -n "shoulder_ik_aim_srtOffset" -p "hip_srtOffset";
	rename -uid "81322C04-4ED9-5CB3-F0FA-C087FF5FD884";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "leg_settings" -p "input";
	rename -uid "600A76A5-4DF3-6C85-7311-87A1A9F6B31A";
	addAttr -ci true -k true -sn "followShoulderRot" -ln "followShoulderRot" -min 0 
		-max 1 -at "double";
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
	setAttr -k on ".followShoulderRot";
createNode transform -n "ik_leg_settings" -p "input";
	rename -uid "3004CB2C-4ECC-8991-A401-72B72D796DB5";
	addAttr -ci true -sn "ikBaseDirection" -ln "ikBaseDirection" -at "double3" -nc 
		3;
	addAttr -ci true -sn "ikBaseDirectionX" -ln "ikBaseDirectionX" -at "double" -p "ikBaseDirection";
	addAttr -ci true -sn "ikBaseDirectionY" -ln "ikBaseDirectionY" -at "double" -p "ikBaseDirection";
	addAttr -ci true -sn "ikBaseDirectionZ" -ln "ikBaseDirectionZ" -at "double" -p "ikBaseDirection";
	addAttr -ci true -sn "upperBoneLength" -ln "upperBoneLength" -at "double";
	addAttr -ci true -sn "lowerBoneLength" -ln "lowerBoneLength" -at "double";
	addAttr -ci true -sn "kneeDirection" -ln "kneeDirection" -min 0 -max 1 -en "backwards:forewards" 
		-at "enum";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
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
	setAttr -k on ".ikBaseDirection";
	setAttr -k on ".ikBaseDirectionX";
	setAttr -k on ".ikBaseDirectionY";
	setAttr -k on ".ikBaseDirectionZ";
	setAttr -k on ".upperBoneLength";
	setAttr -k on ".lowerBoneLength";
	setAttr -k on ".kneeDirection";
createNode transform -n "guided" -p "leg_X_cmpt";
	rename -uid "F5FDC724-41C3-CDCF-C753-23AE01EC021A";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "leg_X_root_guided_srt" -p "guided";
	rename -uid "D91B9F91-4BCA-4C8F-9DB3-F4A26FAFC3EE";
createNode transform -n "leg_X_ikFoot_ctrl_guided_srtOffset" -p "leg_X_root_guided_srt";
	rename -uid "83F8038B-4873-0B76-DD6E-31B41E62921B";
createNode transform -n "leg_X_ikAnkle_guided_srtOffset" -p "leg_X_ikFoot_ctrl_guided_srtOffset";
	rename -uid "E34B6933-4EBC-247D-D044-C49E1D013A82";
createNode pointConstraint -n "leg_X_ikAnkle_guided_srtOffset_pointConstraint1" 
		-p "leg_X_ikAnkle_guided_srtOffset";
	rename -uid "DC5B78BF-43F7-66FE-ED87-B3B85902CC5F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_ankle_guide_srtW0" -dv 1 -min 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5000000000000027 -1.2687625885009732 -20 1;
	setAttr ".rst" -type "double3" 8.5830690110810792e-008 2.8872374067306561 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1" 
		-p "leg_X_ikFoot_ctrl_guided_srtOffset";
	rename -uid "A151FB6D-47AF-03EA-7CA8-62A1D3CC79F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_ikFoot_ctrl_guide_srtW0" -dv 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".rst" -type "double3" 4.5000000000000027 1.2687625885009732 20 ;
	setAttr -k on ".w0";
createNode transform -n "leg_X_poleVector_guided_srtOffset" -p "leg_X_root_guided_srt";
	rename -uid "849DBEBC-4441-D9CD-53A8-E8BA32910D3F";
createNode transform -n "leg_X_shoulder_guided_srt" -p "guided";
	rename -uid "741C1DB2-403C-E50F-9388-9D9653FB330C";
createNode transform -n "leg_X_shoulder_ik_start_guide_srtOffset" -p "leg_X_shoulder_guided_srt";
	rename -uid "960333BB-4465-8D39-708C-98A26FF6922A";
	setAttr ".oclr" -type "float3" -0.80499995 1.3070002 0 ;
createNode pointConstraint -n "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1" 
		-p "leg_X_shoulder_ik_start_guide_srtOffset";
	rename -uid "87577F53-439B-2964-9B19-FBA4EE5886AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_shoulder_ik_start_guide_srtW0" 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.4099999999999999 -13.272556304931641 -6.7499999999999991 1;
	setAttr ".rst" -type "double3" -0.805 1.3070000000000004 0 ;
	setAttr -k on ".w0";
createNode transform -n "leg_X_shoulder_ik_end_guide_srtOffset" -p "leg_X_shoulder_guided_srt";
	rename -uid "D1CD55C6-4E07-D8B5-5D20-AD9719C3AB9C";
createNode pointConstraint -n "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1" 
		-p "leg_X_shoulder_ik_end_guide_srtOffset";
	rename -uid "61CF4CEF-44D5-33A8-A6E9-93A9E21223E7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_shoulder_ik_end_guide_srtW0" 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.4099999999999999 -13.272556304931641 -6.7499999999999991 1;
	setAttr ".rst" -type "double3" 2.3369999999999997 1.3070000000000004 0 ;
	setAttr -k on ".w0";
createNode transform -n "leg_X_shoulderEnd_guided_srt" -p "guided";
	rename -uid "862DAA2C-4372-9C9D-051B-7BBE465D4224";
createNode transform -n "leg_X_hip_guided_srtOffset" -p "leg_X_shoulderEnd_guided_srt";
	rename -uid "4D48E086-490D-40A8-7343-44B41941D7F5";
	setAttr ".t" -type "double3" 0 0 1.7763568394002505e-015 ;
createNode transform -n "leg_X_hip_ik_guided_srtOffset" -p "leg_X_hip_guided_srtOffset";
	rename -uid "F1FEBEBC-4A79-764B-ED1C-4BA99DE1929B";
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999944 ;
createNode aimConstraint -n "leg_X_hip_ik_guided_srt_aimConstraint1" -p "leg_X_hip_ik_guided_srtOffset";
	rename -uid "F9FC5ED9-4F01-F2A7-E3F8-51A2C936543B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "knee_guide_srtW0" -dv 1 -at "double";
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5 -14.629999995231628 -6.7500000000000018 1;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".rsrr" -type "double3" 81.160598861724054 -1.9308661100244086e-007 -1.6538011176050633e-007 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "leg_X_hip_ik_guided_srtOffset_pointConstraint1" -p
		 "leg_X_hip_ik_guided_srtOffset";
	rename -uid "8192040A-4930-5A77-80CD-4582D4C66B14";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_hip_guide_srtW0" -dv 1 -min 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5 -14.629999995231628 -6.7500000000000018 1;
	setAttr -k on ".w0";
createNode transform -n "leg_X_shoulder_ik_aim_guided_srtOffset" -p "leg_X_hip_guided_srtOffset";
	rename -uid "81E2856E-4A81-A3D7-CC60-F289BD14F94E";
createNode pointConstraint -n "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1" 
		-p "leg_X_shoulder_ik_aim_guided_srtOffset";
	rename -uid "1F899E39-4D62-8203-3D39-E8A9C0C02ED7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_shoulder_ik_end_guide_srtW0" 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5 -14.629999995231628 -6.7500000000000018 1;
	setAttr ".rst" -type "double3" -0.75300000000000011 -0.050443690299987409 -2.6645352591003757e-015 ;
	setAttr -k on ".w0";
createNode transform -n "leg_X_knee_guided_srtOffset" -p "leg_X_hip_guided_srtOffset";
	rename -uid "844F924E-4282-681C-06AD-FC9A64CDC25F";
createNode transform -n "leg_X_knee_ik_guided_srtOffset" -p "leg_X_knee_guided_srtOffset";
	rename -uid "D5F6CAD8-4463-014D-2322-DF89D7A9F60F";
createNode aimConstraint -n "leg_X_knee_ik_guided_srt_aimConstraint1" -p "leg_X_knee_ik_guided_srtOffset";
	rename -uid "22BF1F3C-47EF-593C-681B-F785F753D924";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ankle_guide_srtW0" -dv 1 -at "double";
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.4999999666213988 -4.8429999952316276 -8.2720000000000002 1;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".rsrr" -type "double3" 178.52827274903149 2.5534817623433391e-007 1.9880814688791647e-005 ;
	setAttr -k on ".w0";
createNode transform -n "leg_X_ankle_guided_srtOffset" -p "leg_X_knee_guided_srtOffset";
	rename -uid "45023C36-48F6-AE43-0716-58B3B1739D07";
createNode transform -n "leg_X_ankle_ik_guided_srtOffset" -p "leg_X_ankle_guided_srtOffset";
	rename -uid "AC993BF0-46B0-3B90-B47D-12A1786737D4";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-016 0 ;
createNode aimConstraint -n "leg_X_ankle_ik_guided_srt_aimConstraint1" -p "leg_X_ankle_ik_guided_srtOffset";
	rename -uid "65BB92A7-4BA9-F4C7-0D90-B0B7388575E2";
	addAttr -dcb 0 -ci true -sn "w0" -ln "ikFoot_ctrl_guide_srtW0" -dv 1 -at "double";
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5000000858306928 -4.1559999952316291 -20 1;
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wum" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4999999666213988 4.8429999952316276 8.2720000000000002 1;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -179.71732804470602 -0.00034522983257674969 179.99999659350846 ;
	setAttr -k on ".w0";
createNode transform -n "leg_X_foot_guided_srtOffset" -p "leg_X_ankle_guided_srtOffset";
	rename -uid "4C710862-4B74-595A-9199-A492A0E3316F";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "leg_X_foot_ik_guided_srtOffset" -p "leg_X_foot_guided_srtOffset";
	rename -uid "95A37F01-41B0-0C46-63E5-72AFBA7AB192";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode orientConstraint -n "leg_X_foot_ik_guided_srt_orientConstraint1" -p "leg_X_foot_ik_guided_srtOffset";
	rename -uid "EA38CA94-4D7A-5E61-B378-D7B2227E02AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ikFoot_ctrl_guide_srtW0" -dv 1 -min 
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
	setAttr ".cpim" -type "matrix" 0.99999999999999978 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5000000858306919 -4.1559999952316291 -20 1;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
createNode transform -n "leg_X_ball_guided_srtOffset" -p "leg_X_foot_guided_srtOffset";
	rename -uid "A3605A2B-41C8-51F6-5C81-E893E92F6D93";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "leg_X_toe_guided_srtOffset" -p "leg_X_ball_guided_srtOffset";
	rename -uid "81DCE0A8-4DDB-1354-07D0-7DBC683FD118";
createNode orientConstraint -n "leg_X_toe_guided_srt_orientConstraint1" -p "leg_X_toe_guided_srtOffset";
	rename -uid "1502582F-4BAC-E9EB-764A-50BECD2558B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ikToe_ctrl_guide_srtW0" -dv 1 -min 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5000000000000027 -0.55653087298074944 -19.661577224731445 1;
	setAttr ".rsrr" -type "double3" 180 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "leg_X_toe_guided_srtOffset_pointConstraint1" -p "leg_X_toe_guided_srtOffset";
	rename -uid "9FD641FE-48BA-1CBB-45A4-A3A5843F3371";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_ikToe_ctrl_guide_srtW0" -dv 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5000000000000027 -0.55653087298074944 -19.661577224731445 1;
	setAttr ".rst" -type "double3" 0 -0.55653087298074921 2.3820133209228516 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "leg_X_ball_guided_srtOffset_pointConstraint1" -p "leg_X_ball_guided_srtOffset";
	rename -uid "E2B96019-429E-35B5-F766-38913FAC18E7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_ikBall_ctrl_guide_srtW0" -dv 
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
	setAttr ".cpim" -type "matrix" 0.99999999999999978 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5000000858306919 -4.1559999952316291 -20 1;
	setAttr ".rst" -type "double3" -8.5830690110810792e-008 -3.5994691222508797 -0.33842277526855469 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "leg_X_foot_guided_srtOffset_pointConstraint1" -p "leg_X_foot_guided_srtOffset";
	rename -uid "4FD2CC80-4A19-1F32-25DB-2FA45644F9B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_ankle_guide_srtW0" -dv 1 -min 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5000000858306928 -4.1559999952316291 -20 1;
	setAttr -k on ".w0";
createNode nurbsCurve -n "leg_X_ankle_guided_srtOffset_xVectorShape" -p "leg_X_ankle_guided_srtOffset";
	rename -uid "83F62D7D-4D4F-1267-72A3-F883C251AACF";
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
createNode nurbsCurve -n "leg_X_ankle_guided_srtOffset_zVectorShape" -p "leg_X_ankle_guided_srtOffset";
	rename -uid "AE1A817B-4DB9-DBEF-42DE-42868FAD5E26";
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
createNode nurbsCurve -n "leg_X_ankle_guided_srtOffset_yVectorShape" -p "leg_X_ankle_guided_srtOffset";
	rename -uid "BC355288-4AE8-E796-CD1D-F9B82817F4BD";
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
createNode pointConstraint -n "leg_X_ankle_guided_srtOffset_pointConstraint1" -p "leg_X_ankle_guided_srtOffset";
	rename -uid "8220CAEF-43D7-50A5-3323-DA9706855010";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_ankle_guide_srtW0" -dv 1 -min 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.4999999666213988 -4.8429999952316276 -8.2720000000000002 1;
	setAttr ".rst" -type "double3" 1.1920929399167335e-007 -0.6869999999999985 11.728 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "leg_X_ankle_guided_srtOffset_aimConstraint1" -p "leg_X_ankle_guided_srtOffset";
	rename -uid "F66DF3AC-4704-17A4-9858-DBA1DDEC4541";
	addAttr -dcb 0 -ci true -sn "w0" -ln "leg_X_ankle_aim_guide_srtW0" -dv 1 -at "double";
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.4999999666213988 -4.8429999952316276 -8.2720000000000002 1;
	setAttr ".wum" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5000000858306928 5.1559999952316291 20 1;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode nurbsCurve -n "leg_X_knee_guided_srtOffset_xVectorShape" -p "leg_X_knee_guided_srtOffset";
	rename -uid "5BA6215A-4959-D45C-24F9-DA835FCB5611";
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
createNode nurbsCurve -n "leg_X_knee_guided_srtOffset_zVectorShape" -p "leg_X_knee_guided_srtOffset";
	rename -uid "5A100F18-4181-F2DD-3AE1-D0B8EE83D743";
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
createNode nurbsCurve -n "leg_X_knee_guided_srtOffset_yVectorShape" -p "leg_X_knee_guided_srtOffset";
	rename -uid "78B5E631-4CC7-94DB-778A-76B8B6512EAB";
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
createNode pointConstraint -n "leg_X_knee_guided_srtOffset_pointConstraint1" -p "leg_X_knee_guided_srtOffset";
	rename -uid "0CB302FC-47D2-E903-4E76-B2ADA8E6EAD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "leg_X_knee_guide_srtW0" -dv 1 -min 
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5 -14.629999995231628 -6.7500000000000018 1;
	setAttr ".rst" -type "double3" -3.3378601216327297e-008 -9.787 1.5219999999999985 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "leg_X_knee_guided_srtOffset_aimConstraint1" -p "leg_X_knee_guided_srtOffset";
	rename -uid "2B3B4A09-4F79-C225-0D30-B6ABB10D4002";
	addAttr -dcb 0 -ci true -sn "w0" -ln "leg_X_knee_aim_guide_srtW0" -dv 1 -at "double";
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5 -14.629999995231628 -6.7500000000000018 1;
	setAttr ".wum" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.4999999666213988 5.8429999952316276 8.2720000000000002 1;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode nurbsCurve -n "leg_X_hip_guided_srtOffset_xVectorShape" -p "leg_X_hip_guided_srtOffset";
	rename -uid "CBE085A0-47DF-D65E-7EA2-F3A4F5C91D92";
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
createNode nurbsCurve -n "leg_X_hip_guided_srtOffset_zVectorShape" -p "leg_X_hip_guided_srtOffset";
	rename -uid "034B4EC0-4EBC-1D0B-FE4B-71B91185F530";
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
createNode nurbsCurve -n "leg_X_hip_guided_srtOffset_yVectorShape" -p "leg_X_hip_guided_srtOffset";
	rename -uid "2C9561EF-487A-4E6D-8478-68B0E4C6BE7B";
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
createNode aimConstraint -n "leg_X_hip_guided_srtOffset_aimConstraint1" -p "leg_X_hip_guided_srtOffset";
	rename -uid "F333868B-4587-9950-2066-7FBFDB81FD6C";
	addAttr -dcb 0 -ci true -sn "w0" -ln "leg_X_hip_aim_guide_srtW0" -dv 1 -at "double";
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
	setAttr ".cpim" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -4.5 -14.629999995231628 -6.75 1;
	setAttr ".wum" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5 15.629999995231628 6.7500000000000018 1;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "leg_X_ik_rotatePlane_guided_srt" -p "guided";
	rename -uid "7C7C2A88-4A1A-B622-390D-F3AAB3339753";
createNode transform -n "leg_X_ik_leg_guided_settings" -p "guided";
	rename -uid "CFB712A9-410A-9AB9-9AEA-0ABB233C6F21";
	addAttr -ci true -sn "ikBaseDirection" -ln "ikBaseDirection" -at "double3" -nc 
		3;
	addAttr -ci true -sn "ikBaseDirectionX" -ln "ikBaseDirectionX" -at "double" -p "ikBaseDirection";
	addAttr -ci true -sn "ikBaseDirectionY" -ln "ikBaseDirectionY" -at "double" -p "ikBaseDirection";
	addAttr -ci true -sn "ikBaseDirectionZ" -ln "ikBaseDirectionZ" -at "double" -p "ikBaseDirection";
	addAttr -ci true -sn "upperBoneLength" -ln "upperBoneLength" -at "double";
	addAttr -ci true -sn "lowerBoneLength" -ln "lowerBoneLength" -at "double";
	addAttr -ci true -sn "kneeDirection" -ln "kneeDirection" -min 0 -max 1 -en "backwards:forewards" 
		-at "enum";
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
	setAttr -k on ".ikBaseDirection";
	setAttr -k on ".ikBaseDirectionX";
	setAttr -k on ".ikBaseDirectionY";
	setAttr -k on ".ikBaseDirectionZ";
	setAttr -k on ".upperBoneLength";
	setAttr -k on ".lowerBoneLength";
	setAttr -k on ".kneeDirection";
createNode transform -n "output" -p "leg_X_cmpt";
	rename -uid "08C2733F-4339-793F-32D9-FBBE8191D972";
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
	rename -uid "5D765AA6-40F4-2FF1-983C-74BDE394AC99";
	setAttr ".dla" yes;
createNode transform -n "hip_srt" -p "output";
	rename -uid "D2C0D6E6-45C8-57AB-7012-37A1F2054B49";
	setAttr ".dla" yes;
createNode transform -n "knee_srt" -p "output";
	rename -uid "FE4AC322-4F96-910C-DEA0-20A8E9D6B4B1";
	setAttr ".dla" yes;
createNode transform -n "ankle_srt" -p "output";
	rename -uid "570486FA-4C55-08FA-BB41-ECB2BCB46FE4";
	setAttr ".dla" yes;
createNode transform -n "foot_srt" -p "output";
	rename -uid "67597F35-4B0C-1D76-CAF6-7497D0F76293";
	setAttr ".dla" yes;
createNode transform -n "toe_srt" -p "output";
	rename -uid "2E6F75E1-413E-BFEB-9A1E-90AB2043D05A";
	setAttr ".dla" yes;
createNode transform -n "guides" -p "leg_X_cmpt";
	rename -uid "67516CF6-4360-3368-9BC9-2098D29D8F11";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "leg_X_hip_guide_srt" -p "guides";
	rename -uid "A1FF9607-4944-A5FF-CE2A-C88AF5D3F0FA";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.5 14.629999995231628 6.7500000000000018 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".oclr" -type "float3" 0 1 0 ;
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_hip_guide_srt";
	rename -uid "85AFC4F2-421D-25B7-A3E2-F19AF5E80C2F";
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
createNode transform -n "leg_X_hip_aim_guide_srt" -p "leg_X_hip_guide_srt";
	rename -uid "CE6B7849-487E-C98E-EA5A-629B3102CD59";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_hip_aim_guide_srt";
	rename -uid "316C8C61-43F3-D1C8-41D1-AAA46F9C2F3D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
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
createNode transform -n "leg_X_hip_up_guide_srt" -p "leg_X_hip_guide_srt";
	rename -uid "5B694988-400E-CA29-A807-ECA5BA9058A9";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_hip_up_guide_srt";
	rename -uid "362251A8-4494-0B3E-7097-F8A6B5306BE2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
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
createNode transform -n "leg_X_knee_guide_srt" -p "guides";
	rename -uid "3C9CE599-44A7-E131-6024-8B8131670761";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.4999999666213988 4.8429999952316276 8.272 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_knee_guide_srt";
	rename -uid "6EEDD076-42A1-E5B3-6CE3-F398EAF26D2E";
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
createNode transform -n "leg_X_knee_aim_guide_srt" -p "leg_X_knee_guide_srt";
	rename -uid "964A95E4-4503-7653-345B-659F289A8424";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_knee_aim_guide_srt";
	rename -uid "7A490836-4173-938D-7EC1-C48618BE083D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
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
createNode transform -n "leg_X_knee_up_guide_srt" -p "leg_X_knee_guide_srt";
	rename -uid "D18759A5-4442-D894-60A4-84A2687754FE";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_knee_up_guide_srt";
	rename -uid "5DE15FDE-4AC9-ECA8-5C55-8E82462D2BA5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
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
createNode transform -n "leg_X_ankle_guide_srt" -p "guides";
	rename -uid "C0938076-4A1A-A80D-C16E-12A52A264735";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.5000000858306928 4.1559999952316291 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_ankle_guide_srt";
	rename -uid "2A805638-48D7-CC11-09D2-5EA2C62E6084";
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
createNode transform -n "leg_X_ankle_aim_guide_srt" -p "leg_X_ankle_guide_srt";
	rename -uid "54668D36-4725-7B96-827A-77A849BBE408";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_ankle_aim_guide_srt";
	rename -uid "B514626A-4DF7-7476-DED3-ECB023A5CF8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
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
createNode transform -n "leg_X_ankle_up_guide_srt" -p "leg_X_ankle_guide_srt";
	rename -uid "EE8DCDE7-4360-4FC0-9806-9A80713A3737";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 1 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_ankle_up_guide_srt";
	rename -uid "CF856893-4CEB-C1FD-66CF-228C7E4AE3F3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
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
createNode transform -n "leg_X_ikFoot_ctrl_guide_srt" -p "guides";
	rename -uid "D64B6EEA-4B34-41A8-B948-F09B6EFE8CC2";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4.5000000000000027 1.2687625885009732 20 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_ikFoot_ctrl_guide_srt";
	rename -uid "14798C8C-4B87-5FE3-D18E-C18103848DD7";
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
createNode transform -n "leg_X_ikBall_ctrl_guide_srt" -p "leg_X_ikFoot_ctrl_guide_srt";
	rename -uid "92B8086F-4D5D-C41E-1CC1-1891069B5F01";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -0.71223171552022357 -0.33842277526855469 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_ikBall_ctrl_guide_srt";
	rename -uid "35D173DB-41D2-7762-F8DB-B1B12D2AC66C";
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
createNode transform -n "leg_X_ikToe_ctrl_guide_srt" -p "leg_X_ikFoot_ctrl_guide_srt";
	rename -uid "AC555336-48BE-9BDB-C56A-AF8561ED26A4";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1.268762588500973 2.0435905456542969 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_ikToe_ctrl_guide_srt";
	rename -uid "8A174131-4E6C-52A6-4944-4094DF8C30AF";
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
createNode transform -n "leg_X_shoulder_ik_end_guide_srt" -p "guides";
	rename -uid "BA0CFF3D-43A2-2485-2F7E-FE9E831FBBA7";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.747 14.579556304931641 6.7499999999999991 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_shoulder_ik_end_guide_srt";
	rename -uid "0CBD32B1-41E7-17C9-E508-66A59104C966";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
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
createNode transform -n "leg_X_shoulder_ik_start_guide_srt" -p "guides";
	rename -uid "A8EDBE47-41AD-D7CA-6714-BE9C77466823";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.60499999999999987 14.579556304931641 6.7499999999999991 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_curveShape2" -p "leg_X_shoulder_ik_start_guide_srt";
	rename -uid "4EA94A55-4955-9A9B-B769-009099288C75";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
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
createNode transform -n "internal" -p "leg_X_cmpt";
	rename -uid "2E605E9F-4B47-D521-BBC3-2A91366A73F3";
	setAttr ".t" -type "double3" 4.5 4.1560001373291016 20 ;
createNode aimConstraint -n "ik_ankle_aimConstraint" -p "internal";
	rename -uid "C1F1F58F-45E2-BDA0-C7F8-A1A65EFE4C14";
	setAttr ".a" -type "double3" 0 -1 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
createNode transform -n "control" -p "leg_X_cmpt";
	rename -uid "33CD2AF0-4ABE-1E36-9238-5D99F4769183";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "leg_X_hip_fk_ctrl_srtOffset" -p "control";
	rename -uid "C13FB145-409D-DFB7-7C34-8C8671B26EEC";
createNode transform -n "leg_X_hip_fk_ctrl" -p "leg_X_hip_fk_ctrl_srtOffset";
	rename -uid "B220DFCD-4D19-E850-E086-1497798585AC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_hip_fk_ctrlShape" -p "leg_X_hip_fk_ctrl";
	rename -uid "FF02E594-4AFB-B6A9-F15B-D8B0355BAD88";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
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
		0 0.12500000000000028 -1.5048036798991922
		0 0.41763548302419268 -1.475981600504038
		0 0.6990251485476352 -1.3906229786661224
		0 0.95835534952940371 -1.2520080983530102
		0 1.1856601717798216 -1.065463851679014
		0 1.372204418453818 -0.83815902942859555
		0 1.5108192987669304 -0.57882882844682726
		0 1.5961779206048461 -0.2974391629233849
		0 2.3750000000000004 -0.0048036798991926144
		0 1.5961779206048452 0.28783180312499956
		0 1.5108192987669302 0.56922146864844148
		0 1.372204418453818 0.82855166963021021
		0 1.185660171779821 1.0558564918806281
		0 0.95835534952940327 1.242400738554625
		0 0.69902514854763476 1.3810156188677367
		0 0.41763548302419268 1.4663742407056521
		0 0.12500000000000061 0.74519632010080739
		0 -0.16763548302419157 1.4663742407056517
		0 -0.44902514854763353 1.3810156188677367
		0 -0.70835534952940193 1.2424007385546241
		0 -0.93566017177982019 1.0558564918806279
		0 -1.1222044184538162 0.82855166963021021
		0 -1.2608192987669282 0.56922146864844159
		0 -1.3461779206048439 0.28783180312499962
		0 -1.3749999999999982 -0.0048036798991922813
		0 -1.3461779206048434 -0.29743916292338418
		0 -1.2608192987669287 -0.57882882844682615
		0 -1.122204418453816 -0.83815902942859477
		0 -0.93566017177981953 -1.0654638516790123
		0 -0.70835534952940193 -1.2520080983530084
		0 -0.4490251485476337 -1.3906229786661206
		0 -0.16763548302419196 -1.4759816005040365
		0 0.12499999999999967 -1.5048036798991904
		;
createNode transform -n "leg_X_knee_fk_ctrl_srtOffset" -p "control";
	rename -uid "353D8A7F-498C-AAFF-262F-56A4853B5DC5";
createNode transform -n "leg_X_knee_fk_ctrl" -p "leg_X_knee_fk_ctrl_srtOffset";
	rename -uid "D6159195-414B-366D-CFD1-27A272D184D4";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "leg_X_knee_fk_ctrlShape" -p "leg_X_knee_fk_ctrl";
	rename -uid "B2BF6282-4C50-F29F-DD81-0C991A9392F1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
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
		0 1.5048036798991926 0.12500000000000036
		0 1.4759816005040383 0.41763548302419273
		0 1.3906229786661226 0.69902514854763498
		0 1.2520080983530104 0.95835534952940371
		0 1.0654638516790138 1.1856601717798216
		0 0.83815902942859588 1.3722044184538182
		0 0.57882882844682726 1.5108192987669304
		0 0.29743916292338507 1.5961779206048456
		0 0.0048036798991927896 2.3750000000000004
		0 -0.28783180312499951 1.5961779206048456
		0 -0.56922146864844159 1.5108192987669302
		0 -0.82855166963021032 1.372204418453818
		0 -1.0558564918806284 1.1856601717798214
		0 -1.2424007385546247 0.95835534952940349
		0 -1.3810156188677369 0.69902514854763498
		0 -1.4663742407056521 0.41763548302419284
		0 -0.74519632010080739 0.12500000000000061
		0 -1.4663742407056521 -0.16763548302419162
		0 -1.3810156188677367 -0.44902514854763365
		0 -1.2424007385546243 -0.70835534952940216
		0 -1.0558564918806279 -0.93566017177982008
		0 -0.82855166963021021 -1.1222044184538165
		0 -0.56922146864844192 -1.2608192987669284
		0 -0.2878318031249999 -1.3461779206048439
		0 0.004803679899192231 -1.3749999999999982
		0 0.29743916292338435 -1.3461779206048439
		0 0.57882882844682626 -1.2608192987669284
		0 0.83815902942859477 -1.1222044184538162
		0 1.0654638516790125 -0.93566017177981986
		0 1.2520080983530089 -0.70835534952940216
		0 1.3906229786661208 -0.44902514854763398
		0 1.4759816005040363 -0.16763548302419207
		0 1.5048036798991906 0.12499999999999989
		;
createNode transform -n "leg_X_ankle_fk_ctrl_srtOffset" -p "control";
	rename -uid "92036BB6-414C-04F6-FC41-AFB39E51074C";
createNode transform -n "leg_X_ankle_fk_ctrl" -p "leg_X_ankle_fk_ctrl_srtOffset";
	rename -uid "A29C744B-49BD-BFB7-AB99-DDBBC019FBC7";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.6645352591003757e-015 -2.6645352591003757e-015 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 4;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_ankle_fk_ctrlShape" -p "leg_X_ankle_fk_ctrl";
	rename -uid "5D72258C-4B84-A306-5CAC-B6A75F159124";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
		45
		3.7493994566546433e-033 1 -6.123233995736766e-017
		-1.194583692008389e-017 0.98078528040323043 0.19509032201612819
		-2.3432602026631484e-017 0.92387953251128674 0.38268343236508967
		-3.4018865378450248e-017 0.83146961230254524 0.55557023301960218
		-3.2473352108830995e-017 0.5303300858899106 0.5303300858899106
		-5.0912829964730134e-017 0.55557023301960218 0.83146961230254512
		-5.0912829964730134e-017 0.55557023301960218 0.83146961230254512
		-5.6571305614385013e-017 0.38268343236508978 0.92387953251128663
		-6.0055777714832763e-017 0.1950903220161283 0.98078528040323021
		-6.1232339957367648e-017 1.1674349118862548e-016 0.99999999999999978
		-4.5924254968025736e-017 8.75576183914691e-017 0.74999999999999978
		0.14631774151209589 -1.8853747032141705e-016 0.73558896030242282
		0.28701257427381704 -2.0329609769764004e-016 0.69290964938346511
		0.41667767476470141 -2.1024217004910782e-016 0.62360220922690901
		0.70710678118654735 -2.7881167161434096e-016 0.70710678118654768
		0.62360220922690879 -1.999394052368393e-016 0.41667767476470174
		0.69290964938346489 -1.8308649754698147e-016 0.28701257427381749
		0.7355889603024226 -1.5919767843248381e-016 0.14631774151209639
		0.75 8.75576183914691e-017 2.1245770866179919e-016
		1 1.1674349118862548e-016 2.8327694488239893e-016
		0.98078528040323043 0.1950903220161283 2.7783385781825407e-016
		0.92387953251128685 0.38268343236508978 2.6171377140917628e-016
		0.83146961230254535 0.55557023301960218 2.3553617153561772e-016
		0.53033008588991071 0.5303300858899106 1.5023028651011411e-016
		0.55557023301960229 0.83146961230254524 1.5738023827739542e-016
		0.38268343236508978 0.92387953251128674 1.0840539357749277e-016
		0.19509032201612825 0.98078528040323043 5.5264590396852215e-017
		3.7493994566546433e-033 1 -6.123233995736766e-017
		-0.19509032201612825 0.98078528040323043 3.1372916556684429e-017
		-0.38268343236508978 0.92387953251128674 6.1540189524229779e-017
		-0.55557023301960229 0.83146961230254524 8.9342507520494895e-017
		-0.53033008588991071 0.5303300858899106 8.5283582292452124e-017
		-0.83146961230254535 0.55557023301960218 1.3371051160615745e-016
		-0.92387953251128685 0.38268343236508978 1.4857116018040623e-016
		-0.98078528040323043 0.1950903220161283 1.5772230238858854e-016
		-1 1.1674349118862548e-016 1.6081226496766359e-016
		-0.75 8.75576183914691e-017 1.2060919872574768e-016
		-0.7355889603024226 -6.9114011860234664e-017 0.14631774151209639
		-0.69290964938346489 -9.8229539125403934e-017 0.28701257427381749
		-0.62360220922690879 -1.235701602897441e-016 0.41667767476470174
		-0.70710678118654735 -1.9221606599079161e-016 0.70710678118654768
		-0.41667767476470141 -1.5921387198143244e-016 0.62360220922690901
		-0.28701257427381704 -1.6814719465769281e-016 0.69290964938346511
		-0.14631774151209589 -1.7061871494129123e-016 0.73558896030242282
		-4.5924254968025736e-017 8.75576183914691e-017 0.74999999999999978
		;
createNode transform -n "leg_X_ikFoot_ctrl_srtOffset" -p "control";
	rename -uid "C943A69B-44B0-90B8-1CEF-59A8FB743F32";
createNode transform -n "leg_X_ikFoot_ctrl" -p "leg_X_ikFoot_ctrl_srtOffset";
	rename -uid "0DE8913F-4418-DEFB-446C-0EB1CB0992BD";
	addAttr -ci true -sn "FKIK" -ln "FKIK" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "uprLegScale" -ln "uprLegScale" -dv 1 -min 0.001 -at "double";
	addAttr -ci true -k true -sn "lwrLegScale" -ln "lwrLegScale" -dv 1 -min 0.001 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FKIK" 1;
	setAttr -k on ".uprLegScale";
	setAttr -k on ".lwrLegScale";
createNode nurbsCurve -n "leg_X_ikFoot_ctrlShape" -p "leg_X_ikFoot_ctrl";
	rename -uid "2E443072-4724-D92C-956D-1BB198C6B0B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0 -1.2684614658355711 3.1250000000000004
		-0.75 -1.268762588500973 2.3750000000000004
		-1.5 -1.268762588500973 1.6250000000000004
		-1.5 -1.268762588500973 0.87500000000000044
		-2.25 -0.51876258850097301 0.12500000000000044
		-1.5 -1.268762588500973 -0.62499999999999956
		-1.5 -1.268762588500973 -1.3749999999999996
		-0.75 -1.268762588500973 -1.3749999999999996
		0 -0.51876258850097301 -2.1249999999999996
		0.75 -1.268762588500973 -1.3749999999999996
		1.5 -1.268762588500973 -1.3749999999999996
		1.5 -1.268762588500973 -0.62499999999999956
		2.25 -0.51876258850097301 0.12500000000000044
		1.5 -1.268762588500973 0.87500000000000044
		1.5 -1.268762588500973 1.6250000000000004
		0.75 -1.268762588500973 2.3750000000000004
		0 -1.2684614658355711 3.1250000000000004
		;
createNode transform -n "leg_X_ikToe_ctrl_srtOffset" -p "leg_X_ikFoot_ctrl";
	rename -uid "38A4253A-407B-5597-F04B-9F9E266965CE";
	setAttr ".t" -type "double3" 0 -1.268762588500973 2.0435905456542969 ;
createNode transform -n "leg_X_ikToe_ctrl" -p "leg_X_ikToe_ctrl_srtOffset";
	rename -uid "14687030-4F1E-E7B7-75F4-D893BACF144B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_ikToe_ctrlShape" -p "leg_X_ikToe_ctrl";
	rename -uid "2B9E65DB-426D-4889-1613-00B3057A34F4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 21 0 no 3
		22 1 2 3 4 5 8 9 10 15 16 20 21 22 23 24 27 28 30 31 33 34 36
		22
		0.96117666046247563 0 -0.63669532873822776
		1.1031221957615061 0 -0.69548965334501589
		1.2450661132540153 0 -0.63669532873822776
		1.3038628645705868 0 -0.4947489845359343
		1.2450661132540153 0 -0.35280264033364372
		0.60382989365592443 0 0.32575394900721699
		0.46188597616341509 0 0.38454827361400623
		0.46188597616341509 0 0.38454827361400623
		-0.46095535341776273 0 0.38455474484009233
		-0.60289927091027162 9.5367431640625e-007 0.32575394900721699
		-1.2441362994116243 0 -0.35280264033364372
		-1.3029330507281949 0 -0.4947489845359343
		-1.2441379172181455 0 -0.63669209312518249
		-1.1021923819191146 0 -0.69548641773197195
		-0.96024644216845279 9.5367431640625e-007 -0.63669209312518249
		-0.96024644216845367 0 -0.33512041505941115
		-0.60289927091027162 -9.5367431640625e-007 0.041861260602633621
		-0.46095535341776106 -9.5367431640625e-007 0.10066205643551029
		0.46188597616341609 0 0.10066205643551029
		0.60382989365592443 0 0.041861260602633621
		0.96117666046247474 0 -0.33511717944636854
		0.96117666046247652 0 -0.63669532873822776
		;
createNode transform -n "leg_X_ikBall_ctrl_srtOffset" -p "leg_X_ikToe_ctrl";
	rename -uid "76FB6670-4C69-6BE7-FD63-13A8507C0BDD";
	setAttr ".t" -type "double3" 0 0.55653087298074944 -2.3820133209228516 ;
createNode transform -n "leg_X_ikBall_ctrl" -p "leg_X_ikBall_ctrl_srtOffset";
	rename -uid "F41AE7CD-4DE2-9796-6FED-E7BF88C6B9CC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_ikBall_ctrlShape" -p "leg_X_ikBall_ctrl";
	rename -uid "4687C990-4E88-83DD-712F-04A4A9FCF5B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 1.5607225761290264 1.950903220161283 2.3410838641935396 2.731264508225796
		 3.1214451522580524 3.5116257962903088 3.9018064403225652 4.2919870843548216 4.6821677283870784
		
		9
		-3.061616997868383e-017 -2.4894981252573997e-017 0.5
		-2.8285652807192507e-017 -0.19134171618254492 0.46193976625564337
		-2.1648901405887329e-017 -0.35355339059327384 0.35355339059327373
		-1.1716301013315742e-017 -0.46193976625564342 0.19134171618254484
		3.2239167970985191e-033 -0.5 -5.2650556868202904e-017
		1.1716301013315751e-017 -0.46193976625564331 -0.19134171618254495
		2.1648901405887338e-017 -0.35355339059327368 -0.35355339059327384
		2.8285652807192513e-017 -0.19134171618254478 -0.46193976625564342
		3.061616997868383e-017 1.0816170809946073e-016 -0.5
		;
createNode transform -n "leg_X_ikAnkle_ctrl_srtOffset" -p "leg_X_ikBall_ctrl";
	rename -uid "D31F8103-47AA-ECBF-6E6A-C2B81AF9B1F1";
	setAttr ".t" -type "double3" 0 0.71223171552022357 0.33842277526855469 ;
createNode transform -n "leg_X_ikAnkle_ctrl" -p "leg_X_ikAnkle_ctrl_srtOffset";
	rename -uid "E24CD2D3-41ED-6729-56EA-6FB65725D75B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_ikAnkle_ctrlShape" -p "leg_X_ikAnkle_ctrl";
	rename -uid "0D0AE26A-4304-8BFC-14A2-CC96222C3418";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 1.5607225761290264 1.950903220161283 2.3410838641935396 2.731264508225796
		 3.1214451522580524 3.5116257962903088 3.9018064403225652 4.2919870843548216 4.6821677283870784
		
		9
		-3.061616997868383e-017 -2.4894981252573997e-017 0.5
		-2.8285652807192507e-017 -0.19134171618254492 0.46193976625564337
		-2.1648901405887329e-017 -0.35355339059327384 0.35355339059327373
		-1.1716301013315742e-017 -0.46193976625564342 0.19134171618254484
		3.2239167970985191e-033 -0.5 -5.2650556868202904e-017
		1.1716301013315751e-017 -0.46193976625564331 -0.19134171618254495
		2.1648901405887338e-017 -0.35355339059327368 -0.35355339059327384
		2.8285652807192513e-017 -0.19134171618254478 -0.46193976625564342
		3.061616997868383e-017 1.0816170809946073e-016 -0.5
		;
createNode transform -n "leg_X_ik_poleVector_ctrl_srtOffset" -p "control";
	rename -uid "C5747396-45C2-2469-4913-289C1F5D57C9";
createNode transform -n "leg_X_ik_poleVector_ctrl" -p "leg_X_ik_poleVector_ctrl_srtOffset";
	rename -uid "BF7FC6E9-44E6-A257-F932-91A38439206C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_ik_poleVector_ctrlShape" -p "leg_X_ik_poleVector_ctrl";
	rename -uid "F8190088-4491-53C4-E120-22A6555C56F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0 0 0
		0 1.5 0
		0 0 0
		0 -1.5 0
		0 0 0
		1.5 0 0
		0 0 0
		-1.5 0 0
		0 0 0
		0 0 1.5
		0 0 0
		0 0 0
		1.5 0 0
		0 0 1.5
		-1.5 0 0
		0 0 0
		0 1.5 0
		0 0 1.5
		0 -1.5 0
		0 0 0
		-1.5 0 0
		0 1.5 0
		1.5 0 0
		0 -1.5 0
		-1.5 0 0
		;
createNode transform -n "display" -p "leg_X_cmpt";
	rename -uid "DD7FBCFA-4939-5B73-310B-39B001D26285";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "leg_X_ik_poleVector_display_curve" -p "display";
	rename -uid "2C4813CB-44FD-9C1B-52F4-1FA3F58C5597";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "leg_X_ik_poleVector_display_curveShape" -p "leg_X_ik_poleVector_display_curve";
	rename -uid "8F67FD90-4C0B-BFDC-7D84-EB9CB1EF3238";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr -s 2 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		4.5 4.8429999351501465 -8.617854118347168
		1.961102861272082 2.4779294237789262 8.652928260298447
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "94744F39-47EA-E23A-966C-DFA21F266ECE";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "498EE2A8-48C1-836C-3399-3396607C4BF9";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "922BB33E-4724-CD36-A43D-95B0AB693DE9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FC1133AB-42AF-F3A7-0948-D4BFC6BFD11C";
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
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 754\n                -height 841\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 754\n            -height 841\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 0\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 0\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
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
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 43 100 -ps 2 57 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 0\\n    -showPublishedAsConnected 0\\n    -showContainerContents 0\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 0\\n    -showPublishedAsConnected 0\\n    -showContainerContents 0\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 754\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 754\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DA70BDE1-4704-CF62-6238-A69A79427D54";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "88DB8C41-4D3F-449C-935A-1BBBCF8D07D4";
	setAttr ".ihi" 0;
	setAttr -s 276 ".hyp";
createNode animBlendNodeAdditiveRotation -n "leg_X_hip_followShoulderRotation";
	rename -uid "66B2E65A-4106-42A3-9F7E-6F8EF5507CC6";
	setAttr ".wb" 0;
	setAttr ".ri" 1;
createNode composeMatrix -n "leg_X_hip_followShoulderRotation_matrix";
	rename -uid "5CCF6B21-4603-0B62-450B-50A5F826E241";
createNode multMatrix -n "leg_X_hip_fk_ctrl_parentMatrix";
	rename -uid "C94E9EC8-4A1D-3C66-6E9F-8988D7AAE001";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "leg_X_ik_guide_poleVector";
	rename -uid "D0AEEC96-4A43-A0F6-6B47-A685A3E04C8D";
createNode plusMinusAverage -n "leg_X_ik_guide_poleVector_worldPosition";
	rename -uid "B119B9A1-4BB0-4165-4FBD-E6BF259BD975";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "leg_X_ik_guided_poleVector_position";
	rename -uid "772B6E0A-45C6-45FD-C5F9-5A932E048B68";
	setAttr ".op" 4;
createNode blendColors -n "leg_X_toe_ikfk_blend_scale";
	rename -uid "9816AE12-4589-85CF-ADEA-52A5C23D72AA";
createNode blendColors -n "leg_X_foot_ikfk_blend_scale";
	rename -uid "253F457A-4A3E-3F63-CF6A-AEBAE1DF3442";
createNode blendColors -n "leg_X_hip_ikfk_blend_scale";
	rename -uid "E778A8F6-4815-C7D9-17F0-24932A18F107";
createNode blendColors -n "leg_X_knee_ikfk_blend_scale";
	rename -uid "AF633C3A-4A61-7101-5E7D-518304CACE2A";
createNode blendColors -n "leg_X_ankle_ikfk_blend_scale";
	rename -uid "261FAB30-4784-6B1A-DC7D-26AD91D195EB";
createNode composeMatrix -n "leg_X_ik_knee_matrix_localTo_ik_hip";
	rename -uid "D9712071-4F9A-3DDA-00DD-39978F83651B";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 0.19707488630023173 -0.98038843791109176 0
		 0 0.98038843791109176 0.19707488630023173 0 0 0 9.9046381792378781 1;
createNode multMatrix -n "leg_X_ik_knee_worldMatrix_alignedTo_fk";
	rename -uid "B2F0A7A2-4CB1-32B0-70AC-3BA299D4C552";
	setAttr -s 3 ".i";
createNode network -n "leg_X_ik_knee_pass";
	rename -uid "B5A5A952-4064-36CA-0D56-C481338DDAD0";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
	setAttr ".worldInverseMatrix" -type "matrix" -0.99726094768413664 -0.052264231633826527 0.052335956242944418 0
		 0.042188581728273805 0.17924267134948121 0.98289988724145128 0 -0.060751343984264156 0.98241565279632381 -0.17654676248767073 0
		 3.684166263069228 0.73125087376833453 -15.050962411565783 1;
createNode decomposeMatrix -n "leg_X_ik_knee_srt_worldMatrix";
	rename -uid "4650C879-4C09-23CB-AFEC-7C8432D70B54";
	setAttr ".ot" -type "double3" 1.961102861272082 2.4779294237789262 8.652928260298447 ;
	setAttr ".or" -type "double3" -11.823926334469741 12.440942007124288 -1.1960457624789433 ;
	setAttr ".os" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".oqw" 0.98888758567749224;
createNode animBlendNodeAdditiveDA -n "leg_X_ik_bendAngle";
	rename -uid "6B52F5AC-43DF-1F31-ADD2-59B18019A5E5";
	setAttr -k on ".ia" 180;
	setAttr ".o" 281.36595823233591;
createNode composeMatrix -n "leg_X_ik_hip_matrix_localTo_ikBase";
	rename -uid "31046CBB-4B8C-2C9F-8A86-4CB9261155C4";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 0.72770559141976976 0.68588962101522077 0
		 0 -0.68588962101522077 0.72770559141976976 0 0 0 0 1;
createNode multMatrix -n "leg_X_ik_hip_worldMatrix";
	rename -uid "41149B1D-42D4-C3A8-B10F-47A5B32F5EBD";
	setAttr -s 2 ".i";
createNode multMatrix -n "leg_X_ik_hip_worldMatrix_alignedTo_fk";
	rename -uid "186EEA99-478B-45C9-607C-3594E31F1CC6";
	setAttr -s 2 ".i";
createNode network -n "leg_X_ik_hip_PASS";
	rename -uid "36339CD2-4BCD-AEDF-A809-3D9CCAFFE78E";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode decomposeMatrix -n "leg_X_ik_hip_srt_worldMatrix";
	rename -uid "ECCEB5F6-4928-99A3-A6BE-4AB2E537B447";
	setAttr ".ot" -type "double3" 1.4316288232803345 11.807902336120605 5.3706851005554199 ;
	setAttr ".or" -type "double3" -10.998055810390728 12.440942007124288 -1.1960457624789433 ;
	setAttr ".os" -type "double3" 0.99999999999999989 1.0000000000000007 1.0000000000000009 ;
	setAttr ".oqw" 0.98959170978995947;
createNode animBlendNodeAdditiveDA -n "leg_X_ik_baseAngle";
	rename -uid "B4801D40-4892-943C-3ECB-71A0B7797261";
	setAttr ".wb" 0;
	setAttr -k on ".ia";
	setAttr ".ib" 180;
	setAttr ".o" 43.305611022172585;
createNode composeMatrix -n "leg_X_ik_base_worldMatrix";
	rename -uid "2A88F616-4980-43A6-3DD7-79BAEE019A27";
	setAttr ".omat" -type "matrix" 0.98215671685467276 0.044497567069063756 -0.18272424596146042 0
		 0.044497567069063743 0.88903199826292301 0.45567759719956413 0 0.18272424596146042 -0.45567759719956413 0.87118871511759588 0
		 1.4316288232803345 11.807902336120605 5.3706851005554199 1;
createNode inverseMatrix -n "leg_X_ik_base_worldInverseMatrix";
	rename -uid "2661F6C2-48D8-F958-4A32-09B397C7EED8";
	setAttr ".omat" -type "matrix" 0.98215671685467265 0.04449756706906377 0.18272424596146031 0
		 0.044497567069063756 0.88903199826292334 -0.45567759719956402 0 -0.18272424596146036 0.45567759719956386 0.87118871511759566 0
		 -0.95015240567857384 -13.008607890693256 0.44012301520587271 1;
createNode multMatrix -n "leg_X_ik_poleVector_matrix_localTo_ikBase";
	rename -uid "91D98048-4848-CD8B-7E41-A98466DCCB42";
createNode decomposeMatrix -n "leg_X_ik_poleVector_srt_localTo_ikBase";
	rename -uid "FBE8C975-439C-9158-C724-F398983CFE44";
	setAttr ".ot" -type "double3" -0.95015240567857384 -13.008607890693256 0.44012301520587271 ;
	setAttr ".or" -type "double3" -27.611937447358169 -10.528479808324887 2.5940672023734255 ;
	setAttr ".os" -type "double3" 0.99999999999999978 1.0000000000000002 0.99999999999999967 ;
	setAttr ".oqx" -0.2355504210748485;
	setAttr ".oqw" 0.96726126644190513;
createNode angleBetween -n "leg_X_ik_poleVector_rotation_localTo_ikBase";
	rename -uid "40797641-4A60-E34C-6BCC-DFB8E4B249F6";
	setAttr ".v1" -type "double3" 0 -1 0 ;
	setAttr ".v2" -type "double3" -0.95015240567857384 -13.008607890693256 0 ;
createNode composeMatrix -n "leg_X_ik_twist_matrix_localTo_ikBase";
	rename -uid "B0B0ABA8-4F5D-7F8D-C010-66B94516623A";
	setAttr ".omat" -type "matrix" 0.99734318414556922 -0.072846228717602199 -0 0 0.072846228717602199 0.99734318414556922 0 0
		 0 -0 1 0 0 0 0 1;
createNode multMatrix -n "leg_X_ik_rotatePlane_worldMatrix";
	rename -uid "EC616082-44F8-F56B-6AA3-70B7B95902BF";
	setAttr -s 2 ".i";
createNode animBlendNodeAdditiveRotation -n "leg_X_ik_aimAtEnd_rotation_withDirection";
	rename -uid "6A48CC3C-401C-1A9B-BA24-8E9BC4DD28D8";
	setAttr ".ib" -type "double3" 0 180 0 ;
	setAttr ".acm" 1;
	setAttr ".o" -type "double3" 27.611937447358184 10.528479808324892 2.5940672023734233 ;
createNode network -n "leg_X_ik_OUTPUT";
	rename -uid "5B5A3FAD-428B-84C2-7768-9CAEE110EC3A";
	addAttr -ci true -k true -sn "baseAngle" -ln "baseAngle" -at "doubleAngle";
	addAttr -ci true -k true -sn "bendAngle" -ln "bendAngle" -at "doubleAngle";
	setAttr -k on ".baseAngle";
	setAttr -k on ".bendAngle";
createNode unitConversion -n "leg_X_unitConversion5";
	rename -uid "53D747E1-4592-8FD3-D949-1093F15CC54B";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "leg_X_ik_expr";
	rename -uid "6207AE83-4E8B-C8CD-6E2C-46BA5DECE790";
	setAttr -k on ".nds";
	setAttr -s 4 ".in[3]"  1;
	setAttr -s 3 ".in";
	setAttr -s 2 ".out";
	setAttr ".ixp" -type "string" "float $a = .I[0];\nfloat $b = .I[1];\nfloat $c = .I[2];\n\nfloat $sa = $a * $a; \nfloat $sb = $b * $b;\nfloat $sc = $c * $c;\n\nfloat $B = clamp(-1.0, 1.0, ($sc + $sa - $sb) / (2.0 * $a * $c));\nfloat $C = clamp(-1.0, 1.0, ($sa + $sb - $sc) / (2.0 * $a * $b));\n\nfloat $baseAngle = rad_to_deg(acos($B));\nfloat $bendAngle = rad_to_deg(acos($C));\n\n.O[0] = $baseAngle;\n.O[1] = $bendAngle;";
createNode unitConversion -n "leg_X_unitConversion4";
	rename -uid "01C33AC0-4316-2749-6C3A-928972EAF632";
	setAttr ".cf" 0.017453292519943295;
createNode decomposeMatrix -n "leg_X_hip_fk_ctrl_srtOffset_inWorld";
	rename -uid "595121DD-4DA1-922E-8D0D-A494044132BC";
	setAttr ".ot" -type "double3" 4.5 14.629999995231628 6.7500000000000018 ;
	setAttr ".or" -type "double3" -120.30051673039777 24.166660634082387 -103.45425218492919 ;
	setAttr ".os" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".oqw" 0.44400454342209866;
createNode multiplyDivide -n "leg_X_fk_knee_offset_position";
	rename -uid "1B954FB4-405E-4863-298B-3DB45762CF4D";
createNode composeMatrix -n "leg_X_fk_knee_offset_matrix";
	rename -uid "2E5D8CA5-4B50-510E-6B9F-E487C11B28ED";
	setAttr ".omat" -type "matrix" -0.34298789004550367 -0.47459724734179265 -0.81062738671829138 0
		 -0.18493585532144902 0.88020307475922466 -0.43708268851663618 0 0.92095495910422087 1.0269562977782694e-015 -0.38966904329359098 0
		 -3.3378601216327297e-008 -9.7869997024536133 1.5219999551773071 1;
createNode multMatrix -n "leg_X_knee_fk_crtl_parentMatrix";
	rename -uid "41E8557D-41BC-83DB-CF52-2F916A85211A";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "leg_X_knee_fk_crtl_parentInverseMatrix";
	rename -uid "F23373D3-45A4-6421-BAE4-1296DD236326";
	setAttr ".omat" -type "matrix" -0.34298789004550462 -0.1849358553214494 0.92095495910422098 0
		 -0.47459724734179315 0.88020307475922444 1.0547118733938987e-015 0 -0.8106273867182916 -0.43708268851663623 -0.38966904329359109 0
		 7.0375455957433815 1.4986280004290142 1.3674004476626049 1;
createNode multMatrix -n "leg_X_knee_fk_ctrl_matrix";
	rename -uid "559CF4C0-4A06-45C2-7126-8EBAA1D9DCE9";
createNode decomposeMatrix -n "leg_X_knee_fk_ctrl_srt";
	rename -uid "579521A8-4EE2-ADCE-4CBD-0B86A3242BD8";
	setAttr ".ot" -type "double3" 7.0375455957433815 1.4986280004290142 1.3674004476626049 ;
	setAttr ".or" -type "double3" -1.526666247102488e-013 247.06609212108052 28.333130083818407 ;
	setAttr ".os" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".oqw" -0.53561790051774005;
createNode composeMatrix -n "leg_X_knee_fk_matrix";
	rename -uid "5990F66B-4834-3127-48A9-078EAC6ED648";
	setAttr ".omat" -type "matrix" -0.34298789004550478 -0.1849358553214494 0.92095495910422054 0
		 -0.47459724734179465 0.88020307475922355 0 0 -0.81062738671829004 -0.43708268851663817 -0.38966904329359209 0
		 7.0375455957433815 1.4986280004290142 1.3674004476626049 1;
createNode multMatrix -n "leg_X_knee_fk_worldMatrix";
	rename -uid "9A965557-4E1C-6AD0-5759-A1B570DC22A7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "leg_X_knee_fk_srt_inWorld";
	rename -uid "99DA5C95-4B5E-0493-6146-42A78A70CBA5";
	setAttr ".ot" -type "double3" 0 4.4408920985006262e-016 8.8817841970012523e-016 ;
	setAttr ".or" -type "double3" 1.3994440598439473e-013 -6.6791648310733868e-014 3.3003558186091592e-015 ;
	setAttr ".os" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "leg_X_knee_srtOffset_worldMatrix_toSRT";
	rename -uid "92A656F6-44DA-3DE0-F373-45B88F3A6431";
	setAttr ".ot" -type "double3" 1.4316287426948549 2.020902793884277 6.8926851749420184 ;
	setAttr ".or" -type "double3" 48.28227842936267 125.84272584142487 54.144641270498184 ;
	setAttr ".os" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
	setAttr ".oqw" 0.53561790051774083;
createNode multiplyDivide -n "leg_X_shoulder_ik_startToEnd_vector_scaled";
	rename -uid "6A1F5E0B-4B18-8BF2-4D92-05932A2DCD29";
createNode plusMinusAverage -n "leg_X_shoulder_ikEnd_position";
	rename -uid "13141A40-44CB-56D6-3981-05B86E29FD9D";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode composeMatrix -n "leg_X_shoulder_ikEnd_matrix";
	rename -uid "9935011B-4845-9CFC-0B30-88B72CC9F124";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.73137122392654419 -1.5150974988937378 -1.3793147802352905 1;
createNode multMatrix -n "leg_X_shoulderEnd_matrix";
	rename -uid "315A0C53-4F30-6DDD-FE40-D2A11C5ED134";
	setAttr -s 5 ".i";
createNode decomposeMatrix -n "leg_X_shoulderEnd_srt_inWorld";
	rename -uid "559D4286-4C09-52BE-BD24-8BB45B317689";
	setAttr ".ot" -type "double3" 1.4316287760734561 11.80790249633789 5.3706852197647112 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode inverseMatrix -n "leg_X_shoulderEnd_worldInverseMatrix";
	rename -uid "3D345D91-466E-EF48-8AF0-43B581158081";
	setAttr ".omat" -type "matrix" 1 0 0 0 -1.3877787807814457e-017 1 0 0 0 0 1 0 -1.4316287760734561 -11.80790249633789 -5.3706852197647112 1;
createNode network -n "leg_X_shoulderEnd_PASS";
	rename -uid "A8D01646-4FF5-078F-9A28-D5823736024C";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "leg_X_hip_fk_ctrl_matrix_localTo_shoulderEnd";
	rename -uid "9459765F-4E54-2914-9707-3EA5C22CF57E";
createNode decomposeMatrix -n "leg_X_hip_fk_ctrl_srt_localTo_shoulderEnd";
	rename -uid "5D42B320-4084-73E2-57B7-5CAD5E3CFA04";
	setAttr ".ot" -type "double3" -1.4316287760734561 -11.80790249633789 -5.3706852197647112 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "leg_X_hip_fk_matrix_localTo_shoulderEnd";
	rename -uid "C6DED9E0-42FA-D9CE-0BF1-219358249B29";
createNode multMatrix -n "leg_X_hip_fk_worldMatrix";
	rename -uid "AE11E765-4AF8-2C0D-3006-4CAF42E2FE77";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "leg_X_hip_fk_srt_inWorld";
	rename -uid "A4CD5879-46E0-8D85-CDCF-868722412B7D";
	setAttr ".ot" -type "double3" 1.4316287760734561 11.80790249633789 5.3706852197647112 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multiplyDivide -n "leg_X_ik_startEndVector_rescaled";
	rename -uid "F7827F13-4011-2374-0BFB-A5B5018D97C1";
createNode plusMinusAverage -n "leg_X_ik_end_finalPosition";
	rename -uid "356736EE-4E6F-B0B7-70E6-029974DDB8F3";
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode composeMatrix -n "leg_X_ik_legEnd_matrix";
	rename -uid "5D48B61D-4E0A-3C14-E197-82845FC6A741";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5 4.1560001373291016 20 1;
createNode inverseMatrix -n "leg_X_ik_legEnd_worldInverseMatrix";
	rename -uid "8E61AD43-4A17-4F67-1917-1ABA7C2A43B8";
	setAttr ".omat" -type "matrix" 1.0000000000000002 4.3298736076863732e-018 5.5511151231257837e-016 0
		 0 1 0 0 -2.7755575615628914e-017 0 1 0 -4.5 -4.1560001373291016 -20.000000000000004 1;
createNode network -n "leg_X_ik_legEnd_pass";
	rename -uid "A1A87F40-4C05-DF87-A1A8-FEA147841940";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "leg_X_ik_ankle_worldMatrix";
	rename -uid "0DF3D3F4-4764-3DE7-EE09-41B25E75BEF0";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "leg_X_ik_ankle_srt_inWorld";
	rename -uid "CD03D840-423D-BAAD-EC6E-9C90A8CF219D";
	setAttr ".ot" -type "double3" 4.5 4.1560001373291016 20 ;
	setAttr ".or" -type "double3" 101.72053814430912 -12.440873900210134 178.80362108502445 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" -0.077484519968968629;
createNode vectorProduct -n "leg_X_ik_start_worldPosition";
	rename -uid "940A065D-46B6-5555-2089-929E9EAEC5AE";
	setAttr ".op" 4;
createNode plusMinusAverage -n "leg_X_ik_startEndVector";
	rename -uid "54954B2B-4CA1-3623-BA2B-DE8C27DB9718";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode distanceBetween -n "leg_X_ik_currentLength";
	rename -uid "3599007C-4803-B8A8-7028-BB8851C79ECD";
createNode network -n "leg_X_ik_INPUT";
	rename -uid "AD1E40B9-4056-44CB-66A0-25AB05BC0813";
	addAttr -ci true -k true -sn "upperLength" -ln "upperLength" -at "double";
	addAttr -ci true -k true -sn "lowerLength" -ln "lowerLength" -at "double";
	addAttr -ci true -k true -sn "currentLength" -ln "currentLength" -at "double";
	setAttr -k on ".upperLength";
	setAttr -k on ".lowerLength";
	setAttr -k on ".currentLength";
createNode distanceBetween -n "leg_X_ik_startEndVector_length";
	rename -uid "0B2A2CC8-4F56-8167-1A7B-CCA0EA06A091";
createNode condition -n "leg_X_ik_startEndVector_limited_length";
	rename -uid "513DB571-4B40-CB0C-D120-3EB9A7CFEBDA";
	setAttr ".op" 2;
createNode angleBetween -n "leg_X_ik_aimAtEnd_rotation";
	rename -uid "D801EE88-4D46-253C-7570-0880BB322046";
createNode vectorProduct -n "leg_X_ik_startEnd_unitVector";
	rename -uid "E8DF9924-45AE-6888-4F4A-AE9FDE33A85A";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode multMatrix -n "leg_X_ik_poleVector_ctrl_parentMatrix";
	rename -uid "6835EB7A-4F47-550D-35CA-17945BD22B4D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "leg_X_ik_poleVector_ctrl_srtOffset_inWorld";
	rename -uid "4F045099-4F25-FF4A-B869-798F4247773C";
	setAttr ".ot" -type "double3" 4.5 4.8429999351501465 -8.617854118347168 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "leg_X_ikFoot_ctrl_parentMatrix";
	rename -uid "CDADDAD7-484E-27C7-9744-79B2C57431B8";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "leg_X_ikFoot_ctrl_srtOffset_inWorld";
	rename -uid "13F67063-4345-ACD7-E33B-38B2196AD4A5";
	setAttr ".ot" -type "double3" 4.5000000000000027 1.2687625885009732 20 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode vectorProduct -n "leg_X_ik_end_worldPosition";
	rename -uid "6741AE84-49DD-C11B-77BD-049AE1F9AFAD";
	setAttr ".op" 4;
	setAttr ".m" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5 1.2687625885009766 20 1;
createNode multMatrix -n "leg_X_shoulder_end_matrix";
	rename -uid "786C9A56-48EA-47A2-956A-268AA082750A";
	setAttr -s 3 ".i";
createNode vectorProduct -n "leg_X_shoulder_end_position";
	rename -uid "4BBB9D3E-4E7E-312B-99AD-BA886A05A745";
	setAttr ".op" 4;
createNode plusMinusAverage -n "leg_X_shoulder_startEndVector_live";
	rename -uid "53E94016-4FDD-C13A-21B2-6A995A4D39AE";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode angleBetween -n "leg_X_shoulder_rotateZ";
	rename -uid "A708C3C5-481A-8C32-AC5F-C6A4267578F1";
createNode multMatrix -n "leg_X_legBase_matrix_localTo_shoulder";
	rename -uid "E5F05F28-4EA2-C115-161A-68AF6E513E4F";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "leg_X_srt_localTo_shoulder";
	rename -uid "B00D2EB7-49BD-9F6F-A965-EBBAFE89705A";
	setAttr ".ot" -type "double3" -0.44144332493116367 -12.627666898199777 -6.8106406980815271 ;
	setAttr ".os" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".oqw" 0.44400454342209866;
createNode plusMinusAverage -n "leg_X_shoulder_ik_startToEnd_vector";
	rename -uid "0B9A2544-4BF2-7EB2-3CBD-D2BF0C6BFDAB";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "leg_X_shoulder_ik_startToEnd_vector_normalized";
	rename -uid "747C6A15-4DB1-4439-5C48-6FB5418C55ED";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode plusMinusAverage -n "leg_X_shoulder_startEndVector_neutral";
	rename -uid "6740D4DF-4DD7-AEDA-B893-518D6E4DA054";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode distanceBetween -n "leg_X_shoulder_ik_maxLength";
	rename -uid "E0EFC1E3-413E-5DEF-35C8-DF91ED983C10";
createNode addDoubleLinear -n "leg_X_shoulder_ik_maxLength_offset";
	rename -uid "786091E8-4FEF-B40B-2F5D-A1977C8E71C6";
createNode multMatrix -n "leg_X_parentMatrix";
	rename -uid "79CF814C-46A8-50E2-B4E1-60AB7A83B861";
	setAttr -s 2 ".i";
createNode inverseMatrix -n "leg_X_parentInverseMatrix";
	rename -uid "25FDFF0C-4FDC-6ED6-DA44-85BA2A8CB525";
	setAttr ".omat" -type "matrix" -0.21227744661162432 -0.40844850048927916 0.88775453144892935 0
		 -0.88731972654738633 0.46115474938448997 9.0205620750793969e-017 0 -0.40939221846527651 -0.78772210808646714 -0.46031716445500037 0
		 16.700133579550119 0.40844850048928028 -0.88775453144893091 1;
createNode network -n "leg_X_parent_PASS";
	rename -uid "D3C2A38D-40A0-A66B-D520-C494BCCAF4A6";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "leg_X_hip_fk_ctrl_matrix";
	rename -uid "4860F068-44F9-ECFD-6C9E-7FB27FAF4B1A";
createNode decomposeMatrix -n "leg_X_hip_fk_ctrl_srt";
	rename -uid "6AB7D781-4866-6CDD-E386-BDA776520479";
	setAttr ".ot" -type "double3" 16.700133579550119 0.40844850048928028 -0.88775453144893091 ;
	setAttr ".or" -type "double3" 0 242.59242456218161 62.538353497080401 ;
	setAttr ".os" -type "double3" 0.99999999999999989 1 1.0000000000000002 ;
	setAttr ".oqw" -0.44400454342209844;
createNode composeMatrix -n "leg_X_legbase_matrix_localTo_hipParent";
	rename -uid "F20E2305-4831-D69C-BE8D-4BAE2FC10094";
	setAttr ".it" -type "double3" 16.700133579550119 0.40844850048928028 8.8817841970012523e-016 ;
	setAttr ".ir" -type "double3" 0 1.0734372049939372e-014 -2.3265757494905629e-014 ;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 16.700133579550119 0.40844850048928028 8.8817841970012523e-016 1;
createNode multMatrix -n "leg_X_legBase_worldMatrix";
	rename -uid "A2342AC8-4A76-7FCE-1703-528975C26A1A";
	setAttr -s 2 ".i";
createNode multMatrix -n "leg_X_ankle_parentMatrix_localTo_knee";
	rename -uid "15472576-4B78-AADC-F029-0F90CAFDFE05";
createNode decomposeMatrix -n "leg_X_ankle_parent_srtlocalTo_knee";
	rename -uid "203DA9E5-4DE4-91DD-E817-488CBD6B3FD9";
	setAttr ".ot" -type "double3" 1.1920929399167335e-007 -0.6869999999999985 11.728 ;
	setAttr ".or" -type "double3" 48.889422597755576 105.19884312957127 49.897393623550592 ;
	setAttr ".os" -type "double3" 0.99999999999999978 1 0.99999999999999989 ;
	setAttr ".oqw" 0.64000548755855013;
createNode composeMatrix -n "leg_X_ankle_fk_crtl_parent_srt_localTo_knee";
	rename -uid "7C39D05C-4A1D-DAD4-2949-E3810DE23930";
	setAttr ".omat" -type "matrix" -0.16887881707453833 -0.20053152735564053 -0.96502178818921969 0
		 -0.034567692034868702 0.979687249348696 -0.19752966392663274 0 0.98503046643791048 2.4147350785597167e-015 -0.17238033585392776 0
		 1.1920929399167335e-007 -0.6869999999999985 11.728 1;
createNode multMatrix -n "leg_X_ankle_fk_crtl_parentMatrix";
	rename -uid "0C5EEE48-40F5-CEE8-32FE-2F97E3ED8C85";
createNode decomposeMatrix -n "leg_X_ankle_fk_crtl_parent_srt_inWorld";
	rename -uid "C22F4368-4516-7AA0-697B-09B33500832D";
	setAttr ".ot" -type "double3" 1.1920929399167335e-007 -0.6869999999999985 11.728 ;
	setAttr ".or" -type "double3" 48.889422597755548 105.19884312957127 49.89739362355057 ;
	setAttr ".os" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".oqw" 0.64000548755855036;
createNode multMatrix -n "leg_X_foot_fk_worldMatrix";
	rename -uid "97148093-4E76-EC23-A2E7-38A2BCF606C1";
createNode multMatrix -n "leg_X_toe_fk_worldMatrix";
	rename -uid "6B2CC2FA-4957-E11C-D930-DC85B0659A51";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "leg_X_toe_fk_srt_inWorld";
	rename -uid "6840D92E-4FBA-64AB-60C4-87858DD8EE5E";
	setAttr ".ot" -type "double3" -4.5000000858306928 -4.8682317107518527 -20.338422775268555 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "leg_X_foot_fk_srt_inWorld";
	rename -uid "5480DD4C-4E47-A31E-0196-D2A403C6BAE8";
	setAttr ".os" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "leg_X_ikToe_worldMatrix";
	rename -uid "E6BDE401-41B1-7780-1EB8-10B142EA4FFC";
createNode decomposeMatrix -n "leg_X_ikToe_srt_inWorld";
	rename -uid "E91A8367-464E-DD86-3BD4-CCBBE1D93D10";
	setAttr ".ot" -type "double3" 4.5000000000000027 1.8252934614817224 17.617986679077148 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "leg_X_ikFoot_worldMatrix";
	rename -uid "701BB001-4B4E-05A7-2254-518A8127B1B7";
	setAttr -s 2 ".i";
createNode composeMatrix -n "leg_X_ik_ankle_matrix_localTo_legEnd";
	rename -uid "02CBC6A6-4AD4-76F3-F639-1B96F1AE9866";
	setAttr ".omat" -type "matrix" -0.97630596485912791 0.020388965237451807 0.21543201497696121 0
		 0.21513565773243343 0.19868973846230686 0.95615847881081584 0 -0.023309048726211704 0.97985033445232139 -0.19836837026389342 0
		 0 0 0 1;
createNode decomposeMatrix -n "leg_X_ikFoot_srt_inWorld";
	rename -uid "4B66E5B5-454E-B420-6182-4C8F9C090390";
	setAttr ".os" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".oqw" 1;
createNode multDoubleLinear -n "leg_X_lower_bone_length";
	rename -uid "A1674556-4641-4089-D9E6-95AB6C12253D";
createNode multDoubleLinear -n "leg_X_upper_bone_length";
	rename -uid "BCA9EB1D-45BC-2DF7-85C8-1AA4CAC380AD";
createNode addDoubleLinear -n "leg_X_ik_max_limbLength";
	rename -uid "CA70DA1C-438C-6CCB-725C-F5B3F16366E0";
createNode animBlendNodeAdditiveRotation -n "leg_X_ik_rotatePlane_guide_rotation_withDirection";
	rename -uid "E294DF61-4EF9-72C2-1EEE-D0B20878A2D7";
	setAttr ".ib" -type "double3" 0 180 0 ;
	setAttr ".acm" 1;
	setAttr ".o" -type "double3" 38.32603780148429 0 0 ;
createNode vectorProduct -n "leg_X_hip_guide_worldPosition";
	rename -uid "9BA9BE7E-40CA-6C4A-400D-149EB21E97E4";
	setAttr ".op" 4;
	setAttr ".m" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5 14.630000114440918 6.75 1;
createNode plusMinusAverage -n "leg_X_ik_guide_startToEndVector";
	rename -uid "90E21579-49B1-2766-2C11-9382D165D905";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode distanceBetween -n "leg_X_ik_guide_limbLength";
	rename -uid "2D266F1D-46E1-479E-5F7C-1CAFD17D9990";
createNode angleBetween -n "leg_X_ik_rotatePlane_guide_rotation";
	rename -uid "F830DFE5-4FAA-3225-91D2-2F99EC47C736";
createNode distanceBetween -n "leg_X_ik_guide_upperBoneLength";
	rename -uid "577780A7-4B00-39C9-5528-AF9F64573ECB";
createNode vectorProduct -n "leg_X_knee_guide_worldPosition";
	rename -uid "FC84167F-4A8C-A6E4-08D9-668C183E5237";
	setAttr ".op" 4;
	setAttr ".m" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5 4.8429999351501465 8.2720003128051758 1;
createNode distanceBetween -n "leg_X_ik_guide_lowerBoneLength";
	rename -uid "A48D886A-4CA1-E397-53DB-1592574B373A";
createNode plusMinusAverage -n "leg_X_ik_guide_midToEndVector";
	rename -uid "1B531145-4E6F-94DD-C30A-93B6BEF6FCE7";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode vectorProduct -n "leg_X_ik_guide_midToEndVector_dot_worldZVector";
	rename -uid "209D892F-4A56-AAD0-BAE1-FAA2C36E5AE8";
	setAttr ".i2" -type "float3" 0 0 1 ;
	setAttr ".no" yes;
createNode condition -n "leg_X_ik_guide_kneeDirection";
	rename -uid "7CF90E06-4828-78A1-8206-8388BB81836C";
	setAttr ".op" 2;
createNode condition -n "leg_X_ik_guide_baseVector";
	rename -uid "6BD499B1-474D-0080-0F4C-F7874A19A967";
	setAttr ".op" 2;
	setAttr ".ct" -type "float3" 0 0 1 ;
	setAttr ".cf" -type "float3" 0 0 -1 ;
createNode vectorProduct -n "leg_X_ankle_guide_worldPosition";
	rename -uid "6B0CE5FB-4C22-8C97-DD88-748A4D2B63E0";
	setAttr ".op" 4;
	setAttr ".m" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5 4.1560001373291016 20 1;
createNode decomposeMatrix -n "leg_X_ankle_fk_srt_inWorld";
	rename -uid "46248652-414B-D345-8C4B-5893F8055C73";
	setAttr ".imat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.499999979019166 4.1560003337860092 19.999999955177309 1;
	setAttr ".ot" -type "double3" 4.499999979019166 4.1560003337860092 19.999999955177309 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode reverse -n "leg_X_controls_visibility";
	rename -uid "9505399D-4696-E365-CEB4-31AB095F1809";
createNode multMatrix -n "leg_X_ikBall_crtl_matrix_localTo_ikToe";
	rename -uid "4E790D9B-4C41-C1AA-FAFC-B1B81CB9AD32";
createNode decomposeMatrix -n "leg_X_ikBall_crtl_srt_localTo_ikToe";
	rename -uid "1A386E92-4CA6-52C5-25A5-E7B07C8B23C1";
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "leg_X_ikBall_matrix_localTo_ikToe";
	rename -uid "367DF715-4753-3D9F-40C2-2D9506A12653";
createNode vectorProduct -n "leg_X_ik_poleVector_displayCurve_start";
	rename -uid "A5EB946F-4D97-D5C5-1D71-0B9C45E10D8E";
	setAttr ".op" 4;
	setAttr ".m" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5 4.8429999351501465 -8.617854118347168 1;
createNode pairBlend -n "leg_X_hip_ikfk_blend_translateRotate";
	rename -uid "96126580-4DFF-CEE0-D814-0C9BD4F2EE73";
	setAttr ".ri" 1;
createNode pairBlend -n "leg_X_knee_ikfk_blend_translateRotate";
	rename -uid "39DD2510-42A3-E911-5F20-E797AAC2E924";
	setAttr ".ri" 1;
createNode pairBlend -n "leg_X_ankle_ikfk_blend_translateRotate";
	rename -uid "CE602586-477B-28A5-E176-91AC796E7991";
	setAttr ".ri" 1;
createNode pairBlend -n "leg_X_foot_ikfk_blend_translateRotate";
	rename -uid "0898C6CE-40D8-EAC6-8DA3-918094CB568F";
	setAttr ".ri" 1;
createNode pairBlend -n "leg_X_toe_ikfk_blend_translateRotate";
	rename -uid "E4915C50-4D53-73DB-714E-B88AEF9E7D83";
	setAttr ".ri" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "DF741CD3-4F07-CAE3-2140-DABA7CD7EC43";
	setAttr -s 7 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "ik_guides";
	setAttr ".tgi[0].vl" -type "double2" -1494.7768955018098 -1286.1416758078617 ;
	setAttr ".tgi[0].vh" -type "double2" 2614.7858245184443 1142.1196190948001 ;
	setAttr -s 17 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1084.2857666015625;
	setAttr ".tgi[0].ni[0].y" 182.85714721679687;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 55.714286804199219;
	setAttr ".tgi[0].ni[1].y" 268.57144165039063;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 355.71429443359375;
	setAttr ".tgi[0].ni[2].y" 311.42855834960937;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1384.2857666015625;
	setAttr ".tgi[0].ni[3].y" 311.42855834960937;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 741.4285888671875;
	setAttr ".tgi[0].ni[4].y" 311.42855834960937;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -544.28570556640625;
	setAttr ".tgi[0].ni[5].y" 97.142860412597656;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1727.142822265625;
	setAttr ".tgi[0].ni[6].y" 97.142860412597656;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 55.714286804199219;
	setAttr ".tgi[0].ni[7].y" 482.85714721679687;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -287.14285278320312;
	setAttr ".tgi[0].ni[8].y" 11.428571701049805;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -287.14285278320312;
	setAttr ".tgi[0].ni[9].y" 97.142860412597656;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -544.28570556640625;
	setAttr ".tgi[0].ni[10].y" 11.428571701049805;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -544.28570556640625;
	setAttr ".tgi[0].ni[11].y" 182.85714721679687;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 55.714286804199219;
	setAttr ".tgi[0].ni[12].y" 182.85714721679687;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 741.4285888671875;
	setAttr ".tgi[0].ni[13].y" 397.14285278320312;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -287.14285278320312;
	setAttr ".tgi[0].ni[14].y" 182.85714721679687;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 55.714286804199219;
	setAttr ".tgi[0].ni[15].y" 397.14285278320312;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1501.4285888671875;
	setAttr ".tgi[0].ni[16].y" 508.57144165039062;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "pv_guides";
	setAttr ".tgi[1].vl" -type "double2" -443.64075427033953 -1192.6807305711552 ;
	setAttr ".tgi[1].vh" -type "double2" 2259.6073161696568 404.61638038214716 ;
	setAttr -s 16 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 827.14288330078125;
	setAttr ".tgi[1].ni[0].y" -331.42855834960937;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1684.2857666015625;
	setAttr ".tgi[1].ni[1].y" -588.5714111328125;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 1424.2857666015625;
	setAttr ".tgi[1].ni[2].y" -195.71427917480469;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 98.571426391601563;
	setAttr ".tgi[1].ni[3].y" -331.42855834960937;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 2027.142822265625;
	setAttr ".tgi[1].ni[4].y" -460;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" -115.71428680419922;
	setAttr ".tgi[1].ni[5].y" -331.42855834960937;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 570;
	setAttr ".tgi[1].ni[6].y" -331.42855834960937;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 1684.2857666015625;
	setAttr ".tgi[1].ni[7].y" -460;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 98.571426391601563;
	setAttr ".tgi[1].ni[8].y" -202.85714721679687;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 1162.857177734375;
	setAttr ".tgi[1].ni[9].y" -195.71427917480469;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 842.85711669921875;
	setAttr ".tgi[1].ni[10].y" -195.71427917480469;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 98.571426391601563;
	setAttr ".tgi[1].ni[11].y" -460;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 1212.857177734375;
	setAttr ".tgi[1].ni[12].y" -331.42855834960937;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[1].ni[13].x" -115.71428680419922;
	setAttr ".tgi[1].ni[13].y" -460;
	setAttr ".tgi[1].ni[13].nvs" 18304;
	setAttr ".tgi[1].ni[14].x" -115.71428680419922;
	setAttr ".tgi[1].ni[14].y" -202.85714721679687;
	setAttr ".tgi[1].ni[14].nvs" 18304;
	setAttr ".tgi[1].ni[15].x" 2349.35107421875;
	setAttr ".tgi[1].ni[15].y" -457.01199340820312;
	setAttr ".tgi[1].ni[15].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "parent";
	setAttr ".tgi[2].vl" -type "double2" -4377.9764422585095 -660.11913669487717 ;
	setAttr ".tgi[2].vh" -type "double2" 9336.3095785653877 3054.1666606115946 ;
	setAttr -s 20 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 2431.428466796875;
	setAttr ".tgi[2].ni[0].y" 1375.7142333984375;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" 1488.5714111328125;
	setAttr ".tgi[2].ni[1].y" 1375.7142333984375;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 2088.571533203125;
	setAttr ".tgi[2].ni[2].y" 1375.7142333984375;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 1231.4285888671875;
	setAttr ".tgi[2].ni[3].y" 1547.142822265625;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 1488.5714111328125;
	setAttr ".tgi[2].ni[4].y" 1290;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 3588.571533203125;
	setAttr ".tgi[2].ni[5].y" 1290;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" 1788.5714111328125;
	setAttr ".tgi[2].ni[6].y" 1461.4285888671875;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" 631.4285888671875;
	setAttr ".tgi[2].ni[7].y" 1547.142822265625;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 3331.428466796875;
	setAttr ".tgi[2].ni[8].y" 1290;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" 931.4285888671875;
	setAttr ".tgi[2].ni[9].y" 1290;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" 1488.5714111328125;
	setAttr ".tgi[2].ni[10].y" 1547.142822265625;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" 3074.28564453125;
	setAttr ".tgi[2].ni[11].y" 1290;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" 1788.5714111328125;
	setAttr ".tgi[2].ni[12].y" 1375.7142333984375;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 2088.571533203125;
	setAttr ".tgi[2].ni[13].y" 1547.142822265625;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" 631.4285888671875;
	setAttr ".tgi[2].ni[14].y" 1247.142822265625;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" 631.4285888671875;
	setAttr ".tgi[2].ni[15].y" 1632.857177734375;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" 1231.4285888671875;
	setAttr ".tgi[2].ni[16].y" 1161.4285888671875;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 631.4285888671875;
	setAttr ".tgi[2].ni[17].y" 1332.857177734375;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" 2731.428466796875;
	setAttr ".tgi[2].ni[18].y" 1375.7142333984375;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 1488.5714111328125;
	setAttr ".tgi[2].ni[19].y" 1461.4285888671875;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "hip";
	setAttr ".tgi[3].vl" -type "double2" -2028.5717737107013 -875.59531860879724 ;
	setAttr ".tgi[3].vh" -type "double2" 11685.714247113196 2838.6904786976743 ;
	setAttr -s 25 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 4070;
	setAttr ".tgi[3].ni[0].y" 1578.5714111328125;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" 4027.142822265625;
	setAttr ".tgi[3].ni[1].y" 1707.142822265625;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" 2498.571533203125;
	setAttr ".tgi[3].ni[2].y" 1381.4285888671875;
	setAttr ".tgi[3].ni[2].nvs" 18304;
	setAttr ".tgi[3].ni[3].x" 3055.71435546875;
	setAttr ".tgi[3].ni[3].y" 1510;
	setAttr ".tgi[3].ni[3].nvs" 18304;
	setAttr ".tgi[3].ni[4].x" 6384.28564453125;
	setAttr ".tgi[3].ni[4].y" 1407.142822265625;
	setAttr ".tgi[3].ni[4].nvs" 18304;
	setAttr ".tgi[3].ni[5].x" 6641.4287109375;
	setAttr ".tgi[3].ni[5].y" 1407.142822265625;
	setAttr ".tgi[3].ni[5].nvs" 18304;
	setAttr ".tgi[3].ni[6].x" 1598.5714111328125;
	setAttr ".tgi[3].ni[6].y" 1505.7142333984375;
	setAttr ".tgi[3].ni[6].nvs" 18304;
	setAttr ".tgi[3].ni[7].x" 5484.28564453125;
	setAttr ".tgi[3].ni[7].y" 1407.142822265625;
	setAttr ".tgi[3].ni[7].nvs" 18304;
	setAttr ".tgi[3].ni[8].x" 3041.428466796875;
	setAttr ".tgi[3].ni[8].y" 1235.7142333984375;
	setAttr ".tgi[3].ni[8].nvs" 18304;
	setAttr ".tgi[3].ni[9].x" 4412.85693359375;
	setAttr ".tgi[3].ni[9].y" 1535.7142333984375;
	setAttr ".tgi[3].ni[9].nvs" 18304;
	setAttr ".tgi[3].ni[10].x" 4284.28564453125;
	setAttr ".tgi[3].ni[10].y" 1707.142822265625;
	setAttr ".tgi[3].ni[10].nvs" 18304;
	setAttr ".tgi[3].ni[11].x" 5227.14306640625;
	setAttr ".tgi[3].ni[11].y" 1407.142822265625;
	setAttr ".tgi[3].ni[11].nvs" 18304;
	setAttr ".tgi[3].ni[12].x" 4970;
	setAttr ".tgi[3].ni[12].y" 1707.142822265625;
	setAttr ".tgi[3].ni[12].nvs" 18304;
	setAttr ".tgi[3].ni[13].x" 6641.4287109375;
	setAttr ".tgi[3].ni[13].y" 1321.4285888671875;
	setAttr ".tgi[3].ni[13].nvs" 18304;
	setAttr ".tgi[3].ni[14].x" 3427.142822265625;
	setAttr ".tgi[3].ni[14].y" 1707.142822265625;
	setAttr ".tgi[3].ni[14].nvs" 18304;
	setAttr ".tgi[3].ni[15].x" 1598.5714111328125;
	setAttr ".tgi[3].ni[15].y" 1381.4285888671875;
	setAttr ".tgi[3].ni[15].nvs" 18304;
	setAttr ".tgi[3].ni[16].x" 2755.71435546875;
	setAttr ".tgi[3].ni[16].y" 1381.4285888671875;
	setAttr ".tgi[3].ni[16].nvs" 18304;
	setAttr ".tgi[3].ni[17].x" 6384.28564453125;
	setAttr ".tgi[3].ni[17].y" 1235.7142333984375;
	setAttr ".tgi[3].ni[17].nvs" 18304;
	setAttr ".tgi[3].ni[18].x" 2198.571533203125;
	setAttr ".tgi[3].ni[18].y" 1381.4285888671875;
	setAttr ".tgi[3].ni[18].nvs" 18304;
	setAttr ".tgi[3].ni[19].x" 3055.71435546875;
	setAttr ".tgi[3].ni[19].y" 1338.5714111328125;
	setAttr ".tgi[3].ni[19].nvs" 18304;
	setAttr ".tgi[3].ni[20].x" 5784.28564453125;
	setAttr ".tgi[3].ni[20].y" 1321.4285888671875;
	setAttr ".tgi[3].ni[20].nvs" 18304;
	setAttr ".tgi[3].ni[21].x" 4670;
	setAttr ".tgi[3].ni[21].y" 1535.7142333984375;
	setAttr ".tgi[3].ni[21].nvs" 18304;
	setAttr ".tgi[3].ni[22].x" 5484.28564453125;
	setAttr ".tgi[3].ni[22].y" 1235.7142333984375;
	setAttr ".tgi[3].ni[22].nvs" 18304;
	setAttr ".tgi[3].ni[23].x" 3684.28564453125;
	setAttr ".tgi[3].ni[23].y" 1707.142822265625;
	setAttr ".tgi[3].ni[23].nvs" 18304;
	setAttr ".tgi[3].ni[24].x" 3684.28564453125;
	setAttr ".tgi[3].ni[24].y" 1407.142822265625;
	setAttr ".tgi[3].ni[24].nvs" 18304;
	setAttr ".tgi[4].tn" -type "string" "fk_leg";
	setAttr ".tgi[4].vl" -type "double2" -3889.285985486847 -763.09532307914526 ;
	setAttr ".tgi[4].vh" -type "double2" 9825.0000353370488 2951.1904742273264 ;
	setAttr -s 34 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" 3740;
	setAttr ".tgi[4].ni[0].y" 1190;
	setAttr ".tgi[4].ni[0].nvs" 18304;
	setAttr ".tgi[4].ni[1].x" 3182.857177734375;
	setAttr ".tgi[4].ni[1].y" 761.4285888671875;
	setAttr ".tgi[4].ni[1].nvs" 18304;
	setAttr ".tgi[4].ni[2].x" 3697.142822265625;
	setAttr ".tgi[4].ni[2].y" 975.71429443359375;
	setAttr ".tgi[4].ni[2].nvs" 18304;
	setAttr ".tgi[4].ni[3].x" 3482.857177734375;
	setAttr ".tgi[4].ni[3].y" 1190;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" 2925.71435546875;
	setAttr ".tgi[4].ni[4].y" 1318.5714111328125;
	setAttr ".tgi[4].ni[4].nvs" 18304;
	setAttr ".tgi[4].ni[5].x" 3782.857177734375;
	setAttr ".tgi[4].ni[5].y" 632.85711669921875;
	setAttr ".tgi[4].ni[5].nvs" 18304;
	setAttr ".tgi[4].ni[6].x" 2540;
	setAttr ".tgi[4].ni[6].y" 1532.857177734375;
	setAttr ".tgi[4].ni[6].nvs" 18304;
	setAttr ".tgi[4].ni[7].x" 3782.857177734375;
	setAttr ".tgi[4].ni[7].y" 504.28570556640625;
	setAttr ".tgi[4].ni[7].nvs" 18304;
	setAttr ".tgi[4].ni[8].x" 3525.71435546875;
	setAttr ".tgi[4].ni[8].y" 504.28570556640625;
	setAttr ".tgi[4].ni[8].nvs" 18304;
	setAttr ".tgi[4].ni[9].x" 4511.4287109375;
	setAttr ".tgi[4].ni[9].y" 1318.5714111328125;
	setAttr ".tgi[4].ni[9].nvs" 18304;
	setAttr ".tgi[4].ni[10].x" 3182.857177734375;
	setAttr ".tgi[4].ni[10].y" 1061.4285888671875;
	setAttr ".tgi[4].ni[10].nvs" 18304;
	setAttr ".tgi[4].ni[11].x" 2025.7142333984375;
	setAttr ".tgi[4].ni[11].y" 1404.2857666015625;
	setAttr ".tgi[4].ni[11].nvs" 18304;
	setAttr ".tgi[4].ni[12].x" 4468.5712890625;
	setAttr ".tgi[4].ni[12].y" 1061.4285888671875;
	setAttr ".tgi[4].ni[12].nvs" 18304;
	setAttr ".tgi[4].ni[13].x" 1468.5714111328125;
	setAttr ".tgi[4].ni[13].y" 1532.857177734375;
	setAttr ".tgi[4].ni[13].nvs" 18304;
	setAttr ".tgi[4].ni[14].x" 3997.142822265625;
	setAttr ".tgi[4].ni[14].y" 1190;
	setAttr ".tgi[4].ni[14].nvs" 18304;
	setAttr ".tgi[4].ni[15].x" 3954.28564453125;
	setAttr ".tgi[4].ni[15].y" 975.71429443359375;
	setAttr ".tgi[4].ni[15].nvs" 18304;
	setAttr ".tgi[4].ni[16].x" 1468.5714111328125;
	setAttr ".tgi[4].ni[16].y" 1318.5714111328125;
	setAttr ".tgi[4].ni[16].nvs" 18304;
	setAttr ".tgi[4].ni[17].x" 3440;
	setAttr ".tgi[4].ni[17].y" 975.71429443359375;
	setAttr ".tgi[4].ni[17].nvs" 18304;
	setAttr ".tgi[4].ni[18].x" 3225.71435546875;
	setAttr ".tgi[4].ni[18].y" 1532.857177734375;
	setAttr ".tgi[4].ni[18].nvs" 18304;
	setAttr ".tgi[4].ni[19].x" 3182.857177734375;
	setAttr ".tgi[4].ni[19].y" 890;
	setAttr ".tgi[4].ni[19].nvs" 18304;
	setAttr ".tgi[4].ni[20].x" 3182.857177734375;
	setAttr ".tgi[4].ni[20].y" 1190;
	setAttr ".tgi[4].ni[20].nvs" 18304;
	setAttr ".tgi[4].ni[21].x" 4725.71435546875;
	setAttr ".tgi[4].ni[21].y" 1061.4285888671875;
	setAttr ".tgi[4].ni[21].nvs" 18304;
	setAttr ".tgi[4].ni[22].x" 2562.857177734375;
	setAttr ".tgi[4].ni[22].y" 1320;
	setAttr ".tgi[4].ni[22].nvs" 18304;
	setAttr ".tgi[4].ni[23].x" 2262.857177734375;
	setAttr ".tgi[4].ni[23].y" 1320;
	setAttr ".tgi[4].ni[23].nvs" 18304;
	setAttr ".tgi[4].ni[24].x" 3525.71435546875;
	setAttr ".tgi[4].ni[24].y" 761.4285888671875;
	setAttr ".tgi[4].ni[24].nvs" 18304;
	setAttr ".tgi[4].ni[25].x" 4082.857177734375;
	setAttr ".tgi[4].ni[25].y" 504.28570556640625;
	setAttr ".tgi[4].ni[25].nvs" 18304;
	setAttr ".tgi[4].ni[26].x" 3225.71435546875;
	setAttr ".tgi[4].ni[26].y" 1404.2857666015625;
	setAttr ".tgi[4].ni[26].nvs" 18304;
	setAttr ".tgi[4].ni[27].x" 2282.857177734375;
	setAttr ".tgi[4].ni[27].y" 1404.2857666015625;
	setAttr ".tgi[4].ni[27].nvs" 18304;
	setAttr ".tgi[4].ni[28].x" 3525.71435546875;
	setAttr ".tgi[4].ni[28].y" 1404.2857666015625;
	setAttr ".tgi[4].ni[28].nvs" 18304;
	setAttr ".tgi[4].ni[29].x" 3525.71435546875;
	setAttr ".tgi[4].ni[29].y" 632.85711669921875;
	setAttr ".tgi[4].ni[29].nvs" 18304;
	setAttr ".tgi[4].ni[30].x" 4297.14306640625;
	setAttr ".tgi[4].ni[30].y" 1318.5714111328125;
	setAttr ".tgi[4].ni[30].nvs" 18304;
	setAttr ".tgi[4].ni[31].x" 1725.7142333984375;
	setAttr ".tgi[4].ni[31].y" 1404.2857666015625;
	setAttr ".tgi[4].ni[31].nvs" 18304;
	setAttr ".tgi[4].ni[32].x" 2005.7142333984375;
	setAttr ".tgi[4].ni[32].y" 1191.4285888671875;
	setAttr ".tgi[4].ni[32].nvs" 18304;
	setAttr ".tgi[4].ni[33].x" 4211.4287109375;
	setAttr ".tgi[4].ni[33].y" 1061.4285888671875;
	setAttr ".tgi[4].ni[33].nvs" 18304;
	setAttr ".tgi[5].tn" -type "string" "ik_leg";
	setAttr ".tgi[5].vl" -type "double2" 5172.1609666379609 -527.38093142471712 ;
	setAttr ".tgi[5].vh" -type "double2" 9075.4575148315944 529.76188371105889 ;
	setAttr -s 56 ".tgi[5].ni";
	setAttr ".tgi[5].ni[0].x" 8195.7138671875;
	setAttr ".tgi[5].ni[0].y" -10;
	setAttr ".tgi[5].ni[0].nvs" 18304;
	setAttr ".tgi[5].ni[1].x" 7391.4287109375;
	setAttr ".tgi[5].ni[1].y" 422.85714721679687;
	setAttr ".tgi[5].ni[1].nvs" 18304;
	setAttr ".tgi[5].ni[2].x" 5848.5712890625;
	setAttr ".tgi[5].ni[2].y" 422.85714721679687;
	setAttr ".tgi[5].ni[2].nvs" 18304;
	setAttr ".tgi[5].ni[3].x" 2225.71435546875;
	setAttr ".tgi[5].ni[3].y" 497.14285278320312;
	setAttr ".tgi[5].ni[3].nvs" 18304;
	setAttr ".tgi[5].ni[4].x" 6105.71435546875;
	setAttr ".tgi[5].ni[4].y" 508.57144165039062;
	setAttr ".tgi[5].ni[4].nvs" 18304;
	setAttr ".tgi[5].ni[5].x" 5097.14306640625;
	setAttr ".tgi[5].ni[5].y" -102.85713958740234;
	setAttr ".tgi[5].ni[5].nvs" 18304;
	setAttr ".tgi[5].ni[6].x" 5911.4287109375;
	setAttr ".tgi[5].ni[6].y" 197.14285278320312;
	setAttr ".tgi[5].ni[6].nvs" 18304;
	setAttr ".tgi[5].ni[7].x" 2485.71435546875;
	setAttr ".tgi[5].ni[7].y" 747.14288330078125;
	setAttr ".tgi[5].ni[7].nvs" 18304;
	setAttr ".tgi[5].ni[8].x" 7081.4287109375;
	setAttr ".tgi[5].ni[8].y" -54.285713195800781;
	setAttr ".tgi[5].ni[8].nvs" 18305;
	setAttr ".tgi[5].ni[9].x" 2228.571533203125;
	setAttr ".tgi[5].ni[9].y" 1004.2857055664062;
	setAttr ".tgi[5].ni[9].nvs" 18304;
	setAttr ".tgi[5].ni[10].x" 5397.14306640625;
	setAttr ".tgi[5].ni[10].y" -17.142856597900391;
	setAttr ".tgi[5].ni[10].nvs" 18304;
	setAttr ".tgi[5].ni[11].x" 3000;
	setAttr ".tgi[5].ni[11].y" 918.5714111328125;
	setAttr ".tgi[5].ni[11].nvs" 18304;
	setAttr ".tgi[5].ni[12].x" 5654.28564453125;
	setAttr ".tgi[5].ni[12].y" 111.42857360839844;
	setAttr ".tgi[5].ni[12].nvs" 18304;
	setAttr ".tgi[5].ni[13].x" 6511.4287109375;
	setAttr ".tgi[5].ni[13].y" 25.714284896850586;
	setAttr ".tgi[5].ni[13].nvs" 18304;
	setAttr ".tgi[5].ni[14].x" 7411.4287109375;
	setAttr ".tgi[5].ni[14].y" -145.71427917480469;
	setAttr ".tgi[5].ni[14].nvs" 18304;
	setAttr ".tgi[5].ni[15].x" 7668.5712890625;
	setAttr ".tgi[5].ni[15].y" -17.142856597900391;
	setAttr ".tgi[5].ni[15].nvs" 18304;
	setAttr ".tgi[5].ni[16].x" 8495.7138671875;
	setAttr ".tgi[5].ni[16].y" -310;
	setAttr ".tgi[5].ni[16].nvs" 18304;
	setAttr ".tgi[5].ni[17].x" 7048.5712890625;
	setAttr ".tgi[5].ni[17].y" 422.85714721679687;
	setAttr ".tgi[5].ni[17].nvs" 18304;
	setAttr ".tgi[5].ni[18].x" 2225.71435546875;
	setAttr ".tgi[5].ni[18].y" 111.42857360839844;
	setAttr ".tgi[5].ni[18].nvs" 18304;
	setAttr ".tgi[5].ni[19].x" 3254.28564453125;
	setAttr ".tgi[5].ni[19].y" 240;
	setAttr ".tgi[5].ni[19].nvs" 18304;
	setAttr ".tgi[5].ni[20].x" 4714.28564453125;
	setAttr ".tgi[5].ni[20].y" -152.85714721679687;
	setAttr ".tgi[5].ni[20].nvs" 18304;
	setAttr ".tgi[5].ni[21].x" 8795.7138671875;
	setAttr ".tgi[5].ni[21].y" 247.14285278320312;
	setAttr ".tgi[5].ni[21].nvs" 18304;
	setAttr ".tgi[5].ni[22].x" 3940;
	setAttr ".tgi[5].ni[22].y" -145.71427917480469;
	setAttr ".tgi[5].ni[22].nvs" 18304;
	setAttr ".tgi[5].ni[23].x" 8195.7138671875;
	setAttr ".tgi[5].ni[23].y" 247.14285278320312;
	setAttr ".tgi[5].ni[23].nvs" 18304;
	setAttr ".tgi[5].ni[24].x" 2225.71435546875;
	setAttr ".tgi[5].ni[24].y" 582.85711669921875;
	setAttr ".tgi[5].ni[24].nvs" 18304;
	setAttr ".tgi[5].ni[25].x" 4797.14306640625;
	setAttr ".tgi[5].ni[25].y" 454.28570556640625;
	setAttr ".tgi[5].ni[25].nvs" 18304;
	setAttr ".tgi[5].ni[26].x" 2742.857177734375;
	setAttr ".tgi[5].ni[26].y" 918.5714111328125;
	setAttr ".tgi[5].ni[26].nvs" 18304;
	setAttr ".tgi[5].ni[27].x" 5097.14306640625;
	setAttr ".tgi[5].ni[27].y" -17.142856597900391;
	setAttr ".tgi[5].ni[27].nvs" 18304;
	setAttr ".tgi[5].ni[28].x" 2782.857177734375;
	setAttr ".tgi[5].ni[28].y" 582.85711669921875;
	setAttr ".tgi[5].ni[28].nvs" 18304;
	setAttr ".tgi[5].ni[29].x" 8195.7138671875;
	setAttr ".tgi[5].ni[29].y" -395.71429443359375;
	setAttr ".tgi[5].ni[29].nvs" 18304;
	setAttr ".tgi[5].ni[30].x" 6012.85693359375;
	setAttr ".tgi[5].ni[30].y" -317.14285278320312;
	setAttr ".tgi[5].ni[30].nvs" 18304;
	setAttr ".tgi[5].ni[31].x" 6211.4287109375;
	setAttr ".tgi[5].ni[31].y" 111.42857360839844;
	setAttr ".tgi[5].ni[31].nvs" 18304;
	setAttr ".tgi[5].ni[32].x" 2228.571533203125;
	setAttr ".tgi[5].ni[32].y" 832.85711669921875;
	setAttr ".tgi[5].ni[32].nvs" 18304;
	setAttr ".tgi[5].ni[33].x" 8495.7138671875;
	setAttr ".tgi[5].ni[33].y" 247.14285278320312;
	setAttr ".tgi[5].ni[33].nvs" 18304;
	setAttr ".tgi[5].ni[34].x" 6748.5712890625;
	setAttr ".tgi[5].ni[34].y" 422.85714721679687;
	setAttr ".tgi[5].ni[34].nvs" 18304;
	setAttr ".tgi[5].ni[35].x" 2740;
	setAttr ".tgi[5].ni[35].y" 197.14285278320312;
	setAttr ".tgi[5].ni[35].nvs" 18304;
	setAttr ".tgi[5].ni[36].x" 4714.28564453125;
	setAttr ".tgi[5].ni[36].y" -238.57142639160156;
	setAttr ".tgi[5].ni[36].nvs" 18304;
	setAttr ".tgi[5].ni[37].x" 2225.71435546875;
	setAttr ".tgi[5].ni[37].y" 197.14285278320312;
	setAttr ".tgi[5].ni[37].nvs" 18304;
	setAttr ".tgi[5].ni[38].x" 6570;
	setAttr ".tgi[5].ni[38].y" -145.71427917480469;
	setAttr ".tgi[5].ni[38].nvs" 18304;
	setAttr ".tgi[5].ni[39].x" 4898.5712890625;
	setAttr ".tgi[5].ni[39].y" 111.42857360839844;
	setAttr ".tgi[5].ni[39].nvs" 18304;
	setAttr ".tgi[5].ni[40].x" 6834.28564453125;
	setAttr ".tgi[5].ni[40].y" -177.14285278320312;
	setAttr ".tgi[5].ni[40].nvs" 18304;
	setAttr ".tgi[5].ni[41].x" 2485.71435546875;
	setAttr ".tgi[5].ni[41].y" 918.5714111328125;
	setAttr ".tgi[5].ni[41].nvs" 18304;
	setAttr ".tgi[5].ni[42].x" 7840;
	setAttr ".tgi[5].ni[42].y" 582.85711669921875;
	setAttr ".tgi[5].ni[42].nvs" 18304;
	setAttr ".tgi[5].ni[43].x" 2228.571533203125;
	setAttr ".tgi[5].ni[43].y" 661.4285888671875;
	setAttr ".tgi[5].ni[43].nvs" 18304;
	setAttr ".tgi[5].ni[44].x" 4262.85693359375;
	setAttr ".tgi[5].ni[44].y" -477.14285278320312;
	setAttr ".tgi[5].ni[44].nvs" 18304;
	setAttr ".tgi[5].ni[45].x" 7681.4287109375;
	setAttr ".tgi[5].ni[45].y" -310;
	setAttr ".tgi[5].ni[45].nvs" 18304;
	setAttr ".tgi[5].ni[46].x" 6448.5712890625;
	setAttr ".tgi[5].ni[46].y" 422.85714721679687;
	setAttr ".tgi[5].ni[46].nvs" 18304;
	setAttr ".tgi[5].ni[47].x" 3940;
	setAttr ".tgi[5].ni[47].y" -231.42857360839844;
	setAttr ".tgi[5].ni[47].nvs" 18304;
	setAttr ".tgi[5].ni[48].x" 7368.5712890625;
	setAttr ".tgi[5].ni[48].y" -17.142856597900391;
	setAttr ".tgi[5].ni[48].nvs" 18304;
	setAttr ".tgi[5].ni[49].x" 6824.28564453125;
	setAttr ".tgi[5].ni[49].y" -97.142860412597656;
	setAttr ".tgi[5].ni[49].nvs" 18304;
	setAttr ".tgi[5].ni[50].x" 2742.857177734375;
	setAttr ".tgi[5].ni[50].y" 747.14288330078125;
	setAttr ".tgi[5].ni[50].nvs" 18304;
	setAttr ".tgi[5].ni[51].x" 5140;
	setAttr ".tgi[5].ni[51].y" 582.85711669921875;
	setAttr ".tgi[5].ni[51].nvs" 18304;
	setAttr ".tgi[5].ni[52].x" 3000;
	setAttr ".tgi[5].ni[52].y" 747.14288330078125;
	setAttr ".tgi[5].ni[52].nvs" 18304;
	setAttr ".tgi[5].ni[53].x" 4497.14306640625;
	setAttr ".tgi[5].ni[53].y" 454.28570556640625;
	setAttr ".tgi[5].ni[53].nvs" 18304;
	setAttr ".tgi[5].ni[54].x" 6811.4287109375;
	setAttr ".tgi[5].ni[54].y" 111.42857360839844;
	setAttr ".tgi[5].ni[54].nvs" 18304;
	setAttr ".tgi[5].ni[55].x" 8795.7138671875;
	setAttr ".tgi[5].ni[55].y" -310;
	setAttr ".tgi[5].ni[55].nvs" 18304;
	setAttr ".tgi[6].tn" -type "string" "reverseFoot";
	setAttr ".tgi[6].vl" -type "double2" 5721.4283440794343 631.94441933322912 ;
	setAttr ".tgi[6].vh" -type "double2" 9207.0888662323923 2691.5539471013099 ;
	setAttr -s 17 ".tgi[6].ni";
	setAttr ".tgi[6].ni[0].x" 8072.85693359375;
	setAttr ".tgi[6].ni[0].y" 2220;
	setAttr ".tgi[6].ni[0].nvs" 18304;
	setAttr ".tgi[6].ni[1].x" 6601.4287109375;
	setAttr ".tgi[6].ni[1].y" 1712.857177734375;
	setAttr ".tgi[6].ni[1].nvs" 18304;
	setAttr ".tgi[6].ni[2].x" 7472.85693359375;
	setAttr ".tgi[6].ni[2].y" 2348.571533203125;
	setAttr ".tgi[6].ni[2].nvs" 18304;
	setAttr ".tgi[6].ni[3].x" 6441.4287109375;
	setAttr ".tgi[6].ni[3].y" 1914.2857666015625;
	setAttr ".tgi[6].ni[3].nvs" 18304;
	setAttr ".tgi[6].ni[4].x" 8070;
	setAttr ".tgi[6].ni[4].y" 2042.857177734375;
	setAttr ".tgi[6].ni[4].nvs" 18304;
	setAttr ".tgi[6].ni[5].x" 7115.71435546875;
	setAttr ".tgi[6].ni[5].y" 1712.857177734375;
	setAttr ".tgi[6].ni[5].nvs" 18304;
	setAttr ".tgi[6].ni[6].x" 8058.5712890625;
	setAttr ".tgi[6].ni[6].y" 1584.2857666015625;
	setAttr ".tgi[6].ni[6].nvs" 18304;
	setAttr ".tgi[6].ni[7].x" 6655.71435546875;
	setAttr ".tgi[6].ni[7].y" 2040;
	setAttr ".tgi[6].ni[7].nvs" 18304;
	setAttr ".tgi[6].ni[8].x" 7815.71435546875;
	setAttr ".tgi[6].ni[8].y" 2220;
	setAttr ".tgi[6].ni[8].nvs" 18304;
	setAttr ".tgi[6].ni[9].x" 6601.4287109375;
	setAttr ".tgi[6].ni[9].y" 1584.2857666015625;
	setAttr ".tgi[6].ni[9].nvs" 18304;
	setAttr ".tgi[6].ni[10].x" 5198.5712890625;
	setAttr ".tgi[6].ni[10].y" 1914.2857666015625;
	setAttr ".tgi[6].ni[10].nvs" 18304;
	setAttr ".tgi[6].ni[11].x" 7415.71435546875;
	setAttr ".tgi[6].ni[11].y" 1712.857177734375;
	setAttr ".tgi[6].ni[11].nvs" 18304;
	setAttr ".tgi[6].ni[12].x" 5927.14306640625;
	setAttr ".tgi[6].ni[12].y" 1911.4285888671875;
	setAttr ".tgi[6].ni[12].nvs" 18304;
	setAttr ".tgi[6].ni[13].x" 7758.5712890625;
	setAttr ".tgi[6].ni[13].y" 1584.2857666015625;
	setAttr ".tgi[6].ni[13].nvs" 18304;
	setAttr ".tgi[6].ni[14].x" 5198.5712890625;
	setAttr ".tgi[6].ni[14].y" 2042.857177734375;
	setAttr ".tgi[6].ni[14].nvs" 18304;
	setAttr ".tgi[6].ni[15].x" 7472.85693359375;
	setAttr ".tgi[6].ni[15].y" 2262.857177734375;
	setAttr ".tgi[6].ni[15].nvs" 18304;
	setAttr ".tgi[6].ni[16].x" 5670;
	setAttr ".tgi[6].ni[16].y" 1911.4285888671875;
	setAttr ".tgi[6].ni[16].nvs" 18304;
select -ne :time1;
	setAttr ".o" 31;
	setAttr ".unw" 31;
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
	setAttr -s 115 ".u";
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
connectAttr "hyperLayout1.msg" "leg_X_cmpt.hl";
connectAttr "leg_X_hip_fk_ctrl.msg" "leg_X_cmpt.pni[0].pnod";
connectAttr "leg_X_knee_fk_ctrl.msg" "leg_X_cmpt.pni[1].pnod";
connectAttr "leg_X_ankle_fk_ctrl.msg" "leg_X_cmpt.pni[2].pnod";
connectAttr "leg_X_ikFoot_ctrl.msg" "leg_X_cmpt.pni[3].pnod";
connectAttr "leg_X_ikToe_ctrl.msg" "leg_X_cmpt.pni[4].pnod";
connectAttr "leg_X_ikBall_ctrl.msg" "leg_X_cmpt.pni[5].pnod";
connectAttr "leg_X_ikAnkle_ctrl.msg" "leg_X_cmpt.pni[6].pnod";
connectAttr "leg_X_ik_poleVector_ctrl.msg" "leg_X_cmpt.pni[7].pnod";
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset.tx" "ikFoot_srtOffset.tx";
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset.ty" "ikFoot_srtOffset.ty";
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset.tz" "ikFoot_srtOffset.tz";
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset.tz" "ikFoot_srtOffset.guide_attr[0]"
		;
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset.ty" "ikFoot_srtOffset.guide_attr[1]"
		;
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset.tx" "ikFoot_srtOffset.guide_attr[2]"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset.tx" "|leg_X_cmpt|input|root_srt|ikFoot_srtOffset|ankle_ik_srtOffset.tx"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset.ty" "|leg_X_cmpt|input|root_srt|ikFoot_srtOffset|ankle_ik_srtOffset.ty"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset.tz" "|leg_X_cmpt|input|root_srt|ikFoot_srtOffset|ankle_ik_srtOffset.tz"
		;
connectAttr "leg_X_poleVector_guided_srtOffset.tx" "poleVector_srtOffset.tx";
connectAttr "leg_X_poleVector_guided_srtOffset.ty" "poleVector_srtOffset.ty";
connectAttr "leg_X_poleVector_guided_srtOffset.tz" "poleVector_srtOffset.tz";
connectAttr "leg_X_poleVector_guided_srtOffset.ty" "poleVector_srtOffset.guide_attr[0]"
		;
connectAttr "leg_X_poleVector_guided_srtOffset.tx" "poleVector_srtOffset.guide_attr[1]"
		;
connectAttr "leg_X_poleVector_guided_srtOffset.tz" "poleVector_srtOffset.guide_attr[2]"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset.tx" "shoulder_ik_start_srtOffset.tx"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset.ty" "shoulder_ik_start_srtOffset.ty"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset.tz" "shoulder_ik_start_srtOffset.tz"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset.tx" "shoulder_ik_start_srtOffset.guide_attr[0]"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset.ty" "shoulder_ik_start_srtOffset.guide_attr[1]"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset.tz" "shoulder_ik_start_srtOffset.guide_attr[2]"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset.tx" "shoulder_ik_end_srtOffset.tx"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset.ty" "shoulder_ik_end_srtOffset.ty"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset.tz" "shoulder_ik_end_srtOffset.tz"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset.tz" "shoulder_ik_end_srtOffset.guide_attr[0]"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset.ty" "shoulder_ik_end_srtOffset.guide_attr[1]"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset.tx" "shoulder_ik_end_srtOffset.guide_attr[2]"
		;
connectAttr "leg_X_hip_guided_srtOffset.tx" "hip_srtOffset.tx";
connectAttr "leg_X_hip_guided_srtOffset.ty" "hip_srtOffset.ty";
connectAttr "leg_X_hip_guided_srtOffset.tz" "hip_srtOffset.tz";
connectAttr "leg_X_hip_guided_srtOffset.rx" "hip_srtOffset.rx";
connectAttr "leg_X_hip_guided_srtOffset.ry" "hip_srtOffset.ry";
connectAttr "leg_X_hip_guided_srtOffset.rz" "hip_srtOffset.rz";
connectAttr "leg_X_hip_guided_srtOffset.rx" "hip_srtOffset.guide_attr[0]";
connectAttr "leg_X_hip_guided_srtOffset.ry" "hip_srtOffset.guide_attr[1]";
connectAttr "leg_X_hip_guided_srtOffset.rz" "hip_srtOffset.guide_attr[2]";
connectAttr "leg_X_hip_guided_srtOffset.tx" "hip_srtOffset.guide_attr[3]";
connectAttr "leg_X_hip_guided_srtOffset.ty" "hip_srtOffset.guide_attr[4]";
connectAttr "leg_X_hip_guided_srtOffset.tz" "hip_srtOffset.guide_attr[5]";
connectAttr "leg_X_knee_guided_srtOffset.tx" "knee_srtOffset.tx";
connectAttr "leg_X_knee_guided_srtOffset.ty" "knee_srtOffset.ty";
connectAttr "leg_X_knee_guided_srtOffset.tz" "knee_srtOffset.tz";
connectAttr "leg_X_knee_guided_srtOffset.rx" "knee_srtOffset.rx";
connectAttr "leg_X_knee_guided_srtOffset.ry" "knee_srtOffset.ry";
connectAttr "leg_X_knee_guided_srtOffset.rz" "knee_srtOffset.rz";
connectAttr "leg_X_knee_guided_srtOffset.ty" "knee_srtOffset.guide_attr[0]";
connectAttr "leg_X_knee_guided_srtOffset.tx" "knee_srtOffset.guide_attr[1]";
connectAttr "leg_X_knee_guided_srtOffset.tz" "knee_srtOffset.guide_attr[2]";
connectAttr "leg_X_knee_guided_srtOffset.rz" "knee_srtOffset.guide_attr[3]";
connectAttr "leg_X_knee_guided_srtOffset.ry" "knee_srtOffset.guide_attr[4]";
connectAttr "leg_X_knee_guided_srtOffset.rx" "knee_srtOffset.guide_attr[5]";
connectAttr "leg_X_knee_ik_guided_srtOffset.rx" "knee_ik_srtOffset.rx";
connectAttr "leg_X_knee_ik_guided_srtOffset.ry" "knee_ik_srtOffset.ry";
connectAttr "leg_X_knee_ik_guided_srtOffset.rz" "knee_ik_srtOffset.rz";
connectAttr "leg_X_knee_ik_guided_srtOffset.ry" "knee_ik_srtOffset.guide_attr[0]"
		;
connectAttr "leg_X_knee_ik_guided_srtOffset.rx" "knee_ik_srtOffset.guide_attr[1]"
		;
connectAttr "leg_X_knee_ik_guided_srtOffset.rz" "knee_ik_srtOffset.guide_attr[2]"
		;
connectAttr "leg_X_ankle_guided_srtOffset.tx" "ankle_srtOffset.tx";
connectAttr "leg_X_ankle_guided_srtOffset.ty" "ankle_srtOffset.ty";
connectAttr "leg_X_ankle_guided_srtOffset.tz" "ankle_srtOffset.tz";
connectAttr "leg_X_ankle_guided_srtOffset.rx" "ankle_srtOffset.rx";
connectAttr "leg_X_ankle_guided_srtOffset.ry" "ankle_srtOffset.ry";
connectAttr "leg_X_ankle_guided_srtOffset.rz" "ankle_srtOffset.rz";
connectAttr "leg_X_ankle_guided_srtOffset.tx" "ankle_srtOffset.guide_attr[0]";
connectAttr "leg_X_ankle_guided_srtOffset.ty" "ankle_srtOffset.guide_attr[1]";
connectAttr "leg_X_ankle_guided_srtOffset.tz" "ankle_srtOffset.guide_attr[2]";
connectAttr "leg_X_ankle_guided_srtOffset.rx" "ankle_srtOffset.guide_attr[3]";
connectAttr "leg_X_ankle_guided_srtOffset.ry" "ankle_srtOffset.guide_attr[4]";
connectAttr "leg_X_ankle_guided_srtOffset.rz" "ankle_srtOffset.guide_attr[5]";
connectAttr "leg_X_ankle_ik_guided_srtOffset.rx" "|leg_X_cmpt|input|shoulderEnd_srt|hip_srtOffset|knee_srtOffset|ankle_srtOffset|ankle_ik_srtOffset.rx"
		;
connectAttr "leg_X_ankle_ik_guided_srtOffset.ry" "|leg_X_cmpt|input|shoulderEnd_srt|hip_srtOffset|knee_srtOffset|ankle_srtOffset|ankle_ik_srtOffset.ry"
		;
connectAttr "leg_X_ankle_ik_guided_srtOffset.rz" "|leg_X_cmpt|input|shoulderEnd_srt|hip_srtOffset|knee_srtOffset|ankle_srtOffset|ankle_ik_srtOffset.rz"
		;
connectAttr "leg_X_foot_guided_srtOffset.tx" "foot_srtOffset.tx";
connectAttr "leg_X_foot_guided_srtOffset.ty" "foot_srtOffset.ty";
connectAttr "leg_X_foot_guided_srtOffset.tz" "foot_srtOffset.tz";
connectAttr "leg_X_foot_guided_srtOffset.tx" "foot_srtOffset.guide_attr[0]";
connectAttr "leg_X_foot_guided_srtOffset.ty" "foot_srtOffset.guide_attr[1]";
connectAttr "leg_X_foot_guided_srtOffset.tz" "foot_srtOffset.guide_attr[2]";
connectAttr "leg_X_ball_guided_srtOffset.tx" "ball_srtOffset.tx";
connectAttr "leg_X_ball_guided_srtOffset.ty" "ball_srtOffset.ty";
connectAttr "leg_X_ball_guided_srtOffset.tz" "ball_srtOffset.tz";
connectAttr "leg_X_ball_guided_srtOffset.tz" "ball_srtOffset.guide_attr[0]";
connectAttr "leg_X_ball_guided_srtOffset.ty" "ball_srtOffset.guide_attr[1]";
connectAttr "leg_X_ball_guided_srtOffset.tx" "ball_srtOffset.guide_attr[2]";
connectAttr "leg_X_toe_guided_srtOffset.tx" "toe_srtOffset.tx";
connectAttr "leg_X_toe_guided_srtOffset.ty" "toe_srtOffset.ty";
connectAttr "leg_X_toe_guided_srtOffset.tz" "toe_srtOffset.tz";
connectAttr "leg_X_toe_guided_srtOffset.rx" "toe_srtOffset.rx";
connectAttr "leg_X_toe_guided_srtOffset.ry" "toe_srtOffset.ry";
connectAttr "leg_X_toe_guided_srtOffset.rz" "toe_srtOffset.rz";
connectAttr "leg_X_toe_guided_srtOffset.tz" "toe_srtOffset.guide_attr[0]";
connectAttr "leg_X_toe_guided_srtOffset.ty" "toe_srtOffset.guide_attr[1]";
connectAttr "leg_X_toe_guided_srtOffset.tx" "toe_srtOffset.guide_attr[2]";
connectAttr "leg_X_toe_guided_srtOffset.ry" "toe_srtOffset.guide_attr[3]";
connectAttr "leg_X_toe_guided_srtOffset.rx" "toe_srtOffset.guide_attr[4]";
connectAttr "leg_X_toe_guided_srtOffset.rz" "toe_srtOffset.guide_attr[5]";
connectAttr "leg_X_foot_ik_guided_srtOffset.rx" "foot_ik_srtOffset.rx";
connectAttr "leg_X_foot_ik_guided_srtOffset.ry" "foot_ik_srtOffset.ry";
connectAttr "leg_X_foot_ik_guided_srtOffset.rz" "foot_ik_srtOffset.rz";
connectAttr "leg_X_foot_ik_guided_srtOffset.rx" "foot_ik_srtOffset.guide_attr[0]"
		;
connectAttr "leg_X_foot_ik_guided_srtOffset.ry" "foot_ik_srtOffset.guide_attr[1]"
		;
connectAttr "leg_X_foot_ik_guided_srtOffset.rz" "foot_ik_srtOffset.guide_attr[2]"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset.rx" "hip_ik_srtOffset.rx";
connectAttr "leg_X_hip_ik_guided_srtOffset.ry" "hip_ik_srtOffset.ry";
connectAttr "leg_X_hip_ik_guided_srtOffset.rz" "hip_ik_srtOffset.rz";
connectAttr "leg_X_hip_ik_guided_srtOffset.tx" "hip_ik_srtOffset.tx";
connectAttr "leg_X_hip_ik_guided_srtOffset.ty" "hip_ik_srtOffset.ty";
connectAttr "leg_X_hip_ik_guided_srtOffset.tz" "hip_ik_srtOffset.tz";
connectAttr "leg_X_hip_ik_guided_srtOffset.tx" "hip_ik_srtOffset.guide_attr[0]";
connectAttr "leg_X_hip_ik_guided_srtOffset.ty" "hip_ik_srtOffset.guide_attr[1]";
connectAttr "leg_X_hip_ik_guided_srtOffset.tz" "hip_ik_srtOffset.guide_attr[2]";
connectAttr "leg_X_hip_ik_guided_srtOffset.rx" "hip_ik_srtOffset.guide_attr[3]";
connectAttr "leg_X_hip_ik_guided_srtOffset.ry" "hip_ik_srtOffset.guide_attr[4]";
connectAttr "leg_X_hip_ik_guided_srtOffset.rz" "hip_ik_srtOffset.guide_attr[5]";
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset.tx" "shoulder_ik_aim_srtOffset.tx"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset.ty" "shoulder_ik_aim_srtOffset.ty"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset.tz" "shoulder_ik_aim_srtOffset.tz"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset.tz" "shoulder_ik_aim_srtOffset.guide_attr[0]"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset.tx" "shoulder_ik_aim_srtOffset.guide_attr[1]"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset.ty" "shoulder_ik_aim_srtOffset.guide_attr[2]"
		;
connectAttr "leg_X_ik_leg_guided_settings.ikBaseDirection" "ik_leg_settings.ikBaseDirection"
		;
connectAttr "leg_X_ik_leg_guided_settings.upperBoneLength" "ik_leg_settings.upperBoneLength"
		;
connectAttr "leg_X_ik_leg_guided_settings.lowerBoneLength" "ik_leg_settings.lowerBoneLength"
		;
connectAttr "leg_X_ik_leg_guided_settings.kneeDirection" "ik_leg_settings.kneeDirection"
		;
connectAttr "leg_X_ik_leg_guided_settings.ikBaseDirection" "ik_leg_settings.guide_attr[0]"
		;
connectAttr "leg_X_ik_leg_guided_settings.upperBoneLength" "ik_leg_settings.guide_attr[1]"
		;
connectAttr "leg_X_ik_leg_guided_settings.lowerBoneLength" "ik_leg_settings.guide_attr[2]"
		;
connectAttr "leg_X_ik_leg_guided_settings.kneeDirection" "ik_leg_settings.guide_attr[3]"
		;
connectAttr "root_srt.t" "leg_X_root_guided_srt.t";
connectAttr "root_srt.r" "leg_X_root_guided_srt.r";
connectAttr "root_srt.s" "leg_X_root_guided_srt.s";
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.ctx" "leg_X_ikFoot_ctrl_guided_srtOffset.tx"
		;
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.cty" "leg_X_ikFoot_ctrl_guided_srtOffset.ty"
		;
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.ctz" "leg_X_ikFoot_ctrl_guided_srtOffset.tz"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.ctx" "leg_X_ikAnkle_guided_srtOffset.tx"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.cty" "leg_X_ikAnkle_guided_srtOffset.ty"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.ctz" "leg_X_ikAnkle_guided_srtOffset.tz"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset.rp" "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset.rpt" "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_ankle_guide_srt.t" "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_ankle_guide_srt.rp" "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_ankle_guide_srt.rpt" "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.w0" "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset.rp" "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset.rpt" "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_ikFoot_ctrl_guide_srt.t" "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_ikFoot_ctrl_guide_srt.rp" "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_ikFoot_ctrl_guide_srt.rpt" "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.w0" "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_ik_guided_poleVector_position.o" "leg_X_poleVector_guided_srtOffset.t"
		;
connectAttr "|leg_X_cmpt|input|shoulder_srt.t" "leg_X_shoulder_guided_srt.t";
connectAttr "|leg_X_cmpt|input|shoulder_srt.r" "leg_X_shoulder_guided_srt.r";
connectAttr "|leg_X_cmpt|input|shoulder_srt.s" "leg_X_shoulder_guided_srt.s";
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.ctx" "leg_X_shoulder_ik_start_guide_srtOffset.tx"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.cty" "leg_X_shoulder_ik_start_guide_srtOffset.ty"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.ctz" "leg_X_shoulder_ik_start_guide_srtOffset.tz"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset.rp" "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset.rpt" "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srt.t" "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srt.rp" "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srt.rpt" "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.w0" "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.ctx" "leg_X_shoulder_ik_end_guide_srtOffset.tx"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.cty" "leg_X_shoulder_ik_end_guide_srtOffset.ty"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.ctz" "leg_X_shoulder_ik_end_guide_srtOffset.tz"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset.rp" "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset.rpt" "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srt.t" "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srt.rp" "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srt.rpt" "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.w0" "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "shoulderEnd_srt.t" "leg_X_shoulderEnd_guided_srt.t";
connectAttr "shoulderEnd_srt.r" "leg_X_shoulderEnd_guided_srt.r";
connectAttr "shoulderEnd_srt.s" "leg_X_shoulderEnd_guided_srt.s";
connectAttr "leg_X_hip_guided_srtOffset_aimConstraint1.crx" "leg_X_hip_guided_srtOffset.rx"
		;
connectAttr "leg_X_hip_guided_srtOffset_aimConstraint1.cry" "leg_X_hip_guided_srtOffset.ry"
		;
connectAttr "leg_X_hip_guided_srtOffset_aimConstraint1.crz" "leg_X_hip_guided_srtOffset.rz"
		;
connectAttr "leg_X_hip_ik_guided_srt_aimConstraint1.crx" "leg_X_hip_ik_guided_srtOffset.rx"
		;
connectAttr "leg_X_hip_ik_guided_srt_aimConstraint1.cry" "leg_X_hip_ik_guided_srtOffset.ry"
		;
connectAttr "leg_X_hip_ik_guided_srt_aimConstraint1.crz" "leg_X_hip_ik_guided_srtOffset.rz"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset_pointConstraint1.ctx" "leg_X_hip_ik_guided_srtOffset.tx"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset_pointConstraint1.cty" "leg_X_hip_ik_guided_srtOffset.ty"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset_pointConstraint1.ctz" "leg_X_hip_ik_guided_srtOffset.tz"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset.t" "leg_X_hip_ik_guided_srt_aimConstraint1.ct"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset.rp" "leg_X_hip_ik_guided_srt_aimConstraint1.crp"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset.rpt" "leg_X_hip_ik_guided_srt_aimConstraint1.crt"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset.ro" "leg_X_hip_ik_guided_srt_aimConstraint1.cro"
		;
connectAttr "leg_X_knee_guide_srt.t" "leg_X_hip_ik_guided_srt_aimConstraint1.tg[0].tt"
		;
connectAttr "leg_X_knee_guide_srt.rp" "leg_X_hip_ik_guided_srt_aimConstraint1.tg[0].trp"
		;
connectAttr "leg_X_knee_guide_srt.rpt" "leg_X_hip_ik_guided_srt_aimConstraint1.tg[0].trt"
		;
connectAttr "leg_X_hip_ik_guided_srt_aimConstraint1.w0" "leg_X_hip_ik_guided_srt_aimConstraint1.tg[0].tw"
		;
connectAttr "leg_X_ik_guide_baseVector.oc" "leg_X_hip_ik_guided_srt_aimConstraint1.wu"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset.rp" "leg_X_hip_ik_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset.rpt" "leg_X_hip_ik_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_hip_guide_srt.t" "leg_X_hip_ik_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_hip_guide_srt.rp" "leg_X_hip_ik_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_hip_guide_srt.rpt" "leg_X_hip_ik_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset_pointConstraint1.w0" "leg_X_hip_ik_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.ctx" "leg_X_shoulder_ik_aim_guided_srtOffset.tx"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.cty" "leg_X_shoulder_ik_aim_guided_srtOffset.ty"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.ctz" "leg_X_shoulder_ik_aim_guided_srtOffset.tz"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset.rp" "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset.rpt" "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srt.t" "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srt.rp" "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srt.rpt" "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.w0" "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_knee_guided_srtOffset_pointConstraint1.ctx" "leg_X_knee_guided_srtOffset.tx"
		;
connectAttr "leg_X_knee_guided_srtOffset_pointConstraint1.cty" "leg_X_knee_guided_srtOffset.ty"
		;
connectAttr "leg_X_knee_guided_srtOffset_pointConstraint1.ctz" "leg_X_knee_guided_srtOffset.tz"
		;
connectAttr "leg_X_knee_guided_srtOffset_aimConstraint1.crx" "leg_X_knee_guided_srtOffset.rx"
		;
connectAttr "leg_X_knee_guided_srtOffset_aimConstraint1.cry" "leg_X_knee_guided_srtOffset.ry"
		;
connectAttr "leg_X_knee_guided_srtOffset_aimConstraint1.crz" "leg_X_knee_guided_srtOffset.rz"
		;
connectAttr "leg_X_knee_ik_guided_srt_aimConstraint1.crx" "leg_X_knee_ik_guided_srtOffset.rx"
		;
connectAttr "leg_X_knee_ik_guided_srt_aimConstraint1.cry" "leg_X_knee_ik_guided_srtOffset.ry"
		;
connectAttr "leg_X_knee_ik_guided_srt_aimConstraint1.crz" "leg_X_knee_ik_guided_srtOffset.rz"
		;
connectAttr "leg_X_knee_ik_guided_srtOffset.t" "leg_X_knee_ik_guided_srt_aimConstraint1.ct"
		;
connectAttr "leg_X_knee_ik_guided_srtOffset.rp" "leg_X_knee_ik_guided_srt_aimConstraint1.crp"
		;
connectAttr "leg_X_knee_ik_guided_srtOffset.rpt" "leg_X_knee_ik_guided_srt_aimConstraint1.crt"
		;
connectAttr "leg_X_knee_ik_guided_srtOffset.ro" "leg_X_knee_ik_guided_srt_aimConstraint1.cro"
		;
connectAttr "leg_X_ankle_guide_srt.t" "leg_X_knee_ik_guided_srt_aimConstraint1.tg[0].tt"
		;
connectAttr "leg_X_ankle_guide_srt.rp" "leg_X_knee_ik_guided_srt_aimConstraint1.tg[0].trp"
		;
connectAttr "leg_X_ankle_guide_srt.rpt" "leg_X_knee_ik_guided_srt_aimConstraint1.tg[0].trt"
		;
connectAttr "leg_X_knee_ik_guided_srt_aimConstraint1.w0" "leg_X_knee_ik_guided_srt_aimConstraint1.tg[0].tw"
		;
connectAttr "leg_X_ik_guide_baseVector.oc" "leg_X_knee_ik_guided_srt_aimConstraint1.wu"
		;
connectAttr "leg_X_ankle_guided_srtOffset_pointConstraint1.ctx" "leg_X_ankle_guided_srtOffset.tx"
		;
connectAttr "leg_X_ankle_guided_srtOffset_pointConstraint1.cty" "leg_X_ankle_guided_srtOffset.ty"
		;
connectAttr "leg_X_ankle_guided_srtOffset_pointConstraint1.ctz" "leg_X_ankle_guided_srtOffset.tz"
		;
connectAttr "leg_X_ankle_guided_srtOffset_aimConstraint1.crx" "leg_X_ankle_guided_srtOffset.rx"
		;
connectAttr "leg_X_ankle_guided_srtOffset_aimConstraint1.cry" "leg_X_ankle_guided_srtOffset.ry"
		;
connectAttr "leg_X_ankle_guided_srtOffset_aimConstraint1.crz" "leg_X_ankle_guided_srtOffset.rz"
		;
connectAttr "leg_X_ankle_ik_guided_srt_aimConstraint1.crx" "leg_X_ankle_ik_guided_srtOffset.rx"
		;
connectAttr "leg_X_ankle_ik_guided_srt_aimConstraint1.cry" "leg_X_ankle_ik_guided_srtOffset.ry"
		;
connectAttr "leg_X_ankle_ik_guided_srt_aimConstraint1.crz" "leg_X_ankle_ik_guided_srtOffset.rz"
		;
connectAttr "leg_X_ankle_ik_guided_srtOffset.t" "leg_X_ankle_ik_guided_srt_aimConstraint1.ct"
		;
connectAttr "leg_X_ankle_ik_guided_srtOffset.rp" "leg_X_ankle_ik_guided_srt_aimConstraint1.crp"
		;
connectAttr "leg_X_ankle_ik_guided_srtOffset.rpt" "leg_X_ankle_ik_guided_srt_aimConstraint1.crt"
		;
connectAttr "leg_X_ankle_ik_guided_srtOffset.ro" "leg_X_ankle_ik_guided_srt_aimConstraint1.cro"
		;
connectAttr "leg_X_ikFoot_ctrl_guide_srt.t" "leg_X_ankle_ik_guided_srt_aimConstraint1.tg[0].tt"
		;
connectAttr "leg_X_ikFoot_ctrl_guide_srt.rp" "leg_X_ankle_ik_guided_srt_aimConstraint1.tg[0].trp"
		;
connectAttr "leg_X_ikFoot_ctrl_guide_srt.rpt" "leg_X_ankle_ik_guided_srt_aimConstraint1.tg[0].trt"
		;
connectAttr "leg_X_ankle_ik_guided_srt_aimConstraint1.w0" "leg_X_ankle_ik_guided_srt_aimConstraint1.tg[0].tw"
		;
connectAttr "leg_X_foot_guided_srtOffset_pointConstraint1.ctx" "leg_X_foot_guided_srtOffset.tx"
		;
connectAttr "leg_X_foot_guided_srtOffset_pointConstraint1.cty" "leg_X_foot_guided_srtOffset.ty"
		;
connectAttr "leg_X_foot_guided_srtOffset_pointConstraint1.ctz" "leg_X_foot_guided_srtOffset.tz"
		;
connectAttr "leg_X_foot_ik_guided_srt_orientConstraint1.crx" "leg_X_foot_ik_guided_srtOffset.rx"
		;
connectAttr "leg_X_foot_ik_guided_srt_orientConstraint1.cry" "leg_X_foot_ik_guided_srtOffset.ry"
		;
connectAttr "leg_X_foot_ik_guided_srt_orientConstraint1.crz" "leg_X_foot_ik_guided_srtOffset.rz"
		;
connectAttr "leg_X_foot_ik_guided_srtOffset.ro" "leg_X_foot_ik_guided_srt_orientConstraint1.cro"
		;
connectAttr "leg_X_ikFoot_ctrl_guide_srt.r" "leg_X_foot_ik_guided_srt_orientConstraint1.tg[0].tr"
		;
connectAttr "leg_X_ikFoot_ctrl_guide_srt.ro" "leg_X_foot_ik_guided_srt_orientConstraint1.tg[0].tro"
		;
connectAttr "leg_X_foot_ik_guided_srt_orientConstraint1.w0" "leg_X_foot_ik_guided_srt_orientConstraint1.tg[0].tw"
		;
connectAttr "leg_X_ball_guided_srtOffset_pointConstraint1.ctx" "leg_X_ball_guided_srtOffset.tx"
		;
connectAttr "leg_X_ball_guided_srtOffset_pointConstraint1.cty" "leg_X_ball_guided_srtOffset.ty"
		;
connectAttr "leg_X_ball_guided_srtOffset_pointConstraint1.ctz" "leg_X_ball_guided_srtOffset.tz"
		;
connectAttr "leg_X_toe_guided_srtOffset_pointConstraint1.ctx" "leg_X_toe_guided_srtOffset.tx"
		;
connectAttr "leg_X_toe_guided_srtOffset_pointConstraint1.cty" "leg_X_toe_guided_srtOffset.ty"
		;
connectAttr "leg_X_toe_guided_srtOffset_pointConstraint1.ctz" "leg_X_toe_guided_srtOffset.tz"
		;
connectAttr "leg_X_toe_guided_srt_orientConstraint1.crx" "leg_X_toe_guided_srtOffset.rx"
		;
connectAttr "leg_X_toe_guided_srt_orientConstraint1.cry" "leg_X_toe_guided_srtOffset.ry"
		;
connectAttr "leg_X_toe_guided_srt_orientConstraint1.crz" "leg_X_toe_guided_srtOffset.rz"
		;
connectAttr "leg_X_toe_guided_srtOffset.ro" "leg_X_toe_guided_srt_orientConstraint1.cro"
		;
connectAttr "leg_X_ikToe_ctrl_guide_srt.r" "leg_X_toe_guided_srt_orientConstraint1.tg[0].tr"
		;
connectAttr "leg_X_ikToe_ctrl_guide_srt.ro" "leg_X_toe_guided_srt_orientConstraint1.tg[0].tro"
		;
connectAttr "leg_X_toe_guided_srt_orientConstraint1.w0" "leg_X_toe_guided_srt_orientConstraint1.tg[0].tw"
		;
connectAttr "leg_X_toe_guided_srtOffset.rp" "leg_X_toe_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_toe_guided_srtOffset.rpt" "leg_X_toe_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_ikToe_ctrl_guide_srt.t" "leg_X_toe_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_ikToe_ctrl_guide_srt.rp" "leg_X_toe_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_ikToe_ctrl_guide_srt.rpt" "leg_X_toe_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_toe_guided_srtOffset_pointConstraint1.w0" "leg_X_toe_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_ball_guided_srtOffset.rp" "leg_X_ball_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_ball_guided_srtOffset.rpt" "leg_X_ball_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_ikBall_ctrl_guide_srt.t" "leg_X_ball_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_ikBall_ctrl_guide_srt.rp" "leg_X_ball_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_ikBall_ctrl_guide_srt.rpt" "leg_X_ball_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_ball_guided_srtOffset_pointConstraint1.w0" "leg_X_ball_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_foot_guided_srtOffset.rp" "leg_X_foot_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_foot_guided_srtOffset.rpt" "leg_X_foot_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_ankle_guide_srt.t" "leg_X_foot_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_ankle_guide_srt.rp" "leg_X_foot_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_ankle_guide_srt.rpt" "leg_X_foot_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_foot_guided_srtOffset_pointConstraint1.w0" "leg_X_foot_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_ankle_guided_srtOffset.rp" "leg_X_ankle_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_ankle_guided_srtOffset.rpt" "leg_X_ankle_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_ankle_guide_srt.t" "leg_X_ankle_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_ankle_guide_srt.rp" "leg_X_ankle_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_ankle_guide_srt.rpt" "leg_X_ankle_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_ankle_guided_srtOffset_pointConstraint1.w0" "leg_X_ankle_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_ankle_guided_srtOffset.t" "leg_X_ankle_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "leg_X_ankle_guided_srtOffset.rp" "leg_X_ankle_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "leg_X_ankle_guided_srtOffset.rpt" "leg_X_ankle_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "leg_X_ankle_guided_srtOffset.ro" "leg_X_ankle_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "leg_X_ankle_aim_guide_srt.t" "leg_X_ankle_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "leg_X_ankle_aim_guide_srt.rp" "leg_X_ankle_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "leg_X_ankle_aim_guide_srt.rpt" "leg_X_ankle_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "leg_X_ankle_guided_srtOffset_aimConstraint1.w0" "leg_X_ankle_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "leg_X_knee_guided_srtOffset.rp" "leg_X_knee_guided_srtOffset_pointConstraint1.crp"
		;
connectAttr "leg_X_knee_guided_srtOffset.rpt" "leg_X_knee_guided_srtOffset_pointConstraint1.crt"
		;
connectAttr "leg_X_knee_guide_srt.t" "leg_X_knee_guided_srtOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "leg_X_knee_guide_srt.rp" "leg_X_knee_guided_srtOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "leg_X_knee_guide_srt.rpt" "leg_X_knee_guided_srtOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "leg_X_knee_guided_srtOffset_pointConstraint1.w0" "leg_X_knee_guided_srtOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "leg_X_knee_guided_srtOffset.t" "leg_X_knee_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "leg_X_knee_guided_srtOffset.rp" "leg_X_knee_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "leg_X_knee_guided_srtOffset.rpt" "leg_X_knee_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "leg_X_knee_guided_srtOffset.ro" "leg_X_knee_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "leg_X_knee_aim_guide_srt.t" "leg_X_knee_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "leg_X_knee_aim_guide_srt.rp" "leg_X_knee_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "leg_X_knee_aim_guide_srt.rpt" "leg_X_knee_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "leg_X_knee_guided_srtOffset_aimConstraint1.w0" "leg_X_knee_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "leg_X_hip_guided_srtOffset.t" "leg_X_hip_guided_srtOffset_aimConstraint1.ct"
		;
connectAttr "leg_X_hip_guided_srtOffset.rp" "leg_X_hip_guided_srtOffset_aimConstraint1.crp"
		;
connectAttr "leg_X_hip_guided_srtOffset.rpt" "leg_X_hip_guided_srtOffset_aimConstraint1.crt"
		;
connectAttr "leg_X_hip_guided_srtOffset.ro" "leg_X_hip_guided_srtOffset_aimConstraint1.cro"
		;
connectAttr "leg_X_hip_aim_guide_srt.t" "leg_X_hip_guided_srtOffset_aimConstraint1.tg[0].tt"
		;
connectAttr "leg_X_hip_aim_guide_srt.rp" "leg_X_hip_guided_srtOffset_aimConstraint1.tg[0].trp"
		;
connectAttr "leg_X_hip_aim_guide_srt.rpt" "leg_X_hip_guided_srtOffset_aimConstraint1.tg[0].trt"
		;
connectAttr "leg_X_hip_guided_srtOffset_aimConstraint1.w0" "leg_X_hip_guided_srtOffset_aimConstraint1.tg[0].tw"
		;
connectAttr "leg_X_ik_rotatePlane_guide_rotation_withDirection.o" "leg_X_ik_rotatePlane_guided_srt.r"
		;
connectAttr "leg_X_hip_guide_worldPosition.o" "leg_X_ik_rotatePlane_guided_srt.t"
		;
connectAttr "leg_X_ik_guide_baseVector.oc" "leg_X_ik_leg_guided_settings.ikBaseDirection"
		;
connectAttr "leg_X_ik_guide_upperBoneLength.d" "leg_X_ik_leg_guided_settings.upperBoneLength"
		;
connectAttr "leg_X_ik_guide_lowerBoneLength.d" "leg_X_ik_leg_guided_settings.lowerBoneLength"
		;
connectAttr "leg_X_ik_guide_kneeDirection.ocr" "leg_X_ik_leg_guided_settings.kneeDirection"
		;
connectAttr "leg_X_shoulderEnd_srt_inWorld.ot" "|leg_X_cmpt|output|shoulder_srt.t"
		;
connectAttr "leg_X_shoulderEnd_srt_inWorld.or" "|leg_X_cmpt|output|shoulder_srt.r"
		;
connectAttr "leg_X_shoulderEnd_srt_inWorld.os" "|leg_X_cmpt|output|shoulder_srt.s"
		;
connectAttr "leg_X_hip_ikfk_blend_translateRotate.ot" "hip_srt.t";
connectAttr "leg_X_hip_ikfk_blend_translateRotate.or" "hip_srt.r";
connectAttr "leg_X_hip_ikfk_blend_scale.op" "hip_srt.s";
connectAttr "leg_X_knee_ikfk_blend_translateRotate.ot" "knee_srt.t";
connectAttr "leg_X_knee_ikfk_blend_translateRotate.or" "knee_srt.r";
connectAttr "leg_X_knee_ikfk_blend_scale.op" "knee_srt.s";
connectAttr "leg_X_ankle_ikfk_blend_translateRotate.ot" "ankle_srt.t";
connectAttr "leg_X_ankle_ikfk_blend_translateRotate.or" "ankle_srt.r";
connectAttr "leg_X_ankle_ikfk_blend_scale.op" "ankle_srt.s";
connectAttr "leg_X_foot_ikfk_blend_translateRotate.ot" "foot_srt.t";
connectAttr "leg_X_foot_ikfk_blend_translateRotate.or" "foot_srt.r";
connectAttr "leg_X_foot_ikfk_blend_scale.op" "foot_srt.s";
connectAttr "leg_X_toe_ikfk_blend_translateRotate.ot" "toe_srt.t";
connectAttr "leg_X_toe_ikfk_blend_translateRotate.or" "toe_srt.r";
connectAttr "leg_X_toe_ikfk_blend_scale.op" "toe_srt.s";
connectAttr "leg_X_ik_legEnd_pass.worldInverseMatrix" "ik_ankle_aimConstraint.cpim"
		;
connectAttr "leg_X_ikFoot_worldMatrix.o" "ik_ankle_aimConstraint.tg[0].tpm";
connectAttr "leg_X_ik_knee_pass.worldMatrix" "ik_ankle_aimConstraint.wum";
connectAttr "leg_X_hip_fk_ctrl_srtOffset_inWorld.ot" "leg_X_hip_fk_ctrl_srtOffset.t"
		;
connectAttr "leg_X_hip_fk_ctrl_srtOffset_inWorld.or" "leg_X_hip_fk_ctrl_srtOffset.r"
		;
connectAttr "leg_X_hip_fk_ctrl_srtOffset_inWorld.os" "leg_X_hip_fk_ctrl_srtOffset.s"
		;
connectAttr "leg_X_controls_visibility.ox" "leg_X_hip_fk_ctrlShape.v";
connectAttr "leg_X_knee_srtOffset_worldMatrix_toSRT.ot" "leg_X_knee_fk_ctrl_srtOffset.t"
		;
connectAttr "leg_X_knee_srtOffset_worldMatrix_toSRT.or" "leg_X_knee_fk_ctrl_srtOffset.r"
		;
connectAttr "leg_X_knee_srtOffset_worldMatrix_toSRT.os" "leg_X_knee_fk_ctrl_srtOffset.s"
		;
connectAttr "leg_X_controls_visibility.ox" "leg_X_knee_fk_ctrlShape.v";
connectAttr "leg_X_ankle_fk_crtl_parent_srt_inWorld.ot" "leg_X_ankle_fk_ctrl_srtOffset.t"
		;
connectAttr "leg_X_ankle_fk_crtl_parent_srt_inWorld.or" "leg_X_ankle_fk_ctrl_srtOffset.r"
		;
connectAttr "leg_X_ankle_fk_crtl_parent_srt_inWorld.os" "leg_X_ankle_fk_ctrl_srtOffset.s"
		;
connectAttr "leg_X_controls_visibility.ox" "leg_X_ankle_fk_ctrlShape.v";
connectAttr "leg_X_ikFoot_ctrl_srtOffset_inWorld.ot" "leg_X_ikFoot_ctrl_srtOffset.t"
		;
connectAttr "leg_X_ikFoot_ctrl_srtOffset_inWorld.or" "leg_X_ikFoot_ctrl_srtOffset.r"
		;
connectAttr "leg_X_ikFoot_ctrl_srtOffset_inWorld.os" "leg_X_ikFoot_ctrl_srtOffset.s"
		;
connectAttr "leg_X_controls_visibility.ix" "leg_X_ikToe_ctrlShape.v";
connectAttr "leg_X_controls_visibility.ix" "leg_X_ikBall_ctrlShape.v";
connectAttr "leg_X_controls_visibility.ix" "leg_X_ikAnkle_ctrlShape.v";
connectAttr "leg_X_ik_poleVector_ctrl_srtOffset_inWorld.ot" "leg_X_ik_poleVector_ctrl_srtOffset.t"
		;
connectAttr "leg_X_ik_poleVector_ctrl_srtOffset_inWorld.or" "leg_X_ik_poleVector_ctrl_srtOffset.r"
		;
connectAttr "leg_X_ik_poleVector_ctrl_srtOffset_inWorld.os" "leg_X_ik_poleVector_ctrl_srtOffset.s"
		;
connectAttr "leg_X_controls_visibility.ix" "leg_X_ik_poleVector_ctrlShape.v";
connectAttr "leg_X_controls_visibility.ix" "leg_X_ik_poleVector_display_curveShape.v"
		;
connectAttr "leg_X_ik_poleVector_displayCurve_start.o" "leg_X_ik_poleVector_display_curveShape.cp[0]"
		;
connectAttr "leg_X_ik_knee_srt_worldMatrix.ot" "leg_X_ik_poleVector_display_curveShape.cp[1]"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "input.msg" "hyperLayout1.hyp[1].dn";
connectAttr "root_srt.msg" "hyperLayout1.hyp[2].dn";
connectAttr "ikFoot_srtOffset.msg" "hyperLayout1.hyp[3].dn";
connectAttr "|leg_X_cmpt|input|root_srt|ikFoot_srtOffset|ankle_ik_srtOffset.msg" "hyperLayout1.hyp[4].dn"
		;
connectAttr "ik_ankle_aimConstraint.msg" "hyperLayout1.hyp[5].dn";
connectAttr "poleVector_srtOffset.msg" "hyperLayout1.hyp[6].dn";
connectAttr "|leg_X_cmpt|input|shoulder_srt.msg" "hyperLayout1.hyp[7].dn";
connectAttr "shoulder_ik_start_srtOffset.msg" "hyperLayout1.hyp[8].dn";
connectAttr "shoulder_ik_end_srtOffset.msg" "hyperLayout1.hyp[9].dn";
connectAttr "shoulderEnd_srt.msg" "hyperLayout1.hyp[10].dn";
connectAttr "hip_srtOffset.msg" "hyperLayout1.hyp[11].dn";
connectAttr "knee_srtOffset.msg" "hyperLayout1.hyp[12].dn";
connectAttr "knee_ik_srtOffset.msg" "hyperLayout1.hyp[13].dn";
connectAttr "ankle_srtOffset.msg" "hyperLayout1.hyp[14].dn";
connectAttr "|leg_X_cmpt|input|shoulderEnd_srt|hip_srtOffset|knee_srtOffset|ankle_srtOffset|ankle_ik_srtOffset.msg" "hyperLayout1.hyp[15].dn"
		;
connectAttr "foot_srtOffset.msg" "hyperLayout1.hyp[16].dn";
connectAttr "ball_srtOffset.msg" "hyperLayout1.hyp[17].dn";
connectAttr "toe_srtOffset.msg" "hyperLayout1.hyp[18].dn";
connectAttr "foot_ik_srtOffset.msg" "hyperLayout1.hyp[19].dn";
connectAttr "hip_ik_srtOffset.msg" "hyperLayout1.hyp[20].dn";
connectAttr "shoulder_ik_aim_srtOffset.msg" "hyperLayout1.hyp[21].dn";
connectAttr "leg_settings.msg" "hyperLayout1.hyp[22].dn";
connectAttr "ik_leg_settings.msg" "hyperLayout1.hyp[23].dn";
connectAttr "guided.msg" "hyperLayout1.hyp[24].dn";
connectAttr "leg_X_root_guided_srt.msg" "hyperLayout1.hyp[25].dn";
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset.msg" "hyperLayout1.hyp[26].dn";
connectAttr "leg_X_ikAnkle_guided_srtOffset.msg" "hyperLayout1.hyp[27].dn";
connectAttr "leg_X_poleVector_guided_srtOffset.msg" "hyperLayout1.hyp[28].dn";
connectAttr "leg_X_shoulder_guided_srt.msg" "hyperLayout1.hyp[29].dn";
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset.msg" "hyperLayout1.hyp[30].dn"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset.msg" "hyperLayout1.hyp[31].dn"
		;
connectAttr "leg_X_shoulderEnd_guided_srt.msg" "hyperLayout1.hyp[32].dn";
connectAttr "leg_X_hip_guided_srtOffset.msg" "hyperLayout1.hyp[33].dn";
connectAttr "leg_X_hip_ik_guided_srtOffset.msg" "hyperLayout1.hyp[35].dn";
connectAttr "leg_X_hip_ik_guided_srt_aimConstraint1.msg" "hyperLayout1.hyp[36].dn"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset.msg" "hyperLayout1.hyp[37].dn"
		;
connectAttr "leg_X_knee_guided_srtOffset.msg" "hyperLayout1.hyp[38].dn";
connectAttr "leg_X_knee_ik_guided_srtOffset.msg" "hyperLayout1.hyp[40].dn";
connectAttr "leg_X_knee_ik_guided_srt_aimConstraint1.msg" "hyperLayout1.hyp[41].dn"
		;
connectAttr "leg_X_ankle_guided_srtOffset.msg" "hyperLayout1.hyp[42].dn";
connectAttr "leg_X_ankle_ik_guided_srtOffset.msg" "hyperLayout1.hyp[44].dn";
connectAttr "leg_X_ankle_ik_guided_srt_aimConstraint1.msg" "hyperLayout1.hyp[45].dn"
		;
connectAttr "leg_X_foot_guided_srtOffset.msg" "hyperLayout1.hyp[46].dn";
connectAttr "leg_X_foot_ik_guided_srtOffset.msg" "hyperLayout1.hyp[47].dn";
connectAttr "leg_X_foot_ik_guided_srt_orientConstraint1.msg" "hyperLayout1.hyp[48].dn"
		;
connectAttr "leg_X_ball_guided_srtOffset.msg" "hyperLayout1.hyp[49].dn";
connectAttr "leg_X_toe_guided_srtOffset.msg" "hyperLayout1.hyp[50].dn";
connectAttr "leg_X_toe_guided_srt_orientConstraint1.msg" "hyperLayout1.hyp[51].dn"
		;
connectAttr "leg_X_ankle_guided_srtOffset_xVectorShape.msg" "hyperLayout1.hyp[52].dn"
		;
connectAttr "leg_X_ankle_guided_srtOffset_zVectorShape.msg" "hyperLayout1.hyp[53].dn"
		;
connectAttr "leg_X_ankle_guided_srtOffset_yVectorShape.msg" "hyperLayout1.hyp[54].dn"
		;
connectAttr "leg_X_knee_guided_srtOffset_xVectorShape.msg" "hyperLayout1.hyp[55].dn"
		;
connectAttr "leg_X_knee_guided_srtOffset_zVectorShape.msg" "hyperLayout1.hyp[56].dn"
		;
connectAttr "leg_X_knee_guided_srtOffset_yVectorShape.msg" "hyperLayout1.hyp[57].dn"
		;
connectAttr "leg_X_hip_guided_srtOffset_xVectorShape.msg" "hyperLayout1.hyp[58].dn"
		;
connectAttr "leg_X_hip_guided_srtOffset_zVectorShape.msg" "hyperLayout1.hyp[59].dn"
		;
connectAttr "leg_X_hip_guided_srtOffset_yVectorShape.msg" "hyperLayout1.hyp[60].dn"
		;
connectAttr "leg_X_ik_rotatePlane_guided_srt.msg" "hyperLayout1.hyp[61].dn";
connectAttr "leg_X_ik_leg_guided_settings.msg" "hyperLayout1.hyp[62].dn";
connectAttr "guides.msg" "hyperLayout1.hyp[63].dn";
connectAttr "leg_X_hip_guide_srt.msg" "hyperLayout1.hyp[64].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_hip_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[65].dn"
		;
connectAttr "leg_X_hip_aim_guide_srt.msg" "hyperLayout1.hyp[66].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_hip_guide_srt|leg_X_hip_aim_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[67].dn"
		;
connectAttr "leg_X_hip_up_guide_srt.msg" "hyperLayout1.hyp[68].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_hip_guide_srt|leg_X_hip_up_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[69].dn"
		;
connectAttr "leg_X_knee_guide_srt.msg" "hyperLayout1.hyp[70].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_knee_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[71].dn"
		;
connectAttr "leg_X_knee_aim_guide_srt.msg" "hyperLayout1.hyp[72].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_knee_guide_srt|leg_X_knee_aim_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[73].dn"
		;
connectAttr "leg_X_knee_up_guide_srt.msg" "hyperLayout1.hyp[74].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_knee_guide_srt|leg_X_knee_up_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[75].dn"
		;
connectAttr "leg_X_ankle_guide_srt.msg" "hyperLayout1.hyp[76].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_ankle_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[77].dn"
		;
connectAttr "leg_X_ankle_aim_guide_srt.msg" "hyperLayout1.hyp[78].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_ankle_guide_srt|leg_X_ankle_aim_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[79].dn"
		;
connectAttr "leg_X_ankle_up_guide_srt.msg" "hyperLayout1.hyp[80].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_ankle_guide_srt|leg_X_ankle_up_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[81].dn"
		;
connectAttr "leg_X_ikFoot_ctrl_guide_srt.msg" "hyperLayout1.hyp[82].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_ikFoot_ctrl_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[83].dn"
		;
connectAttr "leg_X_ikBall_ctrl_guide_srt.msg" "hyperLayout1.hyp[84].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_ikFoot_ctrl_guide_srt|leg_X_ikBall_ctrl_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[85].dn"
		;
connectAttr "leg_X_ikToe_ctrl_guide_srt.msg" "hyperLayout1.hyp[86].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_ikFoot_ctrl_guide_srt|leg_X_ikToe_ctrl_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[87].dn"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srt.msg" "hyperLayout1.hyp[88].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_shoulder_ik_end_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[89].dn"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srt.msg" "hyperLayout1.hyp[90].dn";
connectAttr "|leg_X_cmpt|guides|leg_X_shoulder_ik_start_guide_srt|leg_X_curveShape2.msg" "hyperLayout1.hyp[91].dn"
		;
connectAttr "control.msg" "hyperLayout1.hyp[92].dn";
connectAttr "leg_X_hip_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[93].dn";
connectAttr "leg_X_hip_fk_ctrl.msg" "hyperLayout1.hyp[94].dn";
connectAttr "leg_X_hip_fk_ctrlShape.msg" "hyperLayout1.hyp[95].dn";
connectAttr "leg_X_knee_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[96].dn";
connectAttr "leg_X_knee_fk_ctrl.msg" "hyperLayout1.hyp[97].dn";
connectAttr "leg_X_knee_fk_ctrlShape.msg" "hyperLayout1.hyp[98].dn";
connectAttr "leg_X_ankle_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[99].dn";
connectAttr "leg_X_ankle_fk_ctrl.msg" "hyperLayout1.hyp[100].dn";
connectAttr "leg_X_ankle_fk_ctrlShape.msg" "hyperLayout1.hyp[101].dn";
connectAttr "leg_X_ikFoot_ctrl_srtOffset.msg" "hyperLayout1.hyp[102].dn";
connectAttr "leg_X_ikFoot_ctrl.msg" "hyperLayout1.hyp[103].dn";
connectAttr "leg_X_ikFoot_ctrlShape.msg" "hyperLayout1.hyp[104].dn";
connectAttr "leg_X_ikToe_ctrl_srtOffset.msg" "hyperLayout1.hyp[105].dn";
connectAttr "leg_X_ikToe_ctrl.msg" "hyperLayout1.hyp[106].dn";
connectAttr "leg_X_ikToe_ctrlShape.msg" "hyperLayout1.hyp[107].dn";
connectAttr "leg_X_ikBall_ctrl_srtOffset.msg" "hyperLayout1.hyp[108].dn";
connectAttr "leg_X_ikBall_ctrl.msg" "hyperLayout1.hyp[109].dn";
connectAttr "leg_X_ikBall_ctrlShape.msg" "hyperLayout1.hyp[110].dn";
connectAttr "leg_X_ikAnkle_ctrl_srtOffset.msg" "hyperLayout1.hyp[111].dn";
connectAttr "leg_X_ikAnkle_ctrl.msg" "hyperLayout1.hyp[112].dn";
connectAttr "leg_X_ikAnkle_ctrlShape.msg" "hyperLayout1.hyp[113].dn";
connectAttr "leg_X_ik_poleVector_ctrl_srtOffset.msg" "hyperLayout1.hyp[114].dn";
connectAttr "leg_X_ik_poleVector_ctrl.msg" "hyperLayout1.hyp[115].dn";
connectAttr "leg_X_ik_poleVector_ctrlShape.msg" "hyperLayout1.hyp[116].dn";
connectAttr "display.msg" "hyperLayout1.hyp[117].dn";
connectAttr "leg_X_ik_poleVector_display_curve.msg" "hyperLayout1.hyp[118].dn";
connectAttr "leg_X_ik_poleVector_display_curveShape.msg" "hyperLayout1.hyp[119].dn"
		;
connectAttr "output.msg" "hyperLayout1.hyp[120].dn";
connectAttr "|leg_X_cmpt|output|shoulder_srt.msg" "hyperLayout1.hyp[121].dn";
connectAttr "hip_srt.msg" "hyperLayout1.hyp[122].dn";
connectAttr "knee_srt.msg" "hyperLayout1.hyp[123].dn";
connectAttr "ankle_srt.msg" "hyperLayout1.hyp[124].dn";
connectAttr "foot_srt.msg" "hyperLayout1.hyp[125].dn";
connectAttr "toe_srt.msg" "hyperLayout1.hyp[126].dn";
connectAttr "leg_X_ik_start_worldPosition.msg" "hyperLayout1.hyp[127].dn";
connectAttr "leg_X_ik_poleVector_displayCurve_start.msg" "hyperLayout1.hyp[128].dn"
		;
connectAttr "leg_X_ik_startEnd_unitVector.msg" "hyperLayout1.hyp[129].dn";
connectAttr "leg_X_ik_startEndVector_rescaled.msg" "hyperLayout1.hyp[130].dn";
connectAttr "leg_X_shoulder_ik_startToEnd_vector_normalized.msg" "hyperLayout1.hyp[131].dn"
		;
connectAttr "leg_X_shoulder_ik_startToEnd_vector_scaled.msg" "hyperLayout1.hyp[132].dn"
		;
connectAttr "leg_X_shoulder_end_position.msg" "hyperLayout1.hyp[133].dn";
connectAttr "leg_X_fk_knee_offset_position.msg" "hyperLayout1.hyp[134].dn";
connectAttr "leg_X_parentMatrix.msg" "hyperLayout1.hyp[135].dn";
connectAttr "leg_X_hip_fk_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[136].dn"
		;
connectAttr "leg_X_knee_srtOffset_worldMatrix_toSRT.msg" "hyperLayout1.hyp[137].dn"
		;
connectAttr "leg_X_ankle_fk_crtl_parent_srt_inWorld.msg" "hyperLayout1.hyp[138].dn"
		;
connectAttr "leg_X_ankle_parentMatrix_localTo_knee.msg" "hyperLayout1.hyp[139].dn"
		;
connectAttr "leg_X_ikFoot_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[140].dn"
		;
connectAttr "leg_X_ik_INPUT.msg" "hyperLayout1.hyp[141].dn";
connectAttr "leg_X_ik_OUTPUT.msg" "hyperLayout1.hyp[142].dn";
connectAttr "leg_X_ik_startEndVector.msg" "hyperLayout1.hyp[143].dn";
connectAttr "leg_X_ik_aimAtEnd_rotation.msg" "hyperLayout1.hyp[144].dn";
connectAttr "leg_X_ankle_parent_srtlocalTo_knee.msg" "hyperLayout1.hyp[145].dn";
connectAttr "leg_X_ankle_fk_crtl_parent_srt_localTo_knee.msg" "hyperLayout1.hyp[146].dn"
		;
connectAttr "leg_X_ankle_fk_crtl_parentMatrix.msg" "hyperLayout1.hyp[147].dn";
connectAttr "leg_X_knee_fk_crtl_parentMatrix.msg" "hyperLayout1.hyp[148].dn";
connectAttr "leg_X_ikFoot_ctrl_parentMatrix.msg" "hyperLayout1.hyp[149].dn";
connectAttr "leg_X_ik_poleVector_ctrl_parentMatrix.msg" "hyperLayout1.hyp[150].dn"
		;
connectAttr "leg_X_ik_poleVector_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[151].dn"
		;
connectAttr "leg_X_knee_fk_srt_inWorld.msg" "hyperLayout1.hyp[152].dn";
connectAttr "leg_X_ankle_fk_srt_inWorld.msg" "hyperLayout1.hyp[153].dn";
connectAttr "leg_X_ik_base_worldMatrix.msg" "hyperLayout1.hyp[154].dn";
connectAttr "leg_X_ik_poleVector_matrix_localTo_ikBase.msg" "hyperLayout1.hyp[155].dn"
		;
connectAttr "leg_X_ik_base_worldInverseMatrix.msg" "hyperLayout1.hyp[156].dn";
connectAttr "leg_X_ik_poleVector_srt_localTo_ikBase.msg" "hyperLayout1.hyp[157].dn"
		;
connectAttr "leg_X_ik_poleVector_rotation_localTo_ikBase.msg" "hyperLayout1.hyp[158].dn"
		;
connectAttr "leg_X_ik_hip_matrix_localTo_ikBase.msg" "hyperLayout1.hyp[159].dn";
connectAttr "leg_X_ik_rotatePlane_worldMatrix.msg" "hyperLayout1.hyp[160].dn";
connectAttr "leg_X_ik_hip_srt_worldMatrix.msg" "hyperLayout1.hyp[161].dn";
connectAttr "leg_X_ik_knee_matrix_localTo_ik_hip.msg" "hyperLayout1.hyp[162].dn"
		;
connectAttr "leg_X_ik_hip_worldMatrix_alignedTo_fk.msg" "hyperLayout1.hyp[163].dn"
		;
connectAttr "leg_X_ik_knee_worldMatrix_alignedTo_fk.msg" "hyperLayout1.hyp[164].dn"
		;
connectAttr "leg_X_ik_knee_srt_worldMatrix.msg" "hyperLayout1.hyp[165].dn";
connectAttr "leg_X_ik_startEndVector_length.msg" "hyperLayout1.hyp[166].dn";
connectAttr "leg_X_ik_startEndVector_limited_length.msg" "hyperLayout1.hyp[167].dn"
		;
connectAttr "leg_X_ik_max_limbLength.msg" "hyperLayout1.hyp[168].dn";
connectAttr "leg_X_ik_ankle_srt_inWorld.msg" "hyperLayout1.hyp[169].dn";
connectAttr "leg_X_knee_ikfk_blend_translateRotate.msg" "hyperLayout1.hyp[170].dn"
		;
connectAttr "leg_X_hip_ikfk_blend_translateRotate.msg" "hyperLayout1.hyp[171].dn"
		;
connectAttr "leg_X_ankle_ikfk_blend_scale.msg" "hyperLayout1.hyp[172].dn";
connectAttr "leg_X_knee_ikfk_blend_scale.msg" "hyperLayout1.hyp[173].dn";
connectAttr "leg_X_hip_ikfk_blend_scale.msg" "hyperLayout1.hyp[174].dn";
connectAttr "leg_X_ankle_ikfk_blend_translateRotate.msg" "hyperLayout1.hyp[175].dn"
		;
connectAttr "leg_X_foot_fk_worldMatrix.msg" "hyperLayout1.hyp[176].dn";
connectAttr "leg_X_foot_fk_srt_inWorld.msg" "hyperLayout1.hyp[177].dn";
connectAttr "leg_X_foot_ikfk_blend_scale.msg" "hyperLayout1.hyp[178].dn";
connectAttr "leg_X_foot_ikfk_blend_translateRotate.msg" "hyperLayout1.hyp[179].dn"
		;
connectAttr "leg_X_ikFoot_srt_inWorld.msg" "hyperLayout1.hyp[180].dn";
connectAttr "leg_X_ik_legEnd_matrix.msg" "hyperLayout1.hyp[181].dn";
connectAttr "leg_X_ikBall_crtl_matrix_localTo_ikToe.msg" "hyperLayout1.hyp[182].dn"
		;
connectAttr "leg_X_ikBall_crtl_srt_localTo_ikToe.msg" "hyperLayout1.hyp[183].dn"
		;
connectAttr "leg_X_ikBall_matrix_localTo_ikToe.msg" "hyperLayout1.hyp[184].dn";
connectAttr "leg_X_ikFoot_worldMatrix.msg" "hyperLayout1.hyp[185].dn";
connectAttr "leg_X_toe_fk_worldMatrix.msg" "hyperLayout1.hyp[186].dn";
connectAttr "leg_X_toe_fk_srt_inWorld.msg" "hyperLayout1.hyp[187].dn";
connectAttr "leg_X_ikToe_srt_inWorld.msg" "hyperLayout1.hyp[188].dn";
connectAttr "leg_X_toe_ikfk_blend_scale.msg" "hyperLayout1.hyp[189].dn";
connectAttr "leg_X_toe_ikfk_blend_translateRotate.msg" "hyperLayout1.hyp[190].dn"
		;
connectAttr "leg_X_ik_legEnd_worldInverseMatrix.msg" "hyperLayout1.hyp[191].dn";
connectAttr "leg_X_ik_ankle_matrix_localTo_legEnd.msg" "hyperLayout1.hyp[192].dn"
		;
connectAttr "leg_X_ik_ankle_worldMatrix.msg" "hyperLayout1.hyp[193].dn";
connectAttr "leg_X_ik_legEnd_pass.msg" "hyperLayout1.hyp[194].dn";
connectAttr "leg_X_ik_knee_pass.msg" "hyperLayout1.hyp[195].dn";
connectAttr "leg_X_ik_currentLength.msg" "hyperLayout1.hyp[196].dn";
connectAttr "leg_X_ikToe_worldMatrix.msg" "hyperLayout1.hyp[197].dn";
connectAttr "leg_X_upper_bone_length.msg" "hyperLayout1.hyp[198].dn";
connectAttr "leg_X_lower_bone_length.msg" "hyperLayout1.hyp[199].dn";
connectAttr "leg_X_hip_fk_ctrl_matrix.msg" "hyperLayout1.hyp[200].dn";
connectAttr "leg_X_hip_fk_ctrl_srt.msg" "hyperLayout1.hyp[201].dn";
connectAttr "leg_X_legbase_matrix_localTo_hipParent.msg" "hyperLayout1.hyp[202].dn"
		;
connectAttr "leg_X_legBase_worldMatrix.msg" "hyperLayout1.hyp[203].dn";
connectAttr "leg_X_parentInverseMatrix.msg" "hyperLayout1.hyp[204].dn";
connectAttr "leg_X_knee_fk_crtl_parentInverseMatrix.msg" "hyperLayout1.hyp[205].dn"
		;
connectAttr "leg_X_knee_fk_ctrl_matrix.msg" "hyperLayout1.hyp[206].dn";
connectAttr "leg_X_knee_fk_ctrl_srt.msg" "hyperLayout1.hyp[207].dn";
connectAttr "leg_X_knee_fk_matrix.msg" "hyperLayout1.hyp[208].dn";
connectAttr "leg_X_knee_fk_worldMatrix.msg" "hyperLayout1.hyp[209].dn";
connectAttr "leg_X_ik_end_worldPosition.msg" "hyperLayout1.hyp[212].dn";
connectAttr "leg_X_ik_guide_poleVector.msg" "hyperLayout1.hyp[213].dn";
connectAttr "leg_X_ik_guided_poleVector_position.msg" "hyperLayout1.hyp[214].dn"
		;
connectAttr "leg_X_hip_guide_worldPosition.msg" "hyperLayout1.hyp[216].dn";
connectAttr "leg_X_knee_guide_worldPosition.msg" "hyperLayout1.hyp[218].dn";
connectAttr "leg_X_ik_guide_midToEndVector_dot_worldZVector.msg" "hyperLayout1.hyp[219].dn"
		;
connectAttr "leg_X_ankle_guide_worldPosition.msg" "hyperLayout1.hyp[221].dn";
connectAttr "leg_X_legBase_matrix_localTo_shoulder.msg" "hyperLayout1.hyp[233].dn"
		;
connectAttr "leg_X_srt_localTo_shoulder.msg" "hyperLayout1.hyp[234].dn";
connectAttr "leg_X_shoulder_ik_maxLength.msg" "hyperLayout1.hyp[235].dn";
connectAttr "leg_X_shoulder_ik_startToEnd_vector.msg" "hyperLayout1.hyp[236].dn"
		;
connectAttr "leg_X_shoulder_ikEnd_position.msg" "hyperLayout1.hyp[237].dn";
connectAttr "leg_X_shoulder_ikEnd_matrix.msg" "hyperLayout1.hyp[238].dn";
connectAttr "leg_X_shoulderEnd_matrix.msg" "hyperLayout1.hyp[239].dn";
connectAttr "leg_X_shoulderEnd_PASS.msg" "hyperLayout1.hyp[240].dn";
connectAttr "leg_X_hip_fk_ctrl_matrix_localTo_shoulderEnd.msg" "hyperLayout1.hyp[241].dn"
		;
connectAttr "leg_X_hip_fk_ctrl_srt_localTo_shoulderEnd.msg" "hyperLayout1.hyp[242].dn"
		;
connectAttr "leg_X_hip_fk_matrix_localTo_shoulderEnd.msg" "hyperLayout1.hyp[243].dn"
		;
connectAttr "leg_X_hip_fk_worldMatrix.msg" "hyperLayout1.hyp[244].dn";
connectAttr "leg_X_hip_fk_srt_inWorld.msg" "hyperLayout1.hyp[245].dn";
connectAttr "leg_X_shoulderEnd_srt_inWorld.msg" "hyperLayout1.hyp[246].dn";
connectAttr "leg_X_parent_PASS.msg" "hyperLayout1.hyp[247].dn";
connectAttr "leg_X_shoulder_end_matrix.msg" "hyperLayout1.hyp[248].dn";
connectAttr "leg_X_shoulder_startEndVector_neutral.msg" "hyperLayout1.hyp[249].dn"
		;
connectAttr "leg_X_shoulder_startEndVector_live.msg" "hyperLayout1.hyp[250].dn";
connectAttr "leg_X_shoulder_rotateZ.msg" "hyperLayout1.hyp[251].dn";
connectAttr "leg_X_hip_followShoulderRotation.msg" "hyperLayout1.hyp[252].dn";
connectAttr "leg_X_hip_followShoulderRotation_matrix.msg" "hyperLayout1.hyp[253].dn"
		;
connectAttr "leg_X_hip_fk_ctrl_parentMatrix.msg" "hyperLayout1.hyp[254].dn";
connectAttr "leg_X_fk_knee_offset_matrix.msg" "hyperLayout1.hyp[255].dn";
connectAttr "leg_X_ik_twist_matrix_localTo_ikBase.msg" "hyperLayout1.hyp[256].dn"
		;
connectAttr "leg_X_ik_hip_worldMatrix.msg" "hyperLayout1.hyp[257].dn";
connectAttr "leg_X_ik_baseAngle.msg" "hyperLayout1.hyp[258].dn";
connectAttr "leg_X_ik_bendAngle.msg" "hyperLayout1.hyp[259].dn";
connectAttr "leg_X_unitConversion4.msg" "hyperLayout1.hyp[260].dn";
connectAttr "leg_X_unitConversion5.msg" "hyperLayout1.hyp[261].dn";
connectAttr "leg_X_ik_hip_PASS.msg" "hyperLayout1.hyp[262].dn";
connectAttr "leg_X_ik_aimAtEnd_rotation_withDirection.msg" "hyperLayout1.hyp[263].dn"
		;
connectAttr "leg_X_ik_guide_poleVector_worldPosition.msg" "hyperLayout1.hyp[264].dn"
		;
connectAttr "leg_X_ik_end_finalPosition.msg" "hyperLayout1.hyp[265].dn";
connectAttr "leg_X_shoulder_ik_maxLength_offset.msg" "hyperLayout1.hyp[266].dn";
connectAttr "leg_X_ik_guide_upperBoneLength.msg" "hyperLayout1.hyp[268].dn";
connectAttr "leg_X_ik_guide_startToEndVector.msg" "hyperLayout1.hyp[269].dn";
connectAttr "leg_X_ik_rotatePlane_guide_rotation.msg" "hyperLayout1.hyp[270].dn"
		;
connectAttr "leg_X_ik_guide_limbLength.msg" "hyperLayout1.hyp[271].dn";
connectAttr "leg_X_ik_guide_midToEndVector.msg" "hyperLayout1.hyp[273].dn";
connectAttr "leg_X_ik_guide_baseVector.msg" "hyperLayout1.hyp[274].dn";
connectAttr "leg_X_ik_guide_kneeDirection.msg" "hyperLayout1.hyp[275].dn";
connectAttr "leg_X_ik_guide_lowerBoneLength.msg" "hyperLayout1.hyp[276].dn";
connectAttr "leg_X_ik_rotatePlane_guide_rotation_withDirection.msg" "hyperLayout1.hyp[278].dn"
		;
connectAttr "leg_X_ik_expr.msg" "hyperLayout1.hyp[279].dn";
connectAttr "leg_X_controls_visibility.msg" "hyperLayout1.hyp[280].dn";
connectAttr "leg_X_shoulderEnd_worldInverseMatrix.msg" "hyperLayout1.hyp[281].dn"
		;
connectAttr "internal.msg" "hyperLayout1.hyp[283].dn";
connectAttr "leg_X_ikFoot_ctrl_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[284].dn"
		;
connectAttr "leg_X_ikAnkle_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[285].dn"
		;
connectAttr "leg_X_shoulder_ik_aim_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[286].dn"
		;
connectAttr "leg_X_shoulder_ik_end_guide_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[287].dn"
		;
connectAttr "leg_X_shoulder_ik_start_guide_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[288].dn"
		;
connectAttr "leg_X_hip_ik_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[289].dn"
		;
connectAttr "leg_X_hip_guided_srtOffset_aimConstraint1.msg" "hyperLayout1.hyp[290].dn"
		;
connectAttr "leg_X_knee_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[291].dn"
		;
connectAttr "leg_X_knee_guided_srtOffset_aimConstraint1.msg" "hyperLayout1.hyp[292].dn"
		;
connectAttr "leg_X_ankle_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[293].dn"
		;
connectAttr "leg_X_ankle_guided_srtOffset_aimConstraint1.msg" "hyperLayout1.hyp[294].dn"
		;
connectAttr "leg_X_foot_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[295].dn"
		;
connectAttr "leg_X_ball_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[296].dn"
		;
connectAttr "leg_X_toe_guided_srtOffset_pointConstraint1.msg" "hyperLayout1.hyp[297].dn"
		;
connectAttr "about.msg" "hyperLayout1.hyp[298].dn";
connectAttr "leg_X_shoulder_rotateZ.eu" "leg_X_hip_followShoulderRotation.ia";
connectAttr "leg_settings.followShoulderRot" "leg_X_hip_followShoulderRotation.wa"
		;
connectAttr "leg_X_hip_followShoulderRotation.o" "leg_X_hip_followShoulderRotation_matrix.ir"
		;
connectAttr "leg_X_hip_followShoulderRotation_matrix.omat" "leg_X_hip_fk_ctrl_parentMatrix.i[0]"
		;
connectAttr "leg_X_parent_PASS.worldMatrix" "leg_X_hip_fk_ctrl_parentMatrix.i[1]"
		;
connectAttr "leg_X_ik_guide_baseVector.oc" "leg_X_ik_guide_poleVector.i1";
connectAttr "leg_X_ik_guide_limbLength.d" "leg_X_ik_guide_poleVector.i2x";
connectAttr "leg_X_ik_guide_limbLength.d" "leg_X_ik_guide_poleVector.i2y";
connectAttr "leg_X_ik_guide_limbLength.d" "leg_X_ik_guide_poleVector.i2z";
connectAttr "leg_X_knee_guide_worldPosition.o" "leg_X_ik_guide_poleVector_worldPosition.i3[0]"
		;
connectAttr "leg_X_ik_guide_poleVector.o" "leg_X_ik_guide_poleVector_worldPosition.i3[1]"
		;
connectAttr "leg_X_ik_guide_poleVector_worldPosition.o3" "leg_X_ik_guided_poleVector_position.i1"
		;
connectAttr "leg_X_toe_fk_srt_inWorld.os" "leg_X_toe_ikfk_blend_scale.c1";
connectAttr "leg_X_ikToe_srt_inWorld.os" "leg_X_toe_ikfk_blend_scale.c2";
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_toe_ikfk_blend_scale.b";
connectAttr "leg_X_foot_fk_srt_inWorld.os" "leg_X_foot_ikfk_blend_scale.c1";
connectAttr "leg_X_ikFoot_srt_inWorld.os" "leg_X_foot_ikfk_blend_scale.c2";
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_foot_ikfk_blend_scale.b";
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_hip_ikfk_blend_scale.b";
connectAttr "leg_X_hip_fk_srt_inWorld.os" "leg_X_hip_ikfk_blend_scale.c2";
connectAttr "leg_X_ik_hip_srt_worldMatrix.os" "leg_X_hip_ikfk_blend_scale.c1";
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_knee_ikfk_blend_scale.b";
connectAttr "leg_X_knee_fk_srt_inWorld.os" "leg_X_knee_ikfk_blend_scale.c2";
connectAttr "leg_X_ik_knee_srt_worldMatrix.os" "leg_X_knee_ikfk_blend_scale.c1";
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_ankle_ikfk_blend_scale.b";
connectAttr "leg_X_ankle_fk_srt_inWorld.os" "leg_X_ankle_ikfk_blend_scale.c2";
connectAttr "leg_X_ik_ankle_srt_inWorld.os" "leg_X_ankle_ikfk_blend_scale.c1";
connectAttr "leg_X_ik_bendAngle.o" "leg_X_ik_knee_matrix_localTo_ik_hip.irx";
connectAttr "leg_X_ik_INPUT.upperLength" "leg_X_ik_knee_matrix_localTo_ik_hip.itz"
		;
connectAttr "knee_ik_srtOffset.im" "leg_X_ik_knee_worldMatrix_alignedTo_fk.i[0]"
		;
connectAttr "leg_X_ik_knee_matrix_localTo_ik_hip.omat" "leg_X_ik_knee_worldMatrix_alignedTo_fk.i[1]"
		;
connectAttr "leg_X_ik_hip_worldMatrix.o" "leg_X_ik_knee_worldMatrix_alignedTo_fk.i[2]"
		;
connectAttr "leg_X_ik_knee_worldMatrix_alignedTo_fk.o" "leg_X_ik_knee_pass.worldMatrix"
		;
connectAttr "leg_X_ik_knee_pass.worldMatrix" "leg_X_ik_knee_srt_worldMatrix.imat"
		;
connectAttr "leg_X_ik_OUTPUT.bendAngle" "leg_X_ik_bendAngle.ib";
connectAttr "leg_X_ik_baseAngle.o" "leg_X_ik_hip_matrix_localTo_ikBase.irx";
connectAttr "leg_X_ik_hip_matrix_localTo_ikBase.omat" "leg_X_ik_hip_worldMatrix.i[0]"
		;
connectAttr "leg_X_ik_rotatePlane_worldMatrix.o" "leg_X_ik_hip_worldMatrix.i[1]"
		;
connectAttr "hip_ik_srtOffset.im" "leg_X_ik_hip_worldMatrix_alignedTo_fk.i[0]";
connectAttr "leg_X_ik_hip_worldMatrix.o" "leg_X_ik_hip_worldMatrix_alignedTo_fk.i[1]"
		;
connectAttr "leg_X_ik_hip_worldMatrix_alignedTo_fk.o" "leg_X_ik_hip_PASS.worldMatrix"
		;
connectAttr "leg_X_ik_hip_PASS.worldMatrix" "leg_X_ik_hip_srt_worldMatrix.imat";
connectAttr "leg_X_ik_OUTPUT.baseAngle" "leg_X_ik_baseAngle.ia";
connectAttr "leg_X_ik_aimAtEnd_rotation_withDirection.o" "leg_X_ik_base_worldMatrix.ir"
		;
connectAttr "leg_X_ik_start_worldPosition.o" "leg_X_ik_base_worldMatrix.it";
connectAttr "leg_X_ik_base_worldMatrix.omat" "leg_X_ik_base_worldInverseMatrix.imat"
		;
connectAttr "leg_X_ik_base_worldInverseMatrix.omat" "leg_X_ik_poleVector_matrix_localTo_ikBase.i[1]"
		;
connectAttr "leg_X_ik_poleVector_matrix_localTo_ikBase.o" "leg_X_ik_poleVector_srt_localTo_ikBase.imat"
		;
connectAttr "leg_X_ik_poleVector_srt_localTo_ikBase.otx" "leg_X_ik_poleVector_rotation_localTo_ikBase.v2x"
		;
connectAttr "leg_X_ik_poleVector_srt_localTo_ikBase.oty" "leg_X_ik_poleVector_rotation_localTo_ikBase.v2y"
		;
connectAttr "leg_X_ik_poleVector_rotation_localTo_ikBase.eu" "leg_X_ik_twist_matrix_localTo_ikBase.ir"
		;
connectAttr "leg_X_ik_twist_matrix_localTo_ikBase.omat" "leg_X_ik_rotatePlane_worldMatrix.i[0]"
		;
connectAttr "leg_X_ik_base_worldMatrix.omat" "leg_X_ik_rotatePlane_worldMatrix.i[1]"
		;
connectAttr "leg_X_ik_aimAtEnd_rotation.eu" "leg_X_ik_aimAtEnd_rotation_withDirection.ia"
		;
connectAttr "ik_leg_settings.kneeDirection" "leg_X_ik_aimAtEnd_rotation_withDirection.wb"
		;
connectAttr "leg_X_unitConversion5.o" "leg_X_ik_OUTPUT.bendAngle";
connectAttr "leg_X_unitConversion4.o" "leg_X_ik_OUTPUT.baseAngle";
connectAttr "leg_X_ik_expr.out[1]" "leg_X_unitConversion5.i";
connectAttr "leg_X_ik_INPUT.upperLength" "leg_X_ik_expr.in[0]";
connectAttr "leg_X_ik_INPUT.lowerLength" "leg_X_ik_expr.in[1]";
connectAttr "leg_X_ik_INPUT.currentLength" "leg_X_ik_expr.in[2]";
connectAttr ":time1.o" "leg_X_ik_expr.tim";
connectAttr "leg_X_ik_expr.out[0]" "leg_X_unitConversion4.i";
connectAttr "leg_X_hip_fk_ctrl_parentMatrix.o" "leg_X_hip_fk_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "leg_X_hip_fk_ctrl.sy" "leg_X_fk_knee_offset_position.i2y";
connectAttr "knee_srtOffset.tx" "leg_X_fk_knee_offset_position.i1x";
connectAttr "knee_srtOffset.ty" "leg_X_fk_knee_offset_position.i1y";
connectAttr "knee_srtOffset.tz" "leg_X_fk_knee_offset_position.i1z";
connectAttr "leg_X_fk_knee_offset_position.o" "leg_X_fk_knee_offset_matrix.it";
connectAttr "knee_srtOffset.r" "leg_X_fk_knee_offset_matrix.ir";
connectAttr "leg_X_fk_knee_offset_matrix.omat" "leg_X_knee_fk_crtl_parentMatrix.i[0]"
		;
connectAttr "leg_X_hip_fk_worldMatrix.o" "leg_X_knee_fk_crtl_parentMatrix.i[1]";
connectAttr "leg_X_knee_fk_crtl_parentMatrix.o" "leg_X_knee_fk_crtl_parentInverseMatrix.imat"
		;
connectAttr "leg_X_knee_fk_crtl_parentInverseMatrix.omat" "leg_X_knee_fk_ctrl_matrix.i[1]"
		;
connectAttr "leg_X_knee_fk_ctrl_matrix.o" "leg_X_knee_fk_ctrl_srt.imat";
connectAttr "leg_X_knee_fk_ctrl_srt.ot" "leg_X_knee_fk_matrix.it";
connectAttr "leg_X_knee_fk_ctrl_srt.or" "leg_X_knee_fk_matrix.ir";
connectAttr "leg_X_knee_fk_matrix.omat" "leg_X_knee_fk_worldMatrix.i[0]";
connectAttr "leg_X_knee_fk_crtl_parentMatrix.o" "leg_X_knee_fk_worldMatrix.i[1]"
		;
connectAttr "leg_X_knee_fk_worldMatrix.o" "leg_X_knee_fk_srt_inWorld.imat";
connectAttr "leg_X_knee_fk_crtl_parentMatrix.o" "leg_X_knee_srtOffset_worldMatrix_toSRT.imat"
		;
connectAttr "leg_X_shoulder_ik_startToEnd_vector_normalized.o" "leg_X_shoulder_ik_startToEnd_vector_scaled.i1"
		;
connectAttr "leg_X_shoulder_ik_maxLength_offset.o" "leg_X_shoulder_ik_startToEnd_vector_scaled.i2x"
		;
connectAttr "leg_X_shoulder_ik_maxLength_offset.o" "leg_X_shoulder_ik_startToEnd_vector_scaled.i2y"
		;
connectAttr "leg_X_shoulder_ik_maxLength_offset.o" "leg_X_shoulder_ik_startToEnd_vector_scaled.i2z"
		;
connectAttr "shoulder_ik_start_srtOffset.t" "leg_X_shoulder_ikEnd_position.i3[0]"
		;
connectAttr "leg_X_shoulder_ik_startToEnd_vector_scaled.o" "leg_X_shoulder_ikEnd_position.i3[1]"
		;
connectAttr "leg_X_shoulder_ikEnd_position.o3" "leg_X_shoulder_ikEnd_matrix.it";
connectAttr "leg_X_shoulder_ikEnd_matrix.omat" "leg_X_shoulderEnd_matrix.i[0]";
connectAttr "|leg_X_cmpt|input|shoulder_srt.wm" "leg_X_shoulderEnd_matrix.i[1]";
connectAttr "shoulderEnd_srt.wim" "leg_X_shoulderEnd_matrix.i[2]";
connectAttr "shoulder_ik_aim_srtOffset.im" "leg_X_shoulderEnd_matrix.i[3]";
connectAttr "shoulderEnd_srt.wm" "leg_X_shoulderEnd_matrix.i[4]";
connectAttr "leg_X_shoulderEnd_matrix.o" "leg_X_shoulderEnd_srt_inWorld.imat";
connectAttr "leg_X_shoulderEnd_matrix.o" "leg_X_shoulderEnd_worldInverseMatrix.imat"
		;
connectAttr "leg_X_shoulderEnd_matrix.o" "leg_X_shoulderEnd_PASS.worldMatrix";
connectAttr "leg_X_shoulderEnd_worldInverseMatrix.omat" "leg_X_shoulderEnd_PASS.worldInverseMatrix"
		;
connectAttr "leg_X_shoulderEnd_PASS.worldInverseMatrix" "leg_X_hip_fk_ctrl_matrix_localTo_shoulderEnd.i[1]"
		;
connectAttr "leg_X_hip_fk_ctrl_matrix_localTo_shoulderEnd.o" "leg_X_hip_fk_ctrl_srt_localTo_shoulderEnd.imat"
		;
connectAttr "leg_X_hip_fk_ctrl_srt_localTo_shoulderEnd.or" "leg_X_hip_fk_matrix_localTo_shoulderEnd.ir"
		;
connectAttr "leg_X_hip_fk_matrix_localTo_shoulderEnd.omat" "leg_X_hip_fk_worldMatrix.i[0]"
		;
connectAttr "leg_X_shoulderEnd_PASS.worldMatrix" "leg_X_hip_fk_worldMatrix.i[1]"
		;
connectAttr "leg_X_hip_fk_worldMatrix.o" "leg_X_hip_fk_srt_inWorld.imat";
connectAttr "leg_X_ik_startEndVector_limited_length.ocr" "leg_X_ik_startEndVector_rescaled.i2x"
		;
connectAttr "leg_X_ik_startEndVector_limited_length.ocr" "leg_X_ik_startEndVector_rescaled.i2y"
		;
connectAttr "leg_X_ik_startEndVector_limited_length.ocr" "leg_X_ik_startEndVector_rescaled.i2z"
		;
connectAttr "leg_X_ik_startEnd_unitVector.o" "leg_X_ik_startEndVector_rescaled.i1"
		;
connectAttr "leg_X_ik_start_worldPosition.o" "leg_X_ik_end_finalPosition.i3[0]";
connectAttr "leg_X_ik_startEndVector_rescaled.o" "leg_X_ik_end_finalPosition.i3[1]"
		;
connectAttr "leg_X_ik_end_finalPosition.o3" "leg_X_ik_legEnd_matrix.it";
connectAttr "leg_X_ik_legEnd_matrix.omat" "leg_X_ik_legEnd_worldInverseMatrix.imat"
		;
connectAttr "leg_X_ik_legEnd_worldInverseMatrix.omat" "leg_X_ik_legEnd_pass.worldInverseMatrix"
		;
connectAttr "leg_X_ik_legEnd_matrix.omat" "leg_X_ik_legEnd_pass.worldMatrix";
connectAttr "leg_X_ankle_ik_guided_srtOffset.im" "leg_X_ik_ankle_worldMatrix.i[0]"
		;
connectAttr "leg_X_ik_ankle_matrix_localTo_legEnd.omat" "leg_X_ik_ankle_worldMatrix.i[1]"
		;
connectAttr "leg_X_ik_legEnd_pass.worldMatrix" "leg_X_ik_ankle_worldMatrix.i[2]"
		;
connectAttr "leg_X_ik_ankle_worldMatrix.o" "leg_X_ik_ankle_srt_inWorld.imat";
connectAttr "leg_X_shoulderEnd_PASS.worldMatrix" "leg_X_ik_start_worldPosition.m"
		;
connectAttr "leg_X_ik_end_worldPosition.o" "leg_X_ik_startEndVector.i3[0]";
connectAttr "leg_X_ik_start_worldPosition.o" "leg_X_ik_startEndVector.i3[1]";
connectAttr "leg_X_ik_startEndVector.o3" "leg_X_ik_currentLength.p2";
connectAttr "leg_X_upper_bone_length.o" "leg_X_ik_INPUT.upperLength";
connectAttr "leg_X_lower_bone_length.o" "leg_X_ik_INPUT.lowerLength";
connectAttr "leg_X_ik_currentLength.d" "leg_X_ik_INPUT.currentLength";
connectAttr "leg_X_ik_startEndVector.o3" "leg_X_ik_startEndVector_length.p2";
connectAttr "leg_X_ik_startEndVector_length.d" "leg_X_ik_startEndVector_limited_length.ft"
		;
connectAttr "leg_X_ik_max_limbLength.o" "leg_X_ik_startEndVector_limited_length.ctr"
		;
connectAttr "leg_X_ik_max_limbLength.o" "leg_X_ik_startEndVector_limited_length.st"
		;
connectAttr "leg_X_ik_startEndVector_length.d" "leg_X_ik_startEndVector_limited_length.cfr"
		;
connectAttr "leg_X_ik_startEndVector.o3" "leg_X_ik_aimAtEnd_rotation.v2";
connectAttr "ik_leg_settings.ikBaseDirection" "leg_X_ik_aimAtEnd_rotation.v1";
connectAttr "leg_X_ik_startEndVector.o3" "leg_X_ik_startEnd_unitVector.i1";
connectAttr "poleVector_srtOffset.m" "leg_X_ik_poleVector_ctrl_parentMatrix.i[0]"
		;
connectAttr "root_srt.wm" "leg_X_ik_poleVector_ctrl_parentMatrix.i[1]";
connectAttr "leg_X_ik_poleVector_ctrl_parentMatrix.o" "leg_X_ik_poleVector_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "ikFoot_srtOffset.m" "leg_X_ikFoot_ctrl_parentMatrix.i[0]";
connectAttr "root_srt.wm" "leg_X_ikFoot_ctrl_parentMatrix.i[1]";
connectAttr "leg_X_ikFoot_ctrl_parentMatrix.o" "leg_X_ikFoot_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "|leg_X_cmpt|input|root_srt|ikFoot_srtOffset|ankle_ik_srtOffset.t" "leg_X_ik_end_worldPosition.i1"
		;
connectAttr "shoulder_ik_aim_srtOffset.m" "leg_X_shoulder_end_matrix.i[0]";
connectAttr "leg_X_parentMatrix.o" "leg_X_shoulder_end_matrix.i[1]";
connectAttr "|leg_X_cmpt|input|shoulder_srt.wim" "leg_X_shoulder_end_matrix.i[2]"
		;
connectAttr "leg_X_shoulder_end_matrix.o" "leg_X_shoulder_end_position.m";
connectAttr "leg_X_shoulder_end_position.o" "leg_X_shoulder_startEndVector_live.i3[0]"
		;
connectAttr "shoulder_ik_start_srtOffset.t" "leg_X_shoulder_startEndVector_live.i3[1]"
		;
connectAttr "leg_X_shoulder_startEndVector_neutral.o3" "leg_X_shoulder_rotateZ.v1"
		;
connectAttr "leg_X_shoulder_startEndVector_live.o3" "leg_X_shoulder_rotateZ.v2";
connectAttr "shoulder_ik_aim_srtOffset.m" "leg_X_legBase_matrix_localTo_shoulder.i[0]"
		;
connectAttr "leg_X_legBase_worldMatrix.o" "leg_X_legBase_matrix_localTo_shoulder.i[1]"
		;
connectAttr "|leg_X_cmpt|input|shoulder_srt.wim" "leg_X_legBase_matrix_localTo_shoulder.i[2]"
		;
connectAttr "leg_X_legBase_matrix_localTo_shoulder.o" "leg_X_srt_localTo_shoulder.imat"
		;
connectAttr "leg_X_srt_localTo_shoulder.ot" "leg_X_shoulder_ik_startToEnd_vector.i3[0]"
		;
connectAttr "shoulder_ik_start_srtOffset.t" "leg_X_shoulder_ik_startToEnd_vector.i3[1]"
		;
connectAttr "leg_X_shoulder_ik_startToEnd_vector.o3" "leg_X_shoulder_ik_startToEnd_vector_normalized.i1"
		;
connectAttr "shoulder_ik_end_srtOffset.t" "leg_X_shoulder_startEndVector_neutral.i3[0]"
		;
connectAttr "shoulder_ik_start_srtOffset.t" "leg_X_shoulder_startEndVector_neutral.i3[1]"
		;
connectAttr "shoulder_ik_start_srtOffset.t" "leg_X_shoulder_ik_maxLength.p1";
connectAttr "shoulder_ik_end_srtOffset.t" "leg_X_shoulder_ik_maxLength.p2";
connectAttr "leg_X_shoulder_ik_maxLength.d" "leg_X_shoulder_ik_maxLength_offset.i2"
		;
connectAttr "hip_srtOffset.m" "leg_X_parentMatrix.i[0]";
connectAttr "shoulderEnd_srt.wm" "leg_X_parentMatrix.i[1]";
connectAttr "leg_X_parentMatrix.o" "leg_X_parentInverseMatrix.imat";
connectAttr "leg_X_parentMatrix.o" "leg_X_parent_PASS.worldMatrix";
connectAttr "leg_X_parentInverseMatrix.omat" "leg_X_parent_PASS.worldInverseMatrix"
		;
connectAttr "leg_X_parent_PASS.worldInverseMatrix" "leg_X_hip_fk_ctrl_matrix.i[1]"
		;
connectAttr "leg_X_hip_fk_ctrl_matrix.o" "leg_X_hip_fk_ctrl_srt.imat";
connectAttr "leg_X_hip_fk_ctrl_srt.otx" "leg_X_legbase_matrix_localTo_hipParent.itx"
		;
connectAttr "leg_X_hip_fk_ctrl_srt.oty" "leg_X_legbase_matrix_localTo_hipParent.ity"
		;
connectAttr "leg_X_legbase_matrix_localTo_hipParent.omat" "leg_X_legBase_worldMatrix.i[0]"
		;
connectAttr "leg_X_parent_PASS.worldMatrix" "leg_X_legBase_worldMatrix.i[1]";
connectAttr "ankle_srtOffset.m" "leg_X_ankle_parentMatrix_localTo_knee.i[0]";
connectAttr "leg_X_ankle_parentMatrix_localTo_knee.o" "leg_X_ankle_parent_srtlocalTo_knee.imat"
		;
connectAttr "leg_X_ankle_parent_srtlocalTo_knee.ot" "leg_X_ankle_fk_crtl_parent_srt_localTo_knee.it"
		;
connectAttr "leg_X_ankle_parent_srtlocalTo_knee.or" "leg_X_ankle_fk_crtl_parent_srt_localTo_knee.ir"
		;
connectAttr "leg_X_ankle_fk_crtl_parent_srt_localTo_knee.omat" "leg_X_ankle_fk_crtl_parentMatrix.i[0]"
		;
connectAttr "leg_X_ankle_fk_crtl_parentMatrix.o" "leg_X_ankle_fk_crtl_parent_srt_inWorld.imat"
		;
connectAttr "foot_srtOffset.m" "leg_X_foot_fk_worldMatrix.i[0]";
connectAttr "ball_srtOffset.m" "leg_X_toe_fk_worldMatrix.i[0]";
connectAttr "leg_X_foot_fk_worldMatrix.o" "leg_X_toe_fk_worldMatrix.i[1]";
connectAttr "leg_X_toe_fk_worldMatrix.o" "leg_X_toe_fk_srt_inWorld.imat";
connectAttr "leg_X_foot_fk_worldMatrix.o" "leg_X_foot_fk_srt_inWorld.imat";
connectAttr "toe_srtOffset.im" "leg_X_ikToe_worldMatrix.i[0]";
connectAttr "leg_X_ikToe_worldMatrix.o" "leg_X_ikToe_srt_inWorld.imat";
connectAttr "foot_ik_srtOffset.im" "leg_X_ikFoot_worldMatrix.i[0]";
connectAttr "leg_X_ikBall_matrix_localTo_ikToe.omat" "leg_X_ikFoot_worldMatrix.i[1]"
		;
connectAttr "ik_ankle_aimConstraint.ct" "leg_X_ik_ankle_matrix_localTo_legEnd.it"
		;
connectAttr "ik_ankle_aimConstraint.cr" "leg_X_ik_ankle_matrix_localTo_legEnd.ir"
		;
connectAttr "leg_X_ikFoot_worldMatrix.o" "leg_X_ikFoot_srt_inWorld.imat";
connectAttr "leg_X_ikFoot_ctrl.lwrLegScale" "leg_X_lower_bone_length.i2";
connectAttr "ik_leg_settings.lowerBoneLength" "leg_X_lower_bone_length.i1";
connectAttr "ik_leg_settings.upperBoneLength" "leg_X_upper_bone_length.i1";
connectAttr "leg_X_ikFoot_ctrl.uprLegScale" "leg_X_upper_bone_length.i2";
connectAttr "leg_X_upper_bone_length.o" "leg_X_ik_max_limbLength.i1";
connectAttr "leg_X_lower_bone_length.o" "leg_X_ik_max_limbLength.i2";
connectAttr "leg_X_ik_guide_kneeDirection.ocr" "leg_X_ik_rotatePlane_guide_rotation_withDirection.wb"
		;
connectAttr "leg_X_ik_rotatePlane_guide_rotation.eu" "leg_X_ik_rotatePlane_guide_rotation_withDirection.ia"
		;
connectAttr "leg_X_ankle_guide_worldPosition.o" "leg_X_ik_guide_startToEndVector.i3[0]"
		;
connectAttr "leg_X_hip_guide_worldPosition.o" "leg_X_ik_guide_startToEndVector.i3[1]"
		;
connectAttr "leg_X_ik_guide_startToEndVector.o3" "leg_X_ik_guide_limbLength.p2";
connectAttr "leg_X_ik_guide_startToEndVector.o3" "leg_X_ik_rotatePlane_guide_rotation.v2"
		;
connectAttr "leg_X_ik_guide_baseVector.oc" "leg_X_ik_rotatePlane_guide_rotation.v1"
		;
connectAttr "leg_X_hip_guide_worldPosition.o" "leg_X_ik_guide_upperBoneLength.p1"
		;
connectAttr "leg_X_knee_guide_worldPosition.o" "leg_X_ik_guide_upperBoneLength.p2"
		;
connectAttr "leg_X_knee_guide_worldPosition.o" "leg_X_ik_guide_lowerBoneLength.p1"
		;
connectAttr "leg_X_ankle_guide_worldPosition.o" "leg_X_ik_guide_lowerBoneLength.p2"
		;
connectAttr "leg_X_ankle_guide_worldPosition.o" "leg_X_ik_guide_midToEndVector.i3[0]"
		;
connectAttr "leg_X_knee_guide_worldPosition.o" "leg_X_ik_guide_midToEndVector.i3[1]"
		;
connectAttr "leg_X_ik_guide_midToEndVector.o3" "leg_X_ik_guide_midToEndVector_dot_worldZVector.i1"
		;
connectAttr "leg_X_ik_guide_midToEndVector_dot_worldZVector.ox" "leg_X_ik_guide_kneeDirection.ft"
		;
connectAttr "leg_X_ik_guide_midToEndVector_dot_worldZVector.oy" "leg_X_ik_guide_baseVector.ft"
		;
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_controls_visibility.ix";
connectAttr "leg_X_ikBall_crtl_matrix_localTo_ikToe.o" "leg_X_ikBall_crtl_srt_localTo_ikToe.imat"
		;
connectAttr "leg_X_ikBall_crtl_srt_localTo_ikToe.ot" "leg_X_ikBall_matrix_localTo_ikToe.it"
		;
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_hip_ikfk_blend_translateRotate.w";
connectAttr "leg_X_hip_fk_srt_inWorld.ot" "leg_X_hip_ikfk_blend_translateRotate.it1"
		;
connectAttr "leg_X_hip_fk_srt_inWorld.or" "leg_X_hip_ikfk_blend_translateRotate.ir1"
		;
connectAttr "leg_X_ik_hip_srt_worldMatrix.ot" "leg_X_hip_ikfk_blend_translateRotate.it2"
		;
connectAttr "leg_X_ik_hip_srt_worldMatrix.or" "leg_X_hip_ikfk_blend_translateRotate.ir2"
		;
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_knee_ikfk_blend_translateRotate.w";
connectAttr "leg_X_knee_fk_srt_inWorld.ot" "leg_X_knee_ikfk_blend_translateRotate.it1"
		;
connectAttr "leg_X_knee_fk_srt_inWorld.or" "leg_X_knee_ikfk_blend_translateRotate.ir1"
		;
connectAttr "leg_X_ik_knee_srt_worldMatrix.ot" "leg_X_knee_ikfk_blend_translateRotate.it2"
		;
connectAttr "leg_X_ik_knee_srt_worldMatrix.or" "leg_X_knee_ikfk_blend_translateRotate.ir2"
		;
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_ankle_ikfk_blend_translateRotate.w";
connectAttr "leg_X_ankle_fk_srt_inWorld.ot" "leg_X_ankle_ikfk_blend_translateRotate.it1"
		;
connectAttr "leg_X_ankle_fk_srt_inWorld.or" "leg_X_ankle_ikfk_blend_translateRotate.ir1"
		;
connectAttr "leg_X_ik_ankle_srt_inWorld.ot" "leg_X_ankle_ikfk_blend_translateRotate.it2"
		;
connectAttr "leg_X_ik_ankle_srt_inWorld.or" "leg_X_ankle_ikfk_blend_translateRotate.ir2"
		;
connectAttr "leg_X_foot_fk_srt_inWorld.ot" "leg_X_foot_ikfk_blend_translateRotate.it1"
		;
connectAttr "leg_X_foot_fk_srt_inWorld.or" "leg_X_foot_ikfk_blend_translateRotate.ir1"
		;
connectAttr "leg_X_ikFoot_srt_inWorld.ot" "leg_X_foot_ikfk_blend_translateRotate.it2"
		;
connectAttr "leg_X_ikFoot_srt_inWorld.or" "leg_X_foot_ikfk_blend_translateRotate.ir2"
		;
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_foot_ikfk_blend_translateRotate.w";
connectAttr "leg_X_ikToe_srt_inWorld.ot" "leg_X_toe_ikfk_blend_translateRotate.it2"
		;
connectAttr "leg_X_ikToe_srt_inWorld.or" "leg_X_toe_ikfk_blend_translateRotate.ir2"
		;
connectAttr "leg_X_toe_fk_srt_inWorld.ot" "leg_X_toe_ikfk_blend_translateRotate.it1"
		;
connectAttr "leg_X_toe_fk_srt_inWorld.or" "leg_X_toe_ikfk_blend_translateRotate.ir1"
		;
connectAttr "leg_X_ikFoot_ctrl.FKIK" "leg_X_toe_ikfk_blend_translateRotate.w";
connectAttr "leg_X_ik_rotatePlane_guide_rotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "leg_X_ik_guide_midToEndVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "leg_X_ik_guide_midToEndVector_dot_worldZVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "leg_X_ik_rotatePlane_guide_rotation_withDirection.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "leg_X_ik_guide_baseVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "leg_X_hip_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "leg_X_ik_rotatePlane_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "leg_X_ik_guide_upperBoneLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "leg_X_ankle_guide_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "leg_X_hip_guide_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "leg_X_ankle_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "leg_X_knee_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "leg_X_ik_guide_startToEndVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "leg_X_ik_guide_kneeDirection.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "leg_X_knee_guide_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "leg_X_ik_guide_lowerBoneLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "leg_X_ik_leg_guided_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "leg_X_ik_guide_midToEndVector_dot_worldZVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "leg_X_root_guided_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "leg_X_ik_guide_poleVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "leg_X_ankle_guide_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "leg_X_ik_guided_poleVector_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "leg_X_ankle_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "leg_X_ik_guide_midToEndVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "leg_X_ik_guide_poleVector_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "leg_X_hip_guide_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "leg_X_ik_guide_limbLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "leg_X_ik_guide_startToEndVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "leg_X_knee_guide_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "leg_X_ik_guide_baseVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "leg_X_knee_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "leg_X_hip_guide_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "leg_X_poleVector_guided_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "leg_X_hip_followShoulderRotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "shoulder_ik_end_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "leg_X_shoulder_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "leg_X_shoulder_end_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "leg_X_parent_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "leg_X_hip_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "leg_X_shoulder_startEndVector_live.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "shoulder_ik_aim_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "leg_X_hip_fk_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "leg_X_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "leg_X_shoulder_end_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "leg_X_hip_fk_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "leg_X_shoulder_startEndVector_neutral.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "leg_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn";
connectAttr "hip_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn";
connectAttr "|leg_X_cmpt|input|shoulder_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "leg_X_parentInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "shoulderEnd_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "leg_X_hip_followShoulderRotation_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "shoulder_ik_start_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "shoulder_ik_end_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "leg_X_shoulder_ik_startToEnd_vector.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "leg_X_hip_fk_ctrl_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "leg_X_legBase_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "leg_X_shoulderEnd_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "|leg_X_cmpt|output|shoulder_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "leg_X_parent_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "leg_X_shoulder_ikEnd_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "shoulder_ik_aim_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "leg_X_shoulder_ik_maxLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "leg_X_shoulder_ik_startToEnd_vector_normalized.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "leg_X_shoulder_ikEnd_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "leg_X_shoulder_ik_startToEnd_vector_scaled.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "leg_X_shoulderEnd_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "leg_X_legBase_matrix_localTo_shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "leg_X_hip_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "leg_X_legbase_matrix_localTo_hipParent.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "leg_X_shoulderEnd_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "leg_X_hip_fk_ctrl_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[18].dn"
		;
connectAttr "|leg_X_cmpt|input|shoulder_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[19].dn"
		;
connectAttr "leg_X_shoulderEnd_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[20].dn"
		;
connectAttr "leg_X_shoulder_ik_maxLength_offset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[21].dn"
		;
connectAttr "shoulderEnd_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[22].dn"
		;
connectAttr "leg_X_srt_localTo_shoulder.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[23].dn"
		;
connectAttr "shoulder_ik_start_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[24].dn"
		;
connectAttr "leg_X_knee_fk_ctrl_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn"
		;
connectAttr "leg_X_ankle_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "leg_X_ankle_parent_srtlocalTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "leg_X_knee_fk_ctrl_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn"
		;
connectAttr "leg_X_knee_fk_crtl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn"
		;
connectAttr "leg_X_foot_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn"
		;
connectAttr "leg_X_hip_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[6].dn"
		;
connectAttr "leg_X_toe_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[7].dn"
		;
connectAttr "ball_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[8].dn";
connectAttr "leg_X_knee_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[9].dn"
		;
connectAttr "leg_X_knee_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[10].dn"
		;
connectAttr "leg_X_hip_fk_ctrl_srt_localTo_shoulderEnd.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "leg_X_ankle_fk_crtl_parent_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[12].dn"
		;
connectAttr "leg_X_shoulderEnd_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "leg_X_knee_fk_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[14].dn"
		;
connectAttr "leg_X_ankle_fk_crtl_parent_srt_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[15].dn"
		;
connectAttr "leg_X_hip_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[16].dn"
		;
connectAttr "leg_X_ankle_parentMatrix_localTo_knee.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[17].dn"
		;
connectAttr "leg_X_hip_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[18].dn"
		;
connectAttr "ankle_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[19].dn"
		;
connectAttr "leg_X_knee_fk_crtl_parentInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[20].dn"
		;
connectAttr "leg_X_ankle_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[21].dn"
		;
connectAttr "leg_X_fk_knee_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[22].dn"
		;
connectAttr "leg_X_fk_knee_offset_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[23].dn"
		;
connectAttr "leg_X_ankle_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[24].dn"
		;
connectAttr "leg_X_toe_fk_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[25].dn"
		;
connectAttr "leg_X_knee_srtOffset_worldMatrix_toSRT.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[26].dn"
		;
connectAttr "leg_X_hip_fk_matrix_localTo_shoulderEnd.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[27].dn"
		;
connectAttr "leg_X_knee_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[28].dn"
		;
connectAttr "leg_X_foot_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[29].dn"
		;
connectAttr "leg_X_knee_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[30].dn"
		;
connectAttr "leg_X_hip_fk_ctrl_matrix_localTo_shoulderEnd.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[31].dn"
		;
connectAttr "knee_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[32].dn";
connectAttr "leg_X_ankle_fk_crtl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[33].dn"
		;
connectAttr "leg_X_ik_hip_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[0].dn"
		;
connectAttr "leg_X_ik_twist_matrix_localTo_ikBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[1].dn"
		;
connectAttr "leg_X_ik_base_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[2].dn"
		;
connectAttr "leg_X_hip_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[3].dn"
		;
connectAttr "leg_X_ik_poleVector_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[4].dn"
		;
connectAttr "leg_X_ik_max_limbLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[5].dn"
		;
connectAttr "leg_X_ik_end_finalPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[6].dn"
		;
connectAttr "leg_X_ikFoot_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[7].dn"
		;
connectAttr "leg_X_ik_OUTPUT.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[8].dn";
connectAttr "poleVector_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[9].dn"
		;
connectAttr "leg_X_ik_startEndVector_limited_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[10].dn"
		;
connectAttr "leg_X_ik_poleVector_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[11].dn"
		;
connectAttr "leg_X_ik_startEndVector_rescaled.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[12].dn"
		;
connectAttr "leg_X_ik_legEnd_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[13].dn"
		;
connectAttr "leg_X_ik_bendAngle.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[14].dn"
		;
connectAttr "leg_X_ik_hip_matrix_localTo_ikBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[15].dn"
		;
connectAttr "leg_X_ik_knee_worldMatrix_alignedTo_fk.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[16].dn"
		;
connectAttr "leg_X_ik_poleVector_rotation_localTo_ikBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[17].dn"
		;
connectAttr "leg_X_ikAnkle_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[18].dn"
		;
connectAttr "leg_X_ik_startEndVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[19].dn"
		;
connectAttr "leg_X_upper_bone_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[20].dn"
		;
connectAttr "leg_X_ik_hip_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[21].dn"
		;
connectAttr "ik_leg_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[22].dn"
		;
connectAttr "hip_ik_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[23].dn"
		;
connectAttr "leg_X_shoulderEnd_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[24].dn"
		;
connectAttr "leg_X_ik_aimAtEnd_rotation_withDirection.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[25].dn"
		;
connectAttr "leg_X_ik_poleVector_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[26].dn"
		;
connectAttr "leg_X_ik_startEndVector_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[27].dn"
		;
connectAttr "leg_X_ik_start_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[28].dn"
		;
connectAttr "knee_ik_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[29].dn"
		;
connectAttr "leg_X_ik_INPUT.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[30].dn";
connectAttr "leg_X_ik_legEnd_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[31].dn"
		;
connectAttr "root_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[32].dn";
connectAttr "leg_X_ik_hip_worldMatrix_alignedTo_fk.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[33].dn"
		;
connectAttr "leg_X_ik_poleVector_srt_localTo_ikBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[34].dn"
		;
connectAttr "leg_X_ik_end_worldPosition.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[35].dn"
		;
connectAttr "leg_X_lower_bone_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[36].dn"
		;
connectAttr "|leg_X_cmpt|input|root_srt|ikFoot_srtOffset|ankle_ik_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[37].dn"
		;
connectAttr "leg_X_ik_expr.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[38].dn";
connectAttr "leg_X_ik_startEnd_unitVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[39].dn"
		;
connectAttr "leg_X_unitConversion4.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[40].dn"
		;
connectAttr "leg_X_ik_poleVector_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[41].dn"
		;
connectAttr "leg_X_ik_rotatePlane_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[42].dn"
		;
connectAttr "ikFoot_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[43].dn"
		;
connectAttr "leg_X_ik_currentLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[44].dn"
		;
connectAttr "leg_X_ik_knee_matrix_localTo_ik_hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[45].dn"
		;
connectAttr "leg_X_ik_poleVector_matrix_localTo_ikBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[46].dn"
		;
connectAttr "leg_X_ikFoot_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[47].dn"
		;
connectAttr "leg_X_ik_baseAngle.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[48].dn"
		;
connectAttr "leg_X_unitConversion5.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[49].dn"
		;
connectAttr "leg_X_ikFoot_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[50].dn"
		;
connectAttr "leg_X_ik_base_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[51].dn"
		;
connectAttr "leg_X_ikFoot_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[52].dn"
		;
connectAttr "leg_X_ik_aimAtEnd_rotation.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[53].dn"
		;
connectAttr "leg_X_ik_legEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[54].dn"
		;
connectAttr "leg_X_ik_knee_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[5].ni[55].dn"
		;
connectAttr "leg_X_ikToe_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[0].dn"
		;
connectAttr "leg_X_ik_knee_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[1].dn"
		;
connectAttr "toe_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[2].dn";
connectAttr "leg_X_ikBall_matrix_localTo_ikToe.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[3].dn"
		;
connectAttr "leg_X_ikFoot_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[4].dn"
		;
connectAttr "ik_ankle_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[5].dn"
		;
connectAttr "leg_X_ik_ankle_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[6].dn"
		;
connectAttr "leg_X_ikFoot_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[7].dn"
		;
connectAttr "leg_X_ikToe_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[8].dn"
		;
connectAttr "leg_X_ik_legEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[9].dn"
		;
connectAttr "leg_X_ikAnkle_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[10].dn"
		;
connectAttr "leg_X_ik_ankle_matrix_localTo_legEnd.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[11].dn"
		;
connectAttr "leg_X_ikBall_crtl_srt_localTo_ikToe.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[12].dn"
		;
connectAttr "leg_X_ik_ankle_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[13].dn"
		;
connectAttr "leg_X_ikBall_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[14].dn"
		;
connectAttr "leg_X_ikToe_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[15].dn"
		;
connectAttr "leg_X_ikBall_crtl_matrix_localTo_ikToe.msg" "MayaNodeEditorSavedTabsInfo.tgi[6].ni[16].dn"
		;
connectAttr "leg_X_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_hip_fk_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_knee_srtOffset_worldMatrix_toSRT.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ankle_fk_crtl_parent_srt_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ankle_parentMatrix_localTo_knee.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ikFoot_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_startEndVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_aimAtEnd_rotation.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ankle_parent_srtlocalTo_knee.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ankle_fk_crtl_parent_srt_localTo_knee.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ankle_fk_crtl_parentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_knee_fk_crtl_parentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ikFoot_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "leg_X_ik_poleVector_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_poleVector_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_poleVector_displayCurve_start.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_knee_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ankle_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_base_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_poleVector_matrix_localTo_ikBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_base_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_poleVector_srt_localTo_ikBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_poleVector_rotation_localTo_ikBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_hip_matrix_localTo_ikBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_rotatePlane_worldMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_hip_srt_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_ik_knee_matrix_localTo_ik_hip.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_hip_worldMatrix_alignedTo_fk.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_knee_worldMatrix_alignedTo_fk.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_knee_srt_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_ik_startEndVector_length.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "leg_X_ik_startEndVector_limited_length.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_max_limbLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_startEnd_unitVector.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_ik_startEndVector_rescaled.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_ankle_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ankle_ikfk_blend_scale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_knee_ikfk_blend_scale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_hip_ikfk_blend_scale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_foot_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_foot_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_foot_ikfk_blend_scale.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_ikFoot_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_legEnd_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ikBall_crtl_matrix_localTo_ikToe.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ikBall_crtl_srt_localTo_ikToe.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ikBall_matrix_localTo_ikToe.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ikFoot_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_toe_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_toe_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ikToe_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_toe_ikfk_blend_scale.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_legEnd_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_ankle_matrix_localTo_legEnd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_ankle_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_currentLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ikToe_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_upper_bone_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_lower_bone_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_hip_fk_ctrl_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_hip_fk_ctrl_srt.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_legbase_matrix_localTo_hipParent.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_legBase_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_parentInverseMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_knee_fk_crtl_parentInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_knee_fk_ctrl_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_knee_fk_ctrl_srt.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_knee_fk_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_knee_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_legBase_matrix_localTo_shoulder.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_srt_localTo_shoulder.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_shoulder_ik_maxLength.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_shoulder_ik_startToEnd_vector.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_shoulder_ik_startToEnd_vector_normalized.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_shoulder_ik_startToEnd_vector_scaled.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_shoulder_ikEnd_position.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_shoulder_ikEnd_matrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_shoulderEnd_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_shoulderEnd_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_hip_fk_ctrl_matrix_localTo_shoulderEnd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_hip_fk_ctrl_srt_localTo_shoulderEnd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_hip_fk_matrix_localTo_shoulderEnd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_hip_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_hip_fk_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_shoulderEnd_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_shoulder_end_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_shoulder_startEndVector_neutral.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_shoulder_startEndVector_live.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_shoulder_end_position.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_shoulder_rotateZ.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_hip_followShoulderRotation_matrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_hip_fk_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "leg_X_fk_knee_offset_position.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_fk_knee_offset_matrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_ik_twist_matrix_localTo_ikBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_hip_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_hip_guide_worldPosition.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_ankle_guide_worldPosition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_knee_guide_worldPosition.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "leg_X_ik_guide_midToEndVector.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_ik_guide_midToEndVector_dot_worldZVector.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_guide_baseVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_guide_upperBoneLength.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "leg_X_ik_guide_lowerBoneLength.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "leg_X_ik_rotatePlane_guide_rotation.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_guide_startToEndVector.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_start_worldPosition.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_ik_end_worldPosition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_guide_kneeDirection.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "leg_X_ik_guide_poleVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_guide_poleVector_worldPosition.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_guided_poleVector_position.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "leg_X_ik_guide_limbLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_ik_end_finalPosition.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "leg_X_shoulder_ik_maxLength_offset.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of leg.ma
