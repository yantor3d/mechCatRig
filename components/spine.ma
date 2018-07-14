//Maya ASCII 2016 scene
//Name: spine.ma
//Last modified: Sun, Jul 08, 2018 12:37:41 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" -nodeType "eulerToQuat" "quatNodes" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	rename -uid "C0EFDD4D-44E1-E52F-9791-1482D903FBCF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 44.729844234281799 20.749019972919289 22.416576014307033 ;
	setAttr ".r" -type "double3" -6.3383527295274025 55.399999999996034 7.0013861849569464e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "01094DA5-418A-91BA-AAEA-C29A88918CEB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 53.384501282509646;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.6645352591003757e-015 15.8228759765625 -2.1713466644287109 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A3757C1B-4368-E3FC-40DD-0FAE0CD33AD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.8132687093990687 100.27962780621536 1.1202670367723258 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75858DB8-4465-9D67-6547-66AC47F890F7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 10.33733495616409;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "1923CF4C-4811-C14F-5F11-E4A2E22BA347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 24 102.15612528021464 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AC477CAD-4120-C2E3-CE80-7D900BFF1E75";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 28.945118119616708;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8723419B-4AC5-F875-88E3-48B503E7BEA8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 106.29266160268543 15.979596528870141 -7.8846385454200281 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "950758FD-468D-2068-74AC-BCAF91A18C89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 13.025770947955404;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode dagContainer -n "spine_cmpt";
	rename -uid "E476357D-4E36-56BD-A5EE-15AFDA04796D";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 5 ".pni";
	setAttr ".ctor" -type "string" "rporter";
	setAttr ".cdat" -type "string" "2018/07/04 13:02:02";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -2.6645352591003757e-015 11.375 -4.5591793511136389 ;
	setAttr ".sp" -type "double3" -2.6645352591003757e-015 11.375 -4.5591793511136389 ;
	setAttr ".aal" -type "attributeAlias" {"spine_chest_ik_ctrl","publishedNodeInfo[0]"
		,"spine_chest_fk_ctrl","publishedNodeInfo[1]","spine_hips_ik_ctrl","publishedNodeInfo[2]"
		,"spine_pelvis_ctrl","publishedNodeInfo[3]","spine_body_ctrl","publishedNodeInfo[4]"
		} ;
createNode transform -n "about" -p "spine_cmpt";
	rename -uid "79B53DE9-45CC-D603-0090-0D85BDBC22C7";
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
	setAttr ".component_part" -type "string" "spine";
	setAttr ".component_type" -type "string" "mechaCatSpine";
	setAttr ".component_version" -type "string" "1.0.0";
createNode transform -n "input" -p "spine_cmpt";
	rename -uid "A9DBC259-4DDF-2DED-849D-9795924ADE6F";
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
	rename -uid "7611F847-4488-0A8A-0B6D-1BA3B450F106";
createNode transform -n "body_srtOffset" -p "root_srt";
	rename -uid "B4305171-4541-384A-A57B-2881431577CD";
	setAttr ".t" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
createNode transform -n "chest_srtOffset" -p "body_srtOffset";
	rename -uid "DD4DD1A3-44DB-42E1-3784-DCBCF8ACEEF0";
createNode transform -n "hips_srtOffset" -p "body_srtOffset";
	rename -uid "04121B55-4C07-5D3A-E40A-A2B9173B7225";
	setAttr ".t" -type "double3" 0 0 -8.1902 ;
createNode transform -n "defaultPose_srtOffset" -p "hips_srtOffset";
	rename -uid "5059C341-4124-B3E6-EBBD-1BA3BBF94CDE";
	setAttr ".t" -type "double3" 0 0.29463005186380897 0.2492465648225668 ;
createNode transform -n "spine_settings" -p "input";
	rename -uid "47DBFFC9-4C05-AD8E-4702-3ABBBAC5397A";
	addAttr -ci true -sn "restLength" -ln "restLength" -at "double";
	addAttr -ci true -sn "restPose" -ln "restPose" -min 0 -max 1 -at "double";
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
	setAttr -k on ".restLength" 8.1902;
	setAttr -k on ".restPose";
createNode transform -n "control" -p "spine_cmpt";
	rename -uid "F3BE644C-4AF2-3C84-DCD1-938A2EAD64C1";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "spine_chest_ctrl_srtOffset" -p "control";
	rename -uid "0B42D6B0-4699-8355-2D97-16B5E88000D2";
createNode transform -n "spine_chest_ik_ctrl" -p "spine_chest_ctrl_srtOffset";
	rename -uid "503FCAB8-4EB3-B537-5A09-E4B5182A96B9";
	addAttr -ci true -k true -sn "twist" -ln "twist" -at "doubleAngle";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".twist";
createNode nurbsCurve -n "spine_nurbsCircleShape1" -p "spine_chest_ik_ctrl";
	rename -uid "EB28F3E9-4D10-62C1-2709-1BA7A6308FCB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".tw" yes;
	setAttr -s 37 ".cp[4:36]" -type "double3" -1 1.0000000000000004 1 -1 
		1.0000000000000004 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1 -1 -1 -1 -0.99999999999999956 
		-1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 1 1 -1 1 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 1 0.99999999999999956 -1 1 1.0000000000000004 -1 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode transform -n "spine_chest_fk_ctrl_srtOffset" -p "control";
	rename -uid "621D7545-4C14-BEF9-4A48-95A217344301";
createNode transform -n "spine_chest_fk_ctrl" -p "spine_chest_fk_ctrl_srtOffset";
	rename -uid "A44D52B6-4FE3-A4A5-CD8B-64A2592BBD34";
createNode nurbsCurve -n "spine_nurbsCircleShape2" -p "spine_chest_fk_ctrl";
	rename -uid "51CC8229-4753-6F08-12A0-67BB2AEB5ED1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
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
		1.3551523844546272e-015 4 0
		-0.69459271066771999 3.9392310120488321 0
		-1.3680805733026733 3.7587704831436333 0
		-1.9999999999999982 3.4641016151377544 0
		-2.5711504387461552 3.0641777724759121 0
		-3.0641777724759107 2.571150438746157 0
		-3.4641016151377526 2 0
		-3.7587704831436319 1.3680805733026753 0
		-2.9392310120488299 0.69459271066772199 -1
		-2.9999999999999973 8.0004087214204876e-016 -1
		-2.9392310120488299 -0.69459271066772033 -1
		-3.758770483143631 -1.3680805733026735 0
		-3.4641016151377517 -1.9999999999999982 0
		-3.0641777724759098 -2.5711504387461552 0
		-2.5711504387461552 -3.0641777724759098 0
		-1.9999999999999984 -3.4641016151377517 0
		-1.3680805733026737 -3.7587704831436306 0
		-0.69459271066772077 -3.939231012048829 0
		8.8137547558076469e-017 -3.9999999999999964 0
		0.69459271066772077 -3.9392310120488285 0
		1.3680805733026737 -3.7587704831436297 0
		1.9999999999999982 -3.4641016151377508 0
		2.5711504387461552 -3.0641777724759089 0
		3.0641777724759089 -2.5711504387461543 0
		3.4641016151377508 -1.999999999999998 0
		3.7587704831436293 -1.3680805733026737 0
		2.9392310120488281 -0.6945927106677211 1
		2.9999999999999956 -8.0004087214204857e-016 1
		2.9392310120488272 0.69459271066771955 1
		3.7587704831436284 1.368080573302672 0
		3.4641016151377499 1.9999999999999958 0
		3.0641777724759081 2.5711504387461521 0
		2.5711504387461543 3.0641777724759063 0
		1.9999999999999982 3.4641016151377477 0
		1.3680805733026742 3.7587704831436262 0
		0.69459271066772199 3.9392310120488245 0
		2.0212861992297208e-015 3.999999999999992 0
		;
	setAttr ".hio" yes;
createNode transform -n "spine_hips_ik_ctrl_srtOffset" -p "control";
	rename -uid "DEAE332E-452C-890A-40AF-859C6559517F";
createNode transform -n "spine_hips_ik_ctrl" -p "spine_hips_ik_ctrl_srtOffset";
	rename -uid "8E8F85AB-4D5B-A205-3C26-C78CC8733261";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spine_hips_ik_ctrlShape" -p "spine_hips_ik_ctrl";
	rename -uid "E7A93047-485A-8E8E-FF82-408E5397C69A";
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
		-1.1791867796567687e-015 2.5000000000000018 0
		-0.43412044416732704 2.4620193825305217 0
		-0.85505035831417286 2.3492315519647726 0
		-1.2500000000000009 2.1650635094610982 0
		-2.1069690242163492 2.415111107797447 0.5
		-2.4151111077974461 2.1069690242163501 0.5
		-2.1650635094610977 1.2500000000000018 0
		-2.3492315519647717 0.85505035831417386 0
		-2.4620193825305208 0.43412044416732803 0
		-2.5000000000000004 2.2763823844890308e-015 0
		-2.4620193825305203 -0.43412044416732343 0
		-2.3492315519647713 -0.8550503583141692 0
		-2.1650635094610968 -1.2499999999999971 0
		-2.4151111077974456 -2.1069690242163452 -0.5
		-2.1069690242163488 -2.4151111077974416 -0.5
		-1.2500000000000011 -2.1650635094610928 0
		-0.85505035831417309 -2.3492315519647673 0
		-0.43412044416732753 -2.4620193825305163 0
		-1.9710710527171128e-015 -2.499999999999996 0
		0.43412044416732343 -2.4620193825305159 0
		0.85505035831416909 -2.3492315519647669 0
		1.2499999999999969 -2.1650635094610924 0
		2.1069690242163448 -2.4151111077974412 0.5
		2.4151111077974412 -2.1069690242163448 0.5
		2.1650635094610924 -1.2499999999999969 0
		2.3492315519647664 -0.85505035831416931 0
		2.4620193825305154 -0.43412044416732393 0
		2.4999999999999951 1.2763312943114701e-015 0
		2.462019382530515 0.43412044416732648 0
		2.349231551964766 0.85505035831417175 0
		2.1650635094610919 1.2499999999999991 0
		2.4151111077974408 2.1069690242163466 -0.5
		2.1069690242163444 2.4151111077974434 -0.5
		1.2499999999999969 2.1650635094610942 0
		0.85505035831416931 2.3492315519647682 0
		0.4341204441673242 2.4620193825305172 0
		-7.6285314542233531e-016 2.4999999999999969 0
		;
createNode transform -n "spine_pelvis_ctrl_srtOffset" -p "control";
	rename -uid "19DDB108-4806-0F83-44DA-0CA759E23DDA";
createNode transform -n "spine_pelvis_ctrl" -p "spine_pelvis_ctrl_srtOffset";
	rename -uid "194D50BD-41F4-5D59-8DAB-21A85C944550";
createNode nurbsCurve -n "spine_nurbsCircleShape2" -p "spine_pelvis_ctrl";
	rename -uid "854A9A91-4B49-CAA8-BB04-7C8C56489B9B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".tw" yes;
	setAttr -s 37 ".cp[8:36]" -type "double3" 0.5 0 -0.5 0.5 0 -0.5 0.5 
		0 -0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 -0.5 0 0.5 -0.5 0 0.5 -0.5 0 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr ".hio" yes;
createNode transform -n "spine_body_ctrl_srtOffset" -p "control";
	rename -uid "16FD5F76-49C7-7C1B-81E9-1CA1CCEC208F";
createNode transform -n "spine_body_ctrl" -p "spine_body_ctrl_srtOffset";
	rename -uid "19AB6C7B-45F2-63A0-28D7-0DA483C1B35C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "spine_body_ctrlShape" -p "spine_body_ctrl";
	rename -uid "62B19D20-44D8-6EE8-24CD-699878D99EE4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 13 14 15 16 17 20 21 22 23 24 34 35 36 37
		18
		-1.1920928833597242e-007 5.4346999923388175 6.9513541243743884
		1.5216866359515184 5.4346999923388175 5.8457842831728453
		1.1412678003311152 6.1846999923388175 4.1221946705245971
		0.85595082044601389 6.1846999923388175 2.8294895339870454
		2.971978127956389 6.1846999923388175 -3.682971675310136
		3.9626375436782824 5.4346999923388175 -4.5610869418716451
		3.5267120599746686 5.4346999923388175 -5.9027278911209118
		2.1160273313522322 5.4346999923388175 -5.9027279626464848
		1.5870204687118517 6.1846999923388175 -4.6892024408912665
		-1.5870201706886293 6.1846999923388175 -4.6892026018238067
		-2.1160268545150758 5.4346999923388175 -5.9027281772232048
		-3.526711583137514 5.4346999923388175 -5.9027282487487787
		-3.9626371383666998 5.4346999923388175 -4.5610874067878715
		-2.9719778835773476 6.1846999923388175 -3.6829720239973063
		-0.85595100522041345 6.1846999923388175 2.8294893998765938
		-1.1412679672241213 6.1846999923388175 4.1221944917106619
		-1.5216867790029047 5.4346999923388175 5.8457840447548612
		-1.1920928833597242e-007 5.4346999923388175 6.9513541243743884
		;
createNode transform -n "internal" -p "spine_cmpt";
	rename -uid "1AEC7F61-4EEB-1FC7-A098-F5BB20D9502C";
	setAttr ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "spine_body_srt" -p "internal";
	rename -uid "69E95B31-47EF-48C1-AE6B-5FA85EB65277";
createNode transform -n "spine_ik_start_srt" -p "spine_body_srt";
	rename -uid "2A23E5C6-43CA-DC64-9B27-C89F01113D68";
createNode joint -n "spine_ik_start_jnt" -p "spine_ik_start_srt";
	rename -uid "EFFC3573-41AF-4D29-207E-B0A5C33D1AE4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 16.565300007661182 -3.6897564133008323 1;
createNode transform -n "spine_ik_end_srt" -p "spine_body_srt";
	rename -uid "073F521C-484A-AA54-6733-75B9DCBAD944";
createNode ikHandle -n "spine_offset_ikHandle" -p "spine_ik_end_srt";
	rename -uid "1C01FF2F-4A70-748D-CE0F-40A4C7DCC05A";
	setAttr ".t" -type "double3" 0 0 -1.4801025471911089e-007 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "spine_offset_ikHandle_poleVectorConstraint1" 
		-p "spine_offset_ikHandle";
	rename -uid "8BB256A2-46AC-83DF-A5CD-DDB09C2BEC38";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine_poleVectorW0" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" 0 0.10001716613769673 -4.0974364280700684 ;
createNode joint -n "spine_ik_end_jnt" -p "spine_ik_end_srt";
	rename -uid "90A32F14-45A4-1558-D484-92A3927786F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 16.565299987792969 -11.879956245422363 1;
createNode joint -n "spine_ik_01_offset_jnt" -p "spine_body_srt";
	rename -uid "321430AF-4F62-8F63-82AB-59A183533F19";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" 0.00091008225989011474 8.9611373642274085e-015 -0.00062237229410604946 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 20 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999995302302 9.6929848717681692e-006 0
		 0 -9.6929848717681692e-006 0.99999999995302302 0 0 16.565300007661182 -3.6897564133008323 1;
	setAttr ".radi" 0.1;
createNode joint -n "spine_ik_02_offset_jnt" -p "spine_ik_01_offset_jnt";
	rename -uid "A3F7193F-4A7D-C64B-C033-D6A191253FD3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" -0.00077612902371730684 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -10 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999999426159 -3.3877195391421326e-006 0
		 0 3.3877195391421326e-006 0.99999999999426159 0 0 16.565319393630926 -5.6897564132068785 1;
	setAttr ".radi" 0.1;
createNode joint -n "spine_ik_03_offset_jnt" -p "spine_ik_02_offset_jnt";
	rename -uid "B0604EA3-4CE7-6052-33DD-50B79C712817";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" 0.00075246744632785645 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -10 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999987554233 1.5777046403029041e-005 0
		 0 -1.5777046403029041e-005 0.99999999987554233 0 0 16.565313295735756 -7.4897564131965497 1;
	setAttr ".radi" 0.1;
createNode joint -n "spine_ik_04_offset_jnt" -p "spine_ik_03_offset_jnt";
	rename -uid "2C6838F5-44DF-B17B-E628-A5ABB21A0A4E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" -0.0025780029819120402 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -10 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999971867559 -2.3720215215213614e-005 0
		 0 2.3720215215213614e-005 0.99999999971867559 0 0 16.56533885455093 -9.109756412994928 1;
	setAttr ".radi" 0.1;
createNode joint -n "spine_ik_05_offset_jnt" -p "spine_ik_04_offset_jnt";
	rename -uid "DCD5BF47-42AE-330F-089E-91A53D474ABE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" 0.00090591845119897426 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -10 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999999467459 -3.2635364021377232e-006 0
		 0 3.2635364021377232e-006 0.99999999999467459 0 0 16.565304270477146 -10.567756412584757 1;
	setAttr ".radi" 0.1;
createNode joint -n "spine_ik_06_offset_jnt" -p "spine_ik_05_offset_jnt";
	rename -uid "C9E0EF31-4E01-CA1E-46F9-E7887AE2A14C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 20 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999999467459 -3.2635364021377232e-006 0
		 0 3.2635364021377232e-006 0.99999999999467459 0 0 16.56529998806468 -11.879956412577769 1;
	setAttr ".radi" 0.1;
createNode ikEffector -n "spine_effector" -p "spine_ik_05_offset_jnt";
	rename -uid "4AA0B483-4747-5EA0-02AD-7FA37247227C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "spine_spline_crv" -p "internal";
	rename -uid "89A6C145-4340-4052-1FCE-A68D9F0A9D19";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "spine_spline_crvShape" -p "spine_spline_crv";
	rename -uid "888C8A21-4A2D-3641-6281-9A806C15DB7B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
	setAttr ".dcv" yes;
createNode nurbsCurve -n "spine_spline_crvShapeOrig" -p "spine_spline_crv";
	rename -uid "5DDEC081-48FA-E239-FB55-E194FDF0D000";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 3 0 no 3
		8 0 0 0 1 2 3 3 3
		6
		0 16.565300007661182 -3.6897564133008323
		0 16.565317075547746 -5.6897564132280039
		0 16.565309078770724 -7.489756413210241
		0 16.565334701011903 -9.1097564130076183
		0 16.565301794088843 -10.567756412636266
		0 16.565299987753825 -11.879956412635023
		;
	setAttr ".dcv" yes;
createNode aimConstraint -n "spine_01_aimConstraint" -p "internal";
	rename -uid "D034E72A-4CF5-B8B9-6AF1-6691A429D4C2";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr -k on ".ax";
	setAttr -k on ".ay";
	setAttr -k on ".az";
	setAttr -k on ".ux";
	setAttr -k on ".uy";
	setAttr -k on ".uz";
	setAttr -k on ".wux";
	setAttr -k on ".wuy";
	setAttr -k on ".wuz";
	setAttr -k on ".wut" 2;
createNode aimConstraint -n "spine_02_aimConstraint" -p "internal";
	rename -uid "07491058-4AA7-4F83-50AA-B1BA436C637A";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr -k on ".ax";
	setAttr -k on ".ay";
	setAttr -k on ".az";
	setAttr -k on ".ux";
	setAttr -k on ".uy";
	setAttr -k on ".uz";
	setAttr -k on ".wux";
	setAttr -k on ".wuy";
	setAttr -k on ".wuz";
	setAttr -k on ".wut" 2;
createNode aimConstraint -n "spine_03_aimConstraint" -p "internal";
	rename -uid "CC7A8AA7-46E0-92B1-EEB0-089E324B94E1";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr -k on ".ax";
	setAttr -k on ".ay";
	setAttr -k on ".az";
	setAttr -k on ".ux";
	setAttr -k on ".uy";
	setAttr -k on ".uz";
	setAttr -k on ".wux";
	setAttr -k on ".wuy";
	setAttr -k on ".wuz";
	setAttr -k on ".wut" 2;
createNode aimConstraint -n "spine_04_aimConstraint" -p "internal";
	rename -uid "0E1C27EB-4FF2-CC76-A865-0DB60CF56095";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr -k on ".ax";
	setAttr -k on ".ay";
	setAttr -k on ".az";
	setAttr -k on ".ux";
	setAttr -k on ".uy";
	setAttr -k on ".uz";
	setAttr -k on ".wux";
	setAttr -k on ".wuy";
	setAttr -k on ".wuz";
	setAttr -k on ".wut" 2;
createNode aimConstraint -n "spine_05_aimConstraint" -p "internal";
	rename -uid "743EF574-473C-7E31-7532-B58307F4E66C";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr -k on ".ax";
	setAttr -k on ".ay";
	setAttr -k on ".az";
	setAttr -k on ".ux";
	setAttr -k on ".uy";
	setAttr -k on ".uz";
	setAttr -k on ".wux";
	setAttr -k on ".wuy";
	setAttr -k on ".wuz";
	setAttr -k on ".wut" 2;
createNode aimConstraint -n "spine_ik_spine_rotatePlane_aimConstraint" -p "internal";
	rename -uid "ADE918E6-4085-2343-DF4A-C28C135987F0";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".wut" 2;
createNode transform -n "spine_pv_srtOffset" -p "internal";
	rename -uid "E4DF2C86-4105-1909-919E-F689A63CE2EC";
createNode transform -n "spine_pv_srt" -p "spine_pv_srtOffset";
	rename -uid "4B75ECD3-480F-F95E-1928-E4AFC06E1CEF";
	setAttr -l on -k off ".v" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "output" -p "spine_cmpt";
	rename -uid "CFE566C5-40EB-72BA-A5D7-FA8CEEA37A95";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "chest_srt" -p "output";
	rename -uid "BCDD28D9-4B34-1BE5-FA8C-F6930B0786E2";
createNode transform -n "spine_01_srt" -p "output";
	rename -uid "22635BA3-48B4-736C-39F1-54A48DD43350";
createNode transform -n "spine_02_srt" -p "output";
	rename -uid "BC83FBCF-43DD-0847-7BCC-C3AF891C9654";
createNode transform -n "spine_03_srt" -p "output";
	rename -uid "5832A7CF-4040-B6D4-9226-17BAA5BB9E31";
createNode transform -n "spine_04_srt" -p "output";
	rename -uid "FDC4676D-4AA5-3C5F-1068-C58150A5C6FC";
createNode transform -n "spine_05_srt" -p "output";
	rename -uid "7A0BF12C-415F-C8E2-8FC6-F9AE6E3A597D";
createNode transform -n "hips_srt" -p "output";
	rename -uid "26BCA856-4717-A95A-BAAF-3886EDA0A449";
createNode transform -n "spine_parameters" -p "output";
	rename -uid "DD11733F-46BD-7A5F-B833-6B9808834FD0";
	addAttr -ci true -k true -sn "stretch" -ln "stretch" -dv 1 -at "double";
	addAttr -ci true -k true -sn "compression" -ln "compression" -dv 1 -at "double";
	addAttr -ci true -k true -sn "offAxis" -ln "offAxis" -at "double";
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
	setAttr -k on ".stretch";
	setAttr -k on ".compression";
	setAttr -k on ".offAxis";
createNode transform -n "deform" -p "spine_cmpt";
	rename -uid "1EC2C062-4630-2259-A618-55BE814F526E";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "chest_srt" -p "deform";
	rename -uid "3CBC366D-4EE3-288D-6A04-6D89E66CB68C";
createNode transform -n "hips_srt" -p "deform";
	rename -uid "15D1B0FF-492A-85C4-8DA1-C7B973C6EB57";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "638D5E46-4C48-F3F3-6F18-5AB19384FD62";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "5B1A41EA-43FC-3E32-7BE7-D8BE4580D7C9";
createNode displayLayer -n "defaultLayer";
	rename -uid "922BB33E-4724-CD36-A43D-95B0AB693DE9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "04FE6C2F-472C-07CC-CF37-F597016A3018";
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
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1204\n                -height 841\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1204\n            -height 841\n"
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
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 1\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 1\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 1\n                -showTransforms 1\n                -useAssets 0\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 23 100 -ps 2 77 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1204\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1204\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DA70BDE1-4704-CF62-6238-A69A79427D54";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 121 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "B38D5112-4C46-2FC9-6895-56A6F3B18F5B";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "A5F227DF-4D81-941F-7C0C-39904186FE95";
	setAttr ".g" yes;
createNode makeNurbCircle -n "spine_makeNurbCircle1";
	rename -uid "92357E02-4A3C-3225-A9FC-4497A32F55FB";
	setAttr ".r" 5;
	setAttr ".d" 1;
	setAttr ".s" 36;
createNode makeNurbCircle -n "spine_makeNurbCircle2";
	rename -uid "3E3537F6-460D-9CF5-4590-3DAB7B081374";
	setAttr ".r" 2;
	setAttr ".d" 1;
	setAttr ".s" 36;
createNode multMatrix -n "spine_body_ctrl_parentMatrix";
	rename -uid "27DD51D3-46CA-9483-1653-00B4D16D6B70";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "spine_body_ctrl_srtOffset_inWorld";
	rename -uid "AB31FD10-4682-76EC-485B-67BE3765E8E8";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode multMatrix -n "spine_chest_ctrl_parentMatrix";
	rename -uid "E5377C9C-4DD1-33B3-8E0F-9E87F75CF76A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "spine_chest_ctrl_srtOffset_inWorld";
	rename -uid "41F53F47-48F2-C8E2-00CA-D3A3428E5B5E";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode pairBlend -n "spine_hips_ctrl_defaultPose_blend";
	rename -uid "2B23788A-416C-63C7-C216-BB8FDE1C548A";
createNode composeMatrix -n "spine_hips_ctrl_parent_defaultPose_matrix";
	rename -uid "F9F572D0-4478-9562-528A-ADA63B51223D";
createNode multMatrix -n "spine_hips_ctrl_parentMatrix";
	rename -uid "054C0CA0-4885-32C0-B2DF-82A7AD3C0FD7";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "spine_hips_ctrl_srtOffset_inWorld";
	rename -uid "84C6E4C2-4B99-5A7E-3958-938F4186EE88";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -11.879956413300834 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "spine_pelvis_ctrl_srtOffset_inWorld";
	rename -uid "BD48D509-4B7C-6A3B-087C-A682779F56E8";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -11.879956413300834 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "spine_body_srt_inWorld";
	rename -uid "B00A0AE3-4811-C6CE-63E0-2D844990BD2F";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode ikRPsolver -n "spine_ikRPsolver";
	rename -uid "9E06A81A-4825-7DF4-6FD3-8AB03E771B40";
createNode multiplyDivide -n "spine_ik_stretchFactor";
	rename -uid "E9696833-43D0-D3B9-478A-F4B8B7734380";
	setAttr ".op" 2;
createNode condition -n "spine_ik_stretch";
	rename -uid "95D64F96-49EB-7945-0723-02886BF66EBC";
	setAttr ".op" 2;
	setAttr ".st" 1;
	setAttr ".cf" -type "float3" 1 0 0 ;
createNode multDoubleLinear -n "spine_bone_01_length";
	rename -uid "878E9CAE-4199-FFC9-C499-5FB07895D377";
	setAttr ".i1" -2;
createNode multDoubleLinear -n "spine_bone_02_length";
	rename -uid "3E11AAE7-46AF-8D00-FED7-43B5AD7415B4";
	setAttr ".i1" -1.8;
createNode multDoubleLinear -n "spine_bone_03_length";
	rename -uid "ED437279-457A-BB43-5947-C895FF8709E8";
	setAttr ".i1" -1.62;
createNode multDoubleLinear -n "spine_bone_04_length";
	rename -uid "3409E844-4D59-56FF-E940-DBBB7AE07E90";
	setAttr ".i1" -1.4580000000000002;
createNode multDoubleLinear -n "spine_bone_05_length";
	rename -uid "8F3D2ED0-4A20-4B31-5555-C8A250629B1C";
	setAttr ".i1" -1.3122;
createNode multMatrix -n "spine_ik_01_worldMatrix";
	rename -uid "72EE61B7-4D95-3A58-4B3D-E9B54B2C3AF8";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_ik_02_worldMatrix";
	rename -uid "1026755F-4B2E-B881-E943-1A9AD604ACDA";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_ik_03_worldMatrix";
	rename -uid "778A63BD-45E5-6446-CAF4-C7A979D9E4B9";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_ik_04_worldMatrix";
	rename -uid "335D3A4D-447F-80B6-7D41-BB9924793C86";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_ik_05_worldMatrix";
	rename -uid "A8032487-4265-6F5D-3FC1-9D91C6ADC5B6";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_iK_start_matrix_localTo_body";
	rename -uid "1BA47DE7-4499-DBED-7DA0-558171132B77";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_hips_ik_ctrl_matrix_localTo_body";
	rename -uid "C0F871B2-4FD0-2B1F-2A59-C89C76CAB669";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "spine_chest_ik_ctrl_srt_localTo_body";
	rename -uid "99015E36-423B-335E-713C-A9BD26C77606";
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "spine_hips_ik_ctrl_srt_localTo_body";
	rename -uid "4CBDFE53-4BF7-3E76-EC7D-E09B64DCCA73";
	setAttr ".ot" -type "double3" 0 0 -8.1902 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode eulerToQuat -n "spine_ik_start_rotation_asQuat";
	rename -uid "876C0D70-4324-FBC4-2E08-5385B8E45A13";
createNode eulerToQuat -n "spine_ik_end_rotation_asQuat";
	rename -uid "1030EDB5-47B3-B198-72E4-A182DC13A324";
createNode quatToEuler -n "spine_ik_start_twist";
	rename -uid "F7C226DC-450E-6E93-69AA-1982B251B2D8";
createNode quatToEuler -n "spine_ik_end_twist";
	rename -uid "1A2025D1-4A12-20CF-023B-B792586FACA5";
createNode animBlendNodeAdditiveRotation -n "spine_ik_01_twist";
	rename -uid "2F518A7D-49B8-6DD3-8A9C-CF8816CC9BE2";
	setAttr ".wb" 0;
	setAttr ".ri" 1;
createNode animBlendNodeAdditiveRotation -n "spine_ik_02_twist";
	rename -uid "68753661-4D36-46C9-E3FB-4F81B86DE702";
	setAttr ".wa" 0.8;
	setAttr ".wb" 0.2;
	setAttr ".ri" 1;
createNode animBlendNodeAdditiveRotation -n "spine_ik_03_twist";
	rename -uid "29538ED3-4853-E67A-5F28-AA8146981775";
	setAttr ".wa" 0.6;
	setAttr ".wb" 0.4;
	setAttr ".ri" 1;
createNode animBlendNodeAdditiveRotation -n "spine_ik_04_twist";
	rename -uid "6D0F1A12-4086-EF1E-5541-46BFFC16327F";
	setAttr ".wa" 0.4;
	setAttr ".wb" 0.6;
	setAttr ".ri" 1;
createNode animBlendNodeAdditiveRotation -n "spine_ik_05_twist";
	rename -uid "4B8185EA-4636-477D-47A9-99B9A0489D00";
	setAttr ".wa" 0.2;
	setAttr ".wb" 0.8;
	setAttr ".ri" 1;
createNode decomposeMatrix -n "spine_01_srt_inWorld";
	rename -uid "148A35EA-4525-BE55-5873-B997072B5D4D";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".or" -type "double3" 0.00091008185936185542 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_02_srt_inWorld";
	rename -uid "AC2D92FE-42E7-3ED6-155A-85804B00B851";
	setAttr ".ot" -type "double3" 3.4507668944527836e-010 16.565331775525312 -5.6897564133008327 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_03_srt_inWorld";
	rename -uid "880807E2-4C5F-3FD2-8104-CFAC58E8B624";
	setAttr ".ot" -type "double3" 3.907887347054384e-010 16.565335983790039 -7.4897563656171169 ;
	setAttr ".or" -type "double3" 0.00088642059458563655 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_04_srt_inWorld";
	rename -uid "78E4AC48-44B8-ACC0-A7BB-B1B58A4C9F85";
	setAttr ".ot" -type "double3" 6.630337390234331e-010 16.56536104674645 -9.109756489594778 ;
	setAttr ".or" -type "double3" -0.0016915826539034028 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_05_srt_inWorld";
	rename -uid "02B459B5-4A0D-B7A2-7204-EDA48DBFAEE9";
	setAttr ".ot" -type "double3" 1.9545402796250499e-010 16.56531800121714 -10.567756195863089 ;
	setAttr ".or" -type "double3" -0.00078566383009704506 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode skinCluster -n "spine_crv_skinCluster";
	rename -uid "205FFB26-4529-4EC7-E176-B29B9243F2A1";
	setAttr -s 6 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr -s 2 ".wl[1].w[0:1]"  0.8 0.19999999999999996;
	setAttr -s 2 ".wl[2].w[0:1]"  0.6 0.4;
	setAttr -s 2 ".wl[3].w[0:1]"  0.4 0.6;
	setAttr -s 2 ".wl[4].w[0:1]"  0.19999999999999996 0.8;
	setAttr ".wl[5].w[1]"  1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -16.565300007661182 3.6897564133008323 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -16.565299987792969 11.879956245422363 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode tweak -n "spine_tweak1";
	rename -uid "43B228B9-4674-A467-FFF8-F6AE8FC0749F";
createNode objectSet -n "spine_skinCluster1Set";
	rename -uid "39154A4E-4088-CBBB-FBD9-60B65F2955F9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "spine_skinCluster1GroupId";
	rename -uid "2A4FDB2F-4DAB-BC01-8C3A-3B844EBD6197";
	setAttr ".ihi" 0;
createNode groupParts -n "spine_skinCluster1GroupParts";
	rename -uid "8F638B03-4A5F-EA19-E4C7-3EB3F35E7CA6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "spine_tweakSet1";
	rename -uid "6FE73E12-42E3-2CE0-4EC0-3F98F4558FFF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "spine_groupId2";
	rename -uid "F35E4FFA-4240-7ADA-EEDA-67869BD64139";
	setAttr ".ihi" 0;
createNode groupParts -n "spine_groupParts2";
	rename -uid "83AA7741-4A16-E0C6-3C32-1DBAF112CBF2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode vectorProduct -n "spine_curve_midPoint_localTo_body";
	rename -uid "07AF6199-4533-5BF3-FEC4-37BD204495E4";
	setAttr ".op" 4;
createNode multMatrix -n "spine_poleVector_worldMatrix";
	rename -uid "775FABB0-4D44-11D9-91B4-278579A232A9";
	setAttr -s 2 ".i";
createNode network -n "spine_ikEnd_pass";
	rename -uid "5955A076-46F5-9B35-B85C-F18B7ACDCBFC";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode network -n "spine_ik_start_pass";
	rename -uid "95B4BE6E-42E4-6A0D-6C87-04A95FDBB094";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode decomposeMatrix -n "spine_poleVector_srt_inWorld";
	rename -uid "F8F638E0-434B-4381-1B90-7194B2E32FB7";
	setAttr ".ot" -type "double3" 0 17.565300007661182 -7.7871928413709011 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode pointOnCurveInfo -n "spine_curve_midPoint";
	rename -uid "28628E2B-436F-06C1-C8E3-49BE7176AA90";
	setAttr ".pr" 0.411;
	setAttr ".top" yes;
createNode vectorProduct -n "spine_ik_01_position_localTo_body";
	rename -uid "192025DE-4ADC-AB38-1E80-639604631111";
	setAttr -k on ".op" 4;
createNode vectorProduct -n "spine_ik_02_position_localTo_body";
	rename -uid "35C95113-49D9-62DC-CF39-C58E9DED62D3";
	setAttr -k on ".op" 4;
createNode vectorProduct -n "spine_ik_03_position_localTo_body";
	rename -uid "00E2ADFD-4A17-A6DB-0807-88817570FD1D";
	setAttr -k on ".op" 4;
createNode vectorProduct -n "spine_ik_04_position_localTo_body";
	rename -uid "247F1EA9-485B-C0D8-57C2-D4B77AC4EA62";
	setAttr -k on ".op" 4;
createNode vectorProduct -n "spine_ik_05_position_localTo_body";
	rename -uid "6D19ED49-417B-3369-AC1F-318EE38620CA";
	setAttr -k on ".op" 4;
createNode vectorProduct -n "spine_ik_06_position_localTo_body";
	rename -uid "BF240C9B-4689-CBB1-DC39-E6BBDBE74F33";
	setAttr -k on ".op" 4;
createNode multMatrix -n "spine_ik_01_matrix_localTo_body";
	rename -uid "4E623863-49D1-F782-80C2-EEA637464FAA";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_ik_02_matrix_localTo_body";
	rename -uid "81FAF620-47B7-791B-21DC-42876FFCBCAD";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_ik_03_matrix_localTo_body";
	rename -uid "9527154E-4289-47D5-80B5-DC80E6D23D85";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_ik_04_matrix_localTo_body";
	rename -uid "0B09D76A-4B88-17F7-7879-0D88AAC0B9FA";
	setAttr -s 2 ".i";
createNode multMatrix -n "spine_ik_05_matrix_localTo_body";
	rename -uid "7D9247C8-4E24-2838-5F68-E6B373BA0EC7";
	setAttr -s 2 ".i";
createNode composeMatrix -n "spine_01_matrix_localTo_body";
	rename -uid "23D1A540-42E8-FA7A-7739-5E89540FCCC7";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 0.99999999987385046 1.588392490786844e-005 0
		 0 -1.588392490786844e-005 0.99999999987385046 0 0 0 0 1;
createNode composeMatrix -n "spine_02_matrix_localTo_body";
	rename -uid "504A6574-4358-5D5D-D22F-EF8F20F4B8B3";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.4507668944527836e-010 3.1767864129506052e-005 -2 1;
createNode composeMatrix -n "spine_03_matrix_localTo_body";
	rename -uid "0BA03DEE-443D-EA1C-0219-558B66C71467";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 0.99999999988032473 1.5470957932388014e-005 0
		 0 -1.5470957932388014e-005 0.99999999988032473 0 3.907887347054384e-010 3.5976128856418654e-005 -3.7999999523162842 1;
createNode composeMatrix -n "spine_04_matrix_localTo_body";
	rename -uid "8AA63534-42FA-1552-C517-228A04777796";
	setAttr ".omat" -type "matrix" 1 0 -0 0 -0 0.99999999956417596 -2.9523686875949044e-005 0
		 0 2.9523686875949044e-005 0.99999999956417596 0 6.630337390234331e-010 6.1039085267111659e-005 -5.4200000762939453 1;
createNode composeMatrix -n "spine_05_matrix_localTo_body";
	rename -uid "994D55F2-4072-9702-A2F7-199FB4812B4B";
	setAttr ".omat" -type "matrix" 1 0 -0 0 -0 0.99999999990598476 -1.371242064859303e-005 0
		 0 1.371242064859303e-005 0.99999999990598476 0 1.9545402796250499e-010 1.7993555957218632e-005 -6.8779997825622559 1;
createNode multMatrix -n "spine_ik_06_matrix_localTo_body";
	rename -uid "DDC39511-494D-6B96-F082-7A9A07002A5D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "spine_hips_srt_inWorld";
	rename -uid "B0365716-46FF-BF83-12C0-A991628E45A5";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -11.879956413300834 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_chest_srt_inWorld";
	rename -uid "C3E25486-40E2-35B4-4F8E-C7B312F39C27";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_chest_fk_ctrl_srtOffset_inWorld";
	rename -uid "341C9CBA-45F0-5FB9-4C1D-A4BF6DF77145";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode curveInfo -n "spine_spline_curveInfo";
	rename -uid "3DA377F1-4F83-FF2F-D5BC-9EBF84BF6943";
createNode composeMatrix -n "spine_ik_spine_rotatePlane_matrix_localTo_body";
	rename -uid "8ECAABA4-4FDF-88F4-DD67-C797B5A52EE7";
createNode composeMatrix -n "spine_poleVector_offset_matrix";
	rename -uid "14B80B16-45C1-A5BB-FD40-E1B7F42A07E0";
	setAttr ".it" -type "double3" 0 1 -4.0974364280700684 ;
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1 -4.0974364280700684 1;
createNode multMatrix -n "spine_poleVector_matrix_localTo_body";
	rename -uid "413B3C06-453F-530F-BB25-D1B553297E22";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "spine_poleVector_srt_localTo_body";
	rename -uid "30A8D16B-4119-ACFC-575B-2E83267F6723";
	setAttr ".ot" -type "double3" 0 1 -4.0974364280700684 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode composeMatrix -n "spine_poleVector_position_matrix_localTo_body";
	rename -uid "2D4DEE86-4DFB-07C4-44B6-9E85E75EE357";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1 -4.0974364280700684 1;
createNode distanceBetween -n "spine_ik_currentLength";
	rename -uid "D7F3BA48-4CC9-716D-91ED-A0A6507C6AE9";
createNode multiplyDivide -n "spine_ik_compression";
	rename -uid "6439E5F3-4778-18CF-308D-A99BDC3E6D0E";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 8.1901999 1 1 ;
createNode clamp -n "spine_ik_compression_clamped";
	rename -uid "872BC540-4EF3-7A6B-2A7F-8BB648779141";
	setAttr ".mx" -type "float3" 1 1 1 ;
createNode plusMinusAverage -n "spine_ik_startEndVector";
	rename -uid "B924F496-453F-527F-55DC-EFB17744C0B6";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode angleBetween -n "spine_ik_offAxisAngle";
	rename -uid "7CFADF39-4641-4FD1-60F2-08894AE2D804";
	setAttr ".v1" -type "double3" 0 0 -1 ;
createNode remapValue -n "spine_ik_offAxis";
	rename -uid "3AF3CFD1-4203-DCF2-C342-2EBDD18F1814";
	setAttr ".imx" 90;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "spine_unitConversion1";
	rename -uid "95ABC8E3-482F-1764-7D2C-1D8C5C25801B";
	setAttr ".cf" 57.295779513082323;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "4818C88D-46E6-C47C-2CC5-3183A5B80C31";
	setAttr ".ihi" 0;
	setAttr -s 158 ".hyp";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "269FA888-4B99-69AF-75A0-64B8E40FC543";
	setAttr -s 5 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "controls";
	setAttr ".tgi[0].vl" -type "double2" -2277.7013746937409 -1123.8094791533472 ;
	setAttr ".tgi[0].vh" -type "double2" 3528.8918011663836 448.80950597543642 ;
	setAttr -s 34 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 38.571430206298828;
	setAttr ".tgi[0].ni[0].y" -650;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -454.28570556640625;
	setAttr ".tgi[0].ni[1].y" -477.14285278320312;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -432.85714721679687;
	setAttr ".tgi[0].ni[2].y" -650;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 852.85711669921875;
	setAttr ".tgi[0].ni[3].y" -735.71429443359375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 38.571430206298828;
	setAttr ".tgi[0].ni[4].y" -264.28570556640625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 938.5714111328125;
	setAttr ".tgi[0].ni[5].y" -264.28570556640625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 595.71429443359375;
	setAttr ".tgi[0].ni[6].y" -135.71427917480469;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 295.71429443359375;
	setAttr ".tgi[0].ni[7].y" -950;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 595.71429443359375;
	setAttr ".tgi[0].ni[8].y" -735.71429443359375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 595.71429443359375;
	setAttr ".tgi[0].ni[9].y" -264.28570556640625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 57.142856597900391;
	setAttr ".tgi[0].ni[10].y" -375.71429443359375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 595.71429443359375;
	setAttr ".tgi[0].ni[11].y" -950;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 595.71429443359375;
	setAttr ".tgi[0].ni[12].y" 121.42857360839844;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 38.571430206298828;
	setAttr ".tgi[0].ni[13].y" 207.14285278320312;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 852.85711669921875;
	setAttr ".tgi[0].ni[14].y" -950;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 938.5714111328125;
	setAttr ".tgi[0].ni[15].y" -7.1428570747375488;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 595.71429443359375;
	setAttr ".tgi[0].ni[16].y" -7.1428570747375488;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -175.71427917480469;
	setAttr ".tgi[0].ni[17].y" -564.28570556640625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 38.571430206298828;
	setAttr ".tgi[0].ni[18].y" -7.1428570747375488;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 338.57144165039062;
	setAttr ".tgi[0].ni[19].y" 121.42857360839844;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 295.71429443359375;
	setAttr ".tgi[0].ni[20].y" -735.71429443359375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 295.71429443359375;
	setAttr ".tgi[0].ni[21].y" -864.28570556640625;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 38.571430206298828;
	setAttr ".tgi[0].ni[22].y" -135.71427917480469;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 38.571430206298828;
	setAttr ".tgi[0].ni[23].y" -864.28570556640625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 295.71429443359375;
	setAttr ".tgi[0].ni[24].y" -650;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -200;
	setAttr ".tgi[0].ni[25].y" -375.71429443359375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 38.571430206298828;
	setAttr ".tgi[0].ni[26].y" 121.42857360839844;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 338.57144165039062;
	setAttr ".tgi[0].ni[27].y" -264.28570556640625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -457.14285278320312;
	setAttr ".tgi[0].ni[28].y" -375.71429443359375;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 338.57144165039062;
	setAttr ".tgi[0].ni[29].y" -7.1428570747375488;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -432.85714721679687;
	setAttr ".tgi[0].ni[30].y" -864.28570556640625;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 938.5714111328125;
	setAttr ".tgi[0].ni[31].y" 121.42857360839844;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -175.71427917480469;
	setAttr ".tgi[0].ni[32].y" -950;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 938.5714111328125;
	setAttr ".tgi[0].ni[33].y" -135.71427917480469;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "offset_control";
	setAttr ".tgi[1].vl" -type "double2" -452.01463405320413 -916.66663024160732 ;
	setAttr ".tgi[1].vh" -type "double2" 5385.3477713534912 664.28568788937264 ;
	setAttr -s 13 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 2027.142822265625;
	setAttr ".tgi[1].ni[0].y" -331.42855834960937;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1727.142822265625;
	setAttr ".tgi[1].ni[1].y" -117.14286041259766;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 2027.142822265625;
	setAttr ".tgi[1].ni[2].y" -31.428571701049805;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 2027.142822265625;
	setAttr ".tgi[1].ni[3].y" 97.142860412597656;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 2370;
	setAttr ".tgi[1].ni[4].y" -331.42855834960937;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 1727.142822265625;
	setAttr ".tgi[1].ni[5].y" -331.42855834960937;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 1470;
	setAttr ".tgi[1].ni[6].y" -117.14286041259766;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 3227.142822265625;
	setAttr ".tgi[1].ni[7].y" 97.142860412597656;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 2970;
	setAttr ".tgi[1].ni[8].y" 97.142860412597656;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 1727.142822265625;
	setAttr ".tgi[1].ni[9].y" -31.428571701049805;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 1470;
	setAttr ".tgi[1].ni[10].y" -31.428571701049805;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 3484.28564453125;
	setAttr ".tgi[1].ni[11].y" 97.142860412597656;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 2027.142822265625;
	setAttr ".tgi[1].ni[12].y" -117.14286041259766;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "ik";
	setAttr ".tgi[2].vl" -type "double2" -1392.5823622461639 97.619043740015258 ;
	setAttr ".tgi[2].vh" -type "double2" 2528.2966028312248 1159.5237634484749 ;
	setAttr -s 46 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" 98.571426391601563;
	setAttr ".tgi[2].ni[0].y" 1192.857177734375;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" 1277.142822265625;
	setAttr ".tgi[2].ni[1].y" 160;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 934.28570556640625;
	setAttr ".tgi[2].ni[2].y" 1188.5714111328125;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" -1015.7142944335937;
	setAttr ".tgi[2].ni[3].y" 507.14285278320312;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 398.57144165039062;
	setAttr ".tgi[2].ni[4].y" 1192.857177734375;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" 1170;
	setAttr ".tgi[2].ni[5].y" 1278.5714111328125;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" -758.5714111328125;
	setAttr ".tgi[2].ni[6].y" 764.28570556640625;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" 98.571426391601563;
	setAttr ".tgi[2].ni[7].y" 1107.142822265625;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" 420;
	setAttr ".tgi[2].ni[8].y" 160;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" 420;
	setAttr ".tgi[2].ni[9].y" 502.85714721679687;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" 1812.857177734375;
	setAttr ".tgi[2].ni[10].y" 1107.142822265625;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" -1315.7142333984375;
	setAttr ".tgi[2].ni[11].y" 978.5714111328125;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" 934.28570556640625;
	setAttr ".tgi[2].ni[12].y" 417.14285278320312;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" -51.428569793701172;
	setAttr ".tgi[2].ni[13].y" 888.5714111328125;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" 955.71429443359375;
	setAttr ".tgi[2].ni[14].y" 764.28570556640625;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" -244.28572082519531;
	setAttr ".tgi[2].ni[15].y" 507.14285278320312;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" 591.4285888671875;
	setAttr ".tgi[2].ni[16].y" 845.71429443359375;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 1812.857177734375;
	setAttr ".tgi[2].ni[17].y" 1021.4285888671875;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" -1015.7142944335937;
	setAttr ".tgi[2].ni[18].y" 592.85711669921875;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" -1830;
	setAttr ".tgi[2].ni[19].y" 935.71429443359375;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" -1058.5714111328125;
	setAttr ".tgi[2].ni[20].y" 1107.142822265625;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" 420;
	setAttr ".tgi[2].ni[21].y" 245.71427917480469;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" 55.714286804199219;
	setAttr ".tgi[2].ni[22].y" 507.14285278320312;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[2].ni[23].x" 420;
	setAttr ".tgi[2].ni[23].y" 717.14288330078125;
	setAttr ".tgi[2].ni[23].nvs" 18304;
	setAttr ".tgi[2].ni[24].x" -1315.7142333984375;
	setAttr ".tgi[2].ni[24].y" 892.85711669921875;
	setAttr ".tgi[2].ni[24].nvs" 18304;
	setAttr ".tgi[2].ni[25].x" -522.85711669921875;
	setAttr ".tgi[2].ni[25].y" 845.71429443359375;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" -51.428569793701172;
	setAttr ".tgi[2].ni[26].y" 717.14288330078125;
	setAttr ".tgi[2].ni[26].nvs" 18304;
	setAttr ".tgi[2].ni[27].x" 934.28570556640625;
	setAttr ".tgi[2].ni[27].y" 502.85714721679687;
	setAttr ".tgi[2].ni[27].nvs" 18304;
	setAttr ".tgi[2].ni[28].x" 934.28570556640625;
	setAttr ".tgi[2].ni[28].y" 160;
	setAttr ".tgi[2].ni[28].nvs" 18304;
	setAttr ".tgi[2].ni[29].x" -1058.5714111328125;
	setAttr ".tgi[2].ni[29].y" 764.28570556640625;
	setAttr ".tgi[2].ni[29].nvs" 18304;
	setAttr ".tgi[2].ni[30].x" 420;
	setAttr ".tgi[2].ni[30].y" 331.42855834960937;
	setAttr ".tgi[2].ni[30].nvs" 18304;
	setAttr ".tgi[2].ni[31].x" -522.85711669921875;
	setAttr ".tgi[2].ni[31].y" 1102.857177734375;
	setAttr ".tgi[2].ni[31].nvs" 18304;
	setAttr ".tgi[2].ni[32].x" 934.28570556640625;
	setAttr ".tgi[2].ni[32].y" 331.42855834960937;
	setAttr ".tgi[2].ni[32].nvs" 18304;
	setAttr ".tgi[2].ni[33].x" 634.28570556640625;
	setAttr ".tgi[2].ni[33].y" 717.14288330078125;
	setAttr ".tgi[2].ni[33].nvs" 18304;
	setAttr ".tgi[2].ni[34].x" 934.28570556640625;
	setAttr ".tgi[2].ni[34].y" 888.5714111328125;
	setAttr ".tgi[2].ni[34].nvs" 18304;
	setAttr ".tgi[2].ni[35].x" 1427.142822265625;
	setAttr ".tgi[2].ni[35].y" 1107.142822265625;
	setAttr ".tgi[2].ni[35].nvs" 18304;
	setAttr ".tgi[2].ni[36].x" 2112.857177734375;
	setAttr ".tgi[2].ni[36].y" 935.71429443359375;
	setAttr ".tgi[2].ni[36].nvs" 18304;
	setAttr ".tgi[2].ni[37].x" -758.5714111328125;
	setAttr ".tgi[2].ni[37].y" 592.85711669921875;
	setAttr ".tgi[2].ni[37].nvs" 18304;
	setAttr ".tgi[2].ni[38].x" 1470;
	setAttr ".tgi[2].ni[38].y" 1278.5714111328125;
	setAttr ".tgi[2].ni[38].nvs" 18304;
	setAttr ".tgi[2].ni[39].x" 248.57142639160156;
	setAttr ".tgi[2].ni[39].y" 888.5714111328125;
	setAttr ".tgi[2].ni[39].nvs" 18304;
	setAttr ".tgi[2].ni[40].x" 2455.71435546875;
	setAttr ".tgi[2].ni[40].y" 764.28570556640625;
	setAttr ".tgi[2].ni[40].nvs" 18304;
	setAttr ".tgi[2].ni[41].x" -780;
	setAttr ".tgi[2].ni[41].y" 1102.857177734375;
	setAttr ".tgi[2].ni[41].nvs" 18304;
	setAttr ".tgi[2].ni[42].x" 934.28570556640625;
	setAttr ".tgi[2].ni[42].y" 245.71427917480469;
	setAttr ".tgi[2].ni[42].nvs" 18304;
	setAttr ".tgi[2].ni[43].x" 420;
	setAttr ".tgi[2].ni[43].y" 417.14285278320312;
	setAttr ".tgi[2].ni[43].nvs" 18304;
	setAttr ".tgi[2].ni[44].x" 205.71427917480469;
	setAttr ".tgi[2].ni[44].y" 717.14288330078125;
	setAttr ".tgi[2].ni[44].nvs" 18304;
	setAttr ".tgi[2].ni[45].x" 1170;
	setAttr ".tgi[2].ni[45].y" 1107.142822265625;
	setAttr ".tgi[2].ni[45].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "pv";
	setAttr ".tgi[3].vl" -type "double2" -2819.5511700123848 329.7618916583445 ;
	setAttr ".tgi[3].vh" -type "double2" 2811.2178370101892 1854.7618310602916 ;
	setAttr -s 18 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" -374.28570556640625;
	setAttr ".tgi[3].ni[0].y" 1270;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" 2198.571533203125;
	setAttr ".tgi[3].ni[1].y" 1110;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" 1684.2857666015625;
	setAttr ".tgi[3].ni[2].y" 1110;
	setAttr ".tgi[3].ni[2].nvs" 18304;
	setAttr ".tgi[3].ni[3].x" -74.285713195800781;
	setAttr ".tgi[3].ni[3].y" 1227.142822265625;
	setAttr ".tgi[3].ni[3].nvs" 18304;
	setAttr ".tgi[3].ni[4].x" 1254.2857666015625;
	setAttr ".tgi[3].ni[4].y" 1312.857177734375;
	setAttr ".tgi[3].ni[4].nvs" 18304;
	setAttr ".tgi[3].ni[5].x" -674.28570556640625;
	setAttr ".tgi[3].ni[5].y" 1355.7142333984375;
	setAttr ".tgi[3].ni[5].nvs" 18304;
	setAttr ".tgi[3].ni[6].x" -674.28570556640625;
	setAttr ".tgi[3].ni[6].y" 1141.4285888671875;
	setAttr ".tgi[3].ni[6].nvs" 18304;
	setAttr ".tgi[3].ni[7].x" 182.85714721679687;
	setAttr ".tgi[3].ni[7].y" 1227.142822265625;
	setAttr ".tgi[3].ni[7].nvs" 18304;
	setAttr ".tgi[3].ni[8].x" 182.85714721679687;
	setAttr ".tgi[3].ni[8].y" 1355.7142333984375;
	setAttr ".tgi[3].ni[8].nvs" 18304;
	setAttr ".tgi[3].ni[9].x" 2198.571533203125;
	setAttr ".tgi[3].ni[9].y" 1024.2857666015625;
	setAttr ".tgi[3].ni[9].nvs" 18304;
	setAttr ".tgi[3].ni[10].x" 482.85714721679687;
	setAttr ".tgi[3].ni[10].y" 1312.857177734375;
	setAttr ".tgi[3].ni[10].nvs" 18304;
	setAttr ".tgi[3].ni[11].x" 2498.571533203125;
	setAttr ".tgi[3].ni[11].y" 938.5714111328125;
	setAttr ".tgi[3].ni[11].nvs" 18304;
	setAttr ".tgi[3].ni[12].x" 2198.571533203125;
	setAttr ".tgi[3].ni[12].y" 938.5714111328125;
	setAttr ".tgi[3].ni[12].nvs" 18304;
	setAttr ".tgi[3].ni[13].x" 2841.428466796875;
	setAttr ".tgi[3].ni[13].y" 938.5714111328125;
	setAttr ".tgi[3].ni[13].nvs" 18304;
	setAttr ".tgi[3].ni[14].x" -974.28570556640625;
	setAttr ".tgi[3].ni[14].y" 1355.7142333984375;
	setAttr ".tgi[3].ni[14].nvs" 18304;
	setAttr ".tgi[3].ni[15].x" 782.85711669921875;
	setAttr ".tgi[3].ni[15].y" 1312.857177734375;
	setAttr ".tgi[3].ni[15].nvs" 18304;
	setAttr ".tgi[3].ni[16].x" 1941.4285888671875;
	setAttr ".tgi[3].ni[16].y" 1110;
	setAttr ".tgi[3].ni[16].nvs" 18304;
	setAttr ".tgi[3].ni[17].x" -374.28570556640625;
	setAttr ".tgi[3].ni[17].y" 1355.7142333984375;
	setAttr ".tgi[3].ni[17].nvs" 18304;
	setAttr ".tgi[4].tn" -type "string" "spine";
	setAttr ".tgi[4].vl" -type "double2" 146.26496952269528 -1143.5882461112935 ;
	setAttr ".tgi[4].vh" -type "double2" 2056.9049318570019 1137.4068308731798 ;
	setAttr -s 55 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" 3914.28564453125;
	setAttr ".tgi[4].ni[0].y" -75.714286804199219;
	setAttr ".tgi[4].ni[0].nvs" 18304;
	setAttr ".tgi[4].ni[1].x" 2157.142822265625;
	setAttr ".tgi[4].ni[1].y" -547.14288330078125;
	setAttr ".tgi[4].ni[1].nvs" 18304;
	setAttr ".tgi[4].ni[2].x" 2457.142822265625;
	setAttr ".tgi[4].ni[2].y" -461.42855834960937;
	setAttr ".tgi[4].ni[2].nvs" 18304;
	setAttr ".tgi[4].ni[3].x" 2457.142822265625;
	setAttr ".tgi[4].ni[3].y" -547.14288330078125;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" 400;
	setAttr ".tgi[4].ni[4].y" -632.85711669921875;
	setAttr ".tgi[4].ni[4].nvs" 18304;
	setAttr ".tgi[4].ni[5].x" 3185.71435546875;
	setAttr ".tgi[4].ni[5].y" 10;
	setAttr ".tgi[4].ni[5].nvs" 18304;
	setAttr ".tgi[4].ni[6].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[6].y" -504.28570556640625;
	setAttr ".tgi[4].ni[6].nvs" 18304;
	setAttr ".tgi[4].ni[7].x" 3571.428466796875;
	setAttr ".tgi[4].ni[7].y" 181.42857360839844;
	setAttr ".tgi[4].ni[7].nvs" 18304;
	setAttr ".tgi[4].ni[8].x" 3571.428466796875;
	setAttr ".tgi[4].ni[8].y" 267.14285278320313;
	setAttr ".tgi[4].ni[8].nvs" 18304;
	setAttr ".tgi[4].ni[9].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[9].y" -418.57144165039062;
	setAttr ".tgi[4].ni[9].nvs" 18304;
	setAttr ".tgi[4].ni[10].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[10].y" -247.14285278320312;
	setAttr ".tgi[4].ni[10].nvs" 18304;
	setAttr ".tgi[4].ni[11].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[11].y" -247.14285278320312;
	setAttr ".tgi[4].ni[11].nvs" 18304;
	setAttr ".tgi[4].ni[12].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[12].y" -590;
	setAttr ".tgi[4].ni[12].nvs" 18304;
	setAttr ".tgi[4].ni[13].x" 2457.142822265625;
	setAttr ".tgi[4].ni[13].y" -290;
	setAttr ".tgi[4].ni[13].nvs" 18304;
	setAttr ".tgi[4].ni[14].x" 785.71429443359375;
	setAttr ".tgi[4].ni[14].y" -290;
	setAttr ".tgi[4].ni[14].nvs" 18304;
	setAttr ".tgi[4].ni[15].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[15].y" -75.714286804199219;
	setAttr ".tgi[4].ni[15].nvs" 18304;
	setAttr ".tgi[4].ni[16].x" 142.85714721679687;
	setAttr ".tgi[4].ni[16].y" -461.42855834960937;
	setAttr ".tgi[4].ni[16].nvs" 18304;
	setAttr ".tgi[4].ni[17].x" 3185.71435546875;
	setAttr ".tgi[4].ni[17].y" 95.714286804199219;
	setAttr ".tgi[4].ni[17].nvs" 18304;
	setAttr ".tgi[4].ni[18].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[18].y" -418.57144165039062;
	setAttr ".tgi[4].ni[18].nvs" 18304;
	setAttr ".tgi[4].ni[19].x" 3571.428466796875;
	setAttr ".tgi[4].ni[19].y" 10;
	setAttr ".tgi[4].ni[19].nvs" 18304;
	setAttr ".tgi[4].ni[20].x" 785.71429443359375;
	setAttr ".tgi[4].ni[20].y" -547.14288330078125;
	setAttr ".tgi[4].ni[20].nvs" 18304;
	setAttr ".tgi[4].ni[21].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[21].y" -332.85714721679687;
	setAttr ".tgi[4].ni[21].nvs" 18304;
	setAttr ".tgi[4].ni[22].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[22].y" -590;
	setAttr ".tgi[4].ni[22].nvs" 18304;
	setAttr ".tgi[4].ni[23].x" 2457.142822265625;
	setAttr ".tgi[4].ni[23].y" -204.28572082519531;
	setAttr ".tgi[4].ni[23].nvs" 18304;
	setAttr ".tgi[4].ni[24].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[24].y" -504.28570556640625;
	setAttr ".tgi[4].ni[24].nvs" 18304;
	setAttr ".tgi[4].ni[25].x" -114.28571319580078;
	setAttr ".tgi[4].ni[25].y" -632.85711669921875;
	setAttr ".tgi[4].ni[25].nvs" 18304;
	setAttr ".tgi[4].ni[26].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[26].y" -332.85714721679687;
	setAttr ".tgi[4].ni[26].nvs" 18304;
	setAttr ".tgi[4].ni[27].x" 785.71429443359375;
	setAttr ".tgi[4].ni[27].y" -204.28572082519531;
	setAttr ".tgi[4].ni[27].nvs" 18304;
	setAttr ".tgi[4].ni[28].x" 142.85714721679687;
	setAttr ".tgi[4].ni[28].y" -632.85711669921875;
	setAttr ".tgi[4].ni[28].nvs" 18304;
	setAttr ".tgi[4].ni[29].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[29].y" -675.71429443359375;
	setAttr ".tgi[4].ni[29].nvs" 18304;
	setAttr ".tgi[4].ni[30].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[30].y" -332.85714721679687;
	setAttr ".tgi[4].ni[30].nvs" 18304;
	setAttr ".tgi[4].ni[31].x" 3914.28564453125;
	setAttr ".tgi[4].ni[31].y" 267.14285278320313;
	setAttr ".tgi[4].ni[31].nvs" 18304;
	setAttr ".tgi[4].ni[32].x" 3185.71435546875;
	setAttr ".tgi[4].ni[32].y" 181.42857360839844;
	setAttr ".tgi[4].ni[32].nvs" 18304;
	setAttr ".tgi[4].ni[33].x" -114.28571319580078;
	setAttr ".tgi[4].ni[33].y" -461.42855834960937;
	setAttr ".tgi[4].ni[33].nvs" 18304;
	setAttr ".tgi[4].ni[34].x" 785.71429443359375;
	setAttr ".tgi[4].ni[34].y" -375.71429443359375;
	setAttr ".tgi[4].ni[34].nvs" 18304;
	setAttr ".tgi[4].ni[35].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[35].y" -504.28570556640625;
	setAttr ".tgi[4].ni[35].nvs" 18304;
	setAttr ".tgi[4].ni[36].x" 3571.428466796875;
	setAttr ".tgi[4].ni[36].y" -75.714286804199219;
	setAttr ".tgi[4].ni[36].nvs" 18304;
	setAttr ".tgi[4].ni[37].x" 2157.142822265625;
	setAttr ".tgi[4].ni[37].y" -290;
	setAttr ".tgi[4].ni[37].nvs" 18304;
	setAttr ".tgi[4].ni[38].x" 785.71429443359375;
	setAttr ".tgi[4].ni[38].y" -461.42855834960937;
	setAttr ".tgi[4].ni[38].nvs" 18304;
	setAttr ".tgi[4].ni[39].x" 3914.28564453125;
	setAttr ".tgi[4].ni[39].y" 181.42857360839844;
	setAttr ".tgi[4].ni[39].nvs" 18304;
	setAttr ".tgi[4].ni[40].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[40].y" -418.57144165039062;
	setAttr ".tgi[4].ni[40].nvs" 18304;
	setAttr ".tgi[4].ni[41].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[41].y" -675.71429443359375;
	setAttr ".tgi[4].ni[41].nvs" 18304;
	setAttr ".tgi[4].ni[42].x" 2157.142822265625;
	setAttr ".tgi[4].ni[42].y" -375.71429443359375;
	setAttr ".tgi[4].ni[42].nvs" 18304;
	setAttr ".tgi[4].ni[43].x" 2457.142822265625;
	setAttr ".tgi[4].ni[43].y" -375.71429443359375;
	setAttr ".tgi[4].ni[43].nvs" 18304;
	setAttr ".tgi[4].ni[44].x" 3914.28564453125;
	setAttr ".tgi[4].ni[44].y" 95.714286804199219;
	setAttr ".tgi[4].ni[44].nvs" 18304;
	setAttr ".tgi[4].ni[45].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[45].y" -247.14285278320312;
	setAttr ".tgi[4].ni[45].nvs" 18304;
	setAttr ".tgi[4].ni[46].x" 400;
	setAttr ".tgi[4].ni[46].y" -461.42855834960937;
	setAttr ".tgi[4].ni[46].nvs" 18304;
	setAttr ".tgi[4].ni[47].x" 3185.71435546875;
	setAttr ".tgi[4].ni[47].y" -75.714286804199219;
	setAttr ".tgi[4].ni[47].nvs" 18304;
	setAttr ".tgi[4].ni[48].x" 3185.71435546875;
	setAttr ".tgi[4].ni[48].y" 267.14285278320313;
	setAttr ".tgi[4].ni[48].nvs" 18304;
	setAttr ".tgi[4].ni[49].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[49].y" -590;
	setAttr ".tgi[4].ni[49].nvs" 18304;
	setAttr ".tgi[4].ni[50].x" 2157.142822265625;
	setAttr ".tgi[4].ni[50].y" -461.42855834960937;
	setAttr ".tgi[4].ni[50].nvs" 18304;
	setAttr ".tgi[4].ni[51].x" 3914.28564453125;
	setAttr ".tgi[4].ni[51].y" 10;
	setAttr ".tgi[4].ni[51].nvs" 18304;
	setAttr ".tgi[4].ni[52].x" 3571.428466796875;
	setAttr ".tgi[4].ni[52].y" 95.714286804199219;
	setAttr ".tgi[4].ni[52].nvs" 18304;
	setAttr ".tgi[4].ni[53].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[53].y" -675.71429443359375;
	setAttr ".tgi[4].ni[53].nvs" 18304;
	setAttr ".tgi[4].ni[54].x" 2157.142822265625;
	setAttr ".tgi[4].ni[54].y" -204.28572082519531;
	setAttr ".tgi[4].ni[54].nvs" 18304;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
	setAttr -s 69 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "hyperLayout1.msg" "spine_cmpt.hl";
connectAttr "spine_chest_ik_ctrl.msg" "spine_cmpt.pni[0].pnod";
connectAttr "spine_chest_fk_ctrl.msg" "spine_cmpt.pni[1].pnod";
connectAttr "spine_hips_ik_ctrl.msg" "spine_cmpt.pni[2].pnod";
connectAttr "spine_pelvis_ctrl.msg" "spine_cmpt.pni[3].pnod";
connectAttr "spine_body_ctrl.msg" "spine_cmpt.pni[4].pnod";
connectAttr "spine_chest_ctrl_srtOffset_inWorld.ot" "spine_chest_ctrl_srtOffset.t"
		;
connectAttr "spine_chest_ctrl_srtOffset_inWorld.or" "spine_chest_ctrl_srtOffset.r"
		;
connectAttr "spine_chest_ctrl_srtOffset_inWorld.os" "spine_chest_ctrl_srtOffset.s"
		;
connectAttr "spine_makeNurbCircle1.oc" "spine_nurbsCircleShape1.cr";
connectAttr "spine_chest_fk_ctrl_srtOffset_inWorld.ot" "spine_chest_fk_ctrl_srtOffset.t"
		;
connectAttr "spine_chest_fk_ctrl_srtOffset_inWorld.or" "spine_chest_fk_ctrl_srtOffset.r"
		;
connectAttr "spine_chest_fk_ctrl_srtOffset_inWorld.os" "spine_chest_fk_ctrl_srtOffset.s"
		;
connectAttr "spine_hips_ctrl_srtOffset_inWorld.ot" "spine_hips_ik_ctrl_srtOffset.t"
		;
connectAttr "spine_hips_ctrl_srtOffset_inWorld.or" "spine_hips_ik_ctrl_srtOffset.r"
		;
connectAttr "spine_hips_ctrl_srtOffset_inWorld.os" "spine_hips_ik_ctrl_srtOffset.s"
		;
connectAttr "spine_pelvis_ctrl_srtOffset_inWorld.ot" "spine_pelvis_ctrl_srtOffset.t"
		;
connectAttr "spine_pelvis_ctrl_srtOffset_inWorld.os" "spine_pelvis_ctrl_srtOffset.s"
		;
connectAttr "spine_pelvis_ctrl_srtOffset_inWorld.or" "spine_pelvis_ctrl_srtOffset.r"
		;
connectAttr "spine_makeNurbCircle2.oc" "|spine_cmpt|control|spine_pelvis_ctrl_srtOffset|spine_pelvis_ctrl|spine_nurbsCircleShape2.cr"
		;
connectAttr "spine_body_ctrl_srtOffset_inWorld.ot" "spine_body_ctrl_srtOffset.t"
		;
connectAttr "spine_body_ctrl_srtOffset_inWorld.or" "spine_body_ctrl_srtOffset.r"
		;
connectAttr "spine_body_ctrl_srtOffset_inWorld.os" "spine_body_ctrl_srtOffset.s"
		;
connectAttr "spine_body_srt_inWorld.ot" "spine_body_srt.t";
connectAttr "spine_body_srt_inWorld.or" "spine_body_srt.r";
connectAttr "spine_body_srt_inWorld.os" "spine_body_srt.s";
connectAttr "spine_chest_ik_ctrl_srt_localTo_body.ot" "spine_ik_start_srt.t";
connectAttr "spine_chest_ik_ctrl_srt_localTo_body.or" "spine_ik_start_srt.r";
connectAttr "spine_hips_ik_ctrl_srt_localTo_body.ot" "spine_ik_end_srt.t";
connectAttr "spine_hips_ik_ctrl_srt_localTo_body.or" "spine_ik_end_srt.r";
connectAttr "spine_ik_01_offset_jnt.msg" "spine_offset_ikHandle.hsj";
connectAttr "spine_effector.hp" "spine_offset_ikHandle.hee";
connectAttr "spine_ikRPsolver.msg" "spine_offset_ikHandle.hsv";
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.ctx" "spine_offset_ikHandle.pvx"
		;
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.cty" "spine_offset_ikHandle.pvy"
		;
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.ctz" "spine_offset_ikHandle.pvz"
		;
connectAttr "spine_ikEnd_pass.worldInverseMatrix" "spine_offset_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "spine_ik_01_offset_jnt.pm" "spine_offset_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "spine_ik_01_offset_jnt.t" "spine_offset_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "spine_pv_srt.t" "spine_offset_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "spine_pv_srt.pm" "spine_offset_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "spine_chest_ik_ctrl_srt_localTo_body.ot" "spine_ik_01_offset_jnt.t"
		;
connectAttr "spine_bone_01_length.o" "spine_ik_02_offset_jnt.tz";
connectAttr "spine_bone_02_length.o" "spine_ik_03_offset_jnt.tz";
connectAttr "spine_bone_03_length.o" "spine_ik_04_offset_jnt.tz";
connectAttr "spine_bone_04_length.o" "spine_ik_05_offset_jnt.tz";
connectAttr "spine_bone_05_length.o" "spine_ik_06_offset_jnt.tz";
connectAttr "spine_ik_06_offset_jnt.tx" "spine_effector.tx";
connectAttr "spine_ik_06_offset_jnt.ty" "spine_effector.ty";
connectAttr "spine_ik_06_offset_jnt.tz" "spine_effector.tz";
connectAttr "spine_crv_skinCluster.og[0]" "spine_spline_crvShape.cr";
connectAttr "spine_tweak1.pl[0].cp[0]" "spine_spline_crvShape.twl";
connectAttr "spine_skinCluster1GroupId.id" "spine_spline_crvShape.iog.og[0].gid"
		;
connectAttr "spine_skinCluster1Set.mwc" "spine_spline_crvShape.iog.og[0].gco";
connectAttr "spine_groupId2.id" "spine_spline_crvShape.iog.og[1].gid";
connectAttr "spine_tweakSet1.mwc" "spine_spline_crvShape.iog.og[1].gco";
connectAttr "spine_ik_01_position_localTo_body.o" "spine_01_aimConstraint.ct";
connectAttr "spine_ik_02_position_localTo_body.o" "spine_01_aimConstraint.tg[0].tt"
		;
connectAttr "spine_body_srt.wm" "spine_01_aimConstraint.tg[0].tpm";
connectAttr "spine_body_srt.wim" "spine_01_aimConstraint.cpim";
connectAttr "spine_ik_01_twist.o" "spine_01_aimConstraint.o";
connectAttr "spine_body_srt.wm" "spine_01_aimConstraint.wum";
connectAttr "spine_ik_02_position_localTo_body.o" "spine_02_aimConstraint.ct";
connectAttr "spine_ik_03_position_localTo_body.o" "spine_02_aimConstraint.tg[0].tt"
		;
connectAttr "spine_body_srt.wm" "spine_02_aimConstraint.tg[0].tpm";
connectAttr "spine_body_srt.wim" "spine_02_aimConstraint.cpim";
connectAttr "spine_ik_02_twist.o" "spine_02_aimConstraint.o";
connectAttr "spine_body_srt.wm" "spine_02_aimConstraint.wum";
connectAttr "spine_ik_03_position_localTo_body.o" "spine_03_aimConstraint.ct";
connectAttr "spine_ik_04_position_localTo_body.o" "spine_03_aimConstraint.tg[0].tt"
		;
connectAttr "spine_body_srt.wm" "spine_03_aimConstraint.tg[0].tpm";
connectAttr "spine_body_srt.wim" "spine_03_aimConstraint.cpim";
connectAttr "spine_ik_03_twist.o" "spine_03_aimConstraint.o";
connectAttr "spine_body_srt.wm" "spine_03_aimConstraint.wum";
connectAttr "spine_ik_04_position_localTo_body.o" "spine_04_aimConstraint.ct";
connectAttr "spine_ik_05_position_localTo_body.o" "spine_04_aimConstraint.tg[0].tt"
		;
connectAttr "spine_body_srt.wm" "spine_04_aimConstraint.tg[0].tpm";
connectAttr "spine_body_srt.wim" "spine_04_aimConstraint.cpim";
connectAttr "spine_ik_04_twist.o" "spine_04_aimConstraint.o";
connectAttr "spine_body_srt.wm" "spine_04_aimConstraint.wum";
connectAttr "spine_ik_05_position_localTo_body.o" "spine_05_aimConstraint.ct";
connectAttr "spine_ik_06_position_localTo_body.o" "spine_05_aimConstraint.tg[0].tt"
		;
connectAttr "spine_body_srt.wm" "spine_05_aimConstraint.tg[0].tpm";
connectAttr "spine_body_srt.wim" "spine_05_aimConstraint.cpim";
connectAttr "spine_ik_05_twist.o" "spine_05_aimConstraint.o";
connectAttr "spine_body_srt.wm" "spine_05_aimConstraint.wum";
connectAttr "spine_curve_midPoint_localTo_body.o" "spine_ik_spine_rotatePlane_aimConstraint.tg[0].tt"
		;
connectAttr "spine_body_ctrl.wm" "spine_ik_spine_rotatePlane_aimConstraint.tg[0].tpm"
		;
connectAttr "spine_body_ctrl.wm" "spine_ik_spine_rotatePlane_aimConstraint.wum";
connectAttr "spine_body_ctrl.wim" "spine_ik_spine_rotatePlane_aimConstraint.cpim"
		;
connectAttr "spine_chest_ik_ctrl.twist" "spine_ik_spine_rotatePlane_aimConstraint.oz"
		;
connectAttr "spine_poleVector_srt_inWorld.ot" "spine_pv_srtOffset.t";
connectAttr "spine_poleVector_srt_inWorld.or" "spine_pv_srtOffset.r";
connectAttr "spine_poleVector_srt_inWorld.os" "spine_pv_srtOffset.s";
connectAttr "spine_chest_srt_inWorld.ot" "|spine_cmpt|output|chest_srt.t";
connectAttr "spine_chest_srt_inWorld.or" "|spine_cmpt|output|chest_srt.r";
connectAttr "spine_chest_srt_inWorld.os" "|spine_cmpt|output|chest_srt.s";
connectAttr "spine_01_srt_inWorld.ot" "spine_01_srt.t";
connectAttr "spine_01_srt_inWorld.or" "spine_01_srt.r";
connectAttr "spine_01_srt_inWorld.os" "spine_01_srt.s";
connectAttr "spine_02_srt_inWorld.ot" "spine_02_srt.t";
connectAttr "spine_02_srt_inWorld.or" "spine_02_srt.r";
connectAttr "spine_02_srt_inWorld.os" "spine_02_srt.s";
connectAttr "spine_03_srt_inWorld.ot" "spine_03_srt.t";
connectAttr "spine_03_srt_inWorld.or" "spine_03_srt.r";
connectAttr "spine_03_srt_inWorld.os" "spine_03_srt.s";
connectAttr "spine_04_srt_inWorld.ot" "spine_04_srt.t";
connectAttr "spine_04_srt_inWorld.or" "spine_04_srt.r";
connectAttr "spine_04_srt_inWorld.os" "spine_04_srt.s";
connectAttr "spine_05_srt_inWorld.ot" "spine_05_srt.t";
connectAttr "spine_05_srt_inWorld.or" "spine_05_srt.r";
connectAttr "spine_05_srt_inWorld.os" "spine_05_srt.s";
connectAttr "spine_hips_srt_inWorld.ot" "|spine_cmpt|output|hips_srt.t";
connectAttr "spine_hips_srt_inWorld.or" "|spine_cmpt|output|hips_srt.r";
connectAttr "spine_hips_srt_inWorld.os" "|spine_cmpt|output|hips_srt.s";
connectAttr "spine_ik_stretch.ocr" "spine_parameters.stretch";
connectAttr "spine_ik_compression_clamped.opr" "spine_parameters.compression";
connectAttr "spine_ik_offAxis.ov" "spine_parameters.offAxis";
connectAttr "spine_chest_srt_inWorld.ot" "|spine_cmpt|deform|chest_srt.t";
connectAttr "spine_chest_srt_inWorld.or" "|spine_cmpt|deform|chest_srt.r";
connectAttr "spine_chest_srt_inWorld.os" "|spine_cmpt|deform|chest_srt.s";
connectAttr "spine_hips_srt_inWorld.ot" "|spine_cmpt|deform|hips_srt.t";
connectAttr "spine_hips_srt_inWorld.or" "|spine_cmpt|deform|hips_srt.r";
connectAttr "spine_hips_srt_inWorld.os" "|spine_cmpt|deform|hips_srt.s";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "body_srtOffset.m" "spine_body_ctrl_parentMatrix.i[0]";
connectAttr "root_srt.wm" "spine_body_ctrl_parentMatrix.i[1]";
connectAttr "spine_body_ctrl_parentMatrix.o" "spine_body_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "chest_srtOffset.m" "spine_chest_ctrl_parentMatrix.i[0]";
connectAttr "spine_body_ctrl.wm" "spine_chest_ctrl_parentMatrix.i[1]";
connectAttr "spine_chest_ctrl_parentMatrix.o" "spine_chest_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "spine_settings.restPose" "spine_hips_ctrl_defaultPose_blend.w";
connectAttr "defaultPose_srtOffset.t" "spine_hips_ctrl_defaultPose_blend.it2";
connectAttr "defaultPose_srtOffset.r" "spine_hips_ctrl_defaultPose_blend.ir2";
connectAttr "spine_hips_ctrl_defaultPose_blend.ot" "spine_hips_ctrl_parent_defaultPose_matrix.it"
		;
connectAttr "spine_hips_ctrl_defaultPose_blend.or" "spine_hips_ctrl_parent_defaultPose_matrix.ir"
		;
connectAttr "spine_hips_ctrl_parent_defaultPose_matrix.omat" "spine_hips_ctrl_parentMatrix.i[0]"
		;
connectAttr "hips_srtOffset.m" "spine_hips_ctrl_parentMatrix.i[1]";
connectAttr "spine_body_ctrl.wm" "spine_hips_ctrl_parentMatrix.i[2]";
connectAttr "spine_hips_ctrl_parentMatrix.o" "spine_hips_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "spine_hips_ik_ctrl.wm" "spine_pelvis_ctrl_srtOffset_inWorld.imat";
connectAttr "spine_body_ctrl.wm" "spine_body_srt_inWorld.imat";
connectAttr "spine_spline_curveInfo.al" "spine_ik_stretchFactor.i1x";
connectAttr "spine_settings.restLength" "spine_ik_stretchFactor.i2x";
connectAttr "spine_ik_stretchFactor.ox" "spine_ik_stretch.ft";
connectAttr "spine_ik_stretchFactor.ox" "spine_ik_stretch.ctr";
connectAttr "spine_ik_stretch.ocr" "spine_bone_01_length.i2";
connectAttr "spine_ik_stretch.ocr" "spine_bone_02_length.i2";
connectAttr "spine_ik_stretch.ocr" "spine_bone_03_length.i2";
connectAttr "spine_ik_stretch.ocr" "spine_bone_04_length.i2";
connectAttr "spine_ik_stretch.ocr" "spine_bone_05_length.i2";
connectAttr "spine_01_matrix_localTo_body.omat" "spine_ik_01_worldMatrix.i[0]";
connectAttr "spine_body_srt.wm" "spine_ik_01_worldMatrix.i[1]";
connectAttr "spine_02_matrix_localTo_body.omat" "spine_ik_02_worldMatrix.i[0]";
connectAttr "spine_body_srt.wm" "spine_ik_02_worldMatrix.i[1]";
connectAttr "spine_03_matrix_localTo_body.omat" "spine_ik_03_worldMatrix.i[0]";
connectAttr "spine_body_srt.wm" "spine_ik_03_worldMatrix.i[1]";
connectAttr "spine_04_matrix_localTo_body.omat" "spine_ik_04_worldMatrix.i[0]";
connectAttr "spine_body_srt.wm" "spine_ik_04_worldMatrix.i[1]";
connectAttr "spine_05_matrix_localTo_body.omat" "spine_ik_05_worldMatrix.i[0]";
connectAttr "spine_body_srt.wm" "spine_ik_05_worldMatrix.i[1]";
connectAttr "spine_ik_start_pass.worldMatrix" "spine_iK_start_matrix_localTo_body.i[0]"
		;
connectAttr "spine_body_srt.wim" "spine_iK_start_matrix_localTo_body.i[1]";
connectAttr "spine_ikEnd_pass.worldMatrix" "spine_hips_ik_ctrl_matrix_localTo_body.i[0]"
		;
connectAttr "spine_body_srt.wim" "spine_hips_ik_ctrl_matrix_localTo_body.i[1]";
connectAttr "spine_iK_start_matrix_localTo_body.o" "spine_chest_ik_ctrl_srt_localTo_body.imat"
		;
connectAttr "spine_hips_ik_ctrl_matrix_localTo_body.o" "spine_hips_ik_ctrl_srt_localTo_body.imat"
		;
connectAttr "spine_ik_start_srt.r" "spine_ik_start_rotation_asQuat.irt";
connectAttr "spine_ik_start_srt.ro" "spine_ik_start_rotation_asQuat.ro";
connectAttr "spine_ik_end_srt.r" "spine_ik_end_rotation_asQuat.irt";
connectAttr "spine_ik_end_srt.ro" "spine_ik_end_rotation_asQuat.ro";
connectAttr "spine_ik_start_rotation_asQuat.oqz" "spine_ik_start_twist.iqz";
connectAttr "spine_ik_start_rotation_asQuat.oqw" "spine_ik_start_twist.iqw";
connectAttr "spine_ik_end_rotation_asQuat.oqz" "spine_ik_end_twist.iqz";
connectAttr "spine_ik_end_rotation_asQuat.oqw" "spine_ik_end_twist.iqw";
connectAttr "spine_ik_start_twist.ort" "spine_ik_01_twist.ia";
connectAttr "spine_ik_end_twist.ort" "spine_ik_01_twist.ib";
connectAttr "spine_ik_start_twist.ort" "spine_ik_02_twist.ia";
connectAttr "spine_ik_end_twist.ort" "spine_ik_02_twist.ib";
connectAttr "spine_ik_start_twist.ort" "spine_ik_03_twist.ia";
connectAttr "spine_ik_end_twist.ort" "spine_ik_03_twist.ib";
connectAttr "spine_ik_start_twist.ort" "spine_ik_04_twist.ia";
connectAttr "spine_ik_end_twist.ort" "spine_ik_04_twist.ib";
connectAttr "spine_ik_start_twist.ort" "spine_ik_05_twist.ia";
connectAttr "spine_ik_end_twist.ort" "spine_ik_05_twist.ib";
connectAttr "spine_ik_01_worldMatrix.o" "spine_01_srt_inWorld.imat";
connectAttr "spine_ik_02_worldMatrix.o" "spine_02_srt_inWorld.imat";
connectAttr "spine_ik_03_worldMatrix.o" "spine_03_srt_inWorld.imat";
connectAttr "spine_ik_04_worldMatrix.o" "spine_04_srt_inWorld.imat";
connectAttr "spine_ik_05_worldMatrix.o" "spine_05_srt_inWorld.imat";
connectAttr "spine_skinCluster1GroupParts.og" "spine_crv_skinCluster.ip[0].ig";
connectAttr "spine_skinCluster1GroupId.id" "spine_crv_skinCluster.ip[0].gi";
connectAttr "spine_ik_start_jnt.wm" "spine_crv_skinCluster.ma[0]";
connectAttr "spine_ik_end_jnt.wm" "spine_crv_skinCluster.ma[1]";
connectAttr "spine_ik_start_jnt.liw" "spine_crv_skinCluster.lw[0]";
connectAttr "spine_ik_end_jnt.liw" "spine_crv_skinCluster.lw[1]";
connectAttr "spine_ik_start_jnt.obcc" "spine_crv_skinCluster.ifcl[0]";
connectAttr "spine_ik_end_jnt.obcc" "spine_crv_skinCluster.ifcl[1]";
connectAttr "spine_groupParts2.og" "spine_tweak1.ip[0].ig";
connectAttr "spine_groupId2.id" "spine_tweak1.ip[0].gi";
connectAttr "spine_skinCluster1GroupId.msg" "spine_skinCluster1Set.gn" -na;
connectAttr "spine_spline_crvShape.iog.og[0]" "spine_skinCluster1Set.dsm" -na;
connectAttr "spine_crv_skinCluster.msg" "spine_skinCluster1Set.ub[0]";
connectAttr "spine_tweak1.og[0]" "spine_skinCluster1GroupParts.ig";
connectAttr "spine_skinCluster1GroupId.id" "spine_skinCluster1GroupParts.gi";
connectAttr "spine_groupId2.msg" "spine_tweakSet1.gn" -na;
connectAttr "spine_spline_crvShape.iog.og[1]" "spine_tweakSet1.dsm" -na;
connectAttr "spine_tweak1.msg" "spine_tweakSet1.ub[0]";
connectAttr "spine_spline_crvShapeOrig.ws" "spine_groupParts2.ig";
connectAttr "spine_groupId2.id" "spine_groupParts2.gi";
connectAttr "spine_curve_midPoint.p" "spine_curve_midPoint_localTo_body.i1";
connectAttr "spine_body_ctrl.wim" "spine_curve_midPoint_localTo_body.m";
connectAttr "spine_poleVector_position_matrix_localTo_body.omat" "spine_poleVector_worldMatrix.i[0]"
		;
connectAttr "spine_body_ctrl.wm" "spine_poleVector_worldMatrix.i[1]";
connectAttr "spine_hips_ik_ctrl.wim" "spine_ikEnd_pass.worldInverseMatrix";
connectAttr "spine_hips_ik_ctrl.wm" "spine_ikEnd_pass.worldMatrix";
connectAttr "spine_chest_ik_ctrl.wm" "spine_ik_start_pass.worldMatrix";
connectAttr "spine_chest_ik_ctrl.wim" "spine_ik_start_pass.worldInverseMatrix";
connectAttr "spine_poleVector_worldMatrix.o" "spine_poleVector_srt_inWorld.imat"
		;
connectAttr "spine_crv_skinCluster.og[0]" "spine_curve_midPoint.ic";
connectAttr "spine_ik_01_matrix_localTo_body.o" "spine_ik_01_position_localTo_body.m"
		;
connectAttr "spine_ik_02_matrix_localTo_body.o" "spine_ik_02_position_localTo_body.m"
		;
connectAttr "spine_ik_03_matrix_localTo_body.o" "spine_ik_03_position_localTo_body.m"
		;
connectAttr "spine_ik_04_matrix_localTo_body.o" "spine_ik_04_position_localTo_body.m"
		;
connectAttr "spine_ik_05_matrix_localTo_body.o" "spine_ik_05_position_localTo_body.m"
		;
connectAttr "spine_ik_06_matrix_localTo_body.o" "spine_ik_06_position_localTo_body.m"
		;
connectAttr "spine_ik_01_offset_jnt.wm" "spine_ik_01_matrix_localTo_body.i[0]";
connectAttr "spine_body_srt.wim" "spine_ik_01_matrix_localTo_body.i[1]";
connectAttr "spine_ik_02_offset_jnt.wm" "spine_ik_02_matrix_localTo_body.i[0]";
connectAttr "spine_body_srt.wim" "spine_ik_02_matrix_localTo_body.i[1]";
connectAttr "spine_ik_03_offset_jnt.wm" "spine_ik_03_matrix_localTo_body.i[0]";
connectAttr "spine_body_srt.wim" "spine_ik_03_matrix_localTo_body.i[1]";
connectAttr "spine_ik_04_offset_jnt.wm" "spine_ik_04_matrix_localTo_body.i[0]";
connectAttr "spine_body_srt.wim" "spine_ik_04_matrix_localTo_body.i[1]";
connectAttr "spine_ik_05_offset_jnt.wm" "spine_ik_05_matrix_localTo_body.i[0]";
connectAttr "spine_body_srt.wim" "spine_ik_05_matrix_localTo_body.i[1]";
connectAttr "spine_01_aimConstraint.ct" "spine_01_matrix_localTo_body.it";
connectAttr "spine_01_aimConstraint.cr" "spine_01_matrix_localTo_body.ir";
connectAttr "spine_02_aimConstraint.ct" "spine_02_matrix_localTo_body.it";
connectAttr "spine_02_aimConstraint.cr" "spine_02_matrix_localTo_body.ir";
connectAttr "spine_03_aimConstraint.ct" "spine_03_matrix_localTo_body.it";
connectAttr "spine_03_aimConstraint.cr" "spine_03_matrix_localTo_body.ir";
connectAttr "spine_04_aimConstraint.ct" "spine_04_matrix_localTo_body.it";
connectAttr "spine_04_aimConstraint.cr" "spine_04_matrix_localTo_body.ir";
connectAttr "spine_05_aimConstraint.ct" "spine_05_matrix_localTo_body.it";
connectAttr "spine_05_aimConstraint.cr" "spine_05_matrix_localTo_body.ir";
connectAttr "spine_ik_06_offset_jnt.wm" "spine_ik_06_matrix_localTo_body.i[0]";
connectAttr "spine_body_srt.wim" "spine_ik_06_matrix_localTo_body.i[1]";
connectAttr "spine_pelvis_ctrl.wm" "spine_hips_srt_inWorld.imat";
connectAttr "spine_chest_fk_ctrl.wm" "spine_chest_srt_inWorld.imat";
connectAttr "spine_chest_ik_ctrl.wm" "spine_chest_fk_ctrl_srtOffset_inWorld.imat"
		;
connectAttr "spine_crv_skinCluster.og[0]" "spine_spline_curveInfo.ic";
connectAttr "spine_ik_spine_rotatePlane_aimConstraint.ct" "spine_ik_spine_rotatePlane_matrix_localTo_body.it"
		;
connectAttr "spine_ik_spine_rotatePlane_aimConstraint.cr" "spine_ik_spine_rotatePlane_matrix_localTo_body.ir"
		;
connectAttr "spine_curve_midPoint_localTo_body.oz" "spine_poleVector_offset_matrix.itz"
		;
connectAttr "spine_curve_midPoint_localTo_body.ox" "spine_poleVector_offset_matrix.itx"
		;
connectAttr "spine_poleVector_offset_matrix.omat" "spine_poleVector_matrix_localTo_body.i[0]"
		;
connectAttr "spine_ik_spine_rotatePlane_matrix_localTo_body.omat" "spine_poleVector_matrix_localTo_body.i[1]"
		;
connectAttr "spine_poleVector_matrix_localTo_body.o" "spine_poleVector_srt_localTo_body.imat"
		;
connectAttr "spine_poleVector_srt_localTo_body.ot" "spine_poleVector_position_matrix_localTo_body.it"
		;
connectAttr "spine_chest_ik_ctrl_srt_localTo_body.ot" "spine_ik_currentLength.p2"
		;
connectAttr "spine_hips_ik_ctrl_srt_localTo_body.ot" "spine_ik_currentLength.p1"
		;
connectAttr "spine_ik_currentLength.d" "spine_ik_compression.i1x";
connectAttr "spine_ik_compression.ox" "spine_ik_compression_clamped.ipr";
connectAttr "spine_hips_ik_ctrl_srt_localTo_body.ot" "spine_ik_startEndVector.i3[0]"
		;
connectAttr "spine_chest_ik_ctrl_srt_localTo_body.ot" "spine_ik_startEndVector.i3[1]"
		;
connectAttr "spine_ik_startEndVector.o3" "spine_ik_offAxisAngle.v2";
connectAttr "spine_unitConversion1.o" "spine_ik_offAxis.i";
connectAttr "spine_ik_offAxisAngle.a" "spine_unitConversion1.i";
connectAttr "about.msg" "hyperLayout1.hyp[0].dn";
connectAttr "input.msg" "hyperLayout1.hyp[1].dn";
connectAttr "root_srt.msg" "hyperLayout1.hyp[2].dn";
connectAttr "body_srtOffset.msg" "hyperLayout1.hyp[3].dn";
connectAttr "chest_srtOffset.msg" "hyperLayout1.hyp[4].dn";
connectAttr "hips_srtOffset.msg" "hyperLayout1.hyp[5].dn";
connectAttr "defaultPose_srtOffset.msg" "hyperLayout1.hyp[6].dn";
connectAttr "spine_settings.msg" "hyperLayout1.hyp[7].dn";
connectAttr "control.msg" "hyperLayout1.hyp[8].dn";
connectAttr "spine_chest_ctrl_srtOffset.msg" "hyperLayout1.hyp[9].dn";
connectAttr "spine_chest_ik_ctrl.msg" "hyperLayout1.hyp[10].dn";
connectAttr "spine_nurbsCircleShape1.msg" "hyperLayout1.hyp[11].dn";
connectAttr "spine_chest_fk_ctrl_srtOffset.msg" "hyperLayout1.hyp[12].dn";
connectAttr "spine_chest_fk_ctrl.msg" "hyperLayout1.hyp[13].dn";
connectAttr "|spine_cmpt|control|spine_chest_fk_ctrl_srtOffset|spine_chest_fk_ctrl|spine_nurbsCircleShape2.msg" "hyperLayout1.hyp[14].dn"
		;
connectAttr "spine_hips_ik_ctrl_srtOffset.msg" "hyperLayout1.hyp[15].dn";
connectAttr "spine_hips_ik_ctrl.msg" "hyperLayout1.hyp[16].dn";
connectAttr "spine_hips_ik_ctrlShape.msg" "hyperLayout1.hyp[17].dn";
connectAttr "spine_pelvis_ctrl_srtOffset.msg" "hyperLayout1.hyp[18].dn";
connectAttr "spine_pelvis_ctrl.msg" "hyperLayout1.hyp[19].dn";
connectAttr "|spine_cmpt|control|spine_pelvis_ctrl_srtOffset|spine_pelvis_ctrl|spine_nurbsCircleShape2.msg" "hyperLayout1.hyp[20].dn"
		;
connectAttr "spine_body_ctrl_srtOffset.msg" "hyperLayout1.hyp[21].dn";
connectAttr "spine_body_ctrl.msg" "hyperLayout1.hyp[22].dn";
connectAttr "spine_body_ctrlShape.msg" "hyperLayout1.hyp[23].dn";
connectAttr "spine_pv_srtOffset.msg" "hyperLayout1.hyp[24].dn";
connectAttr "spine_pv_srt.msg" "hyperLayout1.hyp[25].dn";
connectAttr "internal.msg" "hyperLayout1.hyp[27].dn";
connectAttr "spine_body_srt.msg" "hyperLayout1.hyp[28].dn";
connectAttr "spine_ik_start_srt.msg" "hyperLayout1.hyp[29].dn";
connectAttr "spine_ik_start_jnt.msg" "hyperLayout1.hyp[30].dn";
connectAttr "spine_ik_end_srt.msg" "hyperLayout1.hyp[31].dn";
connectAttr "spine_offset_ikHandle.msg" "hyperLayout1.hyp[32].dn";
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.msg" "hyperLayout1.hyp[33].dn"
		;
connectAttr "spine_ik_end_jnt.msg" "hyperLayout1.hyp[34].dn";
connectAttr "spine_ik_01_offset_jnt.msg" "hyperLayout1.hyp[35].dn";
connectAttr "spine_ik_02_offset_jnt.msg" "hyperLayout1.hyp[36].dn";
connectAttr "spine_ik_03_offset_jnt.msg" "hyperLayout1.hyp[37].dn";
connectAttr "spine_ik_04_offset_jnt.msg" "hyperLayout1.hyp[38].dn";
connectAttr "spine_ik_05_offset_jnt.msg" "hyperLayout1.hyp[39].dn";
connectAttr "spine_ik_06_offset_jnt.msg" "hyperLayout1.hyp[40].dn";
connectAttr "spine_effector.msg" "hyperLayout1.hyp[41].dn";
connectAttr "spine_spline_crv.msg" "hyperLayout1.hyp[42].dn";
connectAttr "spine_spline_crvShape.msg" "hyperLayout1.hyp[43].dn";
connectAttr "spine_spline_crvShapeOrig.msg" "hyperLayout1.hyp[44].dn";
connectAttr "spine_01_aimConstraint.msg" "hyperLayout1.hyp[45].dn";
connectAttr "spine_02_aimConstraint.msg" "hyperLayout1.hyp[46].dn";
connectAttr "spine_03_aimConstraint.msg" "hyperLayout1.hyp[47].dn";
connectAttr "spine_04_aimConstraint.msg" "hyperLayout1.hyp[48].dn";
connectAttr "spine_05_aimConstraint.msg" "hyperLayout1.hyp[49].dn";
connectAttr "spine_ik_spine_rotatePlane_aimConstraint.msg" "hyperLayout1.hyp[50].dn"
		;
connectAttr "output.msg" "hyperLayout1.hyp[51].dn";
connectAttr "|spine_cmpt|output|chest_srt.msg" "hyperLayout1.hyp[52].dn";
connectAttr "spine_01_srt.msg" "hyperLayout1.hyp[53].dn";
connectAttr "spine_02_srt.msg" "hyperLayout1.hyp[54].dn";
connectAttr "spine_03_srt.msg" "hyperLayout1.hyp[55].dn";
connectAttr "spine_04_srt.msg" "hyperLayout1.hyp[56].dn";
connectAttr "spine_05_srt.msg" "hyperLayout1.hyp[57].dn";
connectAttr "|spine_cmpt|output|hips_srt.msg" "hyperLayout1.hyp[58].dn";
connectAttr "spine_parameters.msg" "hyperLayout1.hyp[59].dn";
connectAttr "spine_ik_06_position_localTo_body.msg" "hyperLayout1.hyp[60].dn";
connectAttr "spine_ik_05_position_localTo_body.msg" "hyperLayout1.hyp[61].dn";
connectAttr "spine_ik_01_position_localTo_body.msg" "hyperLayout1.hyp[62].dn";
connectAttr "spine_ik_02_position_localTo_body.msg" "hyperLayout1.hyp[63].dn";
connectAttr "spine_ik_04_position_localTo_body.msg" "hyperLayout1.hyp[64].dn";
connectAttr "spine_ik_compression.msg" "hyperLayout1.hyp[65].dn";
connectAttr "spine_ik_03_position_localTo_body.msg" "hyperLayout1.hyp[66].dn";
connectAttr "spine_ik_stretchFactor.msg" "hyperLayout1.hyp[67].dn";
connectAttr "spine_curve_midPoint_localTo_body.msg" "hyperLayout1.hyp[68].dn";
connectAttr "spine_crv_skinCluster.msg" "hyperLayout1.hyp[69].dn";
connectAttr "spine_ikRPsolver.msg" "hyperLayout1.hyp[70].dn";
connectAttr "spine_poleVector_srt_localTo_body.msg" "hyperLayout1.hyp[71].dn";
connectAttr "spine_poleVector_offset_matrix.msg" "hyperLayout1.hyp[72].dn";
connectAttr "spine_ik_spine_rotatePlane_matrix_localTo_body.msg" "hyperLayout1.hyp[73].dn"
		;
connectAttr "spine_spline_curveInfo.msg" "hyperLayout1.hyp[74].dn";
connectAttr "spine_ik_06_matrix_localTo_body.msg" "hyperLayout1.hyp[75].dn";
connectAttr "spine_poleVector_matrix_localTo_body.msg" "hyperLayout1.hyp[76].dn"
		;
connectAttr "spine_hips_srt_inWorld.msg" "hyperLayout1.hyp[77].dn";
connectAttr "spine_chest_fk_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[78].dn"
		;
connectAttr "spine_chest_srt_inWorld.msg" "hyperLayout1.hyp[79].dn";
connectAttr "spine_ik_02_twist.msg" "hyperLayout1.hyp[80].dn";
connectAttr "spine_ik_end_twist.msg" "hyperLayout1.hyp[81].dn";
connectAttr "spine_ik_01_twist.msg" "hyperLayout1.hyp[82].dn";
connectAttr "spine_skinCluster1GroupParts.msg" "hyperLayout1.hyp[83].dn";
connectAttr "spine_tweak1.msg" "hyperLayout1.hyp[84].dn";
connectAttr "spine_skinCluster1GroupId.msg" "hyperLayout1.hyp[85].dn";
connectAttr "spine_02_srt_inWorld.msg" "hyperLayout1.hyp[86].dn";
connectAttr "spine_05_srt_inWorld.msg" "hyperLayout1.hyp[87].dn";
connectAttr "spine_groupParts2.msg" "hyperLayout1.hyp[88].dn";
connectAttr "spine_groupId2.msg" "hyperLayout1.hyp[89].dn";
connectAttr "spine_03_srt_inWorld.msg" "hyperLayout1.hyp[90].dn";
connectAttr "spine_ik_03_twist.msg" "hyperLayout1.hyp[91].dn";
connectAttr "spine_ik_04_twist.msg" "hyperLayout1.hyp[92].dn";
connectAttr "spine_01_srt_inWorld.msg" "hyperLayout1.hyp[93].dn";
connectAttr "spine_ik_05_twist.msg" "hyperLayout1.hyp[94].dn";
connectAttr "spine_04_srt_inWorld.msg" "hyperLayout1.hyp[95].dn";
connectAttr "spine_ik_offAxisAngle.msg" "hyperLayout1.hyp[96].dn";
connectAttr "spine_ik_currentLength.msg" "hyperLayout1.hyp[97].dn";
connectAttr "spine_ik_offAxis.msg" "hyperLayout1.hyp[98].dn";
connectAttr "spine_poleVector_position_matrix_localTo_body.msg" "hyperLayout1.hyp[99].dn"
		;
connectAttr "spine_ik_compression_clamped.msg" "hyperLayout1.hyp[100].dn";
connectAttr "spine_ik_startEndVector.msg" "hyperLayout1.hyp[101].dn";
connectAttr "spine_unitConversion1.msg" "hyperLayout1.hyp[102].dn";
connectAttr "spine_pelvis_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[103].dn"
		;
connectAttr "spine_chest_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[104].dn";
connectAttr "spine_hips_ctrl_defaultPose_blend.msg" "hyperLayout1.hyp[105].dn";
connectAttr "spine_chest_ctrl_parentMatrix.msg" "hyperLayout1.hyp[106].dn";
connectAttr "spine_body_ctrl_parentMatrix.msg" "hyperLayout1.hyp[107].dn";
connectAttr "spine_makeNurbCircle2.msg" "hyperLayout1.hyp[108].dn";
connectAttr "spine_makeNurbCircle1.msg" "hyperLayout1.hyp[109].dn";
connectAttr "spine_hips_ctrl_parentMatrix.msg" "hyperLayout1.hyp[110].dn";
connectAttr "spine_hips_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[111].dn";
connectAttr "spine_body_ctrl_srtOffset_inWorld.msg" "hyperLayout1.hyp[112].dn";
connectAttr "spine_hips_ctrl_parent_defaultPose_matrix.msg" "hyperLayout1.hyp[113].dn"
		;
connectAttr "spine_tweakSet1.msg" "hyperLayout1.hyp[114].dn";
connectAttr "spine_skinCluster1Set.msg" "hyperLayout1.hyp[115].dn";
connectAttr "spine_ikEnd_pass.msg" "hyperLayout1.hyp[116].dn";
connectAttr "spine_ik_03_matrix_localTo_body.msg" "hyperLayout1.hyp[117].dn";
connectAttr "spine_curve_midPoint.msg" "hyperLayout1.hyp[118].dn";
connectAttr "spine_ik_02_matrix_localTo_body.msg" "hyperLayout1.hyp[119].dn";
connectAttr "spine_ik_05_matrix_localTo_body.msg" "hyperLayout1.hyp[120].dn";
connectAttr "spine_ik_01_matrix_localTo_body.msg" "hyperLayout1.hyp[121].dn";
connectAttr "spine_poleVector_srt_inWorld.msg" "hyperLayout1.hyp[122].dn";
connectAttr "spine_03_matrix_localTo_body.msg" "hyperLayout1.hyp[123].dn";
connectAttr "spine_01_matrix_localTo_body.msg" "hyperLayout1.hyp[124].dn";
connectAttr "spine_ik_04_matrix_localTo_body.msg" "hyperLayout1.hyp[125].dn";
connectAttr "spine_ik_start_pass.msg" "hyperLayout1.hyp[126].dn";
connectAttr "spine_02_matrix_localTo_body.msg" "hyperLayout1.hyp[127].dn";
connectAttr "spine_poleVector_worldMatrix.msg" "hyperLayout1.hyp[128].dn";
connectAttr "spine_04_matrix_localTo_body.msg" "hyperLayout1.hyp[129].dn";
connectAttr "spine_05_matrix_localTo_body.msg" "hyperLayout1.hyp[130].dn";
connectAttr "spine_bone_04_length.msg" "hyperLayout1.hyp[131].dn";
connectAttr "spine_ik_03_worldMatrix.msg" "hyperLayout1.hyp[132].dn";
connectAttr "spine_ik_01_worldMatrix.msg" "hyperLayout1.hyp[133].dn";
connectAttr "spine_ik_end_rotation_asQuat.msg" "hyperLayout1.hyp[134].dn";
connectAttr "spine_body_srt_inWorld.msg" "hyperLayout1.hyp[135].dn";
connectAttr "spine_bone_05_length.msg" "hyperLayout1.hyp[136].dn";
connectAttr "spine_ik_02_worldMatrix.msg" "hyperLayout1.hyp[137].dn";
connectAttr "spine_ik_start_rotation_asQuat.msg" "hyperLayout1.hyp[138].dn";
connectAttr "spine_ik_stretch.msg" "hyperLayout1.hyp[139].dn";
connectAttr "spine_bone_02_length.msg" "hyperLayout1.hyp[140].dn";
connectAttr "spine_bone_03_length.msg" "hyperLayout1.hyp[141].dn";
connectAttr "spine_bone_01_length.msg" "hyperLayout1.hyp[142].dn";
connectAttr "spine_ik_start_twist.msg" "hyperLayout1.hyp[143].dn";
connectAttr "spine_ik_04_worldMatrix.msg" "hyperLayout1.hyp[144].dn";
connectAttr "spine_ik_05_worldMatrix.msg" "hyperLayout1.hyp[145].dn";
connectAttr "spine_iK_start_matrix_localTo_body.msg" "hyperLayout1.hyp[146].dn";
connectAttr "spine_chest_ik_ctrl_srt_localTo_body.msg" "hyperLayout1.hyp[147].dn"
		;
connectAttr "spine_hips_ik_ctrl_matrix_localTo_body.msg" "hyperLayout1.hyp[148].dn"
		;
connectAttr "spine_hips_ik_ctrl_srt_localTo_body.msg" "hyperLayout1.hyp[149].dn"
		;
connectAttr "deform.msg" "hyperLayout1.hyp[150].dn";
connectAttr "|spine_cmpt|deform|chest_srt.msg" "hyperLayout1.hyp[151].dn";
connectAttr "|spine_cmpt|deform|hips_srt.msg" "hyperLayout1.hyp[157].dn";
connectAttr "spine_chest_fk_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "spine_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "spine_chest_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "|spine_cmpt|output|chest_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "hips_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "spine_hips_ik_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "spine_body_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "spine_pelvis_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "spine_chest_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "spine_hips_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "spine_hips_ctrl_parent_defaultPose_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "spine_hips_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "spine_body_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "body_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "|spine_cmpt|output|hips_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "spine_chest_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "spine_chest_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "spine_ik_start_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "chest_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "spine_body_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "spine_chest_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "spine_pelvis_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "spine_body_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "spine_pelvis_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "spine_chest_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "spine_hips_ctrl_defaultPose_blend.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "root_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "spine_hips_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "defaultPose_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "spine_chest_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "spine_hips_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "spine_body_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "spine_ikEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "spine_body_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "spine_curve_midPoint.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "spine_ik_start_rotation_asQuat.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "spine_ik_end_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "spine_body_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn";
connectAttr "spine_curve_midPoint_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "spine_crv_skinCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "spine_ik_start_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "spine_poleVector_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "spine_poleVector_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "spine_ik_end_rotation_asQuat.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "spine_ik_end_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "spine_pv_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "spine_ik_start_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "spine_curve_midPoint.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "spine_effector.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn";
connectAttr "spine_poleVector_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "spine_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn";
connectAttr "spine_curve_midPoint_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "spine_ik_spine_rotatePlane_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "spine_chest_ik_ctrl_srt_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "spine_body_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn";
connectAttr "spine_bone_05_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "spine_bone_01_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "spine_pv_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "spine_ikEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "spine_ik_03_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "spine_ik_currentLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "spine_ik_01_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "spine_ik_stretchFactor.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "spine_ik_compression_clamped.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "spine_pv_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn";
connectAttr "spine_crv_skinCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "spine_body_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn";
connectAttr "spine_hips_ik_ctrl_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "spine_bone_04_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "spine_ik_stretch.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "spine_unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[23].dn"
		;
connectAttr "spine_ik_start_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[24].dn"
		;
connectAttr "spine_ik_start_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[25].dn"
		;
connectAttr "spine_ik_startEndVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[26].dn"
		;
connectAttr "spine_ik_02_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[27].dn"
		;
connectAttr "spine_ik_06_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[28].dn"
		;
connectAttr "spine_iK_start_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[29].dn"
		;
connectAttr "spine_bone_03_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[30].dn"
		;
connectAttr "spine_ik_end_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[31].dn"
		;
connectAttr "spine_ik_04_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[32].dn"
		;
connectAttr "spine_ik_offAxis.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[33].dn"
		;
connectAttr "spine_parameters.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[34].dn"
		;
connectAttr "spine_poleVector_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[35].dn"
		;
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[36].dn"
		;
connectAttr "spine_spline_curveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[37].dn"
		;
connectAttr "spine_ik_spine_rotatePlane_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[38].dn"
		;
connectAttr "spine_ik_compression.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[39].dn"
		;
connectAttr "spine_offset_ikHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[40].dn"
		;
connectAttr "spine_hips_ik_ctrl_srt_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[41].dn"
		;
connectAttr "spine_ik_05_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[42].dn"
		;
connectAttr "spine_bone_02_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[43].dn"
		;
connectAttr "spine_ik_offAxisAngle.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[44].dn"
		;
connectAttr "spine_poleVector_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[45].dn"
		;
connectAttr "spine_chest_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "spine_pv_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "spine_poleVector_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "spine_ik_spine_rotatePlane_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "spine_poleVector_position_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "spine_curve_midPoint.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "spine_body_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn";
connectAttr "spine_ik_spine_rotatePlane_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "spine_poleVector_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "spine_pv_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn";
connectAttr "spine_poleVector_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "spine_ikEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "spine_offset_ikHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "spine_crv_skinCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "spine_poleVector_srt_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "spine_poleVector_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "spine_curve_midPoint_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "spine_05_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn";
connectAttr "spine_05_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "spine_04_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "spine_05_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn"
		;
connectAttr "spine_ik_start_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn"
		;
connectAttr "spine_ik_04_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn"
		;
connectAttr "spine_ik_04_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[6].dn"
		;
connectAttr "spine_02_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[7].dn"
		;
connectAttr "spine_01_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[8].dn"
		;
connectAttr "spine_ik_03_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[9].dn"
		;
connectAttr "spine_ik_01_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[10].dn"
		;
connectAttr "spine_ik_01_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "spine_ik_05_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[12].dn"
		;
connectAttr "spine_02_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "spine_ik_02_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[14].dn"
		;
connectAttr "spine_body_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[15].dn";
connectAttr "spine_ik_end_rotation_asQuat.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[16].dn"
		;
connectAttr "spine_ik_03_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[17].dn"
		;
connectAttr "spine_ik_03_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[18].dn"
		;
connectAttr "spine_04_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[19].dn"
		;
connectAttr "spine_ik_05_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[20].dn"
		;
connectAttr "spine_ik_02_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[21].dn"
		;
connectAttr "spine_ik_05_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[22].dn"
		;
connectAttr "spine_01_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[23].dn"
		;
connectAttr "spine_ik_04_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[24].dn"
		;
connectAttr "spine_ik_start_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[25].dn"
		;
connectAttr "spine_ik_02_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[26].dn"
		;
connectAttr "spine_ik_01_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[27].dn"
		;
connectAttr "spine_ik_start_rotation_asQuat.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[28].dn"
		;
connectAttr "spine_ik_06_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[29].dn"
		;
connectAttr "spine_ik_02_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[30].dn"
		;
connectAttr "spine_01_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[31].dn";
connectAttr "spine_ik_02_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[32].dn"
		;
connectAttr "spine_ik_end_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[33].dn"
		;
connectAttr "spine_ik_03_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[34].dn"
		;
connectAttr "spine_ik_04_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[35].dn"
		;
connectAttr "spine_05_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[36].dn"
		;
connectAttr "spine_02_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[37].dn"
		;
connectAttr "spine_ik_04_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[38].dn"
		;
connectAttr "spine_02_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[39].dn";
connectAttr "spine_ik_03_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[40].dn"
		;
connectAttr "spine_ik_06_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[41].dn"
		;
connectAttr "spine_03_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[42].dn"
		;
connectAttr "spine_03_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[43].dn"
		;
connectAttr "spine_03_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[44].dn";
connectAttr "spine_ik_01_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[45].dn"
		;
connectAttr "spine_ik_end_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[46].dn"
		;
connectAttr "spine_ik_05_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[47].dn"
		;
connectAttr "spine_ik_01_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[48].dn"
		;
connectAttr "spine_ik_05_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[49].dn"
		;
connectAttr "spine_04_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[50].dn"
		;
connectAttr "spine_04_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[51].dn";
connectAttr "spine_03_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[52].dn"
		;
connectAttr "spine_ik_06_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[53].dn"
		;
connectAttr "spine_01_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[54].dn"
		;
connectAttr "spine_body_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_body_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_chest_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_chest_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_hips_ctrl_parent_defaultPose_matrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_hips_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_hips_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_pelvis_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_body_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_stretchFactor.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_01_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_02_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_03_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_04_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_05_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_01_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_02_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_03_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_04_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_05_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_iK_start_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_hips_ik_ctrl_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_chest_ik_ctrl_srt_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_hips_ik_ctrl_srt_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_start_rotation_asQuat.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "spine_ik_end_rotation_asQuat.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_ik_start_twist.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_end_twist.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_01_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_02_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_03_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_04_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_05_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_curve_midPoint_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_poleVector_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_poleVector_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_ik_01_position_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_02_position_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_03_position_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_04_position_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_05_position_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_06_position_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_01_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_02_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_03_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_04_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_05_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_01_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_02_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_03_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_04_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_05_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_ik_06_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_hips_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_chest_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_chest_fk_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_spline_curveInfo.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_spine_rotatePlane_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_poleVector_offset_matrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "spine_poleVector_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_poleVector_srt_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_poleVector_position_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_ik_currentLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_compression.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_compression_clamped.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "spine_ik_startEndVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_offAxisAngle.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_offAxis.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "spine_ikRPsolver.msg" ":ikSystem.sol" -na;
// End of spine.ma
