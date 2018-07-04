//Maya ASCII 2016 scene
//Name: spine.ma
//Last modified: Tue, Jun 12, 2018 08:20:46 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "quatToEuler" -nodeType "eulerToQuat" "quatNodes" "1.0";
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
	setAttr ".t" -type "double3" 30.241495248277317 24.973731907882922 19.887429074166654 ;
	setAttr ".r" -type "double3" -14.138352729527211 46.599999999995909 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "01094DA5-418A-91BA-AAEA-C29A88918CEB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 41.42376190764729;
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
createNode transform -n "spine_cmpt";
	rename -uid "79B53DE9-45CC-D603-0090-0D85BDBC22C7";
createNode transform -n "input" -p "spine_cmpt";
	rename -uid "A9DBC259-4DDF-2DED-849D-9795924ADE6F";
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
createNode transform -n "chest_ctrl_srtOffset" -p "control";
	rename -uid "0B42D6B0-4699-8355-2D97-16B5E88000D2";
createNode transform -n "chest_ik_ctrl" -p "chest_ctrl_srtOffset";
	rename -uid "503FCAB8-4EB3-B537-5A09-E4B5182A96B9";
	addAttr -ci true -k true -sn "twist" -ln "twist" -at "doubleAngle";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".twist";
createNode nurbsCurve -n "nurbsCircleShape1" -p "chest_ik_ctrl";
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
createNode transform -n "chest_fk_ctrl_srtOffset" -p "control";
	rename -uid "621D7545-4C14-BEF9-4A48-95A217344301";
createNode transform -n "chest_fk_ctrl" -p "chest_fk_ctrl_srtOffset";
	rename -uid "A44D52B6-4FE3-A4A5-CD8B-64A2592BBD34";
createNode nurbsCurve -n "nurbsCircleShape2" -p "chest_fk_ctrl";
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
createNode transform -n "hips_ik_ctrl_srtOffset" -p "control";
	rename -uid "DEAE332E-452C-890A-40AF-859C6559517F";
createNode transform -n "hips_ik_ctrl" -p "hips_ik_ctrl_srtOffset";
	rename -uid "8E8F85AB-4D5B-A205-3C26-C78CC8733261";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "hips_ik_ctrlShape" -p "hips_ik_ctrl";
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
createNode transform -n "pelvis_ctrl_srtOffset" -p "control";
	rename -uid "19DDB108-4806-0F83-44DA-0CA759E23DDA";
createNode transform -n "pelvis_ctrl" -p "pelvis_ctrl_srtOffset";
	rename -uid "194D50BD-41F4-5D59-8DAB-21A85C944550";
createNode nurbsCurve -n "nurbsCircleShape2" -p "pelvis_ctrl";
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
createNode transform -n "body_ctrl_srtOffset" -p "control";
	rename -uid "16FD5F76-49C7-7C1B-81E9-1CA1CCEC208F";
createNode transform -n "body_ctrl" -p "body_ctrl_srtOffset";
	rename -uid "19AB6C7B-45F2-63A0-28D7-0DA483C1B35C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "body_ctrlShape" -p "body_ctrl";
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
createNode transform -n "spine_pv_ctrl_srtOffset" -p "control";
	rename -uid "E4DF2C86-4105-1909-919E-F689A63CE2EC";
createNode transform -n "spine_pv_ctrl" -p "spine_pv_ctrl_srtOffset";
	rename -uid "4B75ECD3-480F-F95E-1928-E4AFC06E1CEF";
	setAttr -l on -k off ".v" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "curveShape1" -p "spine_pv_ctrl";
	rename -uid "D96DE4F7-47C9-2574-7FCA-BD83F528219C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 21;
	setAttr ".cc" -type "nurbsCurve" 
		1 74 0 no 3
		75 0 0.013698630136986301 0.027397260273972601 0.041095890410958902 0.054794520547945202
		 0.068493150684931503 0.082191780821917804 0.095890410958904104 0.1095890410958904
		 0.12328767123287671 0.13698630136986301 0.15068493150684931 0.16438356164383561 0.17808219178082191
		 0.19178082191780821 0.20547945205479451 0.21917808219178081 0.23287671232876711 0.24657534246575341
		 0.26027397260273971 0.27397260273972601 0.28767123287671231 0.30136986301369861 0.31506849315068491
		 0.32876712328767121 0.34246575342465752 0.35616438356164382 0.36986301369863012 0.38356164383561642
		 0.39726027397260272 0.41095890410958902 0.42465753424657532 0.43835616438356162 0.45205479452054792
		 0.46575342465753422 0.47945205479452052 0.49315068493150682 0.50684931506849318 0.52054794520547942
		 0.53424657534246578 0.54794520547945202 0.56164383561643838 0.57534246575342463 0.58904109589041098
		 0.60273972602739723 0.61643835616438358 0.63013698630136983 0.64383561643835618 0.65753424657534243
		 0.67123287671232879 0.68493150684931503 0.69863013698630139 0.71232876712328763 0.72602739726027399
		 0.73972602739726023 0.75342465753424659 0.76712328767123283 0.78082191780821919 0.79452054794520544
		 0.80821917808219179 0.82191780821917804 0.83561643835616439 0.84931506849315064 0.86301369863013699
		 0.87671232876712324 0.88408024360000004 0.8904109589041096 0.90410958904109584 0.9178082191780822
		 0.93150684931506844 0.9452054794520548 0.95890410958904104 0.9726027397260274 0.98630136986301364
		 1
		75
		0 0.75 0
		0 1 0
		0.17364817766693119 0.98480775301220791 1.0385833736505997e-016
		0.34202014332566949 0.93969262078590821 1.4904984047287927e-016
		0.50000000000000067 0.86602540378443849 1.897125396007886e-016
		0.64278760968653992 0.76604444311897779 2.2461091921210505e-016
		0.76604444311897868 0.64278760968653892 2.5268460970177099e-016
		0.86602540378443915 0.4999999999999995 2.7308060619023065e-016
		0.93969262078590876 0.34202014332566821 2.8517918664505447e-016
		0.98480775301220835 0.1736481776669298 2.8861274182129974e-016
		1 0 0
		0.98480775301220669 -1.0632884247878853e-017 0.17364817766693028
		0.9396926207859071 -2.094269368838494e-017 0.34202014332566844
		0.86602540378443749 -3.0616169978683799e-017 0.4999999999999995
		0.76604444311897701 -3.9359389436709882e-017 0.64278760968653859
		0.64278760968653847 -4.6906693763513611e-017 0.76604444311897724
		0.49999999999999928 -5.302876193624529e-017 0.86602540378443771
		0.34202014332566816 -5.7539578011392452e-017 0.93969262078590743
		0.17364817766692991 -6.0302083125094832e-017 0.98480775301220713
		0 0 1
		-0.17364817766693047 -6.0302083125094844e-017 0.98480775301220724
		-0.34202014332566871 -5.7539578011392464e-017 0.93969262078590765
		-0.49999999999999989 -5.3028761936245303e-017 0.86602540378443793
		-0.64278760968653903 -4.6906693763513623e-017 0.76604444311897746
		-0.76604444311897768 -3.9359389436709901e-017 0.64278760968653881
		-0.86602540378443826 -3.0616169978683806e-017 0.49999999999999956
		-0.93969262078590798 -2.0942693688384937e-017 0.34202014332566838
		-0.98480775301220769 -1.0632884247878841e-017 0.17364817766693008
		-1 0 0
		-0.98480775301220747 -0.17364817766692944 -2.8861274182129945e-016
		-0.93969262078590787 -0.34202014332566777 -2.8517918664505418e-016
		-0.86602540378443826 -0.49999999999999895 -2.7308060619023036e-016
		-0.7660444431189779 -0.64278760968653825 -2.526846097017707e-016
		-0.64278760968653925 -0.7660444431189769 -2.2461091921210481e-016
		-0.50000000000000022 -0.86602540378443749 -1.8971253960078838e-016
		-0.3420201433256691 -0.9396926207859071 -1.4904984047287908e-016
		-0.17364817766693097 -0.9848077530122068 -1.0385833736505985e-016
		0 -1 0
		0 -0.75 0
		-0.13023613325019823 -0.73860581475915499 -7.7893753023794887e-017
		-0.25651510749425183 -0.70476946558943032 -1.1178738035465931e-016
		-0.37500000000000011 -0.649519052838328 -1.4228440470059131e-016
		-0.48209070726490444 -0.57453333233923265 -1.684581894090786e-016
		-0.57453333233923343 -0.48209070726490372 -1.8951345727632805e-016
		-0.64951905283832867 -0.37499999999999917 -2.0481045464267277e-016
		-0.70476946558943088 -0.25651510749425083 -2.1388438998379064e-016
		-0.73860581475915554 -0.13023613325019712 -2.1645955636597459e-016
		-0.75 0 0
		-0.73860581475915577 -7.9746631859091308e-018 0.13023613325019756
		-0.70476946558943099 -1.5707020266288701e-017 0.25651510749425127
		-0.64951905283832867 -2.2962127484012853e-017 0.37499999999999967
		-0.5745333323392332 -2.9519542077532425e-017 0.48209070726490411
		-0.48209070726490427 -3.5180020322635219e-017 0.57453333233923309
		-0.37499999999999989 -3.9771571452183975e-017 0.64951905283832845
		-0.25651510749425155 -4.3154683508544354e-017 0.70476946558943077
		-0.13023613325019784 -4.5226562343821127e-017 0.73860581475915543
		0 0 0.75
		0.13023613325019767 0 0.73860581475915599
		0.25651510749425133 6.9388939039072284e-017 0.70476946558943121
		0.37499999999999994 8.3266726846886741e-017 0.649519052838329
		0.48209070726490438 4.163336342344337e-017 0.57453333233923354
		0.57453333233923332 1.6653345369377348e-016 0.48209070726490444
		0.649519052838329 5.5511151231257827e-017 0.375
		0.70476946558943132 1.6653345369377348e-016 0.2565151074942516
		0.73860581475915577 2.7755575615628914e-016 0.13023613325019787
		0.75172981866594912 2.7755575615628914e-016 2.2204460492503131e-016
		0.73860581475915621 0.13023613325019734 2.2204460492503131e-016
		0.70476946558943154 0.25651510749425116 2.1510571102112408e-016
		0.64951905283832922 0.37499999999999961 2.0816681711721685e-016
		0.57453333233923398 0.48209070726490416 1.8735013540549517e-016
		0.48209070726490488 0.57453333233923332 1.6653345369377348e-016
		0.37500000000000056 0.64951905283832878 1.4224732503009818e-016
		0.2565151074942521 0.70476946558943121 1.1102230246251565e-016
		0.13023613325019839 0.73860581475915588 7.6327832942979512e-017
		0 0.75 0
		;
createNode transform -n "internal" -p "spine_cmpt";
	rename -uid "1AEC7F61-4EEB-1FC7-A098-F5BB20D9502C";
	setAttr ".v" no;
createNode transform -n "body_srt" -p "internal";
	rename -uid "69E95B31-47EF-48C1-AE6B-5FA85EB65277";
createNode transform -n "ik_start_srt" -p "body_srt";
	rename -uid "2A23E5C6-43CA-DC64-9B27-C89F01113D68";
createNode joint -n "ik_start_jnt" -p "ik_start_srt";
	rename -uid "EFFC3573-41AF-4D29-207E-B0A5C33D1AE4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 16.565300007661182 -3.6897564133008323 1;
createNode transform -n "ik_end_srt" -p "body_srt";
	rename -uid "073F521C-484A-AA54-6733-75B9DCBAD944";
createNode ikHandle -n "spine_offset_ikHandle" -p "ik_end_srt";
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
createNode joint -n "ik_end_jnt" -p "ik_end_srt";
	rename -uid "90A32F14-45A4-1558-D484-92A3927786F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 16.565299987792969 -11.879956245422363 1;
createNode joint -n "spine_ik_01_offset_jnt" -p "body_srt";
	rename -uid "321430AF-4F62-8F63-82AB-59A183533F19";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" 0.0005519935498672923 9.4890655414852517e-015 -0.00063436186274507032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 20 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999995302302 9.6929848717681692e-006 0
		 0 -9.6929848717681692e-006 0.99999999995302302 0 0 16.565300007661182 -3.6897564133008323 1;
	setAttr ".radi" 0.1;
createNode joint -n "spine_ik_02_offset_jnt" -p "spine_ik_01_offset_jnt";
	rename -uid "A3F7193F-4A7D-C64B-C033-D6A191253FD3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" -0.00074849411556527409 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -10 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999999426159 -3.3877195391421326e-006 0
		 0 3.3877195391421326e-006 0.99999999999426159 0 0 16.565319393630926 -5.6897564132068785 1;
	setAttr ".radi" 0.1;
createNode joint -n "spine_ik_03_offset_jnt" -p "spine_ik_02_offset_jnt";
	rename -uid "B0604EA3-4CE7-6052-33DD-50B79C712817";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" 0.0011008441082758947 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -10 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999987554233 1.5777046403029041e-005 0
		 0 -1.5777046403029041e-005 0.99999999987554233 0 0 16.565313295735756 -7.4897564131965497 1;
	setAttr ".radi" 0.1;
createNode joint -n "spine_ik_04_offset_jnt" -p "spine_ik_03_offset_jnt";
	rename -uid "2C6838F5-44DF-B17B-E628-A5ABB21A0A4E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" -0.002260270865621054 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -10 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.99999999971867559 -2.3720215215213614e-005 0
		 0 2.3720215215213614e-005 0.99999999971867559 0 0 16.56533885455093 -9.109756412994928 1;
	setAttr ".radi" 0.1;
createNode joint -n "spine_ik_05_offset_jnt" -p "spine_ik_04_offset_jnt";
	rename -uid "DCD5BF47-42AE-330F-089E-91A53D474ABE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" 0.0011742678472722629 0 0 ;
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
createNode aimConstraint -n "ik_spine_rotatePlane_aimConstraint" -p "internal";
	rename -uid "ADE918E6-4085-2343-DF4A-C28C135987F0";
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".wut" 2;
createNode transform -n "output" -p "spine_cmpt";
	rename -uid "CFE566C5-40EB-72BA-A5D7-FA8CEEA37A95";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A836A254-4FBD-FF6A-CCD4-6B8674ABFDFF";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "53BB732E-44B2-4FE1-DEDA-2CBD786EBD14";
createNode displayLayer -n "defaultLayer";
	rename -uid "922BB33E-4724-CD36-A43D-95B0AB693DE9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5C80AD85-4B7E-74FC-36D4-8F8BA6A0E628";
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
		+ "                -width 1219\n                -height 841\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1219\n            -height 841\n"
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
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
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
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 26 100 -ps 2 74 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1219\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1219\\n    -height 841\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
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
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "92357E02-4A3C-3225-A9FC-4497A32F55FB";
	setAttr ".r" 5;
	setAttr ".d" 1;
	setAttr ".s" 36;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "3E3537F6-460D-9CF5-4590-3DAB7B081374";
	setAttr ".r" 2;
	setAttr ".d" 1;
	setAttr ".s" 36;
createNode multMatrix -n "body_ctrl_parentMatrix";
	rename -uid "27DD51D3-46CA-9483-1653-00B4D16D6B70";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "body_ctrl_srtOffset_inWorld";
	rename -uid "AB31FD10-4682-76EC-485B-67BE3765E8E8";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode multMatrix -n "chest_ctrl_parentMatrix";
	rename -uid "E5377C9C-4DD1-33B3-8E0F-9E87F75CF76A";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "chest_ctrl_srtOffset_inWorld";
	rename -uid "41F53F47-48F2-C8E2-00CA-D3A3428E5B5E";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode pairBlend -n "hips_ctrl_defaultPose_blend";
	rename -uid "2B23788A-416C-63C7-C216-BB8FDE1C548A";
createNode composeMatrix -n "hips_ctrl_parent_defaultPose_matrix";
	rename -uid "F9F572D0-4478-9562-528A-ADA63B51223D";
createNode multMatrix -n "hips_ctrl_parentMatrix";
	rename -uid "054C0CA0-4885-32C0-B2DF-82A7AD3C0FD7";
	setAttr -s 3 ".i";
createNode decomposeMatrix -n "hips_ctrl_srtOffset_inWorld";
	rename -uid "84C6E4C2-4B99-5A7E-3958-938F4186EE88";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -11.879956413300834 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "pelvis_ctrl_srtOffset_inWorld";
	rename -uid "BD48D509-4B7C-6A3B-087C-A682779F56E8";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -11.879956413300834 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "body_srt_inWorld";
	rename -uid "B00A0AE3-4811-C6CE-63E0-2D844990BD2F";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "9E06A81A-4825-7DF4-6FD3-8AB03E771B40";
createNode multiplyDivide -n "ik_stretchFactor";
	rename -uid "E9696833-43D0-D3B9-478A-F4B8B7734380";
	setAttr ".op" 2;
createNode condition -n "ik_stretch";
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
createNode multDoubleLinear -n "multDoubleLinear5";
	rename -uid "560934D6-42A8-F230-7015-9EA31CD84AC3";
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
createNode multMatrix -n "iK_start_matrix_localTo_body";
	rename -uid "1BA47DE7-4499-DBED-7DA0-558171132B77";
	setAttr -s 2 ".i";
createNode multMatrix -n "hips_ik_ctrl_matrix_localTo_body";
	rename -uid "C0F871B2-4FD0-2B1F-2A59-C89C76CAB669";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "chest_ik_ctrl_srt_localTo_body";
	rename -uid "99015E36-423B-335E-713C-A9BD26C77606";
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode decomposeMatrix -n "hips_ik_ctrl_srt_localTo_body";
	rename -uid "4CBDFE53-4BF7-3E76-EC7D-E09B64DCCA73";
	setAttr ".ot" -type "double3" 0 0 -8.1902 ;
	setAttr ".os" -type "double3" 1 1 1 ;
	setAttr ".oqw" 1;
createNode eulerToQuat -n "eulerToQuat1";
	rename -uid "0CCC22EA-4456-862C-4705-01811CC5B0B9";
createNode eulerToQuat -n "ik_start_rotation_asQuat";
	rename -uid "876C0D70-4324-FBC4-2E08-5385B8E45A13";
createNode eulerToQuat -n "ik_end_rotation_asQuat";
	rename -uid "1030EDB5-47B3-B198-72E4-A182DC13A324";
createNode quatToEuler -n "ik_start_twist";
	rename -uid "F7C226DC-450E-6E93-69AA-1982B251B2D8";
createNode quatToEuler -n "ik_end_twist";
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
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_02_srt_inWorld";
	rename -uid "AC2D92FE-42E7-3ED6-155A-85804B00B851";
	setAttr ".ot" -type "double3" 2.1333189381689266e-010 16.565319275870326 -5.6897564133008327 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_03_srt_inWorld";
	rename -uid "880807E2-4C5F-3FD2-8104-CFAC58E8B624";
	setAttr ".ot" -type "double3" 1.4498353906322592e-010 16.565313102623197 -7.4897563656171169 ;
	setAttr ".or" -type "double3" 0.000904343387563272 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_04_srt_inWorld";
	rename -uid "78E4AC48-44B8-ACC0-A7BB-B1B58A4C9F85";
	setAttr ".ot" -type "double3" 4.2808379063785651e-010 16.565338672336413 -9.109756489594778 ;
	setAttr ".or" -type "double3" -0.0013559274913303933 0 0 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "spine_05_srt_inWorld";
	rename -uid "02B459B5-4A0D-B7A2-7204-EDA48DBFAEE9";
	setAttr ".ot" -type "double3" 4.6064110859056484e-011 16.565304168187442 -10.567756195863089 ;
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
createNode tweak -n "tweak1";
	rename -uid "43B228B9-4674-A467-FFF8-F6AE8FC0749F";
createNode objectSet -n "skinCluster1Set";
	rename -uid "39154A4E-4088-CBBB-FBD9-60B65F2955F9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "2A4FDB2F-4DAB-BC01-8C3A-3B844EBD6197";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "8F638B03-4A5F-EA19-E4C7-3EB3F35E7CA6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "6FE73E12-42E3-2CE0-4EC0-3F98F4558FFF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "F35E4FFA-4240-7ADA-EEDA-67869BD64139";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "83AA7741-4A16-E0C6-3C32-1DBAF112CBF2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode dagPose -n "bindPose1";
	rename -uid "CC7631B5-4B5C-D1DC-BE07-67B5D1FA8555";
	setAttr -s 7 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 16.565300007661182 -3.6897564133008323 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 16.565300007661182 -3.6897564133008323 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 16.565299987792969 -11.879956245422363 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 16.565300007661182 -3.6897564133008323 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.9868213740892315e-008
		 -8.1901998321215306 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 7 ".m";
	setAttr -s 7 ".p";
	setAttr -s 7 ".g[0:6]" yes yes yes yes no yes no;
	setAttr ".bp" yes;
createNode composeMatrix -n "spine_offset_ctrl_parentMatrix_localTo_body";
	rename -uid "433D86CE-4FAE-E1D5-C36B-BDAE631F1E49";
createNode vectorProduct -n "spine_curve_midPoint_localTo_body";
	rename -uid "07AF6199-4533-5BF3-FEC4-37BD204495E4";
	setAttr ".op" 4;
createNode multMatrix -n "spine_poleVector_worldMatrix";
	rename -uid "775FABB0-4D44-11D9-91B4-278579A232A9";
	setAttr -s 2 ".i";
createNode network -n "ikEnd_pass";
	rename -uid "5955A076-46F5-9B35-B85C-F18B7ACDCBFC";
	addAttr -ci true -sn "worldMatrix" -ln "worldMatrix" -dt "matrix";
	addAttr -ci true -sn "worldInverseMatrix" -ln "worldInverseMatrix" -dt "matrix";
createNode network -n "ik_start_pass";
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
createNode composeMatrix -n "spine_02_matrix_localTo_body";
	rename -uid "504A6574-4358-5D5D-D22F-EF8F20F4B8B3";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.1333189381689266e-010 1.9268209143774584e-005 -2 1;
createNode composeMatrix -n "spine_03_matrix_localTo_body";
	rename -uid "0BA03DEE-443D-EA1C-0219-558B66C71467";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 0.99999999987543631 1.5783769680962873e-005 0
		 0 -1.5783769680962873e-005 0.99999999987543631 0 1.4498353906322592e-010 1.3094962014292832e-005 -3.7999999523162842 1;
createNode composeMatrix -n "spine_04_matrix_localTo_body";
	rename -uid "8AA63534-42FA-1552-C517-228A04777796";
	setAttr ".omat" -type "matrix" 1 0 -0 0 -0 0.99999999971997444 -2.3665399139813257e-005 0
		 0 2.3665399139813257e-005 0.99999999971997444 0 4.2808379063785651e-010 3.8664675230393186e-005 -5.4200000762939453 1;
createNode composeMatrix -n "spine_05_matrix_localTo_body";
	rename -uid "994D55F2-4072-9702-A2F7-199FB4812B4B";
	setAttr ".omat" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.6064110859056484e-011 4.1605262595112436e-006 -6.8779997825622559 1;
createNode multMatrix -n "spine_ik_06_matrix_localTo_body";
	rename -uid "DDC39511-494D-6B96-F082-7A9A07002A5D";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "hips_srt_inWorld";
	rename -uid "B0365716-46FF-BF83-12C0-A991628E45A5";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -11.879956413300834 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "chest_srt_inWorld";
	rename -uid "C3E25486-40E2-35B4-4F8E-C7B312F39C27";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode decomposeMatrix -n "chest_fk_ctrl_srtOffset_inWorld";
	rename -uid "341C9CBA-45F0-5FB9-4C1D-A4BF6DF77145";
	setAttr ".ot" -type "double3" 0 16.565300007661182 -3.6897564133008323 ;
	setAttr ".os" -type "double3" 1 1 1 ;
createNode dagPose -n "bindPose2";
	rename -uid "680AD403-487B-109A-D95C-AB8F650FE596";
	setAttr -s 9 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 16.565300007661182 -3.6897564133008323 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 0.99999999993354971 1.1528251360287399e-005 0
		 0 -1.1528251360287399e-005 0.99999999993354971 0 0 16.565300007661182 -3.6897564133008323 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 0.99999999999857381 -1.6889369587138417e-006 0
		 0 1.6889369587138417e-006 0.99999999999857381 0 0 16.565323064163902 -5.6897564131679319 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 0.9999999998767316 1.5701497877032717e-005 0
		 0 -1.5701497877032717e-005 0.9999999998767316 0 0 16.565320024077376 -7.4897564131653649 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 0.99999999967524633 -2.5485441924865355e-005 0
		 0 2.5485441924865355e-005 0.99999999967524633 0 0 16.565345460503938 -9.1097564129656696 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 0.99999999998001987 -6.3214515300276477e-006 0
		 0 6.3214515300276477e-006 0.99999999998001987 0 0 16.565308302729612 -10.567756412492178 1;
	setAttr ".wm[8]" -type "matrix" 1 0 0 0 0 0.99999999998001987 -6.3214515300276477e-006 0
		 0 6.3214515300276477e-006 0.99999999998001987 0 0 16.565300007720914 -11.87995641246596 1;
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 16.565300007661182 -3.6897564133008323 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.1528251360542751e-005 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -1.3217188319257397e-005 0 0 0 0
		 0 -2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 1.7390434836392528e-005 0 0 0 0
		 0 -1.8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -4.118693980530207e-005 0 0 0 0
		 0 -1.6200000000000001 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 1.9163990397554433e-005 0 0 0 0
		 0 -1.4580000000000002 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -1.3122 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 9 ".m";
	setAttr -s 9 ".p";
	setAttr -s 9 ".g[0:8]" yes yes yes no no no no no no;
	setAttr ".bp" yes;
createNode curveInfo -n "spine_spline_curveInfo";
	rename -uid "3DA377F1-4F83-FF2F-D5BC-9EBF84BF6943";
createNode composeMatrix -n "ik_spine_rotatePlane_matrix_localTo_body";
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
createNode distanceBetween -n "ik_currentLength";
	rename -uid "D7F3BA48-4CC9-716D-91ED-A0A6507C6AE9";
createNode multiplyDivide -n "ik_compression";
	rename -uid "6439E5F3-4778-18CF-308D-A99BDC3E6D0E";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 8.1901999 1 1 ;
createNode clamp -n "ik_compression_clamped";
	rename -uid "872BC540-4EF3-7A6B-2A7F-8BB648779141";
	setAttr ".mx" -type "float3" 1 1 1 ;
createNode plusMinusAverage -n "ik_startEndVector";
	rename -uid "B924F496-453F-527F-55DC-EFB17744C0B6";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode angleBetween -n "ik_offAxisAngle";
	rename -uid "7CFADF39-4641-4FD1-60F2-08894AE2D804";
	setAttr ".v1" -type "double3" 0 0 -1 ;
createNode remapValue -n "ik_offAxis";
	rename -uid "3AF3CFD1-4203-DCF2-C342-2EBDD18F1814";
	setAttr ".imx" 90;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion1";
	rename -uid "95ABC8E3-482F-1764-7D2C-1D8C5C25801B";
	setAttr ".cf" 57.295779513082323;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "43201361-4AC9-67D1-22F7-13B8F4908671";
	setAttr -s 5 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "controls";
	setAttr ".tgi[0].vl" -type "double2" -2272.8936825770925 -1120.2380507238347 ;
	setAttr ".tgi[0].vh" -type "double2" 3520.5126806202161 448.80950597543642 ;
	setAttr -s 34 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -432.85714721679687;
	setAttr ".tgi[0].ni[0].y" -864.28570556640625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 38.571430206298828;
	setAttr ".tgi[0].ni[1].y" 121.42857360839844;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 295.71429443359375;
	setAttr ".tgi[0].ni[2].y" -650;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 595.71429443359375;
	setAttr ".tgi[0].ni[3].y" -264.28570556640625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 938.5714111328125;
	setAttr ".tgi[0].ni[4].y" 121.42857360839844;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 57.142856597900391;
	setAttr ".tgi[0].ni[5].y" -375.71429443359375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 38.571430206298828;
	setAttr ".tgi[0].ni[6].y" -650;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 595.71429443359375;
	setAttr ".tgi[0].ni[7].y" -7.1428570747375488;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 595.71429443359375;
	setAttr ".tgi[0].ni[8].y" -950;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 595.71429443359375;
	setAttr ".tgi[0].ni[9].y" 121.42857360839844;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -175.71427917480469;
	setAttr ".tgi[0].ni[10].y" -950;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 295.71429443359375;
	setAttr ".tgi[0].ni[11].y" -864.28570556640625;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 295.71429443359375;
	setAttr ".tgi[0].ni[12].y" -735.71429443359375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 38.571430206298828;
	setAttr ".tgi[0].ni[13].y" -135.71427917480469;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 38.571430206298828;
	setAttr ".tgi[0].ni[14].y" -264.28570556640625;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 38.571430206298828;
	setAttr ".tgi[0].ni[15].y" -864.28570556640625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 38.571430206298828;
	setAttr ".tgi[0].ni[16].y" -7.1428570747375488;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 338.57144165039062;
	setAttr ".tgi[0].ni[17].y" -264.28570556640625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -454.28570556640625;
	setAttr ".tgi[0].ni[18].y" -477.14285278320312;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 295.71429443359375;
	setAttr ".tgi[0].ni[19].y" -950;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 38.571430206298828;
	setAttr ".tgi[0].ni[20].y" 207.14285278320312;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -200;
	setAttr ".tgi[0].ni[21].y" -375.71429443359375;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 938.5714111328125;
	setAttr ".tgi[0].ni[22].y" -264.28570556640625;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -457.14285278320312;
	setAttr ".tgi[0].ni[23].y" -375.71429443359375;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 595.71429443359375;
	setAttr ".tgi[0].ni[24].y" -735.71429443359375;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 938.5714111328125;
	setAttr ".tgi[0].ni[25].y" -135.71427917480469;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -432.85714721679687;
	setAttr ".tgi[0].ni[26].y" -650;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 338.57144165039062;
	setAttr ".tgi[0].ni[27].y" -7.1428570747375488;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -175.71427917480469;
	setAttr ".tgi[0].ni[28].y" -564.28570556640625;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 338.57144165039062;
	setAttr ".tgi[0].ni[29].y" 121.42857360839844;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 852.85711669921875;
	setAttr ".tgi[0].ni[30].y" -950;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 852.85711669921875;
	setAttr ".tgi[0].ni[31].y" -735.71429443359375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 938.5714111328125;
	setAttr ".tgi[0].ni[32].y" -7.1428570747375488;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 595.71429443359375;
	setAttr ".tgi[0].ni[33].y" -135.71427917480469;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "offset_control";
	setAttr ".tgi[1].vl" -type "double2" -447.20694193655231 -913.09520181209473 ;
	setAttr ".tgi[1].vh" -type "double2" 5376.9686508073282 664.28568788937264 ;
	setAttr -s 13 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 2027.142822265625;
	setAttr ".tgi[1].ni[0].y" -117.14286041259766;
	setAttr ".tgi[1].ni[0].nvs" 18304;
	setAttr ".tgi[1].ni[1].x" 1470;
	setAttr ".tgi[1].ni[1].y" -31.428571701049805;
	setAttr ".tgi[1].ni[1].nvs" 18304;
	setAttr ".tgi[1].ni[2].x" 2027.142822265625;
	setAttr ".tgi[1].ni[2].y" -331.42855834960937;
	setAttr ".tgi[1].ni[2].nvs" 18304;
	setAttr ".tgi[1].ni[3].x" 1470;
	setAttr ".tgi[1].ni[3].y" -117.14286041259766;
	setAttr ".tgi[1].ni[3].nvs" 18304;
	setAttr ".tgi[1].ni[4].x" 1727.142822265625;
	setAttr ".tgi[1].ni[4].y" -117.14286041259766;
	setAttr ".tgi[1].ni[4].nvs" 18304;
	setAttr ".tgi[1].ni[5].x" 2027.142822265625;
	setAttr ".tgi[1].ni[5].y" -31.428571701049805;
	setAttr ".tgi[1].ni[5].nvs" 18304;
	setAttr ".tgi[1].ni[6].x" 1727.142822265625;
	setAttr ".tgi[1].ni[6].y" -331.42855834960937;
	setAttr ".tgi[1].ni[6].nvs" 18304;
	setAttr ".tgi[1].ni[7].x" 2370;
	setAttr ".tgi[1].ni[7].y" -331.42855834960937;
	setAttr ".tgi[1].ni[7].nvs" 18304;
	setAttr ".tgi[1].ni[8].x" 1727.142822265625;
	setAttr ".tgi[1].ni[8].y" -31.428571701049805;
	setAttr ".tgi[1].ni[8].nvs" 18304;
	setAttr ".tgi[1].ni[9].x" 3484.28564453125;
	setAttr ".tgi[1].ni[9].y" 97.142860412597656;
	setAttr ".tgi[1].ni[9].nvs" 18304;
	setAttr ".tgi[1].ni[10].x" 2970;
	setAttr ".tgi[1].ni[10].y" 97.142860412597656;
	setAttr ".tgi[1].ni[10].nvs" 18304;
	setAttr ".tgi[1].ni[11].x" 3227.142822265625;
	setAttr ".tgi[1].ni[11].y" 97.142860412597656;
	setAttr ".tgi[1].ni[11].nvs" 18304;
	setAttr ".tgi[1].ni[12].x" 2027.142822265625;
	setAttr ".tgi[1].ni[12].y" 97.142860412597656;
	setAttr ".tgi[1].ni[12].nvs" 18304;
	setAttr ".tgi[2].tn" -type "string" "ik";
	setAttr ".tgi[2].vl" -type "double2" -331.04108699647099 101.50098789740956 ;
	setAttr ".tgi[2].vh" -type "double2" 1462.9994984357286 1159.5822808019366 ;
	setAttr -s 46 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -522.85711669921875;
	setAttr ".tgi[2].ni[0].y" 1102.857177734375;
	setAttr ".tgi[2].ni[0].nvs" 18304;
	setAttr ".tgi[2].ni[1].x" -1058.5714111328125;
	setAttr ".tgi[2].ni[1].y" 1107.142822265625;
	setAttr ".tgi[2].ni[1].nvs" 18304;
	setAttr ".tgi[2].ni[2].x" 1170;
	setAttr ".tgi[2].ni[2].y" 1278.5714111328125;
	setAttr ".tgi[2].ni[2].nvs" 18304;
	setAttr ".tgi[2].ni[3].x" 420;
	setAttr ".tgi[2].ni[3].y" 502.85714721679687;
	setAttr ".tgi[2].ni[3].nvs" 18304;
	setAttr ".tgi[2].ni[4].x" 934.28570556640625;
	setAttr ".tgi[2].ni[4].y" 1188.5714111328125;
	setAttr ".tgi[2].ni[4].nvs" 18304;
	setAttr ".tgi[2].ni[5].x" -522.85711669921875;
	setAttr ".tgi[2].ni[5].y" 845.71429443359375;
	setAttr ".tgi[2].ni[5].nvs" 18304;
	setAttr ".tgi[2].ni[6].x" -1315.7142333984375;
	setAttr ".tgi[2].ni[6].y" 892.85711669921875;
	setAttr ".tgi[2].ni[6].nvs" 18304;
	setAttr ".tgi[2].ni[7].x" -1015.7142944335937;
	setAttr ".tgi[2].ni[7].y" 507.14285278320312;
	setAttr ".tgi[2].ni[7].nvs" 18304;
	setAttr ".tgi[2].ni[8].x" -1830;
	setAttr ".tgi[2].ni[8].y" 935.71429443359375;
	setAttr ".tgi[2].ni[8].nvs" 18304;
	setAttr ".tgi[2].ni[9].x" 398.57144165039062;
	setAttr ".tgi[2].ni[9].y" 1192.857177734375;
	setAttr ".tgi[2].ni[9].nvs" 18304;
	setAttr ".tgi[2].ni[10].x" -1058.5714111328125;
	setAttr ".tgi[2].ni[10].y" 764.28570556640625;
	setAttr ".tgi[2].ni[10].nvs" 18304;
	setAttr ".tgi[2].ni[11].x" 420;
	setAttr ".tgi[2].ni[11].y" 245.71427917480469;
	setAttr ".tgi[2].ni[11].nvs" 18304;
	setAttr ".tgi[2].ni[12].x" 55.714286804199219;
	setAttr ".tgi[2].ni[12].y" 507.14285278320312;
	setAttr ".tgi[2].ni[12].nvs" 18304;
	setAttr ".tgi[2].ni[13].x" 1470;
	setAttr ".tgi[2].ni[13].y" 1278.5714111328125;
	setAttr ".tgi[2].ni[13].nvs" 18304;
	setAttr ".tgi[2].ni[14].x" 1812.857177734375;
	setAttr ".tgi[2].ni[14].y" 1021.4285888671875;
	setAttr ".tgi[2].ni[14].nvs" 18304;
	setAttr ".tgi[2].ni[15].x" -1315.7142333984375;
	setAttr ".tgi[2].ni[15].y" 978.5714111328125;
	setAttr ".tgi[2].ni[15].nvs" 18304;
	setAttr ".tgi[2].ni[16].x" -780;
	setAttr ".tgi[2].ni[16].y" 1102.857177734375;
	setAttr ".tgi[2].ni[16].nvs" 18304;
	setAttr ".tgi[2].ni[17].x" 1812.857177734375;
	setAttr ".tgi[2].ni[17].y" 1107.142822265625;
	setAttr ".tgi[2].ni[17].nvs" 18304;
	setAttr ".tgi[2].ni[18].x" 420;
	setAttr ".tgi[2].ni[18].y" 331.42855834960937;
	setAttr ".tgi[2].ni[18].nvs" 18304;
	setAttr ".tgi[2].ni[19].x" -244.28572082519531;
	setAttr ".tgi[2].ni[19].y" 507.14285278320312;
	setAttr ".tgi[2].ni[19].nvs" 18304;
	setAttr ".tgi[2].ni[20].x" -758.5714111328125;
	setAttr ".tgi[2].ni[20].y" 592.85711669921875;
	setAttr ".tgi[2].ni[20].nvs" 18304;
	setAttr ".tgi[2].ni[21].x" 98.571426391601563;
	setAttr ".tgi[2].ni[21].y" 1107.142822265625;
	setAttr ".tgi[2].ni[21].nvs" 18304;
	setAttr ".tgi[2].ni[22].x" 955.71429443359375;
	setAttr ".tgi[2].ni[22].y" 764.28570556640625;
	setAttr ".tgi[2].ni[22].nvs" 18304;
	setAttr ".tgi[2].ni[23].x" 98.571426391601563;
	setAttr ".tgi[2].ni[23].y" 1192.857177734375;
	setAttr ".tgi[2].ni[23].nvs" 18304;
	setAttr ".tgi[2].ni[24].x" 1170;
	setAttr ".tgi[2].ni[24].y" 1107.142822265625;
	setAttr ".tgi[2].ni[24].nvs" 18304;
	setAttr ".tgi[2].ni[25].x" -1015.7142944335937;
	setAttr ".tgi[2].ni[25].y" 592.85711669921875;
	setAttr ".tgi[2].ni[25].nvs" 18304;
	setAttr ".tgi[2].ni[26].x" 934.28570556640625;
	setAttr ".tgi[2].ni[26].y" 502.85714721679687;
	setAttr ".tgi[2].ni[26].nvs" 18304;
	setAttr ".tgi[2].ni[27].x" 934.28570556640625;
	setAttr ".tgi[2].ni[27].y" 417.14285278320312;
	setAttr ".tgi[2].ni[27].nvs" 18304;
	setAttr ".tgi[2].ni[28].x" -758.5714111328125;
	setAttr ".tgi[2].ni[28].y" 764.28570556640625;
	setAttr ".tgi[2].ni[28].nvs" 18304;
	setAttr ".tgi[2].ni[29].x" 934.28570556640625;
	setAttr ".tgi[2].ni[29].y" 331.42855834960937;
	setAttr ".tgi[2].ni[29].nvs" 18304;
	setAttr ".tgi[2].ni[30].x" 2112.857177734375;
	setAttr ".tgi[2].ni[30].y" 935.71429443359375;
	setAttr ".tgi[2].ni[30].nvs" 18304;
	setAttr ".tgi[2].ni[31].x" 420;
	setAttr ".tgi[2].ni[31].y" 160;
	setAttr ".tgi[2].ni[31].nvs" 18304;
	setAttr ".tgi[2].ni[32].x" 1277.142822265625;
	setAttr ".tgi[2].ni[32].y" 160;
	setAttr ".tgi[2].ni[32].nvs" 18304;
	setAttr ".tgi[2].ni[33].x" 420;
	setAttr ".tgi[2].ni[33].y" 417.14285278320312;
	setAttr ".tgi[2].ni[33].nvs" 18304;
	setAttr ".tgi[2].ni[34].x" 934.28570556640625;
	setAttr ".tgi[2].ni[34].y" 245.71427917480469;
	setAttr ".tgi[2].ni[34].nvs" 18304;
	setAttr ".tgi[2].ni[35].x" 934.28570556640625;
	setAttr ".tgi[2].ni[35].y" 160;
	setAttr ".tgi[2].ni[35].nvs" 18304;
	setAttr ".tgi[2].ni[36].x" 2455.71435546875;
	setAttr ".tgi[2].ni[36].y" 764.28570556640625;
	setAttr ".tgi[2].ni[36].nvs" 18304;
	setAttr ".tgi[2].ni[37].x" 1427.142822265625;
	setAttr ".tgi[2].ni[37].y" 1107.142822265625;
	setAttr ".tgi[2].ni[37].nvs" 18304;
	setAttr ".tgi[2].ni[38].x" 934.28570556640625;
	setAttr ".tgi[2].ni[38].y" 888.5714111328125;
	setAttr ".tgi[2].ni[38].nvs" 18304;
	setAttr ".tgi[2].ni[39].x" -51.428569793701172;
	setAttr ".tgi[2].ni[39].y" 888.5714111328125;
	setAttr ".tgi[2].ni[39].nvs" 18304;
	setAttr ".tgi[2].ni[40].x" 248.57142639160156;
	setAttr ".tgi[2].ni[40].y" 888.5714111328125;
	setAttr ".tgi[2].ni[40].nvs" 18304;
	setAttr ".tgi[2].ni[41].x" 591.4285888671875;
	setAttr ".tgi[2].ni[41].y" 845.71429443359375;
	setAttr ".tgi[2].ni[41].nvs" 18304;
	setAttr ".tgi[2].ni[42].x" -51.428569793701172;
	setAttr ".tgi[2].ni[42].y" 717.14288330078125;
	setAttr ".tgi[2].ni[42].nvs" 18304;
	setAttr ".tgi[2].ni[43].x" 205.71427917480469;
	setAttr ".tgi[2].ni[43].y" 717.14288330078125;
	setAttr ".tgi[2].ni[43].nvs" 18304;
	setAttr ".tgi[2].ni[44].x" 634.28570556640625;
	setAttr ".tgi[2].ni[44].y" 717.14288330078125;
	setAttr ".tgi[2].ni[44].nvs" 18304;
	setAttr ".tgi[2].ni[45].x" 420;
	setAttr ".tgi[2].ni[45].y" 717.14288330078125;
	setAttr ".tgi[2].ni[45].nvs" 18304;
	setAttr ".tgi[3].tn" -type "string" "pv";
	setAttr ".tgi[3].vl" -type "double2" -1491.7581824810907 332.86230415155973 ;
	setAttr ".tgi[3].vh" -type "double2" 1479.5329082416192 1854.3628836611952 ;
	setAttr -s 18 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 182.85714721679687;
	setAttr ".tgi[3].ni[0].y" 1355.7142333984375;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" 2198.571533203125;
	setAttr ".tgi[3].ni[1].y" 1024.2857666015625;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" -74.285713195800781;
	setAttr ".tgi[3].ni[2].y" 1227.142822265625;
	setAttr ".tgi[3].ni[2].nvs" 18304;
	setAttr ".tgi[3].ni[3].x" 1941.4285888671875;
	setAttr ".tgi[3].ni[3].y" 1110;
	setAttr ".tgi[3].ni[3].nvs" 18304;
	setAttr ".tgi[3].ni[4].x" 2198.571533203125;
	setAttr ".tgi[3].ni[4].y" 938.5714111328125;
	setAttr ".tgi[3].ni[4].nvs" 18304;
	setAttr ".tgi[3].ni[5].x" 1254.2857666015625;
	setAttr ".tgi[3].ni[5].y" 1312.857177734375;
	setAttr ".tgi[3].ni[5].nvs" 18304;
	setAttr ".tgi[3].ni[6].x" -674.28570556640625;
	setAttr ".tgi[3].ni[6].y" 1141.4285888671875;
	setAttr ".tgi[3].ni[6].nvs" 18304;
	setAttr ".tgi[3].ni[7].x" 482.85714721679687;
	setAttr ".tgi[3].ni[7].y" 1312.857177734375;
	setAttr ".tgi[3].ni[7].nvs" 18304;
	setAttr ".tgi[3].ni[8].x" 182.85714721679687;
	setAttr ".tgi[3].ni[8].y" 1227.142822265625;
	setAttr ".tgi[3].ni[8].nvs" 18304;
	setAttr ".tgi[3].ni[9].x" 2841.428466796875;
	setAttr ".tgi[3].ni[9].y" 938.5714111328125;
	setAttr ".tgi[3].ni[9].nvs" 18304;
	setAttr ".tgi[3].ni[10].x" -374.28570556640625;
	setAttr ".tgi[3].ni[10].y" 1270;
	setAttr ".tgi[3].ni[10].nvs" 18304;
	setAttr ".tgi[3].ni[11].x" -974.28570556640625;
	setAttr ".tgi[3].ni[11].y" 1355.7142333984375;
	setAttr ".tgi[3].ni[11].nvs" 18304;
	setAttr ".tgi[3].ni[12].x" -674.28570556640625;
	setAttr ".tgi[3].ni[12].y" 1355.7142333984375;
	setAttr ".tgi[3].ni[12].nvs" 18304;
	setAttr ".tgi[3].ni[13].x" -374.28570556640625;
	setAttr ".tgi[3].ni[13].y" 1355.7142333984375;
	setAttr ".tgi[3].ni[13].nvs" 18304;
	setAttr ".tgi[3].ni[14].x" 2198.571533203125;
	setAttr ".tgi[3].ni[14].y" 1110;
	setAttr ".tgi[3].ni[14].nvs" 18304;
	setAttr ".tgi[3].ni[15].x" 2498.571533203125;
	setAttr ".tgi[3].ni[15].y" 938.5714111328125;
	setAttr ".tgi[3].ni[15].nvs" 18304;
	setAttr ".tgi[3].ni[16].x" 1684.2857666015625;
	setAttr ".tgi[3].ni[16].y" 1110;
	setAttr ".tgi[3].ni[16].nvs" 18304;
	setAttr ".tgi[3].ni[17].x" 782.85711669921875;
	setAttr ".tgi[3].ni[17].y" 1312.857177734375;
	setAttr ".tgi[3].ni[17].nvs" 18304;
	setAttr ".tgi[4].tn" -type "string" "spine";
	setAttr ".tgi[4].vl" -type "double2" 285.92395208502273 -1041.9342649975817 ;
	setAttr ".tgi[4].vh" -type "double2" 4206.6719215946214 965.75199850785827 ;
	setAttr -s 55 ".tgi[4].ni";
	setAttr ".tgi[4].ni[0].x" 3571.428466796875;
	setAttr ".tgi[4].ni[0].y" 10;
	setAttr ".tgi[4].ni[0].nvs" 18304;
	setAttr ".tgi[4].ni[1].x" 785.71429443359375;
	setAttr ".tgi[4].ni[1].y" -547.14288330078125;
	setAttr ".tgi[4].ni[1].nvs" 18304;
	setAttr ".tgi[4].ni[2].x" 785.71429443359375;
	setAttr ".tgi[4].ni[2].y" -204.28572082519531;
	setAttr ".tgi[4].ni[2].nvs" 18304;
	setAttr ".tgi[4].ni[3].x" -114.28571319580078;
	setAttr ".tgi[4].ni[3].y" -461.42855834960937;
	setAttr ".tgi[4].ni[3].nvs" 18304;
	setAttr ".tgi[4].ni[4].x" 142.85714721679687;
	setAttr ".tgi[4].ni[4].y" -632.85711669921875;
	setAttr ".tgi[4].ni[4].nvs" 18304;
	setAttr ".tgi[4].ni[5].x" 3185.71435546875;
	setAttr ".tgi[4].ni[5].y" 95.714286804199219;
	setAttr ".tgi[4].ni[5].nvs" 18304;
	setAttr ".tgi[4].ni[6].x" -114.28571319580078;
	setAttr ".tgi[4].ni[6].y" -632.85711669921875;
	setAttr ".tgi[4].ni[6].nvs" 18304;
	setAttr ".tgi[4].ni[7].x" 2457.142822265625;
	setAttr ".tgi[4].ni[7].y" -547.14288330078125;
	setAttr ".tgi[4].ni[7].nvs" 18304;
	setAttr ".tgi[4].ni[8].x" 2457.142822265625;
	setAttr ".tgi[4].ni[8].y" -204.28572082519531;
	setAttr ".tgi[4].ni[8].nvs" 18304;
	setAttr ".tgi[4].ni[9].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[9].y" -332.85714721679687;
	setAttr ".tgi[4].ni[9].nvs" 18304;
	setAttr ".tgi[4].ni[10].x" 2157.142822265625;
	setAttr ".tgi[4].ni[10].y" -547.14288330078125;
	setAttr ".tgi[4].ni[10].nvs" 18304;
	setAttr ".tgi[4].ni[11].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[11].y" -504.28570556640625;
	setAttr ".tgi[4].ni[11].nvs" 18304;
	setAttr ".tgi[4].ni[12].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[12].y" -75.714286804199219;
	setAttr ".tgi[4].ni[12].nvs" 18304;
	setAttr ".tgi[4].ni[13].x" 3571.428466796875;
	setAttr ".tgi[4].ni[13].y" 95.714286804199219;
	setAttr ".tgi[4].ni[13].nvs" 18304;
	setAttr ".tgi[4].ni[14].x" 785.71429443359375;
	setAttr ".tgi[4].ni[14].y" -461.42855834960937;
	setAttr ".tgi[4].ni[14].nvs" 18304;
	setAttr ".tgi[4].ni[15].x" 400;
	setAttr ".tgi[4].ni[15].y" -461.42855834960937;
	setAttr ".tgi[4].ni[15].nvs" 18304;
	setAttr ".tgi[4].ni[16].x" 2157.142822265625;
	setAttr ".tgi[4].ni[16].y" -461.42855834960937;
	setAttr ".tgi[4].ni[16].nvs" 18304;
	setAttr ".tgi[4].ni[17].x" 3914.28564453125;
	setAttr ".tgi[4].ni[17].y" -75.714286804199219;
	setAttr ".tgi[4].ni[17].nvs" 18304;
	setAttr ".tgi[4].ni[18].x" 3185.71435546875;
	setAttr ".tgi[4].ni[18].y" 181.42857360839844;
	setAttr ".tgi[4].ni[18].nvs" 18304;
	setAttr ".tgi[4].ni[19].x" 2157.142822265625;
	setAttr ".tgi[4].ni[19].y" -375.71429443359375;
	setAttr ".tgi[4].ni[19].nvs" 18304;
	setAttr ".tgi[4].ni[20].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[20].y" -590;
	setAttr ".tgi[4].ni[20].nvs" 18304;
	setAttr ".tgi[4].ni[21].x" 2457.142822265625;
	setAttr ".tgi[4].ni[21].y" -461.42855834960937;
	setAttr ".tgi[4].ni[21].nvs" 18304;
	setAttr ".tgi[4].ni[22].x" 3914.28564453125;
	setAttr ".tgi[4].ni[22].y" 10;
	setAttr ".tgi[4].ni[22].nvs" 18304;
	setAttr ".tgi[4].ni[23].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[23].y" -590;
	setAttr ".tgi[4].ni[23].nvs" 18304;
	setAttr ".tgi[4].ni[24].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[24].y" -247.14285278320312;
	setAttr ".tgi[4].ni[24].nvs" 18304;
	setAttr ".tgi[4].ni[25].x" 3571.428466796875;
	setAttr ".tgi[4].ni[25].y" 181.42857360839844;
	setAttr ".tgi[4].ni[25].nvs" 18304;
	setAttr ".tgi[4].ni[26].x" 2157.142822265625;
	setAttr ".tgi[4].ni[26].y" -290;
	setAttr ".tgi[4].ni[26].nvs" 18304;
	setAttr ".tgi[4].ni[27].x" 785.71429443359375;
	setAttr ".tgi[4].ni[27].y" -375.71429443359375;
	setAttr ".tgi[4].ni[27].nvs" 18304;
	setAttr ".tgi[4].ni[28].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[28].y" -247.14285278320312;
	setAttr ".tgi[4].ni[28].nvs" 18304;
	setAttr ".tgi[4].ni[29].x" 3914.28564453125;
	setAttr ".tgi[4].ni[29].y" 95.714286804199219;
	setAttr ".tgi[4].ni[29].nvs" 18304;
	setAttr ".tgi[4].ni[30].x" 400;
	setAttr ".tgi[4].ni[30].y" -632.85711669921875;
	setAttr ".tgi[4].ni[30].nvs" 18304;
	setAttr ".tgi[4].ni[31].x" 3185.71435546875;
	setAttr ".tgi[4].ni[31].y" -75.714286804199219;
	setAttr ".tgi[4].ni[31].nvs" 18304;
	setAttr ".tgi[4].ni[32].x" 3185.71435546875;
	setAttr ".tgi[4].ni[32].y" 267.14285278320313;
	setAttr ".tgi[4].ni[32].nvs" 18304;
	setAttr ".tgi[4].ni[33].x" 2157.142822265625;
	setAttr ".tgi[4].ni[33].y" -204.28572082519531;
	setAttr ".tgi[4].ni[33].nvs" 18304;
	setAttr ".tgi[4].ni[34].x" 3914.28564453125;
	setAttr ".tgi[4].ni[34].y" 181.42857360839844;
	setAttr ".tgi[4].ni[34].nvs" 18304;
	setAttr ".tgi[4].ni[35].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[35].y" -675.71429443359375;
	setAttr ".tgi[4].ni[35].nvs" 18304;
	setAttr ".tgi[4].ni[36].x" 2457.142822265625;
	setAttr ".tgi[4].ni[36].y" -375.71429443359375;
	setAttr ".tgi[4].ni[36].nvs" 18304;
	setAttr ".tgi[4].ni[37].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[37].y" -247.14285278320312;
	setAttr ".tgi[4].ni[37].nvs" 18304;
	setAttr ".tgi[4].ni[38].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[38].y" -504.28570556640625;
	setAttr ".tgi[4].ni[38].nvs" 18304;
	setAttr ".tgi[4].ni[39].x" 3914.28564453125;
	setAttr ".tgi[4].ni[39].y" 267.14285278320313;
	setAttr ".tgi[4].ni[39].nvs" 18304;
	setAttr ".tgi[4].ni[40].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[40].y" -332.85714721679687;
	setAttr ".tgi[4].ni[40].nvs" 18304;
	setAttr ".tgi[4].ni[41].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[41].y" -332.85714721679687;
	setAttr ".tgi[4].ni[41].nvs" 18304;
	setAttr ".tgi[4].ni[42].x" 3571.428466796875;
	setAttr ".tgi[4].ni[42].y" -75.714286804199219;
	setAttr ".tgi[4].ni[42].nvs" 18304;
	setAttr ".tgi[4].ni[43].x" 3571.428466796875;
	setAttr ".tgi[4].ni[43].y" 267.14285278320313;
	setAttr ".tgi[4].ni[43].nvs" 18304;
	setAttr ".tgi[4].ni[44].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[44].y" -418.57144165039062;
	setAttr ".tgi[4].ni[44].nvs" 18304;
	setAttr ".tgi[4].ni[45].x" 785.71429443359375;
	setAttr ".tgi[4].ni[45].y" -290;
	setAttr ".tgi[4].ni[45].nvs" 18304;
	setAttr ".tgi[4].ni[46].x" 142.85714721679687;
	setAttr ".tgi[4].ni[46].y" -461.42855834960937;
	setAttr ".tgi[4].ni[46].nvs" 18304;
	setAttr ".tgi[4].ni[47].x" 3185.71435546875;
	setAttr ".tgi[4].ni[47].y" 10;
	setAttr ".tgi[4].ni[47].nvs" 18304;
	setAttr ".tgi[4].ni[48].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[48].y" -504.28570556640625;
	setAttr ".tgi[4].ni[48].nvs" 18304;
	setAttr ".tgi[4].ni[49].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[49].y" -590;
	setAttr ".tgi[4].ni[49].nvs" 18304;
	setAttr ".tgi[4].ni[50].x" 1085.7142333984375;
	setAttr ".tgi[4].ni[50].y" -675.71429443359375;
	setAttr ".tgi[4].ni[50].nvs" 18304;
	setAttr ".tgi[4].ni[51].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[51].y" -675.71429443359375;
	setAttr ".tgi[4].ni[51].nvs" 18304;
	setAttr ".tgi[4].ni[52].x" 2457.142822265625;
	setAttr ".tgi[4].ni[52].y" -290;
	setAttr ".tgi[4].ni[52].nvs" 18304;
	setAttr ".tgi[4].ni[53].x" 1385.7142333984375;
	setAttr ".tgi[4].ni[53].y" -418.57144165039062;
	setAttr ".tgi[4].ni[53].nvs" 18304;
	setAttr ".tgi[4].ni[54].x" 1728.5714111328125;
	setAttr ".tgi[4].ni[54].y" -418.57144165039062;
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
	setAttr -s 72 ".u";
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
connectAttr "chest_ctrl_srtOffset_inWorld.ot" "chest_ctrl_srtOffset.t";
connectAttr "chest_ctrl_srtOffset_inWorld.or" "chest_ctrl_srtOffset.r";
connectAttr "chest_ctrl_srtOffset_inWorld.os" "chest_ctrl_srtOffset.s";
connectAttr "makeNurbCircle1.oc" "nurbsCircleShape1.cr";
connectAttr "chest_fk_ctrl_srtOffset_inWorld.ot" "chest_fk_ctrl_srtOffset.t";
connectAttr "chest_fk_ctrl_srtOffset_inWorld.or" "chest_fk_ctrl_srtOffset.r";
connectAttr "chest_fk_ctrl_srtOffset_inWorld.os" "chest_fk_ctrl_srtOffset.s";
connectAttr "hips_ctrl_srtOffset_inWorld.ot" "hips_ik_ctrl_srtOffset.t";
connectAttr "hips_ctrl_srtOffset_inWorld.or" "hips_ik_ctrl_srtOffset.r";
connectAttr "hips_ctrl_srtOffset_inWorld.os" "hips_ik_ctrl_srtOffset.s";
connectAttr "pelvis_ctrl_srtOffset_inWorld.ot" "pelvis_ctrl_srtOffset.t";
connectAttr "pelvis_ctrl_srtOffset_inWorld.os" "pelvis_ctrl_srtOffset.s";
connectAttr "pelvis_ctrl_srtOffset_inWorld.or" "pelvis_ctrl_srtOffset.r";
connectAttr "makeNurbCircle2.oc" "|spine_cmpt|control|pelvis_ctrl_srtOffset|pelvis_ctrl|nurbsCircleShape2.cr"
		;
connectAttr "body_ctrl_srtOffset_inWorld.ot" "body_ctrl_srtOffset.t";
connectAttr "body_ctrl_srtOffset_inWorld.or" "body_ctrl_srtOffset.r";
connectAttr "body_ctrl_srtOffset_inWorld.os" "body_ctrl_srtOffset.s";
connectAttr "spine_poleVector_srt_inWorld.ot" "spine_pv_ctrl_srtOffset.t";
connectAttr "spine_poleVector_srt_inWorld.or" "spine_pv_ctrl_srtOffset.r";
connectAttr "spine_poleVector_srt_inWorld.os" "spine_pv_ctrl_srtOffset.s";
connectAttr "body_srt_inWorld.ot" "body_srt.t";
connectAttr "body_srt_inWorld.or" "body_srt.r";
connectAttr "body_srt_inWorld.os" "body_srt.s";
connectAttr "chest_ik_ctrl_srt_localTo_body.ot" "ik_start_srt.t";
connectAttr "chest_ik_ctrl_srt_localTo_body.or" "ik_start_srt.r";
connectAttr "hips_ik_ctrl_srt_localTo_body.ot" "ik_end_srt.t";
connectAttr "hips_ik_ctrl_srt_localTo_body.or" "ik_end_srt.r";
connectAttr "spine_ik_01_offset_jnt.msg" "spine_offset_ikHandle.hsj";
connectAttr "spine_effector.hp" "spine_offset_ikHandle.hee";
connectAttr "ikRPsolver.msg" "spine_offset_ikHandle.hsv";
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.ctx" "spine_offset_ikHandle.pvx"
		;
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.cty" "spine_offset_ikHandle.pvy"
		;
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.ctz" "spine_offset_ikHandle.pvz"
		;
connectAttr "ikEnd_pass.worldInverseMatrix" "spine_offset_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "spine_ik_01_offset_jnt.pm" "spine_offset_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "spine_ik_01_offset_jnt.t" "spine_offset_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "spine_pv_ctrl.t" "spine_offset_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "spine_pv_ctrl.pm" "spine_offset_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "chest_ik_ctrl_srt_localTo_body.ot" "spine_ik_01_offset_jnt.t";
connectAttr "spine_bone_01_length.o" "spine_ik_02_offset_jnt.tz";
connectAttr "spine_bone_02_length.o" "spine_ik_03_offset_jnt.tz";
connectAttr "spine_bone_03_length.o" "spine_ik_04_offset_jnt.tz";
connectAttr "spine_bone_04_length.o" "spine_ik_05_offset_jnt.tz";
connectAttr "spine_bone_05_length.o" "spine_ik_06_offset_jnt.tz";
connectAttr "spine_ik_06_offset_jnt.tx" "spine_effector.tx";
connectAttr "spine_ik_06_offset_jnt.ty" "spine_effector.ty";
connectAttr "spine_ik_06_offset_jnt.tz" "spine_effector.tz";
connectAttr "spine_crv_skinCluster.og[0]" "spine_spline_crvShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "spine_spline_crvShape.twl";
connectAttr "skinCluster1GroupId.id" "spine_spline_crvShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "spine_spline_crvShape.iog.og[0].gco";
connectAttr "groupId2.id" "spine_spline_crvShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "spine_spline_crvShape.iog.og[1].gco";
connectAttr "spine_ik_01_position_localTo_body.o" "spine_01_aimConstraint.ct";
connectAttr "spine_ik_02_position_localTo_body.o" "spine_01_aimConstraint.tg[0].tt"
		;
connectAttr "body_srt.wm" "spine_01_aimConstraint.tg[0].tpm";
connectAttr "body_srt.wim" "spine_01_aimConstraint.cpim";
connectAttr "spine_ik_01_twist.o" "spine_01_aimConstraint.o";
connectAttr "body_srt.wm" "spine_01_aimConstraint.wum";
connectAttr "spine_ik_02_position_localTo_body.o" "spine_02_aimConstraint.ct";
connectAttr "spine_ik_03_position_localTo_body.o" "spine_02_aimConstraint.tg[0].tt"
		;
connectAttr "body_srt.wm" "spine_02_aimConstraint.tg[0].tpm";
connectAttr "body_srt.wim" "spine_02_aimConstraint.cpim";
connectAttr "spine_ik_02_twist.o" "spine_02_aimConstraint.o";
connectAttr "body_srt.wm" "spine_02_aimConstraint.wum";
connectAttr "spine_ik_03_position_localTo_body.o" "spine_03_aimConstraint.ct";
connectAttr "spine_ik_04_position_localTo_body.o" "spine_03_aimConstraint.tg[0].tt"
		;
connectAttr "body_srt.wm" "spine_03_aimConstraint.tg[0].tpm";
connectAttr "body_srt.wim" "spine_03_aimConstraint.cpim";
connectAttr "spine_ik_03_twist.o" "spine_03_aimConstraint.o";
connectAttr "body_srt.wm" "spine_03_aimConstraint.wum";
connectAttr "spine_ik_04_position_localTo_body.o" "spine_04_aimConstraint.ct";
connectAttr "spine_ik_05_position_localTo_body.o" "spine_04_aimConstraint.tg[0].tt"
		;
connectAttr "body_srt.wm" "spine_04_aimConstraint.tg[0].tpm";
connectAttr "body_srt.wim" "spine_04_aimConstraint.cpim";
connectAttr "spine_ik_04_twist.o" "spine_04_aimConstraint.o";
connectAttr "body_srt.wm" "spine_04_aimConstraint.wum";
connectAttr "spine_ik_05_position_localTo_body.o" "spine_05_aimConstraint.ct";
connectAttr "spine_ik_06_position_localTo_body.o" "spine_05_aimConstraint.tg[0].tt"
		;
connectAttr "body_srt.wm" "spine_05_aimConstraint.tg[0].tpm";
connectAttr "body_srt.wim" "spine_05_aimConstraint.cpim";
connectAttr "spine_ik_05_twist.o" "spine_05_aimConstraint.o";
connectAttr "body_srt.wm" "spine_05_aimConstraint.wum";
connectAttr "spine_curve_midPoint_localTo_body.o" "ik_spine_rotatePlane_aimConstraint.tg[0].tt"
		;
connectAttr "body_ctrl.wm" "ik_spine_rotatePlane_aimConstraint.tg[0].tpm";
connectAttr "body_ctrl.wm" "ik_spine_rotatePlane_aimConstraint.wum";
connectAttr "body_ctrl.wim" "ik_spine_rotatePlane_aimConstraint.cpim";
connectAttr "chest_ik_ctrl.twist" "ik_spine_rotatePlane_aimConstraint.oz";
connectAttr "chest_srt_inWorld.ot" "chest_srt.t";
connectAttr "chest_srt_inWorld.or" "chest_srt.r";
connectAttr "chest_srt_inWorld.os" "chest_srt.s";
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
connectAttr "hips_srt_inWorld.ot" "hips_srt.t";
connectAttr "hips_srt_inWorld.or" "hips_srt.r";
connectAttr "hips_srt_inWorld.os" "hips_srt.s";
connectAttr "ik_stretch.ocr" "spine_parameters.stretch";
connectAttr "ik_compression_clamped.opr" "spine_parameters.compression";
connectAttr "ik_offAxis.ov" "spine_parameters.offAxis";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "body_srtOffset.m" "body_ctrl_parentMatrix.i[0]";
connectAttr "root_srt.wm" "body_ctrl_parentMatrix.i[1]";
connectAttr "body_ctrl_parentMatrix.o" "body_ctrl_srtOffset_inWorld.imat";
connectAttr "chest_srtOffset.m" "chest_ctrl_parentMatrix.i[0]";
connectAttr "body_ctrl.wm" "chest_ctrl_parentMatrix.i[1]";
connectAttr "chest_ctrl_parentMatrix.o" "chest_ctrl_srtOffset_inWorld.imat";
connectAttr "spine_settings.restPose" "hips_ctrl_defaultPose_blend.w";
connectAttr "defaultPose_srtOffset.t" "hips_ctrl_defaultPose_blend.it2";
connectAttr "defaultPose_srtOffset.r" "hips_ctrl_defaultPose_blend.ir2";
connectAttr "hips_ctrl_defaultPose_blend.ot" "hips_ctrl_parent_defaultPose_matrix.it"
		;
connectAttr "hips_ctrl_defaultPose_blend.or" "hips_ctrl_parent_defaultPose_matrix.ir"
		;
connectAttr "hips_ctrl_parent_defaultPose_matrix.omat" "hips_ctrl_parentMatrix.i[0]"
		;
connectAttr "hips_srtOffset.m" "hips_ctrl_parentMatrix.i[1]";
connectAttr "body_ctrl.wm" "hips_ctrl_parentMatrix.i[2]";
connectAttr "hips_ctrl_parentMatrix.o" "hips_ctrl_srtOffset_inWorld.imat";
connectAttr "hips_ik_ctrl.wm" "pelvis_ctrl_srtOffset_inWorld.imat";
connectAttr "body_ctrl.wm" "body_srt_inWorld.imat";
connectAttr "spine_spline_curveInfo.al" "ik_stretchFactor.i1x";
connectAttr "spine_settings.restLength" "ik_stretchFactor.i2x";
connectAttr "ik_stretchFactor.ox" "ik_stretch.ft";
connectAttr "ik_stretchFactor.ox" "ik_stretch.ctr";
connectAttr "ik_stretch.ocr" "spine_bone_01_length.i2";
connectAttr "ik_stretch.ocr" "spine_bone_02_length.i2";
connectAttr "ik_stretch.ocr" "spine_bone_03_length.i2";
connectAttr "ik_stretch.ocr" "spine_bone_04_length.i2";
connectAttr "ik_stretch.ocr" "spine_bone_05_length.i2";
connectAttr "spine_01_matrix_localTo_body.omat" "spine_ik_01_worldMatrix.i[0]";
connectAttr "body_srt.wm" "spine_ik_01_worldMatrix.i[1]";
connectAttr "spine_02_matrix_localTo_body.omat" "spine_ik_02_worldMatrix.i[0]";
connectAttr "body_srt.wm" "spine_ik_02_worldMatrix.i[1]";
connectAttr "spine_03_matrix_localTo_body.omat" "spine_ik_03_worldMatrix.i[0]";
connectAttr "body_srt.wm" "spine_ik_03_worldMatrix.i[1]";
connectAttr "spine_04_matrix_localTo_body.omat" "spine_ik_04_worldMatrix.i[0]";
connectAttr "body_srt.wm" "spine_ik_04_worldMatrix.i[1]";
connectAttr "spine_05_matrix_localTo_body.omat" "spine_ik_05_worldMatrix.i[0]";
connectAttr "body_srt.wm" "spine_ik_05_worldMatrix.i[1]";
connectAttr "ik_start_pass.worldMatrix" "iK_start_matrix_localTo_body.i[0]";
connectAttr "body_srt.wim" "iK_start_matrix_localTo_body.i[1]";
connectAttr "ikEnd_pass.worldMatrix" "hips_ik_ctrl_matrix_localTo_body.i[0]";
connectAttr "body_srt.wim" "hips_ik_ctrl_matrix_localTo_body.i[1]";
connectAttr "iK_start_matrix_localTo_body.o" "chest_ik_ctrl_srt_localTo_body.imat"
		;
connectAttr "hips_ik_ctrl_matrix_localTo_body.o" "hips_ik_ctrl_srt_localTo_body.imat"
		;
connectAttr "ik_start_srt.r" "ik_start_rotation_asQuat.irt";
connectAttr "ik_start_srt.ro" "ik_start_rotation_asQuat.ro";
connectAttr "ik_end_srt.r" "ik_end_rotation_asQuat.irt";
connectAttr "ik_end_srt.ro" "ik_end_rotation_asQuat.ro";
connectAttr "ik_start_rotation_asQuat.oqz" "ik_start_twist.iqz";
connectAttr "ik_start_rotation_asQuat.oqw" "ik_start_twist.iqw";
connectAttr "ik_end_rotation_asQuat.oqz" "ik_end_twist.iqz";
connectAttr "ik_end_rotation_asQuat.oqw" "ik_end_twist.iqw";
connectAttr "ik_start_twist.ort" "spine_ik_01_twist.ia";
connectAttr "ik_end_twist.ort" "spine_ik_01_twist.ib";
connectAttr "ik_start_twist.ort" "spine_ik_02_twist.ia";
connectAttr "ik_end_twist.ort" "spine_ik_02_twist.ib";
connectAttr "ik_start_twist.ort" "spine_ik_03_twist.ia";
connectAttr "ik_end_twist.ort" "spine_ik_03_twist.ib";
connectAttr "ik_start_twist.ort" "spine_ik_04_twist.ia";
connectAttr "ik_end_twist.ort" "spine_ik_04_twist.ib";
connectAttr "ik_start_twist.ort" "spine_ik_05_twist.ia";
connectAttr "ik_end_twist.ort" "spine_ik_05_twist.ib";
connectAttr "spine_ik_01_worldMatrix.o" "spine_01_srt_inWorld.imat";
connectAttr "spine_ik_02_worldMatrix.o" "spine_02_srt_inWorld.imat";
connectAttr "spine_ik_03_worldMatrix.o" "spine_03_srt_inWorld.imat";
connectAttr "spine_ik_04_worldMatrix.o" "spine_04_srt_inWorld.imat";
connectAttr "spine_ik_05_worldMatrix.o" "spine_05_srt_inWorld.imat";
connectAttr "skinCluster1GroupParts.og" "spine_crv_skinCluster.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "spine_crv_skinCluster.ip[0].gi";
connectAttr "bindPose1.msg" "spine_crv_skinCluster.bp";
connectAttr "ik_start_jnt.wm" "spine_crv_skinCluster.ma[0]";
connectAttr "ik_end_jnt.wm" "spine_crv_skinCluster.ma[1]";
connectAttr "ik_start_jnt.liw" "spine_crv_skinCluster.lw[0]";
connectAttr "ik_end_jnt.liw" "spine_crv_skinCluster.lw[1]";
connectAttr "ik_start_jnt.obcc" "spine_crv_skinCluster.ifcl[0]";
connectAttr "ik_end_jnt.obcc" "spine_crv_skinCluster.ifcl[1]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "spine_spline_crvShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "spine_crv_skinCluster.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "spine_spline_crvShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "spine_spline_crvShapeOrig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "spine_cmpt.msg" "bindPose1.m[0]";
connectAttr "internal.msg" "bindPose1.m[1]";
connectAttr "body_srt.msg" "bindPose1.m[2]";
connectAttr "ik_start_srt.msg" "bindPose1.m[3]";
connectAttr "ik_start_jnt.msg" "bindPose1.m[4]";
connectAttr "ik_end_srt.msg" "bindPose1.m[5]";
connectAttr "ik_end_jnt.msg" "bindPose1.m[6]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[2]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "ik_start_jnt.bps" "bindPose1.wm[4]";
connectAttr "ik_end_jnt.bps" "bindPose1.wm[6]";
connectAttr "spine_curve_midPoint.p" "spine_curve_midPoint_localTo_body.i1";
connectAttr "body_ctrl.wim" "spine_curve_midPoint_localTo_body.m";
connectAttr "spine_poleVector_position_matrix_localTo_body.omat" "spine_poleVector_worldMatrix.i[0]"
		;
connectAttr "body_ctrl.wm" "spine_poleVector_worldMatrix.i[1]";
connectAttr "hips_ik_ctrl.wim" "ikEnd_pass.worldInverseMatrix";
connectAttr "hips_ik_ctrl.wm" "ikEnd_pass.worldMatrix";
connectAttr "chest_ik_ctrl.wm" "ik_start_pass.worldMatrix";
connectAttr "chest_ik_ctrl.wim" "ik_start_pass.worldInverseMatrix";
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
connectAttr "body_srt.wim" "spine_ik_01_matrix_localTo_body.i[1]";
connectAttr "spine_ik_02_offset_jnt.wm" "spine_ik_02_matrix_localTo_body.i[0]";
connectAttr "body_srt.wim" "spine_ik_02_matrix_localTo_body.i[1]";
connectAttr "spine_ik_03_offset_jnt.wm" "spine_ik_03_matrix_localTo_body.i[0]";
connectAttr "body_srt.wim" "spine_ik_03_matrix_localTo_body.i[1]";
connectAttr "spine_ik_04_offset_jnt.wm" "spine_ik_04_matrix_localTo_body.i[0]";
connectAttr "body_srt.wim" "spine_ik_04_matrix_localTo_body.i[1]";
connectAttr "spine_ik_05_offset_jnt.wm" "spine_ik_05_matrix_localTo_body.i[0]";
connectAttr "body_srt.wim" "spine_ik_05_matrix_localTo_body.i[1]";
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
connectAttr "body_srt.wim" "spine_ik_06_matrix_localTo_body.i[1]";
connectAttr "pelvis_ctrl.wm" "hips_srt_inWorld.imat";
connectAttr "chest_fk_ctrl.wm" "chest_srt_inWorld.imat";
connectAttr "chest_ik_ctrl.wm" "chest_fk_ctrl_srtOffset_inWorld.imat";
connectAttr "spine_cmpt.msg" "bindPose2.m[0]";
connectAttr "internal.msg" "bindPose2.m[1]";
connectAttr "body_srt.msg" "bindPose2.m[2]";
connectAttr "spine_ik_01_offset_jnt.msg" "bindPose2.m[3]";
connectAttr "spine_ik_02_offset_jnt.msg" "bindPose2.m[4]";
connectAttr "spine_ik_03_offset_jnt.msg" "bindPose2.m[5]";
connectAttr "spine_ik_04_offset_jnt.msg" "bindPose2.m[6]";
connectAttr "spine_ik_05_offset_jnt.msg" "bindPose2.m[7]";
connectAttr "spine_ik_06_offset_jnt.msg" "bindPose2.m[8]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "spine_crv_skinCluster.og[0]" "spine_spline_curveInfo.ic";
connectAttr "ik_spine_rotatePlane_aimConstraint.ct" "ik_spine_rotatePlane_matrix_localTo_body.it"
		;
connectAttr "ik_spine_rotatePlane_aimConstraint.cr" "ik_spine_rotatePlane_matrix_localTo_body.ir"
		;
connectAttr "spine_curve_midPoint_localTo_body.oz" "spine_poleVector_offset_matrix.itz"
		;
connectAttr "spine_curve_midPoint_localTo_body.ox" "spine_poleVector_offset_matrix.itx"
		;
connectAttr "spine_poleVector_offset_matrix.omat" "spine_poleVector_matrix_localTo_body.i[0]"
		;
connectAttr "ik_spine_rotatePlane_matrix_localTo_body.omat" "spine_poleVector_matrix_localTo_body.i[1]"
		;
connectAttr "spine_poleVector_matrix_localTo_body.o" "spine_poleVector_srt_localTo_body.imat"
		;
connectAttr "spine_poleVector_srt_localTo_body.ot" "spine_poleVector_position_matrix_localTo_body.it"
		;
connectAttr "chest_ik_ctrl_srt_localTo_body.ot" "ik_currentLength.p2";
connectAttr "hips_ik_ctrl_srt_localTo_body.ot" "ik_currentLength.p1";
connectAttr "ik_currentLength.d" "ik_compression.i1x";
connectAttr "ik_compression.ox" "ik_compression_clamped.ipr";
connectAttr "hips_ik_ctrl_srt_localTo_body.ot" "ik_startEndVector.i3[0]";
connectAttr "chest_ik_ctrl_srt_localTo_body.ot" "ik_startEndVector.i3[1]";
connectAttr "ik_startEndVector.o3" "ik_offAxisAngle.v2";
connectAttr "unitConversion1.o" "ik_offAxis.i";
connectAttr "ik_offAxisAngle.a" "unitConversion1.i";
connectAttr "hips_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "root_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "chest_fk_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "hips_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "body_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "hips_ctrl_parent_defaultPose_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "chest_fk_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "chest_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "hips_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "body_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "ikEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "pelvis_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "chest_fk_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "body_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "hips_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "pelvis_ctrl_srtOffset_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "chest_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "hips_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "spine_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "pelvis_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "body_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "hips_ctrl_defaultPose_blend.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "hips_ik_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "defaultPose_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "chest_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "body_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "chest_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "chest_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "ik_start_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "body_ctrl_parentMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "hips_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "chest_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "chest_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "body_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "ik_start_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn";
connectAttr "ik_end_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn";
connectAttr "spine_curve_midPoint.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "ik_start_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn";
connectAttr "ik_start_rotation_asQuat.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "ik_end_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn";
connectAttr "spine_crv_skinCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "spine_curve_midPoint_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "ik_end_rotation_asQuat.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "spine_pv_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "spine_poleVector_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "spine_poleVector_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "body_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[12].dn";
connectAttr "ik_end_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn";
connectAttr "hips_ik_ctrl_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "ik_spine_rotatePlane_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "spine_bone_01_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "spine_poleVector_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "ik_start_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn";
connectAttr "ik_start_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn";
connectAttr "spine_settings.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn";
connectAttr "body_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn";
connectAttr "spine_curve_midPoint_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "iK_start_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "spine_bone_04_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "ik_stretch.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn";
connectAttr "ik_spine_rotatePlane_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "spine_pv_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn";
connectAttr "ikEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn";
connectAttr "hips_ik_ctrl_srt_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "spine_pv_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "spine_bone_03_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "ik_stretchFactor.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "spine_spline_curveInfo.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "body_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[21].dn";
connectAttr "spine_ik_01_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "spine_curve_midPoint.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[23].dn"
		;
connectAttr "spine_poleVector_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[24].dn"
		;
connectAttr "spine_crv_skinCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[25].dn"
		;
connectAttr "spine_ik_02_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[26].dn"
		;
connectAttr "spine_ik_03_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[27].dn"
		;
connectAttr "chest_ik_ctrl_srt_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[28].dn"
		;
connectAttr "spine_ik_04_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[29].dn"
		;
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[30].dn"
		;
connectAttr "spine_bone_05_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[31].dn"
		;
connectAttr "spine_effector.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[32].dn";
connectAttr "spine_bone_02_length.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[33].dn"
		;
connectAttr "spine_ik_05_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[34].dn"
		;
connectAttr "spine_ik_06_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[35].dn"
		;
connectAttr "spine_offset_ikHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[36].dn"
		;
connectAttr "spine_poleVector_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[37].dn"
		;
connectAttr "spine_parameters.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[38].dn"
		;
connectAttr "ik_currentLength.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[39].dn"
		;
connectAttr "ik_compression.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[40].dn";
connectAttr "ik_compression_clamped.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[41].dn"
		;
connectAttr "ik_startEndVector.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[42].dn"
		;
connectAttr "ik_offAxisAngle.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[43].dn"
		;
connectAttr "ik_offAxis.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[44].dn";
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[45].dn"
		;
connectAttr "spine_poleVector_offset_matrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "spine_pv_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn";
connectAttr "ik_spine_rotatePlane_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "spine_poleVector_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "ikEnd_pass.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn";
connectAttr "spine_poleVector_position_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "body_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn";
connectAttr "spine_poleVector_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "ik_spine_rotatePlane_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "spine_offset_ikHandle.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "chest_ik_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn";
connectAttr "spine_crv_skinCluster.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "spine_curve_midPoint.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "spine_curve_midPoint_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "spine_pv_ctrl_srtOffset.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "spine_offset_ikHandle_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "spine_poleVector_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "spine_poleVector_srt_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "spine_04_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[0].dn"
		;
connectAttr "spine_ik_05_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[1].dn"
		;
connectAttr "spine_ik_01_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[2].dn"
		;
connectAttr "ik_end_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[3].dn";
connectAttr "ik_start_rotation_asQuat.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[4].dn"
		;
connectAttr "spine_ik_03_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[5].dn"
		;
connectAttr "ik_start_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[6].dn";
connectAttr "spine_05_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[7].dn"
		;
connectAttr "spine_01_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[8].dn"
		;
connectAttr "spine_ik_02_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[9].dn"
		;
connectAttr "spine_05_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[10].dn"
		;
connectAttr "spine_ik_04_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[11].dn"
		;
connectAttr "body_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[12].dn";
connectAttr "spine_03_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[13].dn"
		;
connectAttr "spine_ik_04_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[14].dn"
		;
connectAttr "ik_end_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[15].dn";
connectAttr "spine_04_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[16].dn"
		;
connectAttr "spine_05_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[17].dn";
connectAttr "spine_ik_02_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[18].dn"
		;
connectAttr "spine_03_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[19].dn"
		;
connectAttr "spine_ik_05_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[20].dn"
		;
connectAttr "spine_04_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[21].dn"
		;
connectAttr "spine_04_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[22].dn";
connectAttr "spine_ik_05_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[23].dn"
		;
connectAttr "spine_ik_01_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[24].dn"
		;
connectAttr "spine_02_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[25].dn"
		;
connectAttr "spine_02_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[26].dn"
		;
connectAttr "spine_ik_03_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[27].dn"
		;
connectAttr "spine_ik_01_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[28].dn"
		;
connectAttr "spine_03_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[29].dn";
connectAttr "ik_start_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[30].dn";
connectAttr "spine_ik_05_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[31].dn"
		;
connectAttr "spine_ik_01_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[32].dn"
		;
connectAttr "spine_01_aimConstraint.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[33].dn"
		;
connectAttr "spine_02_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[34].dn";
connectAttr "spine_ik_06_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[35].dn"
		;
connectAttr "spine_03_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[36].dn"
		;
connectAttr "spine_ik_01_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[37].dn"
		;
connectAttr "spine_ik_04_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[38].dn"
		;
connectAttr "spine_01_srt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[39].dn";
connectAttr "spine_ik_02_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[40].dn"
		;
connectAttr "spine_ik_02_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[41].dn"
		;
connectAttr "spine_05_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[42].dn"
		;
connectAttr "spine_01_srt_inWorld.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[43].dn"
		;
connectAttr "spine_ik_03_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[44].dn"
		;
connectAttr "spine_ik_02_twist.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[45].dn"
		;
connectAttr "ik_end_rotation_asQuat.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[46].dn"
		;
connectAttr "spine_ik_04_worldMatrix.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[47].dn"
		;
connectAttr "spine_ik_04_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[48].dn"
		;
connectAttr "spine_ik_05_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[49].dn"
		;
connectAttr "spine_ik_06_offset_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[50].dn"
		;
connectAttr "spine_ik_06_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[51].dn"
		;
connectAttr "spine_02_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[52].dn"
		;
connectAttr "spine_ik_03_matrix_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[53].dn"
		;
connectAttr "spine_ik_03_position_localTo_body.msg" "MayaNodeEditorSavedTabsInfo.tgi[4].ni[54].dn"
		;
connectAttr "body_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "body_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "chest_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "hips_ctrl_parent_defaultPose_matrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "hips_ctrl_parentMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "hips_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "pelvis_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "body_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_stretchFactor.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_01_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_02_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_03_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_04_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multDoubleLinear5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_bone_05_length.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_01_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_02_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_03_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_04_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_ik_05_worldMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "iK_start_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "hips_ik_ctrl_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "chest_ik_ctrl_srt_localTo_body.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "hips_ik_ctrl_srt_localTo_body.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "eulerToQuat1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_start_rotation_asQuat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_end_rotation_asQuat.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_start_twist.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_end_twist.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_01_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_02_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_03_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_04_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_05_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "spine_offset_ctrl_parentMatrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
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
connectAttr "hips_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_srt_inWorld.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chest_fk_ctrl_srtOffset_inWorld.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_spline_curveInfo.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_spine_rotatePlane_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_poleVector_offset_matrix.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "spine_poleVector_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_poleVector_srt_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "spine_poleVector_position_matrix_localTo_body.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ik_currentLength.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_compression.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_compression_clamped.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_startEndVector.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_offAxisAngle.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ik_offAxis.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of spine.ma
