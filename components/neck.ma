//Maya ASCII 2016 scene
//Name: neck.ma
//Last modified: Mon, Jul 09, 2018 09:08:40 PM
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
	setAttr ".t" -type "double3" 20.865149825811582 21.170641533795642 23.70013347787739 ;
	setAttr ".r" -type "double3" -14.738352729738622 56.199999999946719 1.4293455641379922e-015 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-015 0 ;
	setAttr ".rpt" -type "double3" 6.9608676511172669e-016 3.4544488318046822e-016 7.8955545078709611e-016 ;
	setAttr ".hdl" -type "double3" 0 -1.7763568394002505e-015 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "01094DA5-418A-91BA-AAEA-C29A88918CEB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 25.908646585094438;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 15.922805165580073 11.806554479951821 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A3757C1B-4368-E3FC-40DD-0FAE0CD33AD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.088810187820028252 101.26660527235667 7.3110932192190665 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75858DB8-4465-9D67-6547-66AC47F890F7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.1305387463587562;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "1923CF4C-4811-C14F-5F11-E4A2E22BA347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.00060400000074878335 16.75963020324707 101.67655911843747 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AC477CAD-4120-C2E3-CE80-7D900BFF1E75";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.3453785055208192;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8723419B-4AC5-F875-88E3-48B503E7BEA8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 101.68882642509777 13.390281108467196 9.5924821849346795 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "950758FD-468D-2068-74AC-BCAF91A18C89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 23.689187113846671;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode dagContainer -n "neck_cmpt";
	rename -uid "4F527AF5-4C03-0590-3470-36A4A072E11C";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 3 ".pni";
	setAttr ".ctor" -type "string" "rporter";
	setAttr ".cdat" -type "string" "2018/07/04 12:50:18";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 10.348433377313071 7.3034445270067643 ;
	setAttr ".sp" -type "double3" 0 10.348433377313071 7.3034445270067643 ;
	setAttr ".aal" -type "attributeAlias" {"neck_fk_01_ctrl","publishedNodeInfo[0]","neck_fk_02_ctrl"
		,"publishedNodeInfo[1]","neck_head_ctrl","publishedNodeInfo[2]"} ;
createNode transform -n "about" -p "neck_cmpt";
	rename -uid "2685BC73-4A46-A3D5-3AA4-638F91728FD5";
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
	setAttr ".component_part" -type "string" "neck";
	setAttr ".component_type" -type "string" "mechaCatNeck";
	setAttr ".component_version" -type "string" "1.0.0";
createNode transform -n "input" -p "neck_cmpt";
	rename -uid "7B12B792-417E-ABD1-7E82-E9BDC27C5384";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "chest_srt" -p "input";
	rename -uid "2E912EC6-4BFB-B5FB-2CBE-3C8AA1C11956";
	setAttr ".t" -type "double3" 0 13.187989234924316 5.8977727890014648 ;
createNode transform -n "neckBase_srtOffset" -p "chest_srt";
	rename -uid "047CCE2D-44E2-FE5B-3710-59B8A894DBF5";
	addAttr -ci true -sn "guideData" -ln "guideData" -at "compound" -nc 1;
	addAttr -s false -ci true -m -sn "guide_attr" -ln "guide_attr" -at "message" -p "guideData";
createNode transform -n "neck_01_srtOffset" -p "neckBase_srtOffset";
	rename -uid "F69408D1-44B1-DE60-C363-F8B1874D0BEE";
	setAttr ".r" -type "double3" -14.999999999999998 0 0 ;
createNode transform -n "neck_02_srtOffset" -p "neck_01_srtOffset";
	rename -uid "6607B265-4822-1B63-CEB4-D3AF020131D3";
	setAttr ".t" -type "double3" 0 2.6563355689775814 0 ;
	setAttr ".r" -type "double3" -29.999999999999996 0 0 ;
createNode transform -n "neck_03_srtOffset" -p "neck_02_srtOffset";
	rename -uid "68A5610F-44D5-2242-B28B-5A992B017FA5";
	setAttr ".t" -type "double3" 0 2.5765559813589878 0 ;
	setAttr ".r" -type "double3" -45 0 0 ;
createNode transform -n "head_srtOffset" -p "neck_03_srtOffset";
	rename -uid "19D26C29-41B3-8068-4FB5-068398FB5036";
createNode transform -n "neck_settings" -p "input";
	rename -uid "D335860F-4035-3B7B-F2B0-58B2FC05B13B";
	addAttr -ci true -k true -sn "restPose" -ln "restPose" -dv 1 -min 0 -max 1 -at "double";
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
	setAttr -k on ".restPose" 0;
createNode transform -n "guided" -p "neck_cmpt";
	rename -uid "9F98D15B-4ACA-5987-1280-CF9EC7A40FAA";
createNode transform -n "chest_guided_srt" -p "guided";
	rename -uid "A87604EC-4CC4-6EAC-1160-EAA8389AEF40";
createNode transform -n "neckBase_guided_srtOffset" -p "chest_guided_srt";
	rename -uid "68E6C3F0-4877-5CBA-FC06-779B9411F0DF";
createNode parentConstraint -n "neckBase_guided_srtOffset_parentConstraint1" -p "neckBase_guided_srtOffset";
	rename -uid "A210D2CC-4789-CFB7-564C-69A101B0DA4E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck_base_guide_rotation_srtOffsetW0" 
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
	setAttr ".lr" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".rst" -type "double3" 0 0.22540548869541688 1.5210583550589423 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "guides" -p "neck_cmpt";
	rename -uid "8FEE0608-4849-6D31-0420-22A02192763A";
createNode transform -n "neck_base_guide_srt" -p "guides";
	rename -uid "1AB8D737-4250-54AF-388A-65A20EB40BB9";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 13.413394723619733 7.4188311440604071 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "link_X_curveShape2" -p "neck_base_guide_srt";
	rename -uid "67DB6234-481E-9413-AD14-17BCF2D5C4BD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0.5 0 2.7755575615628914e-017
		0 0 0.5
		-0.5 0 2.7755575615628914e-017
		0 0 -0.5
		0.5 0 2.7755575615628914e-017
		0 0.5 2.7755575615628914e-017
		-0.5 0 2.7755575615628914e-017
		0 -0.5 2.7755575615628914e-017
		0.5 0 2.7755575615628914e-017
		0 0 0.5
		0 -0.5 2.7755575615628914e-017
		0 0 -0.5
		0 0.5 2.7755575615628914e-017
		0 0 0.5
		;
createNode transform -n "neck_base_guide_rotation_srtOffset" -p "neck_base_guide_srt";
	rename -uid "754D2DE2-4819-56E8-10D9-36A5F5E1B82D";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "internal" -p "neck_cmpt";
	rename -uid "1AFA76DA-40B4-1D43-1508-398C530554D4";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode aimConstraint -n "neck_ikRotatePlane_aimConstraint" -p "internal";
	rename -uid "5FE7E1FB-45F9-D922-7ACE-7EA0E706694B";
	setAttr ".a" -type "double3" 0 1 0 ;
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
createNode transform -n "control" -p "neck_cmpt";
	rename -uid "7956F93D-42E5-94F4-3FBB-97B70BBB558D";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "neck_fk_01_ctrl_srtOffset" -p "control";
	rename -uid "DB5EEB72-4384-CAF9-CE86-A1A7D7B91E34";
createNode transform -n "neck_fk_01_ctrl" -p "neck_fk_01_ctrl_srtOffset";
	rename -uid "B9491507-475D-2E31-8EAD-8B8F88CDEA5C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neck_fk_01_ctrlShape" -p "neck_fk_01_ctrl";
	rename -uid "1D24F5CC-43B0-E70A-4911-52AEBE8D02BD";
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
		0.29448467806124518 -1.788446643931037e-015 -0.71094890368653207
		5.5511151231257827e-017 0.37499999999999883 -1.1445255481567314
		-0.29448467806124606 -1.788446643931037e-015 -0.71094890368653207
		-0.5441367333979209 -1.7606910683154081e-015 -0.54413673339791913
		-0.71094890368653463 -1.788446643931037e-015 -0.2944846780612439
		-0.77000000000000002 0.37499999999999861 1.7397402162638752e-015
		-0.71094890368653463 -1.8162022195466659e-015 0.2944846780612474
		-0.5441367333979209 -1.7051799170841502e-015 0.54413673339792312
		-0.2944846780612459 -1.7606910683154081e-015 0.7109489036865364
		5.5511151231257827e-017 0.37499999999999917 1.1445255481567345
		0.29448467806124573 -1.7051799170841502e-015 0.71094890368653629
		0.54413673339792079 -1.8439577951622948e-015 0.54413673339792279
		0.71094890368653463 -2.3158025806279863e-015 0.29448467806124723
		0.76952554815673269 0.37499999999999833 1.6564734894169884e-015
		0.71094890368653463 -2.2047802781654707e-015 -0.29448467806124429
		0.54413673339792079 -1.6774243414685213e-015 -0.54413673339791935
		0.29448467806124518 -1.788446643931037e-015 -0.71094890368653207
		5.5511151231257827e-017 0.37499999999999883 -1.1445255481567314
		0.29448467806124518 -1.788446643931037e-015 -0.71094890368653207
		;
createNode transform -n "neck_fk_02_ctrl_srtOffset" -p "control";
	rename -uid "A8201744-498B-0323-74D1-D4BACE08A707";
createNode transform -n "neck_fk_02_ctrl" -p "neck_fk_02_ctrl_srtOffset";
	rename -uid "3AE79A90-445F-8909-D7E8-E498773CDED6";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
createNode nurbsCurve -n "neck_fk_02_ctrlShape" -p "neck_fk_02_ctrl";
	rename -uid "6BEFA527-4D0A-3046-5AC5-FDB1EC2AE613";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 2 no 3
		19 0 0.055555555555555552 0.1111111111111111 0.16666666666666666 0.22222222222222221
		 0.27777777777777779 0.33333333333333331 0.3888888888888889 0.44444444444444442 0.5
		 0.55555555555555558 0.61111111111111116 0.66666666666666663 0.72222222222222221 0.77777777777777779
		 0.83333333333333337 0.88888888888888884 0.94444444444444442 1
		19
		0.29448467806124518 -7.6193662603168208e-017 -0.71094890368653785
		5.5511151231257827e-017 0.37500000000000039 -1.1445255481567362
		-0.29448467806124606 -7.6193662603168208e-017 -0.71094890368653785
		-0.5441367333979209 -4.8438086987539295e-017 -0.54413673339792445
		-0.71094890368653463 -3.4560299179724838e-017 -0.29448467806124912
		-0.77000000000000002 0.3750000000000005 -3.431042345540211e-015
		-0.71094890368653463 7.0730642437185324e-018 0.29448467806124218
		-0.5441367333979209 -1.0394923821879712e-016 0.54413673339791768
		-0.2944846780612459 -7.6193662603168208e-017 0.7109489036865303
		5.5511151231257827e-017 0.37500000000000083 1.1445255481567296
		0.29448467806124573 -2.0682511371910381e-017 0.7109489036865303
		0.54413673339792079 -7.6193662603168208e-017 0.54413673339791746
		0.71094890368653463 -4.64771721221973e-016 0.29448467806124201
		0.76952554815673269 0.37499999999999994 -3.5975757992339841e-015
		0.71094890368653463 -4.64771721221973e-016 -0.29448467806124956
		0.54413673339792079 -4.8438086987539295e-017 -0.54413673339792479
		0.29448467806124518 -7.6193662603168208e-017 -0.71094890368653785
		5.5511151231257827e-017 0.37500000000000039 -1.1445255481567362
		0.29448467806124518 -7.6193662603168208e-017 -0.71094890368653785
		;
createNode transform -n "head_ctrl_srtOffset" -p "control";
	rename -uid "B42F09AA-432A-42F6-C8DD-FC8E31512CF5";
createNode transform -n "head_ctrl" -p "head_ctrl_srtOffset";
	rename -uid "91C10A64-4DB0-FA91-5258-5582B61DF6F6";
	addAttr -ci true -sn "FKIK" -ln "FKIK" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".ro" 1;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FKIK" 1;
createNode nurbsCurve -n "head_ctrlShape" -p "head_ctrl";
	rename -uid "DFB5B8C9-4032-15F4-1CA3-AFA7F34C2FF9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		1.3990730047225952 4.2381347701984105 -0.14539754263751065
		1.3435209989547729 4.0585865066486058 0.16466295846112272
		1.2817449569702148 3.9480442092853245 0.47562658913739125
		1.011605978012085 3.9325985000568093 0.90517008431561385
		1.0969209671020508 3.724533467097825 1.2479950202287011
		1.0037529468536377 3.6120075271564187 1.6135078681290915
		0.8923109769821167 3.4825500534015355 1.9975839865983298
		0.76509600877761841 3.3307107971149152 2.3865371955216697
		0.65311801433563232 3.1813425109821014 2.7114244712174704
		0.42908400297164917 3.2558597610431383 2.7707239402116111
		0.22006100416183472 3.2992233322101296 2.8003317130387599
		0 3.4203056381183328 2.6855770362199118
		-0.22006100416183472 3.2992242858844447 2.8003345740617083
		-0.42908400297164917 3.2558597610431379 2.7707248938859284
		-0.65311801433563232 3.1813434646564187 2.7114225638688372
		-0.76509600877761841 3.3307107971149152 2.3865371955216697
		-0.89231199026107788 3.4825500534015355 1.9975839865983298
		-1.0037529468536377 3.6120075271564187 1.6135078681290915
		-1.0969209671020508 3.724533467097825 1.2479950202287011
		-1.011605978012085 3.9325985000568093 0.90517008431561385
		-1.2817449569702148 3.9480423019366908 0.47562658913739247
		-1.3435209989547729 4.0585884139972404 0.16466295846112228
		-1.3990730047225952 4.2381347701984105 -0.14539754263751065
		-0.87773501873016357 4.57282295684392 -0.22085988394610429
		-0.4479680061340332 4.7740615890460685 -0.27404057852618185
		0 4.7317279861407942 -0.076343892735165897
		0.4479680061340332 4.7740615890460685 -0.27404057852618185
		0.87773400545120239 4.5728229568439192 -0.22086083762042114
		1.3990730047225952 4.2381347701984105 -0.14539754263751065
		;
createNode transform -n "output" -p "neck_cmpt";
	rename -uid "BE54711E-4C6A-95FB-00C1-938DF583C9DE";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "neck_srt" -p "output";
	rename -uid "C3825D7D-4052-54DC-50E4-AE8D636E5D15";
createNode transform -n "neck_01_srt" -p "output";
	rename -uid "8F34F6FB-4701-924E-CE2B-23A45739D7C4";
createNode transform -n "neck_02_srt" -p "output";
	rename -uid "67EF0890-4F55-3402-DC42-BDBB69C08299";
createNode transform -n "head_srt" -p "output";
	rename -uid "D4F26913-40EC-B072-21A2-BE8D581607C4";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8DCD4A46-463A-8FFD-D8E0-BCABE27DC821";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "8D3E626D-4CC8-8890-92E4-0DA3D80338D1";
createNode displayLayer -n "defaultLayer";
	rename -uid "922BB33E-4724-CD36-A43D-95B0AB693DE9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B1981915-4DC9-BDA3-6778-AB86DFE22E54";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F625866E-432D-03ED-624F-BB9757A3F342";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "26333FC5-402F-3177-AB47-F48A8120D29F";
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
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1299\n                -height 841\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1299\n            -height 841\n"
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
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 17 100 -ps 2 83 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1299\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1299\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DA70BDE1-4704-CF62-6238-A69A79427D54";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 61 -ast 1 -aet 61 ";
	setAttr ".st" 6;
createNode animBlendNodeAdditiveRotation -n "neck_01_offset_rotate";
	rename -uid "7573B531-47F9-E957-BE75-2FABBF0BF262";
	setAttr ".wb" 0;
	setAttr ".ri" 1;
createNode animBlendNodeAdditiveRotation -n "neck_02_offset_rotate";
	rename -uid "CD863068-4333-CCC4-F1C1-85849212C63A";
	setAttr ".wb" 0;
	setAttr ".ri" 1;
createNode animBlendNodeAdditiveRotation -n "neck_03_offset_rotate";
	rename -uid "C366A4D2-493E-F286-345E-56961678A9B4";
	setAttr ".wb" 0;
	setAttr ".ri" 1;
createNode composeMatrix -n "neck_01_offset_matrix";
	rename -uid "F5D7206C-40EE-DECC-10C7-E69CFE92BE7A";
createNode composeMatrix -n "neck_02_offset_matrix";
	rename -uid "5A6E4200-4B62-4A87-88F3-B282F4EA7E19";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.6563355689775814 0 1;
createNode composeMatrix -n "neck_03_offset_matrix";
	rename -uid "84D0F6DC-442D-5D5E-2DC0-51A9E4BC49ED";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 2.5765559813589878 0 1;
createNode multMatrix -n "neck_fk_01_ctrl_parentMatrix";
	rename -uid "35C3E44C-4C3A-5693-ACC9-0AA7FC12AC42";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "neck_fk_01_ctrl_srtOffset_inWorld";
	rename -uid "420D6711-49EE-53BD-12BA-92ACFA650203";
	setAttr ".ot" -type "double3" 0 13.413394723619733 7.4188311440604071 ;
	setAttr ".or" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".os" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode multMatrix -n "neck_fk_02_ctrl_parentMatrix";
	rename -uid "73C9B888-47F6-B1D7-D98A-16B4C89D2427";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "neck_fk_02_ctrl_srtOffset_inWorld";
	rename -uid "FF32E5D8-4D71-076E-44F2-FBB399BC28A3";
	setAttr ".ot" -type "double3" 0 13.413394723619733 10.075166713037991 ;
	setAttr ".or" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".os" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
createNode multMatrix -n "neck_fk_end_worldMatrix";
	rename -uid "5E1DEFB2-4F5D-57D4-CD5E-06AB3CF62E85";
	setAttr -s 2 ".i";
createNode network -n "neck_fk_end_pass";
	rename -uid "AAC773A5-4947-D159-4D5A-E3BB3CB3C9F8";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode multMatrix -n "neck_ik_end_matrix_localTo_neckBase";
	rename -uid "11E54854-4581-AD46-318E-E8B34BFD1685";
	setAttr -s 4 ".i";
createNode decomposeMatrix -n "neck_ik_end_srt_localTo_neckBase";
	rename -uid "F3CDD636-408B-86F9-CC01-D1B589A6BEB6";
	setAttr ".ot" -type "double3" 0 5.2328915503365696 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "neck_fk_end_srt_localTo_neckBase";
	rename -uid "07E32C7E-44DD-3DF4-C05D-C2ADA337779C";
	setAttr ".ot" -type "double3" 0 5.2328915503365723 3.5527136788005009e-015 ;
	setAttr ".os" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr ".oqw" 1;
createNode pairBlend -n "neck_head_ctrl_srtOffset_localTo_neckBase";
	rename -uid "FBBE0130-4825-3FE7-40F6-5FB547C968ED";
createNode multMatrix -n "neck_fk_end_matrix_localTo_neckBase";
	rename -uid "468379F7-4F39-06A2-E8C8-CAAF6177D15E";
	setAttr -s 3 ".i";
createNode composeMatrix -n "neck_head_ctrl_parentMatrix_localTo_neckBase";
	rename -uid "A0A9C4D3-485D-FC48-EAB9-C4B7CF02D713";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.2328915503365696 0 1;
createNode multMatrix -n "neck_head_ctrl_parentMatrix";
	rename -uid "93F43E06-4C60-03A0-F4BF-C19A4F4574B1";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "neck_head_ctrl_srtOffset_inWorld";
	rename -uid "2E6FA835-4805-F49E-FFF4-7996A97F7E51";
	setAttr ".ot" -type "double3" 0 13.413394723619735 12.651722694396977 ;
	setAttr ".or" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".os" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".oqw" 0.70710678118654768;
createNode multMatrix -n "neck_head_ctrl_matrix_localTo_neckBase";
	rename -uid "90AAEBC1-4D29-233F-7F84-84B81099BD89";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "neck_head_ctrl_srt_localTo_neckBase";
	rename -uid "5A47E26F-47C0-44B9-A437-7EA46893948F";
	setAttr ".ot" -type "double3" 0 5.2328915503365687 1.7763568394002505e-015 ;
	setAttr ".os" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".oqx" 0;
	setAttr ".oqw" 1;
createNode vectorProduct -n "neck_ik_startToEnd_vector_normalized";
	rename -uid "F246D24D-471D-852C-4FA5-1E8FDFAF6E5E";
	setAttr ".op" 0;
	setAttr ".no" yes;
createNode distanceBetween -n "neck_ik_fullLength";
	rename -uid "785656C8-420D-8721-AD1E-27B0A413DD5C";
createNode condition -n "neck_ik_currentLength";
	rename -uid "FECFA968-4EEC-49DD-4BE6-C4BA5A5326C3";
	setAttr ".op" 2;
createNode distanceBetween -n "neck_lowerSegment_length";
	rename -uid "A1456A62-4CEE-6590-0C32-AF8119864258";
createNode distanceBetween -n "neck_upperSegment_length";
	rename -uid "F3E9FCED-40EB-E5F3-BC7D-6F89005CD1ED";
createNode addDoubleLinear -n "neck_ik_maxLength";
	rename -uid "DD1F46F7-455E-F18F-8F29-D48BB177BB43";
createNode network -n "neck_ik_INPUT";
	rename -uid "C6290C67-43BE-9DCF-9DBB-72BD8E911F1A";
	addAttr -ci true -k true -sn "upperLength" -ln "upperLength" -at "double";
	addAttr -ci true -k true -sn "lowerLength" -ln "lowerLength" -at "double";
	addAttr -ci true -k true -sn "currentLength" -ln "currentLength" -at "double";
	setAttr -k on ".upperLength";
	setAttr -k on ".lowerLength";
	setAttr -k on ".currentLength";
createNode multiplyDivide -n "neck_ik_end_position";
	rename -uid "9C998E1D-413F-B8F2-2C0C-489125BC9944";
createNode multMatrix -n "neck_head_ctrl_matrix_localTo_neckEnd";
	rename -uid "3176A84D-455A-1652-FBEC-5C973C19CA0F";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "neck_head_ctrl_srt_localTo_neckEnd";
	rename -uid "700A9992-47C3-C791-15EC-63B39826A08D";
	setAttr ".ot" -type "double3" 0 -3.5527136788005009e-015 0 ;
	setAttr ".os" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "neck_head_matrix_localTo_neckEnd";
	rename -uid "B64E53F3-4F55-6ECA-89B6-AD9C02A3E49E";
createNode multMatrix -n "neck_head_fk_worldMatrix";
	rename -uid "FCA70AB2-4FB4-9423-46A7-68BA8AC57CB0";
	setAttr -s 2 ".i";
createNode multMatrix -n "neck_head_fk_matrix_localTo_neckBase";
	rename -uid "565B0F14-4AFE-F5C6-547E-20A0E1228B93";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "neck_head_fk_srt_localTo_neckBase";
	rename -uid "0E0B1BBD-4CE2-86B5-E1D2-988FBDA96FCE";
	setAttr ".ot" -type "double3" 0 5.2328915503365723 3.5527136788005009e-015 ;
createNode pairBlend -n "neck_head_srt_localTo_neckBase";
	rename -uid "A43CD0F7-466F-2779-0171-35B55388B3C8";
createNode composeMatrix -n "neck_head_matrix_localTo_neckBase";
	rename -uid "20CF9294-4396-DFB5-C45E-B2B1EB46A8FA";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.2328915596008301 1.7763567335211321e-015 1;
createNode multMatrix -n "neck_head_worldMatrix";
	rename -uid "0F5C05AC-4AA7-3AF4-FA25-3D90260F5231";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "neck_head_srt_inWorld";
	rename -uid "94F3A8E2-49CD-3625-C3EE-B9A8866792FA";
	setAttr ".ot" -type "double3" 0 13.413394723619733 12.651722703661239 ;
	setAttr ".or" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".os" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".oqw" 0.70710678118654768;
createNode network -n "neck_ik_OUTPUT";
	rename -uid "00690641-4ADC-F35C-8053-628A88A58C57";
	addAttr -ci true -k true -sn "baseAngle" -ln "baseAngle" -at "double";
	addAttr -ci true -k true -sn "bendAngle" -ln "bendAngle" -at "double";
	addAttr -ci true -sn "startPoint" -ln "startPoint" -at "double3" -nc 3;
	addAttr -ci true -sn "startPointX" -ln "startPointX" -at "double" -p "startPoint";
	addAttr -ci true -sn "startPointY" -ln "startPointY" -at "double" -p "startPoint";
	addAttr -ci true -sn "startPointZ" -ln "startPointZ" -at "double" -p "startPoint";
	setAttr -k on ".baseAngle";
	setAttr -k on ".bendAngle";
	setAttr -k on ".startPoint";
	setAttr -k on ".startPointX";
	setAttr -k on ".startPointY";
	setAttr -k on ".startPointZ";
createNode expression -n "neck_ik_EXPR";
	rename -uid "7BA5215B-442F-0375-573B-0BAB4CCBE216";
	setAttr -k on ".nds";
	setAttr -s 3 ".in";
	setAttr -s 3 ".in";
	setAttr -s 2 ".out";
	setAttr ".ixp" -type "string" "float $a = .I[0];\nfloat $b = .I[1];\nfloat $c = .I[2];\n\nfloat $sa = $a * $a; \nfloat $sb = $b * $b;\nfloat $sc = $c * $c;\n\nfloat $B = clamp(-1.0, 1.0, ($sc + $sa - $sb) / (2.0 * $a * $c));\nfloat $C = clamp(-1.0, 1.0, ($sa + $sb - $sc) / (2.0 * $a * $b));\n\n.O[0] = rad_to_deg(acos($B));\n.O[1] = -180.0 + rad_to_deg(acos($C));";
createNode composeMatrix -n "neck_01_ik_matrix";
	rename -uid "4EB95CDC-49D3-A0A8-96B1-BEAAA40ED9F5";
createNode composeMatrix -n "neck_02_ik_matrix";
	rename -uid "94BDB150-4E65-A41B-881E-8A92F3E562BA";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 0.99999999999999967 2.6698248993996758e-008 0
		 0 -2.6698248993996758e-008 0.99999999999999967 0 0 2.6563355689775814 0 1;
createNode unitConversion -n "neck_unitConversion2";
	rename -uid "BD7A30D7-484B-CC75-EAAA-02B552B52915";
	setAttr ".cf" 0.017453292519943295;
createNode multMatrix -n "neck_01_ik_matrix_localTo_neckBase";
	rename -uid "1E565A35-41D6-B3D3-F0F6-B1AAC9DFC55D";
	setAttr -s 2 ".i";
createNode multMatrix -n "neck_02_ik_matrix_localTo_neckBase";
	rename -uid "137D858D-4632-8FE9-297F-498210C8739E";
	setAttr -s 3 ".i";
createNode network -n "neck_02_ik_matrix_PASS";
	rename -uid "6916D0A9-4F2B-EBD5-5FEC-E9B5283BD76D";
	addAttr -ci true -sn "matrix" -ln "matrix" -dt "matrix";
createNode network -n "neck_01_ik_matrix_PASS";
	rename -uid "37FB182D-427E-7794-4C89-E989AEB41F7F";
	addAttr -ci true -sn "matrix" -ln "matrix" -dt "matrix";
createNode composeMatrix -n "neck_head_ik_matrix_localTo_neckBase";
	rename -uid "6D112C71-4825-6B09-94EB-89B8F95CABE4";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.2328915596008301 1.7763567335211321e-015 1;
createNode network -n "neck_head_ik_matrix_PASS";
	rename -uid "521A6E3F-46D8-071C-DE50-62B5BAF49627";
	addAttr -ci true -sn "matrix" -ln "matrix" -dt "matrix";
createNode inverseMatrix -n "neck_fk_end_worldInverseMatrix";
	rename -uid "93CCF780-41DE-ABDB-0E40-A1A93D2DA821";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 4.4408920985006262e-016 -0.99999999999999933 0
		 0 0.99999999999999933 2.2204460492503111e-016 0 0 -12.651722694396977 13.413394723619723 1;
createNode decomposeMatrix -n "neck_head_ik_srt_localTo_neckBase";
	rename -uid "9FA9622E-4391-5478-47C2-5985583E51C3";
	setAttr ".ot" -type "double3" 0 5.2328915596008301 1.7763567335211321e-015 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode multMatrix -n "neck_fk_02_ctrl_matrix_localTo_neckBase";
	rename -uid "CD75905A-4DB8-A75C-3279-30BDF0C1E812";
	setAttr -s 2 ".i";
createNode multMatrix -n "neck_fk_01_matrix_localTo_neckBase";
	rename -uid "CA4A487F-41D6-EB1B-08FF-498A19E1AEC7";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "neck_fk_01_srt_localTo_neckBase";
	rename -uid "53E6C742-4B75-1C27-ABA1-948B5118A3E1";
	setAttr ".ot" -type "double3" 0 0 1.7763568394002505e-015 ;
	setAttr ".os" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "neck_ik_01_srt_localTo_neckBase";
	rename -uid "560E4EB1-4B55-C041-B45E-A9BE9511DCD1";
	setAttr ".ot" -type "double3" 0 0 1.7763568394002505e-015 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "neck_fk_02_srt_localTo_neckBase";
	rename -uid "07DF36DF-4FE5-BC1B-BE10-D8838FD91446";
	setAttr ".ot" -type "double3" 0 2.6563355689775845 1.7763568394002505e-015 ;
	setAttr ".os" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "neck_ik_02_srt_localTo_neckBase";
	rename -uid "40F50775-43B6-1028-8402-2D962198802F";
	setAttr ".ot" -type "double3" 0 2.6563355689775814 1.7763568394002505e-015 ;
	setAttr ".or" -type "double3" 1.5296969877454103e-006 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqx" 1.3349124496998381e-008;
	setAttr ".oqw" 0.99999999999999989;
createNode pairBlend -n "neck_01_srt_localTo_neckBase";
	rename -uid "A78A53E3-4D58-B1D4-33EC-60971A0717DC";
createNode pairBlend -n "neck_02_srt_localTo_neckBase";
	rename -uid "A6A08892-4FED-421E-ACF1-C9ACDAF38C2B";
createNode composeMatrix -n "neck_01_matrix_localTo_neckBase";
	rename -uid "52C8A31B-4363-6269-3052-DC8EAAAE52CB";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.7763568394002505e-015 1;
createNode composeMatrix -n "neck_02_matrix_localTo_neckBase";
	rename -uid "4A75AB35-4A65-A501-2ADE-11ADC7F11962";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 0.99999999999999967 2.6698248993996758e-008 0
		 0 -2.6698248993996758e-008 0.99999999999999967 0 0 2.6563355689775814 1.7763568394002505e-015 1;
createNode multMatrix -n "neck_01_worldMatrix";
	rename -uid "7E43CDD3-42F3-2713-0A45-33B140381BDE";
	setAttr -s 2 ".i";
createNode multMatrix -n "neck_02_worldMatrix";
	rename -uid "E6815898-47E1-9B5B-25A5-A4A613BBCB7A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "neck_01_srt_inWorld";
	rename -uid "5EC517E3-429C-E902-8E74-3E8D0417E097";
	setAttr ".ot" -type "double3" 0 13.413394723619732 7.4188311440604071 ;
	setAttr ".or" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".os" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode decomposeMatrix -n "neck_02_srt_inWorld";
	rename -uid "05BF28BA-46B2-F658-7B98-9CB017C53620";
	setAttr ".ot" -type "double3" 0 13.413394723619732 10.075166713037989 ;
	setAttr ".or" -type "double3" 90.000001529696974 0 0 ;
	setAttr ".os" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode unitConversion -n "neck_unitConversion1";
	rename -uid "4B5BE921-4FC3-F860-F16F-9DB632153996";
	setAttr ".cf" 0.017453292519943295;
createNode composeMatrix -n "neck_ikRotatePlane_matrix_localTo_chest";
	rename -uid "C7FF2366-4396-36A8-CC2E-93BFE96BBD95";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1.0000000000000002 0
		 0 -1.0000000000000002 2.2204460492503131e-016 0 0 0.22540548869541688 1.5210583550589423 1;
createNode multMatrix -n "neck_ikRotatePlane_matrix_localTo_neckBase";
	rename -uid "1EAC0812-4358-1FD4-1143-F8ABA132FA8D";
	setAttr -s 3 ".i";
createNode hyperLayout -n "hyperLayout1";
	rename -uid "598B2E8A-4F03-C680-A92E-3CB84D7FF794";
	setAttr ".ihi" 0;
	setAttr -s 104 ".hyp";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "201AD366-4515-D5A4-EEFD-D287060A72F0";
	setAttr -s 4 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "fk_neck";
	setAttr ".tgi[0].vl" -type "double2" -1288.507274806647 -378.57141352835214 ;
	setAttr ".tgi[0].vh" -type "double2" 2887.3167350851909 752.38092248402063 ;
	setAttr -s 22 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 528.5714111328125;
	setAttr ".tgi[0].ni[0].y" 181.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 825.71429443359375;
	setAttr ".tgi[0].ni[1].y" -548.5714111328125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 268.57144165039063;
	setAttr ".tgi[0].ni[2].y" -334.28570556640625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -31.428571701049805;
	setAttr ".tgi[0].ni[3].y" -548.5714111328125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1425.7142333984375;
	setAttr ".tgi[0].ni[4].y" 265.71429443359375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -31.428571701049805;
	setAttr ".tgi[0].ni[5].y" -205.71427917480469;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 825.71429443359375;
	setAttr ".tgi[0].ni[6].y" -120;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 825.71429443359375;
	setAttr ".tgi[0].ni[7].y" 265.71429443359375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1420.7652587890625;
	setAttr ".tgi[0].ni[8].y" 374.03656005859375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 525.71429443359375;
	setAttr ".tgi[0].ni[9].y" -205.71427917480469;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -31.428571701049805;
	setAttr ".tgi[0].ni[10].y" -120;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1425.7142333984375;
	setAttr ".tgi[0].ni[11].y" -548.5714111328125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 11.428571701049805;
	setAttr ".tgi[0].ni[12].y" 265.71429443359375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1125.7142333984375;
	setAttr ".tgi[0].ni[13].y" -120;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 268.57144165039063;
	setAttr ".tgi[0].ni[14].y" 94.285713195800781;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1125.7142333984375;
	setAttr ".tgi[0].ni[15].y" -634.28570556640625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1125.7142333984375;
	setAttr ".tgi[0].ni[16].y" 265.71429443359375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1425.7142333984375;
	setAttr ".tgi[0].ni[17].y" -120;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -31.428571701049805;
	setAttr ".tgi[0].ni[18].y" -634.28570556640625;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 225.71427917480469;
	setAttr ".tgi[0].ni[19].y" -720;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 525.71429443359375;
	setAttr ".tgi[0].ni[20].y" -634.28570556640625;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 14.285714149475098;
	setAttr ".tgi[0].ni[21].y" 181.42857360839844;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "head";
	setAttr ".tgi[1].vl" -type "double2" -4942.1243457421715 -1533.3332724041434 ;
	setAttr ".tgi[1].vh" -type "double2" 6218.314771221384 1489.2856551068194 ;
	setAttr -s 21 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 1041.4285888671875;
	setAttr ".tgi[1].ni[0].y" 397.14285278320312;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 527.14288330078125;
	setAttr ".tgi[1].ni[1].y" 97.142860412597656;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 270;
	setAttr ".tgi[1].ni[2].y" 182.85714721679687;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 531.4285888671875;
	setAttr ".tgi[1].ni[3].y" 21.428571701049805;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 12.857142448425293;
	setAttr ".tgi[1].ni[4].y" 225.71427917480469;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 2074.28564453125;
	setAttr ".tgi[1].ni[5].y" -235.71427917480469;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 1774.2857666015625;
	setAttr ".tgi[1].ni[6].y" -235.71427917480469;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 1384.2857666015625;
	setAttr ".tgi[1].ni[7].y" 397.14285278320312;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 527.14288330078125;
	setAttr ".tgi[1].ni[8].y" 225.71427917480469;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 2931.428466796875;
	setAttr ".tgi[1].ni[9].y" -150;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" -797.14288330078125;
	setAttr ".tgi[1].ni[10].y" -235.71427917480469;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 745.71429443359375;
	setAttr ".tgi[1].ni[11].y" -150;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 2417.142822265625;
	setAttr ".tgi[1].ni[12].y" -150;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[1].ni[13].x" 1045.7142333984375;
	setAttr ".tgi[1].ni[13].y" 21.428571701049805;
	setAttr ".tgi[1].ni[13].nvs" 18304;
	setAttr ".tgi[1].ni[14].x" 270;
	setAttr ".tgi[1].ni[14].y" 54.285713195800781;
	setAttr ".tgi[1].ni[14].nvs" 18304;
	setAttr ".tgi[1].ni[15].x" 2674.28564453125;
	setAttr ".tgi[1].ni[15].y" -150;
	setAttr ".tgi[1].ni[15].nvs" 18304;
	setAttr ".tgi[1].ni[16].x" 12.857142448425293;
	setAttr ".tgi[1].ni[16].y" 397.14285278320312;
	setAttr ".tgi[1].ni[16].nvs" 18304;
	setAttr ".tgi[1].ni[17].x" 1388.5714111328125;
	setAttr ".tgi[1].ni[17].y" 21.428571701049805;
	setAttr ".tgi[1].ni[17].nvs" 18304;
	setAttr ".tgi[1].ni[18].x" 270;
	setAttr ".tgi[1].ni[18].y" 311.42855834960937;
	setAttr ".tgi[1].ni[18].nvs" 18304;
	setAttr ".tgi[1].ni[19].x" 12.857142448425293;
	setAttr ".tgi[1].ni[19].y" 97.142860412597656;
	setAttr ".tgi[1].ni[19].nvs" 18304;
	setAttr ".tgi[1].ni[20].x" 527.14288330078125;
	setAttr ".tgi[1].ni[20].y" 397.14285278320312;
	setAttr ".tgi[1].ni[20].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "ik_neck";
	setAttr ".tgi[2].vl" -type "double2" -1319.6428047049637 -936.90472467551251 ;
	setAttr ".tgi[2].vh" -type "double2" 5194.6426507263041 827.38091950378907 ;
	setAttr -s 31 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 2373.24853515625;
	setAttr ".tgi[2].ni[0].y" -228.57632446289062;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" 1470;
	setAttr ".tgi[2].ni[1].y" 354.28570556640625;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 3514.525146484375;
	setAttr ".tgi[2].ni[2].y" 430.44143676757812;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 2.8571429252624512;
	setAttr ".tgi[2].ni[3].y" 467.14285278320312;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 12.857142448425293;
	setAttr ".tgi[2].ni[4].y" 268.57144165039063;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 3091.489501953125;
	setAttr ".tgi[2].ni[5].y" 340.2987060546875;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" -930;
	setAttr ".tgi[2].ni[6].y" 311.42855834960937;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" -630;
	setAttr ".tgi[2].ni[7].y" 311.42855834960937;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 2148.63232421875;
	setAttr ".tgi[2].ni[8].y" 597.4415283203125;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" -640;
	setAttr ".tgi[2].ni[9].y" -90;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" 12.857142448425293;
	setAttr ".tgi[2].ni[10].y" 140;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" 1766.406982421875;
	setAttr ".tgi[2].ni[11].y" -307.0794677734375;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" 1773.119873046875;
	setAttr ".tgi[2].ni[12].y" -181.10743713378906;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 1211.5780029296875;
	setAttr ".tgi[2].ni[13].y" 311.42855834960937;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" 1268.7757568359375;
	setAttr ".tgi[2].ni[14].y" -143.20425415039062;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" 2042.4542236328125;
	setAttr ".tgi[2].ni[15].y" -80.642738342285156;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" 3520.060791015625;
	setAttr ".tgi[2].ni[16].y" 340.2987060546875;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 731.4285888671875;
	setAttr ".tgi[2].ni[17].y" 595.71429443359375;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" -942.066162109375;
	setAttr ".tgi[2].ni[18].y" -188.111083984375;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" 741.4285888671875;
	setAttr ".tgi[2].ni[19].y" 140;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" 955.71429443359375;
	setAttr ".tgi[2].ni[20].y" 354.28570556640625;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" 302.85714721679687;
	setAttr ".tgi[2].ni[21].y" 295.71429443359375;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" 3091.489501953125;
	setAttr ".tgi[2].ni[22].y" 426.01296997070312;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[2].ni[23].x" -630;
	setAttr ".tgi[2].ni[23].y" 397.14285278320312;
	setAttr ".tgi[2].ni[23].nvs" 18304;
	setAttr ".tgi[2].ni[24].x" -382.85714721679687;
	setAttr ".tgi[2].ni[24].y" -90;
	setAttr ".tgi[2].ni[24].nvs" 18304;
	setAttr ".tgi[2].ni[25].x" 1470;
	setAttr ".tgi[2].ni[25].y" 440;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" 1985.668701171875;
	setAttr ".tgi[2].ni[26].y" 419.62222290039062;
	setAttr ".tgi[2].ni[26].nvs" 18304;
	setAttr ".tgi[2].ni[27].x" -982.85711669921875;
	setAttr ".tgi[2].ni[27].y" -90;
	setAttr ".tgi[2].ni[27].nvs" 18304;
	setAttr ".tgi[2].ni[28].x" -930;
	setAttr ".tgi[2].ni[28].y" 397.14285278320312;
	setAttr ".tgi[2].ni[28].nvs" 18304;
	setAttr ".tgi[2].ni[29].x" 1012.8694458007812;
	setAttr ".tgi[2].ni[29].y" -83.700889587402344;
	setAttr ".tgi[2].ni[29].nvs" 18304;
	setAttr ".tgi[2].ni[30].x" -930;
	setAttr ".tgi[2].ni[30].y" 525.71429443359375;
	setAttr ".tgi[2].ni[30].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "ikfk_neck";
	setAttr ".tgi[3].vl" -type "double2" 655.95235488717617 -1212.4999518195807 ;
	setAttr ".tgi[3].vh" -type "double2" 2561.9046601038172 -86.309520379891595 ;
	setAttr -s 36 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 1514.2857666015625;
	setAttr ".tgi[3].ni[0].y" -847.14288330078125;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" 98.571426391601563;
	setAttr ".tgi[3].ni[1].y" 54.285713195800781;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" 1470;
	setAttr ".tgi[3].ni[2].y" -31.428571701049805;
	setAttr ".tgi[3].ni[2].nvs" 18304;
	setAttr ".tgi[3].ni[3].x" 1257.142822265625;
	setAttr ".tgi[3].ni[3].y" -847.14288330078125;
	setAttr ".tgi[3].ni[3].nvs" 18304;
	setAttr ".tgi[3].ni[4].x" 3057.142822265625;
	setAttr ".tgi[3].ni[4].y" -161.42857360839844;
	setAttr ".tgi[3].ni[4].nvs" 18304;
	setAttr ".tgi[3].ni[5].x" 1514.2857666015625;
	setAttr ".tgi[3].ni[5].y" -632.85711669921875;
	setAttr ".tgi[3].ni[5].nvs" 18304;
	setAttr ".tgi[3].ni[6].x" 2757.142822265625;
	setAttr ".tgi[3].ni[6].y" -247.14285278320312;
	setAttr ".tgi[3].ni[6].nvs" 18304;
	setAttr ".tgi[3].ni[7].x" 957.14288330078125;
	setAttr ".tgi[3].ni[7].y" -761.4285888671875;
	setAttr ".tgi[3].ni[7].nvs" 18304;
	setAttr ".tgi[3].ni[8].x" 1257.142822265625;
	setAttr ".tgi[3].ni[8].y" -547.14288330078125;
	setAttr ".tgi[3].ni[8].nvs" 18304;
	setAttr ".tgi[3].ni[9].x" 2542.857177734375;
	setAttr ".tgi[3].ni[9].y" -247.14285278320312;
	setAttr ".tgi[3].ni[9].nvs" 18304;
	setAttr ".tgi[3].ni[10].x" 2114.28564453125;
	setAttr ".tgi[3].ni[10].y" 10;
	setAttr ".tgi[3].ni[10].nvs" 18304;
	setAttr ".tgi[3].ni[11].x" 1471.4285888671875;
	setAttr ".tgi[3].ni[11].y" 52.857143402099609;
	setAttr ".tgi[3].ni[11].nvs" 18304;
	setAttr ".tgi[3].ni[12].x" 2114.28564453125;
	setAttr ".tgi[3].ni[12].y" -590;
	setAttr ".tgi[3].ni[12].nvs" 18304;
	setAttr ".tgi[3].ni[13].x" 912.85711669921875;
	setAttr ".tgi[3].ni[13].y" -31.428571701049805;
	setAttr ".tgi[3].ni[13].nvs" 18304;
	setAttr ".tgi[3].ni[14].x" 1171.4285888671875;
	setAttr ".tgi[3].ni[14].y" 52.857143402099609;
	setAttr ".tgi[3].ni[14].nvs" 18304;
	setAttr ".tgi[3].ni[15].x" 1814.2857666015625;
	setAttr ".tgi[3].ni[15].y" -590;
	setAttr ".tgi[3].ni[15].nvs" 18304;
	setAttr ".tgi[3].ni[16].x" 2542.857177734375;
	setAttr ".tgi[3].ni[16].y" -161.42857360839844;
	setAttr ".tgi[3].ni[16].nvs" 18304;
	setAttr ".tgi[3].ni[17].x" 398.57144165039062;
	setAttr ".tgi[3].ni[17].y" 54.285713195800781;
	setAttr ".tgi[3].ni[17].nvs" 18304;
	setAttr ".tgi[3].ni[18].x" 2971.428466796875;
	setAttr ".tgi[3].ni[18].y" -247.14285278320312;
	setAttr ".tgi[3].ni[18].nvs" 18304;
	setAttr ".tgi[3].ni[19].x" 957.14288330078125;
	setAttr ".tgi[3].ni[19].y" -547.14288330078125;
	setAttr ".tgi[3].ni[19].nvs" 18304;
	setAttr ".tgi[3].ni[20].x" -244.28572082519531;
	setAttr ".tgi[3].ni[20].y" -31.428571701049805;
	setAttr ".tgi[3].ni[20].nvs" 18304;
	setAttr ".tgi[3].ni[21].x" 1257.142822265625;
	setAttr ".tgi[3].ni[21].y" -632.85711669921875;
	setAttr ".tgi[3].ni[21].nvs" 18304;
	setAttr ".tgi[3].ni[22].x" 1514.2857666015625;
	setAttr ".tgi[3].ni[22].y" -761.4285888671875;
	setAttr ".tgi[3].ni[22].nvs" 18304;
	setAttr ".tgi[3].ni[23].x" 914.28570556640625;
	setAttr ".tgi[3].ni[23].y" -247.14285278320312;
	setAttr ".tgi[3].ni[23].nvs" 18304;
	setAttr ".tgi[3].ni[24].x" 2757.142822265625;
	setAttr ".tgi[3].ni[24].y" -332.85714721679687;
	setAttr ".tgi[3].ni[24].nvs" 18304;
	setAttr ".tgi[3].ni[25].x" 1170;
	setAttr ".tgi[3].ni[25].y" -31.428571701049805;
	setAttr ".tgi[3].ni[25].nvs" 18304;
	setAttr ".tgi[3].ni[26].x" 1514.2857666015625;
	setAttr ".tgi[3].ni[26].y" -547.14288330078125;
	setAttr ".tgi[3].ni[26].nvs" 18304;
	setAttr ".tgi[3].ni[27].x" 2542.857177734375;
	setAttr ".tgi[3].ni[27].y" -332.85714721679687;
	setAttr ".tgi[3].ni[27].nvs" 18304;
	setAttr ".tgi[3].ni[28].x" 1257.142822265625;
	setAttr ".tgi[3].ni[28].y" -761.4285888671875;
	setAttr ".tgi[3].ni[28].nvs" 18304;
	setAttr ".tgi[3].ni[29].x" 2114.28564453125;
	setAttr ".tgi[3].ni[29].y" -804.28570556640625;
	setAttr ".tgi[3].ni[29].nvs" 18304;
	setAttr ".tgi[3].ni[30].x" 2971.428466796875;
	setAttr ".tgi[3].ni[30].y" -332.85714721679687;
	setAttr ".tgi[3].ni[30].nvs" 18304;
	setAttr ".tgi[3].ni[31].x" 1814.2857666015625;
	setAttr ".tgi[3].ni[31].y" 10;
	setAttr ".tgi[3].ni[31].nvs" 18304;
	setAttr ".tgi[3].ni[32].x" -244.28572082519531;
	setAttr ".tgi[3].ni[32].y" 54.285713195800781;
	setAttr ".tgi[3].ni[32].nvs" 18304;
	setAttr ".tgi[3].ni[33].x" 1814.2857666015625;
	setAttr ".tgi[3].ni[33].y" -804.28570556640625;
	setAttr ".tgi[3].ni[33].nvs" 18304;
	setAttr ".tgi[3].ni[34].x" 2800;
	setAttr ".tgi[3].ni[34].y" -161.42857360839844;
	setAttr ".tgi[3].ni[34].nvs" 18304;
	setAttr ".tgi[3].ni[35].x" 655.71429443359375;
	setAttr ".tgi[3].ni[35].y" 54.285713195800781;
	setAttr ".tgi[3].ni[35].nvs" 18304;
select -ne :time1;
	setAttr ".o" 61;
	setAttr ".unw" 61;
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
	setAttr -s 54 ".u";
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
connectAttr "hyperLayout1.msg" "neck_cmpt.hl";
connectAttr "neck_fk_01_ctrl.msg" "neck_cmpt.pni[0].pnod";
connectAttr "neck_fk_02_ctrl.msg" "neck_cmpt.pni[1].pnod";
connectAttr "head_ctrl.msg" "neck_cmpt.pni[2].pnod";
connectAttr "neckBase_guided_srtOffset.tx" "neckBase_srtOffset.tx";
connectAttr "neckBase_guided_srtOffset.ty" "neckBase_srtOffset.ty";
connectAttr "neckBase_guided_srtOffset.tz" "neckBase_srtOffset.tz";
connectAttr "neckBase_guided_srtOffset.rx" "neckBase_srtOffset.rx";
connectAttr "neckBase_guided_srtOffset.ry" "neckBase_srtOffset.ry";
connectAttr "neckBase_guided_srtOffset.rz" "neckBase_srtOffset.rz";
connectAttr "neckBase_guided_srtOffset.tx" "neckBase_srtOffset.guide_attr[0]";
connectAttr "neckBase_guided_srtOffset.ty" "neckBase_srtOffset.guide_attr[1]";
connectAttr "neckBase_guided_srtOffset.tz" "neckBase_srtOffset.guide_attr[2]";
connectAttr "neckBase_guided_srtOffset.rx" "neckBase_srtOffset.guide_attr[3]";
connectAttr "neckBase_guided_srtOffset.ry" "neckBase_srtOffset.guide_attr[4]";
connectAttr "neckBase_guided_srtOffset.rz" "neckBase_srtOffset.guide_attr[5]";
connectAttr "chest_srt.t" "chest_guided_srt.t";
connectAttr "chest_srt.r" "chest_guided_srt.r";
connectAttr "chest_srt.s" "chest_guided_srt.s";
connectAttr "neckBase_guided_srtOffset_parentConstraint1.ctx" "neckBase_guided_srtOffset.tx"
		;
connectAttr "neckBase_guided_srtOffset_parentConstraint1.cty" "neckBase_guided_srtOffset.ty"
		;
connectAttr "neckBase_guided_srtOffset_parentConstraint1.ctz" "neckBase_guided_srtOffset.tz"
		;
connectAttr "neckBase_guided_srtOffset_parentConstraint1.crx" "neckBase_guided_srtOffset.rx"
		;
connectAttr "neckBase_guided_srtOffset_parentConstraint1.cry" "neckBase_guided_srtOffset.ry"
		;
connectAttr "neckBase_guided_srtOffset_parentConstraint1.crz" "neckBase_guided_srtOffset.rz"
		;
connectAttr "neckBase_guided_srtOffset.ro" "neckBase_guided_srtOffset_parentConstraint1.cro"
		;
connectAttr "neckBase_guided_srtOffset.pim" "neckBase_guided_srtOffset_parentConstraint1.cpim"
		;
connectAttr "neckBase_guided_srtOffset.rp" "neckBase_guided_srtOffset_parentConstraint1.crp"
		;
connectAttr "neckBase_guided_srtOffset.rpt" "neckBase_guided_srtOffset_parentConstraint1.crt"
		;
connectAttr "neck_base_guide_rotation_srtOffset.t" "neckBase_guided_srtOffset_parentConstraint1.tg[0].tt"
		;
connectAttr "neck_base_guide_rotation_srtOffset.rp" "neckBase_guided_srtOffset_parentConstraint1.tg[0].trp"
		;
connectAttr "neck_base_guide_rotation_srtOffset.rpt" "neckBase_guided_srtOffset_parentConstraint1.tg[0].trt"
		;
connectAttr "neck_base_guide_rotation_srtOffset.r" "neckBase_guided_srtOffset_parentConstraint1.tg[0].tr"
		;
connectAttr "neck_base_guide_rotation_srtOffset.ro" "neckBase_guided_srtOffset_parentConstraint1.tg[0].tro"
		;
connectAttr "neck_base_guide_rotation_srtOffset.s" "neckBase_guided_srtOffset_parentConstraint1.tg[0].ts"
		;
connectAttr "neck_base_guide_rotation_srtOffset.pm" "neckBase_guided_srtOffset_parentConstraint1.tg[0].tpm"
		;
connectAttr "neckBase_guided_srtOffset_parentConstraint1.w0" "neckBase_guided_srtOffset_parentConstraint1.tg[0].tw"
		;
connectAttr "neckBase_srtOffset.t" "neck_ikRotatePlane_aimConstraint.ct";
connectAttr "neckBase_srtOffset.pim" "neck_ikRotatePlane_aimConstraint.cpim";
connectAttr "neckBase_srtOffset.wm" "neck_ikRotatePlane_aimConstraint.wum";
connectAttr "neck_ik_end_position.o" "neck_ikRotatePlane_aimConstraint.tg[0].tt"
		;
connectAttr "neckBase_srtOffset.wm" "neck_ikRotatePlane_aimConstraint.tg[0].tpm"
		;
connectAttr "neck_fk_01_ctrl_srtOffset_inWorld.ot" "neck_fk_01_ctrl_srtOffset.t"
		;
connectAttr "neck_fk_01_ctrl_srtOffset_inWorld.or" "neck_fk_01_ctrl_srtOffset.r"
		;
connectAttr "neck_fk_01_ctrl_srtOffset_inWorld.os" "neck_fk_01_ctrl_srtOffset.s"
		;
connectAttr "neck_fk_02_ctrl_srtOffset_inWorld.ot" "neck_fk_02_ctrl_srtOffset.t"
		;
connectAttr "neck_fk_02_ctrl_srtOffset_inWorld.or" "neck_fk_02_ctrl_srtOffset.r"
		;
connectAttr "neck_fk_02_ctrl_srtOffset_inWorld.os" "neck_fk_02_ctrl_srtOffset.s"
		;
connectAttr "neck_head_ctrl_srtOffset_inWorld.ot" "head_ctrl_srtOffset.t";
connectAttr "neck_head_ctrl_srtOffset_inWorld.or" "head_ctrl_srtOffset.r";
connectAttr "neck_head_ctrl_srtOffset_inWorld.os" "head_ctrl_srtOffset.s";
connectAttr "neck_fk_01_ctrl_srtOffset_inWorld.ot" "neck_srt.t";
connectAttr "neck_fk_01_ctrl_srtOffset_inWorld.or" "neck_srt.r";
connectAttr "neck_fk_01_ctrl_srtOffset_inWorld.os" "neck_srt.s";
connectAttr "neck_01_srt_inWorld.ot" "neck_01_srt.t";
connectAttr "neck_01_srt_inWorld.or" "neck_01_srt.r";
connectAttr "neck_01_srt_inWorld.os" "neck_01_srt.s";
connectAttr "neck_02_srt_inWorld.ot" "neck_02_srt.t";
connectAttr "neck_02_srt_inWorld.or" "neck_02_srt.r";
connectAttr "neck_02_srt_inWorld.os" "neck_02_srt.s";
connectAttr "neck_head_srt_inWorld.ot" "head_srt.t";
connectAttr "neck_head_srt_inWorld.or" "head_srt.r";
connectAttr "neck_head_srt_inWorld.os" "head_srt.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "neck_settings.restPose" "neck_01_offset_rotate.wa";
connectAttr "neck_01_srtOffset.r" "neck_01_offset_rotate.ia";
connectAttr "neck_settings.restPose" "neck_02_offset_rotate.wa";
connectAttr "neck_02_srtOffset.r" "neck_02_offset_rotate.ia";
connectAttr "neck_settings.restPose" "neck_03_offset_rotate.wa";
connectAttr "neck_03_srtOffset.r" "neck_03_offset_rotate.ia";
connectAttr "neck_01_offset_rotate.o" "neck_01_offset_matrix.ir";
connectAttr "neck_01_srtOffset.t" "neck_01_offset_matrix.it";
connectAttr "neck_02_offset_rotate.o" "neck_02_offset_matrix.ir";
connectAttr "neck_02_srtOffset.t" "neck_02_offset_matrix.it";
connectAttr "neck_03_offset_rotate.o" "neck_03_offset_matrix.ir";
connectAttr "neck_03_srtOffset.t" "neck_03_offset_matrix.it";
connectAttr "neck_01_offset_matrix.omat" "neck_fk_01_ctrl_parentMatrix.i[0]";
connectAttr "neckBase_srtOffset.wm" "neck_fk_01_ctrl_parentMatrix.i[1]";
connectAttr "neck_fk_01_ctrl_parentMatrix.o" "neck_fk_01_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "neck_02_offset_matrix.omat" "neck_fk_02_ctrl_parentMatrix.i[0]";
connectAttr "neck_fk_01_ctrl.wm" "neck_fk_02_ctrl_parentMatrix.i[1]";
connectAttr "neck_fk_02_ctrl_parentMatrix.o" "neck_fk_02_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "neck_03_offset_matrix.omat" "neck_fk_end_worldMatrix.i[0]";
connectAttr "neck_fk_02_ctrl.wm" "neck_fk_end_worldMatrix.i[1]";
connectAttr "neck_fk_end_worldMatrix.o" "neck_fk_end_pass.worldMatrix";
connectAttr "neck_fk_end_worldInverseMatrix.omat" "neck_fk_end_pass.worldInverseMatrix"
		;
connectAttr "head_srtOffset.m" "neck_ik_end_matrix_localTo_neckBase.i[0]";
connectAttr "neck_03_offset_matrix.omat" "neck_ik_end_matrix_localTo_neckBase.i[1]"
		;
connectAttr "neck_02_offset_matrix.omat" "neck_ik_end_matrix_localTo_neckBase.i[2]"
		;
connectAttr "neck_01_offset_matrix.omat" "neck_ik_end_matrix_localTo_neckBase.i[3]"
		;
connectAttr "neck_ik_end_matrix_localTo_neckBase.o" "neck_ik_end_srt_localTo_neckBase.imat"
		;
connectAttr "neck_fk_end_matrix_localTo_neckBase.o" "neck_fk_end_srt_localTo_neckBase.imat"
		;
connectAttr "neck_ik_end_srt_localTo_neckBase.ot" "neck_head_ctrl_srtOffset_localTo_neckBase.it2"
		;
connectAttr "neck_ik_end_srt_localTo_neckBase.or" "neck_head_ctrl_srtOffset_localTo_neckBase.ir2"
		;
connectAttr "neck_fk_end_srt_localTo_neckBase.ot" "neck_head_ctrl_srtOffset_localTo_neckBase.it1"
		;
connectAttr "neck_fk_end_srt_localTo_neckBase.or" "neck_head_ctrl_srtOffset_localTo_neckBase.ir1"
		;
connectAttr "head_ctrl.FKIK" "neck_head_ctrl_srtOffset_localTo_neckBase.w";
connectAttr "head_srtOffset.m" "neck_fk_end_matrix_localTo_neckBase.i[0]";
connectAttr "neck_fk_end_pass.worldMatrix" "neck_fk_end_matrix_localTo_neckBase.i[1]"
		;
connectAttr "neckBase_srtOffset.wim" "neck_fk_end_matrix_localTo_neckBase.i[2]";
connectAttr "neck_head_ctrl_srtOffset_localTo_neckBase.ot" "neck_head_ctrl_parentMatrix_localTo_neckBase.it"
		;
connectAttr "neck_head_ctrl_srtOffset_localTo_neckBase.or" "neck_head_ctrl_parentMatrix_localTo_neckBase.ir"
		;
connectAttr "neck_head_ctrl_parentMatrix_localTo_neckBase.omat" "neck_head_ctrl_parentMatrix.i[0]"
		;
connectAttr "neckBase_srtOffset.wm" "neck_head_ctrl_parentMatrix.i[1]";
connectAttr "neck_head_ctrl_parentMatrix.o" "neck_head_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "head_ctrl.wm" "neck_head_ctrl_matrix_localTo_neckBase.i[0]";
connectAttr "neckBase_srtOffset.wim" "neck_head_ctrl_matrix_localTo_neckBase.i[1]"
		;
connectAttr "neck_head_ctrl_matrix_localTo_neckBase.o" "neck_head_ctrl_srt_localTo_neckBase.imat"
		;
connectAttr "neck_head_ctrl_srt_localTo_neckBase.ot" "neck_ik_startToEnd_vector_normalized.i1"
		;
connectAttr "neck_head_ctrl_srt_localTo_neckBase.ot" "neck_ik_fullLength.p2";
connectAttr "neck_ik_fullLength.d" "neck_ik_currentLength.ft";
connectAttr "neck_ik_maxLength.o" "neck_ik_currentLength.st";
connectAttr "neck_ik_fullLength.d" "neck_ik_currentLength.cfr";
connectAttr "neck_ik_maxLength.o" "neck_ik_currentLength.ctr";
connectAttr "neck_02_srtOffset.t" "neck_lowerSegment_length.p2";
connectAttr "neck_03_srtOffset.t" "neck_upperSegment_length.p2";
connectAttr "neck_upperSegment_length.d" "neck_ik_maxLength.i1";
connectAttr "neck_lowerSegment_length.d" "neck_ik_maxLength.i2";
connectAttr "neck_ik_currentLength.ocr" "neck_ik_INPUT.currentLength";
connectAttr "neck_ik_maxLength.i1" "neck_ik_INPUT.upperLength";
connectAttr "neck_ik_maxLength.i2" "neck_ik_INPUT.lowerLength";
connectAttr "neck_ik_currentLength.ocr" "neck_ik_end_position.i2x";
connectAttr "neck_ik_currentLength.ocr" "neck_ik_end_position.i2z";
connectAttr "neck_ik_currentLength.ocr" "neck_ik_end_position.i2y";
connectAttr "neck_ik_startToEnd_vector_normalized.o" "neck_ik_end_position.i1";
connectAttr "head_ctrl.wm" "neck_head_ctrl_matrix_localTo_neckEnd.i[0]";
connectAttr "neck_fk_end_pass.worldInverseMatrix" "neck_head_ctrl_matrix_localTo_neckEnd.i[1]"
		;
connectAttr "neck_head_ctrl_matrix_localTo_neckEnd.o" "neck_head_ctrl_srt_localTo_neckEnd.imat"
		;
connectAttr "neck_head_ctrl_srt_localTo_neckEnd.or" "neck_head_matrix_localTo_neckEnd.ir"
		;
connectAttr "neck_head_matrix_localTo_neckEnd.omat" "neck_head_fk_worldMatrix.i[0]"
		;
connectAttr "neck_fk_end_pass.worldMatrix" "neck_head_fk_worldMatrix.i[1]";
connectAttr "neck_head_fk_worldMatrix.o" "neck_head_fk_matrix_localTo_neckBase.i[0]"
		;
connectAttr "neckBase_srtOffset.wim" "neck_head_fk_matrix_localTo_neckBase.i[1]"
		;
connectAttr "neck_head_fk_matrix_localTo_neckBase.o" "neck_head_fk_srt_localTo_neckBase.imat"
		;
connectAttr "neck_head_ik_srt_localTo_neckBase.ot" "neck_head_srt_localTo_neckBase.it2"
		;
connectAttr "neck_head_ik_srt_localTo_neckBase.or" "neck_head_srt_localTo_neckBase.ir2"
		;
connectAttr "neck_head_fk_srt_localTo_neckBase.ot" "neck_head_srt_localTo_neckBase.it1"
		;
connectAttr "neck_head_fk_srt_localTo_neckBase.or" "neck_head_srt_localTo_neckBase.ir1"
		;
connectAttr "head_ctrl.FKIK" "neck_head_srt_localTo_neckBase.w";
connectAttr "neck_head_srt_localTo_neckBase.ot" "neck_head_matrix_localTo_neckBase.it"
		;
connectAttr "neck_head_srt_localTo_neckBase.or" "neck_head_matrix_localTo_neckBase.ir"
		;
connectAttr "neck_head_matrix_localTo_neckBase.omat" "neck_head_worldMatrix.i[0]"
		;
connectAttr "neckBase_srtOffset.wm" "neck_head_worldMatrix.i[1]";
connectAttr "neck_head_worldMatrix.o" "neck_head_srt_inWorld.imat";
connectAttr "neck_ik_EXPR.out[0]" "neck_ik_OUTPUT.baseAngle";
connectAttr "neck_ik_EXPR.out[1]" "neck_ik_OUTPUT.bendAngle";
connectAttr "neck_ik_INPUT.upperLength" "neck_ik_EXPR.in[0]";
connectAttr "neck_ik_INPUT.lowerLength" "neck_ik_EXPR.in[1]";
connectAttr "neck_ik_INPUT.currentLength" "neck_ik_EXPR.in[2]";
connectAttr ":time1.o" "neck_ik_EXPR.tim";
connectAttr "neck_unitConversion1.o" "neck_01_ik_matrix.irx";
connectAttr "neck_unitConversion2.o" "neck_02_ik_matrix.irx";
connectAttr "neck_ik_INPUT.lowerLength" "neck_02_ik_matrix.ity";
connectAttr "neck_ik_OUTPUT.bendAngle" "neck_unitConversion2.i";
connectAttr "neck_01_ik_matrix.omat" "neck_01_ik_matrix_localTo_neckBase.i[0]";
connectAttr "neck_ikRotatePlane_matrix_localTo_neckBase.o" "neck_01_ik_matrix_localTo_neckBase.i[1]"
		;
connectAttr "neck_02_ik_matrix.omat" "neck_02_ik_matrix_localTo_neckBase.i[0]";
connectAttr "neck_01_ik_matrix.omat" "neck_02_ik_matrix_localTo_neckBase.i[1]";
connectAttr "neck_ikRotatePlane_matrix_localTo_neckBase.o" "neck_02_ik_matrix_localTo_neckBase.i[2]"
		;
connectAttr "neck_02_ik_matrix_localTo_neckBase.o" "neck_02_ik_matrix_PASS.matrix"
		;
connectAttr "neck_01_ik_matrix_localTo_neckBase.o" "neck_01_ik_matrix_PASS.matrix"
		;
connectAttr "neck_ik_end_position.o" "neck_head_ik_matrix_localTo_neckBase.it";
connectAttr "neck_head_ctrl_srt_localTo_neckBase.or" "neck_head_ik_matrix_localTo_neckBase.ir"
		;
connectAttr "neck_head_ik_matrix_localTo_neckBase.omat" "neck_head_ik_matrix_PASS.matrix"
		;
connectAttr "neck_fk_end_worldMatrix.o" "neck_fk_end_worldInverseMatrix.imat";
connectAttr "neck_head_ik_matrix_PASS.matrix" "neck_head_ik_srt_localTo_neckBase.imat"
		;
connectAttr "neck_fk_02_ctrl.wm" "neck_fk_02_ctrl_matrix_localTo_neckBase.i[0]";
connectAttr "neckBase_srtOffset.wim" "neck_fk_02_ctrl_matrix_localTo_neckBase.i[1]"
		;
connectAttr "neck_fk_01_ctrl.wm" "neck_fk_01_matrix_localTo_neckBase.i[0]";
connectAttr "neckBase_srtOffset.wim" "neck_fk_01_matrix_localTo_neckBase.i[1]";
connectAttr "neck_fk_01_matrix_localTo_neckBase.o" "neck_fk_01_srt_localTo_neckBase.imat"
		;
connectAttr "neck_01_ik_matrix_PASS.matrix" "neck_ik_01_srt_localTo_neckBase.imat"
		;
connectAttr "neck_fk_02_ctrl_matrix_localTo_neckBase.o" "neck_fk_02_srt_localTo_neckBase.imat"
		;
connectAttr "neck_02_ik_matrix_PASS.matrix" "neck_ik_02_srt_localTo_neckBase.imat"
		;
connectAttr "neck_fk_01_srt_localTo_neckBase.ot" "neck_01_srt_localTo_neckBase.it1"
		;
connectAttr "neck_fk_01_srt_localTo_neckBase.or" "neck_01_srt_localTo_neckBase.ir1"
		;
connectAttr "neck_ik_01_srt_localTo_neckBase.ot" "neck_01_srt_localTo_neckBase.it2"
		;
connectAttr "neck_ik_01_srt_localTo_neckBase.or" "neck_01_srt_localTo_neckBase.ir2"
		;
connectAttr "head_ctrl.FKIK" "neck_01_srt_localTo_neckBase.w";
connectAttr "neck_ik_02_srt_localTo_neckBase.ot" "neck_02_srt_localTo_neckBase.it2"
		;
connectAttr "neck_ik_02_srt_localTo_neckBase.or" "neck_02_srt_localTo_neckBase.ir2"
		;
connectAttr "neck_fk_02_srt_localTo_neckBase.ot" "neck_02_srt_localTo_neckBase.it1"
		;
connectAttr "neck_fk_02_srt_localTo_neckBase.or" "neck_02_srt_localTo_neckBase.ir1"
		;
connectAttr "head_ctrl.FKIK" "neck_02_srt_localTo_neckBase.w";
connectAttr "neck_01_srt_localTo_neckBase.ot" "neck_01_matrix_localTo_neckBase.it"
		;
connectAttr "neck_01_srt_localTo_neckBase.or" "neck_01_matrix_localTo_neckBase.ir"
		;
connectAttr "neck_02_srt_localTo_neckBase.ot" "neck_02_matrix_localTo_neckBase.it"
		;
connectAttr "neck_02_srt_localTo_neckBase.or" "neck_02_matrix_localTo_neckBase.ir"
		;
connectAttr "neck_01_matrix_localTo_neckBase.omat" "neck_01_worldMatrix.i[0]";
connectAttr "neckBase_srtOffset.wm" "neck_01_worldMatrix.i[1]";
connectAttr "neck_02_matrix_localTo_neckBase.omat" "neck_02_worldMatrix.i[0]";
connectAttr "neckBase_srtOffset.wm" "neck_02_worldMatrix.i[1]";
connectAttr "neck_01_worldMatrix.o" "neck_01_srt_inWorld.imat";
connectAttr "neck_02_worldMatrix.o" "neck_02_srt_inWorld.imat";
connectAttr "neck_ik_OUTPUT.baseAngle" "neck_unitConversion1.i";
connectAttr "neck_ikRotatePlane_aimConstraint.cr" "neck_ikRotatePlane_matrix_localTo_chest.ir"
		;
connectAttr "neck_ikRotatePlane_aimConstraint.ct" "neck_ikRotatePlane_matrix_localTo_chest.it"
		;
connectAttr "neck_ikRotatePlane_matrix_localTo_chest.omat" "neck_ikRotatePlane_matrix_localTo_neckBase.i[0]"
		;
connectAttr "chest_srt.wm" "neck_ikRotatePlane_matrix_localTo_neckBase.i[1]";
connectAttr "neckBase_srtOffset.wim" "neck_ikRotatePlane_matrix_localTo_neckBase.i[2]"
		;
connectAttr "about.msg" "hyperLayout1.hyp[0].dn";
connectAttr "input.msg" "hyperLayout1.hyp[1].dn";
connectAttr "chest_srt.msg" "hyperLayout1.hyp[2].dn";
connectAttr "neckBase_srtOffset.msg" "hyperLayout1.hyp[3].dn";
connectAttr "neck_01_srtOffset.msg" "hyperLayout1.hyp[4].dn";
connectAttr "neck_02_srtOffset.msg" "hyperLayout1.hyp[5].dn";
connectAttr "neck_03_srtOffset.msg" "hyperLayout1.hyp[6].dn";
connectAttr "head_srtOffset.msg" "hyperLayout1.hyp[7].dn";
connectAttr "neck_settings.msg" "hyperLayout1.hyp[8].dn";
connectAttr "internal.msg" "hyperLayout1.hyp[9].dn";
connectAttr "neck_ikRotatePlane_aimConstraint.msg" "hyperLayout1.hyp[10].dn";
connectAttr "control.msg" "hyperLayout1.hyp[11].dn";
connectAttr "neck_fk_01_ctrl_srtOffset.msg" "hyperLayout1.hyp[12].dn";
connectAttr "neck_fk_01_ctrl.msg" "hyperLayout1.hyp[13].dn";
connectAttr "neck_fk_01_ctrlShape.msg" "hyperLayout1.hyp[14].dn";
connectAttr "neck_fk_02_ctrl_srtOffset.msg" "hyperLayout1.hyp[15].dn";
connectAttr "neck_fk_02_ctrl.msg" "hyperLayout1.hyp[16].dn";
connectAttr "neck_fk_02_ctrlShape.msg" "hyperLayout1.hyp[17].dn";
connectAttr "head_ctrl_srtOffset.msg" "hyperLayout1.hyp[18].dn";
connectAttr "head_ctrl.msg" "hyperLayout1.hyp[19].dn";
connectAttr "head_ctrlShape.msg" "hyperLayout1.hyp[20].dn";
connectAttr "output.msg" "hyperLayout1.hyp[21].dn";
connectAttr "neck_srt.msg" "hyperLayout1.hyp[22].dn";
connectAttr "neck_01_srt.msg" "hyperLayout1.hyp[23].dn";
connectAttr "neck_02_srt.msg" "hyperLayout1.hyp[24].dn";
connectAttr "head_srt.msg" "hyperLayout1.hyp[25].dn";
connectAttr "neck_ik_startToEnd_vector_normalized.msg" "hyperLayout1.hyp[26].dn"
		;
connectAttr "neck_ik_end_position.msg" "hyperLayout1.hyp[27].dn";
connectAttr "neck_ikRotatePlane_matrix_localTo_chest.msg" "hyperLayout1.hyp[28].dn"
		;
connectAttr "neck_ikRotatePlane_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[29].dn"
		;
connectAttr "neck_fk_02_ctrl_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[30].dn"
		;
connectAttr "neck_fk_01_srt_localTo_neckBase.msg" "hyperLayout1.hyp[31].dn";
connectAttr "neck_fk_01_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[32].dn";
connectAttr "neck_fk_02_srt_localTo_neckBase.msg" "hyperLayout1.hyp[33].dn";
connectAttr "neck_ik_01_srt_localTo_neckBase.msg" "hyperLayout1.hyp[34].dn";
connectAttr "neck_head_ik_srt_localTo_neckBase.msg" "hyperLayout1.hyp[35].dn";
connectAttr "neck_head_ik_matrix_PASS.msg" "hyperLayout1.hyp[36].dn";
connectAttr "neck_ik_02_srt_localTo_neckBase.msg" "hyperLayout1.hyp[37].dn";
connectAttr "neck_01_ik_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[38].dn";
connectAttr "neck_head_srt_inWorld.msg" "hyperLayout1.hyp[39].dn";
connectAttr "neck_01_ik_matrix.msg" "hyperLayout1.hyp[40].dn";
connectAttr "neck_02_ik_matrix.msg" "hyperLayout1.hyp[41].dn";
connectAttr "neck_unitConversion2.msg" "hyperLayout1.hyp[42].dn";
connectAttr "neck_head_ik_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[43].dn"
		;
connectAttr "neck_ik_OUTPUT.msg" "hyperLayout1.hyp[44].dn";
connectAttr "neck_01_ik_matrix_PASS.msg" "hyperLayout1.hyp[45].dn";
connectAttr "neck_02_ik_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[46].dn";
connectAttr "neck_02_ik_matrix_PASS.msg" "hyperLayout1.hyp[47].dn";
connectAttr "neck_head_srt_localTo_neckBase.msg" "hyperLayout1.hyp[48].dn";
connectAttr "neck_head_worldMatrix.msg" "hyperLayout1.hyp[49].dn";
connectAttr "neck_head_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[50].dn";
connectAttr "neck_ik_currentLength.msg" "hyperLayout1.hyp[51].dn";
connectAttr "neck_head_ctrl_srt_localTo_neckEnd.msg" "hyperLayout1.hyp[52].dn";
connectAttr "neck_ik_maxLength.msg" "hyperLayout1.hyp[53].dn";
connectAttr "neck_head_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[54].dn";
connectAttr "neck_head_ctrl_parentMatrix.msg" "hyperLayout1.hyp[55].dn";
connectAttr "neck_ik_fullLength.msg" "hyperLayout1.hyp[56].dn";
connectAttr "neck_head_ctrl_matrix_localTo_neckEnd.msg" "hyperLayout1.hyp[57].dn"
		;
connectAttr "neck_head_fk_srt_localTo_neckBase.msg" "hyperLayout1.hyp[58].dn";
connectAttr "neck_head_fk_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[59].dn"
		;
connectAttr "neck_head_matrix_localTo_neckEnd.msg" "hyperLayout1.hyp[60].dn";
connectAttr "neck_head_fk_worldMatrix.msg" "hyperLayout1.hyp[61].dn";
connectAttr "neck_ik_INPUT.msg" "hyperLayout1.hyp[62].dn";
connectAttr "neck_01_worldMatrix.msg" "hyperLayout1.hyp[63].dn";
connectAttr "neck_02_srt_inWorld.msg" "hyperLayout1.hyp[64].dn";
connectAttr "neck_02_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[65].dn";
connectAttr "neck_unitConversion1.msg" "hyperLayout1.hyp[66].dn";
connectAttr "neck_02_srt_localTo_neckBase.msg" "hyperLayout1.hyp[67].dn";
connectAttr "neck_01_srt_inWorld.msg" "hyperLayout1.hyp[68].dn";
connectAttr "neck_02_worldMatrix.msg" "hyperLayout1.hyp[69].dn";
connectAttr "neck_01_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[70].dn";
connectAttr "neck_01_srt_localTo_neckBase.msg" "hyperLayout1.hyp[71].dn";
connectAttr "neck_fk_end_pass.msg" "hyperLayout1.hyp[72].dn";
connectAttr "neck_fk_end_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[73].dn";
connectAttr "neck_head_ctrl_srtOffset_localTo_neckBase.msg" "hyperLayout1.hyp[74].dn"
		;
connectAttr "neck_head_ctrl_parentMatrix_localTo_neckBase.msg" "hyperLayout1.hyp[75].dn"
		;
connectAttr "neck_fk_end_worldMatrix.msg" "hyperLayout1.hyp[76].dn";
connectAttr "neck_fk_02_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[77].dn";
connectAttr "neck_01_offset_rotate.msg" "hyperLayout1.hyp[78].dn";
connectAttr "neck_02_offset_rotate.msg" "hyperLayout1.hyp[79].dn";
connectAttr "neck_ik_end_srt_localTo_neckBase.msg" "hyperLayout1.hyp[80].dn";
connectAttr "neck_03_offset_rotate.msg" "hyperLayout1.hyp[81].dn";
connectAttr "neck_02_offset_matrix.msg" "hyperLayout1.hyp[82].dn";
connectAttr "neck_ik_end_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[83].dn";
connectAttr "neck_fk_02_ctrl_parentMatrix.msg" "hyperLayout1.hyp[84].dn";
connectAttr "neck_03_offset_matrix.msg" "hyperLayout1.hyp[85].dn";
connectAttr "neck_fk_01_ctrl_parentMatrix.msg" "hyperLayout1.hyp[86].dn";
connectAttr "neck_fk_01_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[87].dn";
connectAttr "neck_fk_end_srt_localTo_neckBase.msg" "hyperLayout1.hyp[88].dn";
connectAttr "neck_01_offset_matrix.msg" "hyperLayout1.hyp[89].dn";
connectAttr "neck_head_ctrl_matrix_localTo_neckBase.msg" "hyperLayout1.hyp[90].dn"
		;
connectAttr "neck_head_ctrl_srt_localTo_neckBase.msg" "hyperLayout1.hyp[91].dn";
connectAttr "neck_ik_EXPR.msg" "hyperLayout1.hyp[92].dn";
connectAttr "guides.msg" "hyperLayout1.hyp[93].dn";
connectAttr "guided.msg" "hyperLayout1.hyp[94].dn";
connectAttr "chest_guided_srt.msg" "hyperLayout1.hyp[95].dn";
connectAttr "neckBase_guided_srtOffset.msg" "hyperLayout1.hyp[96].dn";
connectAttr "neck_base_guide_srt.msg" "hyperLayout1.hyp[98].dn";
connectAttr "link_X_curveShape2.msg" "hyperLayout1.hyp[99].dn";
connectAttr "neck_base_guide_rotation_srtOffset.msg" "hyperLayout1.hyp[102].dn";
connectAttr "neckBase_guided_srtOffset_parentConstraint1.msg" "hyperLayout1.hyp[104].dn"
		;
connectAttr "neck_lowerSegment_length.msg" "hyperLayout1.hyp[105].dn";
connectAttr "neck_upperSegment_length.msg" "hyperLayout1.hyp[106].dn";
connectAttr "neck_fk_end_worldInverseMatrix.msg" "hyperLayout1.hyp[107].dn";
connectAttr "neck_01_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "neck_fk_end_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "neck_02_offset_rotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "neck_fk_02_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "neck_fk_01_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "neck_02_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "neck_fk_02_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "neck_fk_01_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "neck_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "neck_02_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "neck_fk_01_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "neck_fk_end_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "neckBase_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "neck_fk_02_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "neck_01_offset_rotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "neck_fk_end_worldInverseMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "neck_fk_01_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "neck_fk_02_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "neck_03_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "neck_03_offset_rotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "neck_03_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "neck_01_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "neck_ik_end_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "neck_01_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "neck_02_offset_rotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "head_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn";
connectAttr "neck_02_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "neck_head_ctrl_parentMatrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "neck_head_ctrl_srtOffset_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "neck_ik_end_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "neck_02_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "head_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "neck_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn";
connectAttr "neckBase_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "neck_head_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "neck_fk_end_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "neck_01_offset_rotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "neck_head_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "neck_03_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "neck_fk_end_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "neck_03_offset_rotate.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "neck_01_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[19].dn"
		;
connectAttr "neck_03_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[20].dn"
		;
connectAttr "neck_ikRotatePlane_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "neck_unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "neck_02_ik_matrix_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "neck_ik_maxLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "neck_ik_fullLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "neck_01_ik_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "neck_02_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "neck_lowerSegment_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "neck_02_ik_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "neck_head_ctrl_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "neck_ik_startToEnd_vector_normalized.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "chest_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn";
connectAttr "neck_ikRotatePlane_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "neck_ik_OUTPUT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn";
connectAttr "neck_head_ik_matrix_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "neck_ikRotatePlane_matrix_localTo_chest.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "neck_01_ik_matrix_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "neck_ik_INPUT.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn";
connectAttr "neckBase_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "neck_ik_end_position.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "neck_ik_EXPR.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn";
connectAttr "neck_ik_currentLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "neck_02_ik_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "neck_upperSegment_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[23].dn"
		;
connectAttr "neck_head_ctrl_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[24].dn"
		;
connectAttr "neck_unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[25].dn"
		;
connectAttr "neck_01_ik_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[26].dn"
		;
connectAttr "head_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[27].dn";
connectAttr "neck_03_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[28].dn"
		;
connectAttr "neck_head_ik_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[29].dn"
		;
connectAttr "neck_01_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[30].dn"
		;
connectAttr "neck_ik_02_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "neck_head_ctrl_matrix_localTo_neckEnd.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "neck_head_fk_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "neck_02_ik_matrix_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "head_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn";
connectAttr "neck_ik_01_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "neck_01_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "neck_fk_02_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn";
connectAttr "neck_fk_01_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "neck_01_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "neck_head_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "neck_head_ik_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "neck_01_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "neck_head_fk_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "neck_head_ik_matrix_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "neck_01_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "neck_head_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "neck_head_ctrl_srt_localTo_neckEnd.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "neck_01_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[18].dn";
connectAttr "neck_fk_01_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[19].dn"
		;
connectAttr "neck_fk_end_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[20].dn"
		;
connectAttr "neck_01_ik_matrix_PASS.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[21].dn"
		;
connectAttr "neck_fk_02_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[22].dn"
		;
connectAttr "neckBase_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[23].dn"
		;
connectAttr "neck_02_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[24].dn"
		;
connectAttr "neck_head_fk_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[25].dn"
		;
connectAttr "neck_fk_01_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[26].dn"
		;
connectAttr "neck_02_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[27].dn"
		;
connectAttr "neck_fk_02_ctrl_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[28].dn"
		;
connectAttr "neck_02_matrix_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[29].dn"
		;
connectAttr "neck_02_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[30].dn";
connectAttr "neck_head_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[31].dn"
		;
connectAttr "head_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[32].dn";
connectAttr "neck_02_srt_localTo_neckBase.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[33].dn"
		;
connectAttr "neck_head_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[34].dn"
		;
connectAttr "neck_head_matrix_localTo_neckEnd.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[35].dn"
		;
connectAttr "neck_01_offset_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_02_offset_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_03_offset_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_fk_01_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "neck_fk_01_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_fk_02_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "neck_fk_02_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_fk_end_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_ik_end_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_ik_end_srt_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_fk_end_srt_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_fk_end_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_ctrl_parentMatrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "neck_head_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_ctrl_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_ctrl_srt_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_ik_startToEnd_vector_normalized.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_ik_fullLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_ik_currentLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_lowerSegment_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_upperSegment_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_ik_maxLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_ik_end_position.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_head_ctrl_matrix_localTo_neckEnd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_ctrl_srt_localTo_neckEnd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_matrix_localTo_neckEnd.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_fk_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_head_fk_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_fk_srt_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_head_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_01_ik_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_02_ik_matrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_01_ik_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_02_ik_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_head_ik_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_fk_end_worldInverseMatrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "neck_head_ik_srt_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_fk_02_ctrl_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_fk_01_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_fk_01_srt_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_ik_01_srt_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_fk_02_srt_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_ik_02_srt_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_01_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_02_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_01_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_02_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_01_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_02_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "neck_ikRotatePlane_matrix_localTo_chest.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "neck_ikRotatePlane_matrix_localTo_neckBase.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of neck.ma
