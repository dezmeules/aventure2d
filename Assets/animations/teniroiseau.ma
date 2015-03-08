//Maya ASCII 2014 scene
//Name: teniroiseau.ma
//Last modified: Wed, Dec 17, 2014 12:34:32 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "HIKSolverNode" -nodeType "HIKRetargeterNode" -nodeType "HIKCharacterNode"
		 -nodeType "HIKSkeletonGeneratorNode" -nodeType "HIKControlSetNode" -nodeType "HIKEffectorFromCharacter"
		 -nodeType "HIKSK2State" -nodeType "HIKFK2State" -nodeType "HIKState2FK" -nodeType "HIKState2SK"
		 -nodeType "HIKState2GlobalSK" -nodeType "HIKEffector2State" -nodeType "HIKState2Effector"
		 -nodeType "HIKProperty2State" -nodeType "HIKPinning2State" -nodeType "ComputeGlobal"
		 -nodeType "ComputeLocal" -nodeType "HIKCharacterStateClient" -dataType "HIKCharacter"
		 -dataType "HIKCharacterState" -dataType "HIKEffectorState" -dataType "HIKPropertySetState"
		 "mayaHIK" "1.0_HIK_2013.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.6339571797826935 2.2400774245869943 4.4882391341374559 ;
	setAttr ".r" -type "double3" -8.7383527363959139 2.1999999999951587 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".fcp" 1000000000;
	setAttr ".coi" 4.3055538004775062;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.79731944628059959 1.5859670743358816 0.23579913475044526 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 1000000000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 1000000000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 1000000000;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group1";
	setAttr ".t" -type "double3" 0 -0.080757069465159925 0 ;
createNode transform -n "polySurface3" -p "group1";
	setAttr ".t" -type "double3" -0.025875983633838383 -0.019421164261379745 0.059290616840766072 ;
	setAttr ".r" -type "double3" -15.588065884330833 11.973866737614452 0 ;
	setAttr ".s" -type "double3" 0.80285505657019141 0.97613776110537698 0.75684455026125763 ;
	setAttr ".rp" -type "double3" 0.11166685528607748 1.5462396552835442 0 ;
	setAttr ".sp" -type "double3" 0.11166685528607748 1.5462396552835442 0 ;
createNode mesh -n "polySurfaceShape6" -p "polySurface3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".iog[1].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.125 0.125 0.1875
		 0.125 0.125 0.0625 0.1875 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0.02800335 1.54532683 0.018115401 0.037682265 1.4797368 0.027932554
		 0.01071839 1.54949534 0.05525893 0.021574304 1.47831464 0.063229114;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 0 0 3 1 0 3 2 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 0 -3 3
		mu 0 4 1 0 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".usz" 9.95073;
	setAttr ".bw" 2.921533;
	setAttr ".ns" 0.329599;
	setAttr ".dr" 1;
createNode transform -n "polySurface10" -p "group1";
	setAttr ".t" -type "double3" -0.21606032249395113 -0.030819457107431617 0.057859215167202611 ;
	setAttr ".r" -type "double3" -15.588065884330833 11.973866737614452 0 ;
	setAttr ".s" -type "double3" -0.80285505657019141 0.97613776110537698 0.75684455026125763 ;
	setAttr ".rp" -type "double3" 0.11166685528607748 1.5462396552835442 0 ;
	setAttr ".sp" -type "double3" 0.11166685528607748 1.5462396552835442 0 ;
createNode transform -n "Character1_Reference";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	setAttr ".t" -type "double3" 0 0 -0.053975402786643784 ;
createNode locator -n "Character1_ReferenceShape" -p "Character1_Reference";
	setAttr -k off ".v";
createNode joint -n "Character1_Hips" -p "Character1_Reference";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.46311460752525702 -0.079577002337712477 1;
	setAttr ".typ" 1;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftUpLeg" -p "Character1_Hips";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.14883236860324842 0.43407731950309614 -0.034260211807780182 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftLeg" -p "Character1_LeftUpLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 8.0947084509303835 -89.999999999999957 ;
	setAttr ".bps" -type "matrix" 7.7715611723760958e-016 -0.99003666642113197 -0.14080979774764352 0
		 1 7.7715611723760958e-016 0 0 1.1102230246251563e-016 -0.14080979774764352 0.99003666642113197 0
		 0.14883236860324847 0.22623775912656155 -0.034260211807780189 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftFoot" -p "Character1_LeftLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.27563735581699983 -0.95168432500509681 -0.13535506498763147 0
		 0.96126169593831867 0.27289108889419794 0.038812440324286893 0 1.1102230246251563e-016 -0.14080979774764352 0.99003666642113197 0
		 0.14883236860324833 0.037745676054161875 -0.061068847280243144 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftToeBase" -p "Character1_LeftFoot";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.27563735581699983 -0.95168432500509681 -0.13535506498763147 0
		 0.96126169593831867 0.27289108889419794 0.038812440324286893 0 1.1102230246251563e-016 -0.14080979774764352 0.99003666642113197 0
		 0.22292681848408924 0.0098674620286211094 0.19582076206188076 1;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_RightUpLeg" -p "Character1_Hips";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.14883236860324839 0.43407731950309614 -0.034260211807780182 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_RightLeg" -p "Character1_RightUpLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jot" -type "string" "yxz";
	setAttr ".jo" -type "double3" -90.000078112152366 81.905291548277333 89.999922666105221 ;
	setAttr ".bps" -type "matrix" 1.9005536144867108e-007 0.1408097977612055 -0.99003666641918475 0
		 2.7030978108633099e-008 -0.9900366664192034 -0.14080979776120292 0 -0.99999999999998157 -2.4424906541753456e-015 -1.9196800304932535e-007 0
		 -0.14883238381284836 0.22623775912656161 -0.034257753273380119 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_RightFoot" -p "Character1_RightLeg";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1.9005536144867108e-007 0.1408097977612055 -0.99003666641918475 0
		 0.27563738180083786 -0.9516843250032424 -0.13535501208711287 0 -0.96126168848755378 -0.27289108889366792 -0.038812624859512555 0
		 -0.14883237866644861 0.037745676072686307 -0.061066388745842241 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_RightToeBase" -p "Character1_RightFoot";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1.9005536144867108e-007 0.1408097977612055 -0.99003666641918475 0
		 0.27563738180083786 -0.9516843250032424 -0.13535501208711287 0 -0.96126168848755378 -0.27289108889366792 -0.038812624859512555 0
		 -0.22293266430513425 0.0098674473287207812 0.19582169987664211 1;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_Spine" -p "Character1_Hips";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.2301898630244245e-019 0.59250075719660633 -0.079577002337712477 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_Spine1" -p "Character1_Spine";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3109406191097617e-017 0.75727581947384803 -0.079577002337712477 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftShoulder" -p "Character1_Spine1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.17739939593484841 0.84243017839331813 -0.052983103243568128 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftArm" -p "Character1_LeftShoulder";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 0 0.049826270734263579 0 0 1 0 0
		 -0.049826270734263579 0 0.99875789996611086 0 0.27177504516127976 0.8424308147127888 -0.057367304350792833 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftForeArm" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 0 0.049826270734263579 0 0 1 0 0
		 -0.049826270734263579 0 0.99875789996611086 0 0.53704356304559431 0.8424308147127888 -0.055027471346829025 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftHand" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".bps" -type "matrix" 0.99875789996611086 0 0.049826270734263579 0 0 1 0 0
		 -0.049826270734263579 0 0.99875789996611086 0 0.94179536114915363 0.8424308147127888 0.005363236047312335 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftHandThumb1" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".bps" -type "matrix" 0.61827938811865635 0 0.78595839471795215 0 0 1 0 0
		 -0.78595839471795215 0 0.61827938811865635 0 0.95926055545864397 0.83873283299383439 0.16121015097248181 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandThumb2" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.75371490090682092 0 0.65720152780636587 0 0 1 0 0
		 -0.65720152780636587 0 0.75371490090682092 0 0.99057734276313081 0.83625007836157905 0.23688418786449245 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandThumb3" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.75371490090682092 0 0.65720152780636587 0 0 1 0 0
		 -0.65720152780636587 0 0.75371490090682092 0 1.0587202094306094 0.836250017230451 0.29630141358776252 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandIndex1" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".jo" -type "double3" -1.9600293954564127 -13.585068570882582 8.2894297934630021 ;
	setAttr ".bps" -type "matrix" 0.94896858187515676 0.14013999120388648 0.28252329723268593 0
		 -0.13431389859477583 0.99013169975785276 -0.039987420258096776 0 -0.28533910923342815 -6.7307270867900115e-016 0.95842662355647967 0
		 1.148545680606518 0.8481780732266746 0.13826055917275182 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandIndex2" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".jo" -type "double3" 0.064460795553763245 -0.21570828004393736 -24.69388255656391 ;
	setAttr ".bps" -type "matrix" 0.91721962179985661 -0.28632078109976278 0.27699923410679234 0
		 0.27409432172492787 0.95813381649455509 0.082776158933173749 0 -0.2891028678229941 9.5310917136575733e-014 0.95729803709008021 0
		 1.2402196184000871 0.86171612399188591 0.16555337336114695 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandIndex3" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 0 13.948236048748074 16.637814201747215 ;
	setAttr ".bps" -type "matrix" 0.99875789996611086 -1.5915420902323427e-016 0.049826270734263635 0
		 5.1625370645069779e-015 1 -9.7991059710977879e-014 0 -0.049826270734263656 9.8176584632771144e-014 0.99875789996611086 0
		 1.3427440481965864 0.82971192987800668 0.1965156291348929 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandMiddle1" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".jo" -type "double3" -0.85714178622070991 -6.9074981758472127 7.091107922864806 ;
	setAttr ".bps" -type "matrix" 0.97793214170176801 0.1225514395755033 0.16920363732663968 0
		 -0.12075724018579664 0.99246216283441835 -0.020893642208529711 0 -0.17048875379127815 -2.5534262204640615e-014 0.98535962208256589 0
		 1.1811321986184795 0.8495727951991876 0.02112613311901437 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandMiddle2" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".jo" -type "double3" 0.97238577666783133 -3.2260520565316706 -23.822945846432173 ;
	setAttr ".bps" -type "matrix" 0.93229627090211964 -0.2882996577377468 0.2184192542114809 0
		 0.28069911336429654 0.95754023797869603 0.065762454396104841 0 -0.22810451775118201 -5.6552979532289637e-015 0.97363665141648237 0
		 1.2891635290938237 0.86311094831272739 0.039817914769482959 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandMiddle3" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" -2.020594666327451e-016 10.32948481999321 16.756186363168663 ;
	setAttr ".bps" -type "matrix" 0.99875789996611086 1.4842303298236754e-017 0.049826270734263406 0
		 -2.7755575615628914e-016 1 5.7454041524351851e-015 0 -0.049826270734263489 -5.7440531856160587e-015 0.99875789996611108 0
		 1.3926576902622585 0.83110681810866349 0.06406462496578022 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandRing1" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".jo" -type "double3" -0.12304237745455901 -0.86057313618355546 8.1371602375264054 ;
	setAttr ".bps" -type "matrix" 0.98784259525291851 0.14152733495151268 0.06431967401581741 0
		 -0.1412282846152885 0.98993434805623481 -0.0091955512668206018 0 -0.064973676428240867 -7.1110652088979214e-014 0.99788697825525241 0
		 1.1844486795285007 0.84901256129043279 -0.10642138886169256 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandRing2" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".jo" -type "double3" -0.91111546460687154 2.9031085725223034 -25.568635881079029 ;
	setAttr ".bps" -type "matrix" 0.95412397371950497 -0.29919587141709342 0.011369841716916372 0
		 0.29917463024041374 0.95419171581342399 0.0035651218135665901 0 -0.011915678504109619 -3.7560484090012235e-015 0.99992900578280397 0
		 1.2789432470351392 0.86255071440397213 -0.10026872870358652 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandRing3" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 0 -2.1732833612936866 17.409311708449845 ;
	setAttr ".bps" -type "matrix" 0.99875789996611086 2.409712936119721e-017 0.049826270734263586 0
		 -3.3307724259116356e-016 1 3.7539415404361432e-015 0 -0.049826270734263593 -3.7585508829328185e-015 0.99875789996611086 0
		 1.3810031709943449 0.83054658419990901 -0.099052529118397417 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_Neck" -p "Character1_Spine1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.0559005796650005e-017 0.92205088175108973 -0.098364199693498799 1;
	setAttr ".typ" 7;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_Head" -p "Character1_Neck";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.981867266410693e-017 1.3064374672451262 -0.098364199693498827 1;
	setAttr ".typ" 8;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftShoulder1" -p "Character1_Spine1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 -0.17739900000000006 0.84243000000000001 -0.052983100000000075 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftArm" -p "Character1_LeftShoulder1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -0.27177500000000004 0.84243100000000004 -0.057367300000000079 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftForeArm" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -0.53704400000000008 0.84243100000000004 -0.055027500000000056 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftHand" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -0.94179500000000005 0.84243100000000004 0.0053632399999999289 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 0.038922593525532415;
createNode joint -n "Character1_LeftHandThumb1" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".bps" -type "matrix" 0.61827938811865635 9.62521432354332e-017 -0.78595839471795215 0
		 0 -1 -1.2246467991473532e-016 0 -0.78595839471795215 7.5717387363829656e-017 -0.61827938811865635 0
		 -0.94414168692444578 0.84440280738931983 0.14414051732293923 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandThumb2" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.75371490090682092 8.0483974742281598e-017 -0.65720152780636587 0
		 0 -1 -1.2246467991473532e-016 0 -0.65720152780636587 9.230345408652027e-017 -0.75371490090682092 0
		 -0.97546168692444579 0.84191980738932004 0.21981451732293936 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandThumb3" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.75371490090682092 8.0483974742281598e-017 -0.65720152780636587 0
		 0 -1 -1.2246467991473532e-016 0 -0.65720152780636587 9.230345408652027e-017 -0.75371490090682092 0
		 -1.0436016869244455 0.84191980738931982 0.27923151732293927 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandIndex1" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.1407712982298639 0.84817826226710236 0.14470099871519457 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandIndex2" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.2324412982298634 0.86171626226710241 0.17199399871519466 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandIndex3" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.3349712982298627 0.82971226226710193 0.20295599871519457 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandMiddle1" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.1813991767144272 0.84957303361245828 0.022647954493956134 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandMiddle2" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.2894291767144268 0.86311103361245822 0.041339704493956075 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandMiddle3" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.392929176714427 0.83110703361245808 0.065586404493956099 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandRing1" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.1796896615885639 0.84901261808968476 -0.10395388103504716 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandRing2" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.2741796615885634 0.86255061808968436 -0.097801081035047255 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.012974197841844138;
createNode joint -n "Character1_LeftHandRing3" -p "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2";
	addAttr -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".bps" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.3762396615885648 0.83054661808968444 -0.096584881035047199 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.012974197841844138;
createNode transform -n "directionalLight1";
	setAttr ".t" -type "double3" 0 4.0744737535868225 0 ;
	setAttr ".r" -type "double3" -35.950877627041805 0 0 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	setAttr -k off ".v";
	setAttr ".in" 0.5;
createNode transform -n "directionalLight2";
	setAttr ".t" -type "double3" 0 4.0744737535868225 0 ;
	setAttr ".r" -type "double3" 144.04912237295915 62.906136223672448 180 ;
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	setAttr -k off ".v";
createNode transform -n "directionalLight3";
	setAttr ".t" -type "double3" 0 4.0744737535868225 0 ;
	setAttr ".r" -type "double3" 144.04912237295912 -24.076118688355351 179.99999999999997 ;
createNode directionalLight -n "directionalLightShape3" -p "directionalLight3";
	setAttr -k off ".v";
createNode transform -n "polySurface43";
createNode mesh -n "polySurfaceShape45" -p "polySurface43";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[16:283]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 372 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 1.47875142 0.4868674 1.43064356
		 0.46767941 1.44471264 0.4183234 1.50378776 0.43215808 1.4544251 0.52004766 1.4152317
		 0.51107371 1.21503472 0.42376187 1.23306739 0.4721159 1.18281698 0.49183145 1.15425777
		 0.44091436 1.25094306 0.51481932 1.21952009 0.52895921 1.38386059 0.45961037 1.3902452
		 0.4113085 1.37440109 0.50357807 1.29203367 0.50533986 1.3322283 0.50140059 1.33366346
		 0.45767352 1.30378842 0.54121208 1.27262735 0.41545096 1.28133237 0.46226332 1.33294201
		 0.40971217 1.33353484 0.53545398 1.3633709 0.54005873 1.27561653 0.54643118 1.39227092
		 0.54369342 0.39245823 0.30368635 0.42851675 0.3042559 0.43543798 0.3427259 0.40145445
		 0.33704576 0.44021317 0.38108683 0.40949079 0.37039694 0.42378783 0.26380822 0.47797692
		 0.26094869 0.47546467 0.30308089 0.47620976 0.34049177 0.48091674 0.2130743 0.53335881
		 0.2130743 0.52937055 0.25750819 0.52567911 0.2956259 0.5229007 0.33068523 0.5766905
		 0.2130743 0.57424742 0.24852926 0.56265146 0.28219828 0.55555123 0.31335509 0.60627204
		 0.25991628 0.59670764 0.28079188 0.60538846 0.29223108 0.57617325 0.32942405 0.61269277
		 0.23603082 0.61072105 0.2130743 0.37126026 0.12256062 0.38073382 0.091702849 0.3964268
		 0.087264031 0.3868731 0.1241394 0.38927743 0.064294666 0.40846187 0.052163273 0.43120348
		 0.081974685 0.42117557 0.12313449 0.43904269 0.042897552 0.41495183 0.16752551 0.4722783
		 0.12466423 0.47565877 0.16985528 0.46985149 0.086295009 0.48215666 0.043255985 0.52855563
		 0.17154168 0.52281165 0.12884997 0.51648194 0.093183562 0.57499403 0.17588665 0.56685835
		 0.14088286 0.55946827 0.1093417 0.59654683 0.14165133 0.60614783 0.16201429 0.60972673
		 0.18661144 0.48715848 0.38148114 0.53598928 0.36222979 0.43956032 0.0022656322 0.49636763
		 0.001992017 0.53151125 0.059224546 0.57233995 0.089619055 0.60180217 0.128838 0.55604833
		 0.38775152 0.49971104 0.4198145 0.59725696 0.33967102 0.22142738 0.77174604 0.2582294
		 0.77548343 0.25413603 0.81261396 0.2087242 0.80942231 0.55140799 0.03059864 0.25193629
		 0.85300606 0.30189398 0.81331855 0.30389482 0.8558175 0.20271516 0.85260707 0.6615321
		 0.21307431 0.66388649 0.25795966 0.62341195 0.29854429 0.6595338 0.16181694 0.61855692
		 0.12128153 0.23463422 0.74063247 0.25924972 0.74517065 0.59292132 0.078062683 0.28442612
		 0.74305993 0.29352176 0.77515811 0.26145008 0.69688141 0.40410805 0.027779847 0.44027856
		 0.42152983 0.40735388 0.39716563 0.38936159 0.37124291 0.39378476 0.35523531 0.38240176
		 0.051798254 0.25027996 0.92207086 0.2491053 0.94450116 0.22172302 0.94491863 0.21551731
		 0.92460555 0.2504499 0.89373296 0.20674121 0.89703363 0.28572252 0.92570412 0.29693946
		 0.89803839 0.27685219 0.94617987 0.37531301 0.29874903 0.38417763 0.32933855 0.37370905
		 0.33778769 0.36887416 0.087049812 0.24747473 0.96784246 0.22012675 0.96660137 0.27477413
		 0.96885264 0.38102603 0.26550895 0.37304491 0.16708401 0.35384706 0.26929778 0.37188849
		 0.21307427 0.42299962 0.21307427 0.35989136 0.29994059 0.34808826 0.21307428 0.35816833
		 0.17154363 0.24580537 0.994959 0.21480179 0.9929018 0.35514149 0.11751798 0.27561945
		 0.99348676 0.63243127 0.049554676 0.61300397 0.051363796 0.61924493 0.031915992 0.63310492
		 0.017693013 0.65367115 0.047501087 0.65298963 0.013597161 0.67027318 0.04471907 0.67131978
		 0.010877669 0.9413411 0.65875894 0.89194447 0.66123062 0.9151141 0.63700265 0.95394009
		 0.6209951 0.93147737 0.68999857 0.88885421 0.69846392 0.94589347 0.72817641 0.88864547
		 0.72848743 0.845339 0.69313335 0.81865501 0.69137436 0.82352674 0.66243279 0.85191172
		 0.66271156 0.84524995 0.72874969 0.82025176 0.7291109 0.84567147 0.62949747 0.82802409
		 0.63473886 0.95612782 0.59210545 0.9866659 0.58727854 0.98947555 0.62463236 0.07572487
		 0.0093518496 0.098007113 0.014259517 0.093486816 0.034342051 0.066469103 0.02859807
		 0.089932948 0.050871253 0.049122959 0.049088359 0.95242292 0.55533588 0.98048395
		 0.55313027 0.11839548 0.019162178 0.11594084 0.037680268 0.11627772 0.052009404 0.86604685
		 0.48065129 0.90456814 0.49297777 0.90611261 0.52105403 0.86605102 0.50617981 0.82796949
		 0.4952496 0.86860025 0.52276635 0.84906143 0.52408636 0.1537506 0.32919508 0.13480374
		 0.32682353 0.11013094 0.30533177 0.13876933 0.29429257 0.77639586 0.69328707 0.77855796
		 0.65880227 0.7897374 0.72977197 0.79078752 0.63515866 0.73344964 0.66136736 0.75865322
		 0.62973684 0.71979791 0.69364387 0.72027713 0.73158062 0.71559209 0.6375857 0.63349122
		 0.73383594 0.65303344 0.6963309 0.75832623 0.61776918 0.79270816 0.61978137 0.14568311
		 0.21237975 0.15217096 0.2863518 0.1288147 0.2564404 0.11517748 0.22622454 0.8246153
		 0.61758769 0.83815461 0.61425346 0.11259222 0.26513445 0.16619724 0.32566881 0.10246125
		 0.18728405 0.13510299 0.1531831 0.1792444 0.25703049 0.18592596 0.3184368 0.20751095
		 0.25507295 0.20835513 0.3192634 0.61535257 0.73421049 0.63683993 0.68835109 0.13969445
		 0.10337049 0.10677627 0.12102997 0.70352322 0.63159466 0.16223578 0.038374066 0.20428945
		 0.010137498 0.20498286 0.062867343 0.17127714 0.076641023 0.16869539 0.14159423 0.2059553
		 0.13680959 0.17383482 0.20354968 0.20685332 0.20505023 0.86676842 0.45855623 0.90654629
		 0.46736637 0.82180339 0.47595659 0.82227385 0.45557159 0.1347152 0.37635136 0.15611994
		 0.41173959 0.15514284 0.44815949 0.13454068 0.38969672 0.20972213 0.42313403 0.21035576
		 0.47124511 0.1795907 0.4689869 0.1831519 0.4214727 0.14605471 0.35684532 0.16379458
		 0.37889844 0.18382573 0.37522483 0.20908773 0.37496608 0.10370156 0.32640594 0.127334
		 0.3488003 0.11523491 0.33822471 0.10224304 0.36155868 0.081990927 0.34683841 0.071074218
		 0.32264608 0.92635554 0.61386538;
	setAttr ".uvst[0].uvsp[250:371]" 0.92467767 0.59501112 0.9228856 0.57180047
		 0.88866621 0.53751636 0.87274688 0.55202985 0.085469663 0.37709212 0.89867264 0.61779553
		 0.86834329 0.62550741 0.85885471 0.60354435 0.092127085 0.28416276 0.90528017 0.57200301
		 0.92541832 0.54084885 0.89924103 0.59884149 0.053002954 0.30416548 0.88794905 0.57716703
		 0.056651294 0.33338815 0.88900703 0.5942598 0.70774388 0.051883787 0.70904046 0.020041376
		 0.721995 0.035093635 0.72702229 0.054889917 0.68667144 0.048521638 0.68944675 0.014724642
		 0.94247144 0.7986995 0.954292 0.83755344 0.91612989 0.81998909 0.89316124 0.79548901
		 0.93242854 0.76685077 0.88954979 0.75844753 0.84603184 0.76426142 0.85310477 0.79431468
		 0.82481849 0.79544431 0.81939757 0.76680851 0.84717613 0.82758695 0.82970923 0.82286698
		 0.98996848 0.8363809 0.98483342 0.87355304 0.95490557 0.86691535 0.072161824 0.091025174
		 0.064606816 0.071028233 0.092009813 0.067650139 0.094770938 0.08804369 0.97669452
		 0.90737796 0.9488278 0.90382755 0.11466959 0.066252172 0.11550263 0.084888816 0.85576636
		 0.97196567 0.85786265 0.94654417 0.89932817 0.9351176 0.89516932 0.96282077 0.81898946
		 0.9543941 0.8424831 0.92728066 0.86189419 0.93029916 0.26319554 0.32718834 0.27725103
		 0.29174834 0.30616587 0.30173039 0.2820681 0.3241196 0.78031451 0.80124253 0.77728605
		 0.76684868 0.79317063 0.82430017 0.76172739 0.83155876 0.73557585 0.80115145 0.72094053
		 0.76953048 0.71875471 0.82586819 0.65440458 0.7703293 0.76194853 0.84358609 0.79565281
		 0.83966726 0.26818615 0.21012878 0.29904088 0.22284573 0.28620523 0.25354815 0.26364678
		 0.28430343 0.82669061 0.84024274 0.83998352 0.84312868 0.30264834 0.26164222 0.25066239
		 0.32411647 0.27720436 0.150572 0.310727 0.18345684 0.2307514 0.31761295 0.23581518
		 0.25599128 0.63857847 0.77908069 0.27130559 0.10095173 0.30467221 0.11739367 0.70702428
		 0.83250517 0.24706554 0.036815107 0.23903477 0.075395823 0.24332334 0.14022267 0.23981608
		 0.20233732 0.8950699 0.9884485 0.85473293 0.99404347 0.81016469 0.99355292 0.81129432
		 0.97317243 0.28345856 0.3736245 0.28398055 0.38693005 0.26493493 0.44614026 0.26300016
		 0.40977389 0.23623598 0.42049736 0.24104667 0.46785709 0.27161866 0.35454476 0.25446409
		 0.3772307 0.23434502 0.37429652 0.31314617 0.32256007 0.30192918 0.3347947 0.29011223
		 0.34581196 0.31552747 0.35764235 0.33538321 0.34218469 0.34565836 0.31760263 0.92415994
		 0.86256588 0.92667753 0.84360689 0.92073733 0.88580167 0.88329464 0.91746855 0.86867613
		 0.90161574 0.3326976 0.37255383 0.89929372 0.83866978 0.86941856 0.8308118 0.86003822
		 0.85327584 0.32360464 0.27991083 0.92063433 0.91697288 0.9032585 0.88470209 0.89935559
		 0.85756385 0.36323512 0.29846814 0.8863557 0.87846601 0.36035711 0.32781115 0.88882786
		 0.86172855;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 292 ".vt";
	setAttr ".vt[0:165]"  0.27554205 1.51404214 -0.072988711 0.22042772 1.49374604 0.044441871
		 0.24854635 1.36758482 0.043881111 0.32165444 1.37182021 -0.088885382 0.22428462 1.60053909 -0.055124078
		 0.17216115 1.59667313 0.030541107 -0.26357675 1.36542356 0.042361021 -0.23245186 1.49165821 0.044178445
		 -0.29039174 1.50419271 -0.079295568 -0.33901095 1.36752343 -0.096249729 -0.18417546 1.5953213 0.030206479
		 -0.22702144 1.61110973 -0.042996213 0.12495006 1.48530507 0.11961477 0.13769127 1.36330807 0.12124703
		 0.095289528 1.59237027 0.10056208 -0.0071519278 1.58797681 0.12828027 -0.00046421774 1.48103881 0.15165222
		 -0.14557222 1.36662638 0.12375326 -0.13257644 1.48578537 0.12147523 0.00023432537 1.36174142 0.14846218
		 0.12075551 1.68084872 0.037446439 0.061027292 1.67929995 0.078377321 -0.0062350929 1.67204285 0.11035866
		 -0.10450581 1.5909512 0.099454045 -0.073548712 1.67800951 0.077495679 -0.13194637 1.67983043 0.036544267
		 -0.011177779 1.27580905 -0.34315157 0.077886149 1.13821614 -0.17457542 0.13527511 1.14379573 -0.15543199
		 0.13070574 1.15717864 -0.1026754 0.1209996 1.16622078 -0.056600448 0.067347743 1.1750232 -0.042702775
		 -0.0015898293 1.25535464 0.082690693 0.10869284 1.15889311 -0.2506558 0.18493854 1.16410089 -0.18711308
		 0.19538601 1.17205679 -0.10404978 0.16098808 1.18231845 -0.0312277 0.087097555 1.19103563 0.01171878
		 0.14312522 1.26517797 -0.30952355 0.24539231 1.25008452 -0.22146362 0.27312887 1.242504 -0.10317305
		 0.21448885 1.24539101 -0.0011799857 0.11566373 1.24878502 0.060679115 -0.012415605 1.45112479 -0.33167413
		 0.14924596 1.43307579 -0.30573025 0.27377239 1.39915621 -0.21922496 0.30835971 1.36858451 -0.095927536
		 0.23738739 1.3652066 0.034173734 0.13149175 1.3625226 0.10755385 -0.0085713854 1.59901595 -0.26053736
		 0.12966587 1.58391929 -0.23936567 0.22736116 1.55277562 -0.17221281 0.26281995 1.50929153 -0.080043428
		 0.2095267 1.48968649 0.035013735 0.11863662 1.4827323 0.1063316 -0.00058063114 1.47926581 0.136861
		 -0.0063493703 1.68995476 -0.15879758 0.090458669 1.67598581 -0.14269623 0.17165966 1.64120126 -0.11586863
		 0.21213514 1.59427369 -0.062191352 0.16207966 1.59100366 0.020699956 0.088628605 1.58775663 0.087821089
		 0.047700457 1.72915375 -0.047489755 0.099864721 1.71673214 -0.031951424 0.13693196 1.68669021 -0.016257338
		 0.11179722 1.67532194 0.026220776 0.054132789 1.67443299 0.065768503 -0.0053057475 1.73702574 -0.057822466
		 -0.0055466918 1.16724277 -0.10349505 -0.0060771611 1.80098712 0.11180464 0.068100296 1.16020465 -0.10251788
		 -0.085551299 1.14133346 -0.16682053 -0.11728803 1.15307283 -0.23835716 -0.14407642 1.14210558 -0.14943871
		 -0.19381893 1.15885997 -0.18177478 -0.14182615 1.15909302 -0.098585539 -0.20728716 1.17425358 -0.10108201
		 -0.13368993 1.17064142 -0.051700186 -0.17565902 1.18982565 -0.024566814 -0.080082394 1.17277384 -0.036550809
		 -0.10072712 1.19300807 0.019228086 -0.15769045 1.25376058 -0.30274698 -0.25678462 1.24455309 -0.2169303
		 -0.28893489 1.24512637 -0.10047887 -0.22980617 1.2515744 0.0034904853 -0.1278919 1.25549388 0.067063279
		 -0.16247727 1.43284798 -0.30539057 -0.28498739 1.40141416 -0.22062597 -0.32570687 1.3639822 -0.10312525
		 -0.25243947 1.36284113 0.032724351 -0.13960545 1.36578643 0.11000404 -0.14179453 1.58485663 -0.24362871
		 -0.24389206 1.54993892 -0.17323023 -0.27755687 1.4995116 -0.086269468 -0.22154617 1.48758566 0.034763679
		 -0.12643112 1.48316896 0.10813859 -0.10263374 1.67860651 -0.14059755 -0.17783567 1.65067935 -0.10098439
		 -0.21465579 1.60528862 -0.05006849 -0.17409924 1.58981836 0.020292513 -0.097825766 1.58636153 0.086686127
		 -0.1442443 1.68958187 -0.011078037 -0.1087566 1.72075367 -0.024854973 -0.12306587 1.67444658 0.025188096
		 -0.066512473 1.6732229 0.06488391 -0.07885018 1.15928996 -0.099630736 -0.059240922 1.73047519 -0.045042977
		 2.7920891e-005 1.36168826 0.13340499 -0.0070748231 1.58413124 0.1140528 -0.0060544615 1.66784453 0.096428983
		 -0.0059298971 1.18414688 -0.039285574 -0.0053542089 1.20110941 0.022267453 -0.0057226121 1.14537895 -0.17739333
		 -0.0066109849 1.15409803 -0.26774451 0.2292352 1.3628267 -0.16651434 0.23715556 1.38475502 -0.0040232358
		 0.33945829 1.39003468 -0.086600028 0.33839718 1.33148551 -0.220716 0.1317527 1.40010738 0.26073301
		 0.13090023 1.397524 0.41271046 0.24933101 1.35159004 0.39461118 0.22221519 1.35728192 0.23715749
		 0 1.4013648 0.26129836 0 1.43836737 0.367991 0.12341071 1.41580462 -0.13879395 0.10267741 1.36295772 0.0086124716
		 0 1.51507378 -0.12664127 0 1.37805915 0.017248113 0.39620951 1.3371464 -0.032894947
		 0.40649876 1.32552218 -0.1444906 0.3353608 1.31207383 0.075588696 0.31744421 1.31159198 0.33749104
		 0.29543355 1.2969197 0.211228 0.24779272 1.33798981 0.55443162 0.3561503 1.30134344 0.44936284
		 0.13734517 1.37790215 0.61669058 0 1.43480277 0.63206559 0.1319143 1.28321671 0.84285223
		 0 1.27862906 0.9515416 0.31555748 1.26897693 0.59965724 0.20326133 1.25263619 -0.23910145
		 0.32091874 1.23696089 -0.2310722 0.11444128 1.31422138 0.39162436 0.074047588 1.25762773 0.10731716
		 0.13039371 1.25087333 0.099021062 0 1.25519764 0.10794346 0 1.37154269 0.38005239
		 0.085639894 1.27311563 -0.21075919 0 1.28609467 -0.16460359 0.38294387 1.25070977 -0.014516523
		 0.40417826 1.24796128 -0.13767955 0.34298241 1.22332859 0.085225314 0.29996726 1.25695705 0.33482522
		 0.28434131 1.23708403 0.21511027 0.33806002 1.26171732 0.44496712 0.13297059 1.31179619 0.58223873
		 0 1.37137902 0.60423386 0.12484079 1.21993613 0.84583342 0 1.20414782 0.93059337
		 0.30159897 1.22750926 0.62043947 0.18823785 1.11280107 -0.026902398 0.18669355 1.14390707 -0.18481924
		 0.25470856 1.1281004 -0.09947326 0.28264135 1.11953473 -0.19675569 0.090373926 1.10130453 -0.0035693664
		 0.081804998 1.14554203 -0.17139445;
	setAttr ".vt[166:291]" 0 1.11372066 0.012708344 0 1.13657129 -0.15507175 0.070299402 1.15202379 0.12725635
		 0.12333298 1.15243816 0.14080243 0 1.14201283 0.1179698 0.075310864 1.071360588 0.1383469
		 0.16035277 1.10030568 0.1249916 0 1.04739666 0.14545538 0.1369005 1.11620963 0.26413548
		 0.073322371 1.098318338 0.29569638 0 1.10132694 0.29769921 0.36435232 1.16899347 -0.11678955
		 0.37087369 1.16842186 -0.054560486 0.25135362 1.12915754 0.027436538 0.21379624 1.12060404 0.10737645
		 0.30281961 1.16684437 0.069791622 0.20696577 1.16378939 0.16389106 0.18860531 1.18154871 0.050271451
		 0.19093013 1.22525525 0.057400659 0.21431282 1.23127866 -0.024407918 0.30670917 1.28793585 0.14873914
		 0.3087101 1.22981429 0.16715898 0.16113468 1.23520863 0.089262061 0.16851738 1.18066478 0.098137483
		 0 1.39237428 0.16985379 0.12081805 1.3875463 0.1645145 0.22117035 1.36622596 0.13623263
		 0.14501873 1.13573754 0.19884732 0.20454845 1.17007053 0.13095781 0.25598729 1.17963278 0.058836617
		 0.32021806 1.24102211 -0.023454932 0.27348095 1.22426558 0.068987511 0.23041776 1.22220731 0.12809172
		 0.2013963 1.2333709 0.15449424 0.21462172 1.27360713 0.36706048 0.24058071 1.27731895 0.5460341
		 0.12093753 1.26082349 0.77095503 0 1.2656914 0.81053472 0.22412103 1.25481832 0.68353784
		 0 1.31337023 0.24509069 0.093720958 1.29873681 0.23793942 0.067600131 1.12198329 0.20739816
		 0 1.11695683 0.2050216 0.34357655 1.21123123 -0.014327299 0.20145907 1.20595121 0.012441483
		 0.28810269 1.20692778 0.015000977 0.40193909 1.27130091 -0.050837539 -0.2292352 1.3628267 -0.16651434
		 -0.23715556 1.38475502 -0.0040232358 -0.33945829 1.39003468 -0.086600028 -0.33839718 1.33148551 -0.220716
		 -0.1317527 1.40010738 0.26073301 -0.13090023 1.397524 0.41271046 -0.24933101 1.35159004 0.39461118
		 -0.22221519 1.35728192 0.23715749 -0.12341071 1.41580462 -0.13879395 -0.10267741 1.36295772 0.0086124716
		 -0.39620951 1.3371464 -0.032894947 -0.40649876 1.32552218 -0.1444906 -0.3353608 1.31207383 0.075588696
		 -0.31744421 1.31159198 0.33749104 -0.29543355 1.2969197 0.211228 -0.24779272 1.33798981 0.55443162
		 -0.3561503 1.30134344 0.44936284 -0.13734517 1.37790215 0.61669058 -0.1319143 1.28321671 0.84285223
		 -0.31555748 1.26897693 0.59965724 -0.20326133 1.25263619 -0.23910145 -0.32091874 1.23696089 -0.2310722
		 -0.11444128 1.31422138 0.39162436 -0.074047588 1.25762773 0.10731716 -0.13039371 1.25087333 0.099021062
		 -0.085639894 1.27311563 -0.21075919 -0.38294387 1.25070977 -0.014516523 -0.40417826 1.24796128 -0.13767955
		 -0.34298241 1.22332859 0.085225314 -0.29996726 1.25695705 0.33482522 -0.28434131 1.23708403 0.21511027
		 -0.33806002 1.26171732 0.44496712 -0.13297059 1.31179619 0.58223873 -0.12484079 1.21993613 0.84583342
		 -0.30159897 1.22750926 0.62043947 -0.18823785 1.11280107 -0.026902398 -0.18669355 1.14390707 -0.18481924
		 -0.25470856 1.1281004 -0.09947326 -0.28264135 1.11953473 -0.19675569 -0.090373926 1.10130453 -0.0035693664
		 -0.081804998 1.14554203 -0.17139445 -0.070299402 1.15202379 0.12725635 -0.12333298 1.15243816 0.14080243
		 -0.075310864 1.071360588 0.1383469 -0.16035277 1.10030568 0.1249916 -0.1369005 1.11620963 0.26413548
		 -0.073322371 1.098318338 0.29569638 -0.36435232 1.16899347 -0.11678955 -0.37087369 1.16842186 -0.054560486
		 -0.25135362 1.12915754 0.027436538 -0.21379624 1.12060404 0.10737645 -0.30281961 1.16684437 0.069791622
		 -0.20696577 1.16378939 0.16389106 -0.18860531 1.18154871 0.050271451 -0.19093013 1.22525525 0.057400659
		 -0.21431282 1.23127866 -0.024407918 -0.30670917 1.28793585 0.14873914 -0.3087101 1.22981429 0.16715898
		 -0.16113468 1.23520863 0.089262061 -0.16851738 1.18066478 0.098137483 -0.12081805 1.3875463 0.1645145
		 -0.22117035 1.36622596 0.13623263 -0.14501873 1.13573754 0.19884732 -0.20454845 1.17007053 0.13095781
		 -0.25598729 1.17963278 0.058836617 -0.32021806 1.24102211 -0.023454932 -0.27348095 1.22426558 0.068987511
		 -0.23041776 1.22220731 0.12809172 -0.2013963 1.2333709 0.15449424 -0.21462172 1.27360713 0.36706048
		 -0.24058071 1.27731895 0.5460341 -0.12093753 1.26082349 0.77095503 -0.22412103 1.25481832 0.68353784
		 -0.093720958 1.29873681 0.23793942 -0.067600131 1.12198329 0.20739816 -0.34357655 1.21123123 -0.014327299
		 -0.20145907 1.20595121 0.012441483 -0.28810269 1.20692778 0.015000977 -0.40193909 1.27130091 -0.050837539;
	setAttr -s 571 ".ed";
	setAttr ".ed[0:165]"  0 1 1 2 1 1 3 2 0 3 0 0 4 5 0 1 5 1 0 4 0 6 7 1 8 7 1
		 9 8 0 9 6 0 7 10 1 11 10 0 8 11 0 1 12 1 13 12 1 2 13 0 5 14 1 12 14 1 14 15 1 16 15 1
		 12 16 1 17 18 1 7 18 1 6 17 0 16 19 1 16 18 1 17 19 0 13 19 0 20 21 0 14 21 1 5 20 0
		 21 22 0 22 15 1 23 24 1 25 24 0 10 25 0 10 23 1 23 15 1 24 22 0 18 23 1 34 35 1 35 36 1
		 38 39 1 39 40 1 40 41 1 43 44 1 44 45 1 45 46 1 49 50 1 50 51 1 51 52 1 56 57 1 57 58 1
		 58 59 1 59 60 1 63 64 1 64 65 1 30 36 1 34 39 1 35 40 1 36 41 1 38 44 1 39 45 1 40 46 1
		 43 49 1 44 50 1 45 51 1 46 52 1 49 56 1 50 57 1 51 58 1 52 59 1 56 67 1 58 63 1 59 64 1
		 60 65 1 57 62 1 62 63 1 62 67 1 73 74 1 73 75 1 75 76 1 74 76 1 75 77 1 77 78 1 76 78 1
		 74 82 1 81 82 1 76 83 1 82 83 1 78 84 1 83 84 1 84 85 1 81 86 1 43 86 1 82 87 1 86 87 1
		 83 88 1 87 88 1 84 89 1 88 89 1 86 91 1 49 91 1 87 92 1 91 92 1 88 93 1 92 93 1 91 96 1
		 56 96 1 92 97 1 96 97 1 93 98 1 97 98 1 98 101 1 102 101 1 97 102 1 101 103 1 96 106 1
		 106 102 1 106 67 1 41 47 1 46 47 1 47 53 1 47 48 1 52 53 1 53 60 1 89 90 1 85 90 1
		 90 107 1 48 107 1 60 61 1 93 94 1 98 99 1 99 103 1 48 54 1 53 54 1 54 61 1 54 55 1
		 55 108 1 89 94 1 94 95 1 90 95 1 55 107 1 94 99 1 55 95 1 61 108 1 62 69 1 63 69 1
		 64 69 1 65 69 1 66 69 1 65 66 1 67 69 1 69 106 1 69 102 1 69 101 1 69 103 1 69 104 1
		 61 66 1 103 104 1 100 104 1 69 109 1 99 100 1 95 100 1 100 108 1;
	setAttr ".ed[166:331]" 109 108 1 104 109 1 66 109 1 41 42 1 42 48 1 30 31 1
		 31 37 1 36 37 1 37 42 1 78 80 1 77 79 1 32 42 1 32 107 1 79 80 1 80 85 1 32 85 1
		 79 110 1 32 111 1 31 110 1 110 111 1 80 111 1 37 111 1 28 34 1 28 29 1 29 35 1 29 30 1
		 68 70 1 75 105 1 29 70 1 79 105 1 31 70 1 68 110 1 68 105 1 33 34 1 72 81 1 27 33 1
		 27 28 1 33 38 1 26 38 1 27 70 1 71 72 1 72 74 1 26 81 1 26 43 1 27 112 1 71 73 1
		 71 105 1 68 112 1 26 113 1 71 112 1 112 113 1 33 113 1 72 113 1 115 114 1 116 115 1
		 116 117 1 117 114 1 121 118 1 118 122 1 122 123 1 125 124 1 115 125 1 114 124 1 127 126 1
		 125 127 1 124 126 1 125 191 1 121 192 1 127 190 1 132 131 1 121 132 1 132 186 1 131 134 1
		 114 140 1 117 141 1 141 140 1 124 147 1 140 147 1 126 148 1 147 148 1 134 154 1 140 161 1
		 160 161 1 162 160 1 141 163 1 162 163 1 163 161 1 147 165 1 164 165 1 160 164 1 161 165 1
		 148 167 1 166 167 1 164 166 1 165 167 1 164 171 1 171 172 1 160 172 1 172 180 1 180 182 1
		 174 182 1 186 187 1 188 184 1 187 198 1 190 122 1 191 118 1 190 191 1 192 115 1 191 192 1
		 192 186 1 197 184 1 198 188 1 197 198 1 138 158 1 154 201 1 137 138 1 123 136 1 136 138 1
		 118 119 1 119 123 1 120 121 1 135 137 1 120 131 1 135 136 1 119 135 1 133 135 1 119 120 1
		 120 133 1 133 134 1 139 137 1 134 139 1 133 139 1 203 156 1 158 203 1 146 205 1 131 152 1
		 152 154 1 143 144 1 152 153 1 153 199 1 199 200 1 132 153 1 144 188 1 153 187 1 198 199 1
		 144 199 1 200 201 1 152 200 1 143 206 1 143 145 1 145 205 1 146 156 1 206 199 1 205 206 1
		 137 157 1 157 158 1 201 204 1 139 159 1 154 159 1 157 202 1 202 203 1 202 204 1 201 155 1
		 157 159 1 159 204 1 202 155 1;
	setAttr ".ed[332:497]" 155 156 1 142 200 1 142 206 1 142 155 1 142 146 1 173 166 1
		 173 176 1 171 173 1 175 176 1 176 208 1 170 208 1 171 175 1 174 175 1 172 174 1 145 170 1
		 182 194 1 174 193 1 193 194 1 207 193 1 175 207 1 189 194 1 169 189 1 144 169 1 143 168 1
		 168 170 1 188 189 1 207 208 1 168 207 1 168 169 1 169 193 1 185 210 1 183 184 1 184 185 1
		 183 210 1 194 195 1 183 189 1 183 195 1 196 197 1 195 211 1 210 211 1 185 196 1 196 211 1
		 117 129 1 141 150 1 163 177 1 129 150 1 150 177 1 179 180 1 181 182 1 128 130 1 116 128 1
		 130 151 1 151 187 1 151 197 1 130 186 1 115 130 1 162 178 1 160 179 1 128 212 1 149 151 1
		 149 212 1 177 178 1 178 209 1 149 196 1 181 209 1 178 179 1 179 181 1 181 195 1 209 211 1
		 149 209 1 128 129 1 150 212 1 178 212 1 214 213 1 215 214 1 215 216 1 216 213 1 220 217 1
		 217 122 1 222 221 1 214 222 1 213 221 1 222 127 1 221 126 1 222 273 1 220 274 1 227 226 1
		 220 227 1 227 269 1 226 229 1 213 233 1 216 234 1 234 233 1 221 238 1 233 238 1 238 148 1
		 229 244 1 233 249 1 248 249 1 250 248 1 234 251 1 250 251 1 251 249 1 238 253 1 252 253 1
		 248 252 1 249 253 1 252 166 1 253 167 1 252 256 1 256 257 1 248 257 1 257 263 1 263 265 1
		 258 265 1 269 270 1 271 267 1 270 280 1 273 217 1 190 273 1 274 214 1 273 274 1 274 269 1
		 279 267 1 280 271 1 279 280 1 244 283 1 231 138 1 217 218 1 218 123 1 219 220 1 230 231 1
		 219 226 1 230 136 1 218 230 1 228 230 1 218 219 1 219 228 1 228 229 1 232 231 1 229 232 1
		 228 232 1 226 242 1 242 244 1 236 237 1 242 243 1 243 281 1 281 282 1 227 243 1 237 271 1
		 243 270 1 280 281 1 237 281 1 282 283 1 242 282 1 236 286 1 236 145 1 286 281 1 205 286 1
		 231 246 1 246 158 1 283 285 1 232 247 1 244 247 1 246 284 1 284 203 1;
	setAttr ".ed[498:570]" 284 285 1 283 245 1 246 247 1 247 285 1 284 245 1 245 156 1
		 235 282 1 235 286 1 235 245 1 235 146 1 256 173 1 259 176 1 256 259 1 258 259 1 257 258 1
		 265 276 1 258 275 1 275 276 1 287 275 1 259 287 1 272 276 1 255 272 1 237 255 1 236 254 1
		 254 170 1 271 272 1 287 208 1 254 287 1 254 255 1 255 275 1 268 289 1 266 267 1 267 268 1
		 266 289 1 276 277 1 266 272 1 266 277 1 278 279 1 277 290 1 289 290 1 268 278 1 278 290 1
		 216 224 1 234 240 1 251 260 1 224 240 1 240 260 1 262 263 1 264 265 1 223 225 1 215 223 1
		 225 241 1 241 270 1 241 279 1 225 269 1 214 225 1 250 261 1 248 262 1 223 291 1 239 241 1
		 239 291 1 260 261 1 261 288 1 239 278 1 264 288 1 261 262 1 262 264 1 264 277 1 288 290 1
		 239 288 1 223 224 1 240 291 1 261 291 1;
	setAttr -s 284 -ch 1124 ".fc[0:283]" -type "polyFaces" 
		f 4 0 -2 -3 3
		mu 0 4 0 1 2 3
		f 4 4 -6 -1 6
		mu 0 4 4 5 1 0
		f 4 7 -9 -10 10
		mu 0 4 6 7 8 9
		f 4 11 -13 -14 8
		mu 0 4 7 10 11 8
		f 4 14 -16 -17 1
		mu 0 4 1 12 13 2
		f 4 17 -19 -15 5
		mu 0 4 5 14 12 1
		f 4 19 -21 -22 18
		mu 0 4 14 16 17 12
		f 4 22 -24 -8 24
		mu 0 4 19 20 7 6
		f 4 -26 26 -23 27
		mu 0 4 21 17 20 19
		f 4 21 25 -29 15
		mu 0 4 12 17 21 13
		f 4 29 -31 -18 31
		mu 0 4 25 23 14 5
		f 4 32 33 -20 30
		mu 0 4 23 22 16 14
		f 4 34 -36 -37 37
		mu 0 4 15 18 24 10
		f 4 -35 38 -34 -40
		mu 0 4 18 15 16 22
		f 4 40 -38 -12 23
		mu 0 4 20 15 10 7
		f 4 20 -39 -41 -27
		mu 0 4 17 16 15 20
		f 4 59 44 -61 -42
		mu 0 4 26 27 28 29
		f 4 60 45 -62 -43
		mu 0 4 29 28 30 31
		f 4 62 47 -64 -44
		mu 0 4 32 33 34 27
		f 4 63 48 -65 -45
		mu 0 4 27 34 35 28
		f 4 65 49 -67 -47
		mu 0 4 36 37 38 33
		f 4 66 50 -68 -48
		mu 0 4 33 38 39 34
		f 4 67 51 -69 -49
		mu 0 4 34 39 40 35
		f 4 69 52 -71 -50
		mu 0 4 37 41 42 38
		f 4 70 53 -72 -51
		mu 0 4 38 42 43 39
		f 4 71 54 -73 -52
		mu 0 4 39 43 44 40
		f 4 74 56 -76 -55
		mu 0 4 43 45 46 44
		f 4 75 57 -77 -56
		mu 0 4 44 46 47 48
		f 4 78 -75 -54 77
		mu 0 4 49 45 43 42
		f 4 -78 -53 73 -80
		mu 0 4 49 42 41 50
		f 4 81 82 -84 -81
		mu 0 4 51 52 53 54
		f 4 84 85 -87 -83
		mu 0 4 52 55 56 53
		f 4 83 89 -91 -88
		mu 0 4 54 53 57 58
		f 4 86 91 -93 -90
		mu 0 4 53 56 59 57
		f 4 88 96 -98 -95
		mu 0 4 60 58 61 62
		f 4 90 98 -100 -97
		mu 0 4 58 57 63 61
		f 4 92 100 -102 -99
		mu 0 4 57 59 64 63
		f 4 95 102 -104 -66
		mu 0 4 36 62 65 37
		f 4 97 104 -106 -103
		mu 0 4 62 61 66 65
		f 4 99 106 -108 -105
		mu 0 4 61 63 67 66
		f 4 103 108 -110 -70
		mu 0 4 37 65 68 41
		f 4 105 110 -112 -109
		mu 0 4 65 66 69 68
		f 4 107 112 -114 -111
		mu 0 4 66 67 70 69
		f 4 113 114 -116 -117
		mu 0 4 69 70 71 72
		f 4 -119 111 116 -120
		mu 0 4 73 68 69 72
		f 4 120 -74 109 118
		mu 0 4 73 50 41 68
		f 4 64 122 -122 -46
		mu 0 4 28 35 74 30
		f 4 125 -124 -123 68
		mu 0 4 40 75 74 35
		f 4 55 -127 -126 72
		mu 0 4 44 48 75 40
		f 4 128 -128 -101 93
		mu 0 4 76 77 64 59
		f 4 140 -133 -107 101
		mu 0 4 64 78 67 63
		f 4 144 -134 -113 132
		mu 0 4 78 79 70 67
		f 4 134 -118 -115 133
		mu 0 4 79 80 71 70
		f 4 136 -136 -125 123
		mu 0 4 75 81 82 74
		f 4 131 -138 -137 126
		mu 0 4 48 83 81 75
		f 4 146 -140 -139 137
		mu 0 4 84 85 86 87
		f 4 142 -142 -141 127
		mu 0 4 77 88 78 64
		f 4 -144 145 -143 129
		mu 0 4 89 86 90 91
		f 4 138 143 -131 135
		mu 0 4 87 86 89 92
		f 3 153 -148 79
		mu 0 3 50 93 49
		f 3 -79 147 -149
		mu 0 3 45 49 94
		f 3 -57 148 -150
		mu 0 3 46 45 94
		f 3 -58 149 -151
		mu 0 3 47 46 94
		f 3 -153 150 -152
		mu 0 3 95 47 94
		f 3 -121 -155 -154
		mu 0 3 50 73 93
		f 3 -156 154 119
		mu 0 3 72 96 73
		f 3 -157 155 115
		mu 0 3 71 96 72
		f 3 -158 156 117
		mu 0 3 80 96 71
		f 3 -159 157 160
		mu 0 3 97 96 80
		f 4 152 -160 -132 76
		mu 0 4 47 95 83 48
		f 4 168 166 -147 159
		mu 0 4 98 99 85 84
		f 4 161 -161 -135 163
		mu 0 4 100 97 80 79
		f 4 -162 165 -167 -168
		mu 0 4 101 102 85 99
		f 4 164 -164 -145 141
		mu 0 4 88 100 79 78
		f 4 139 -166 -165 -146
		mu 0 4 86 85 102 90
		f 3 -163 158 167
		mu 0 3 99 103 101
		f 3 151 162 -169
		mu 0 3 98 103 99
		f 4 180 -94 -92 175
		mu 0 4 104 76 59 56
		f 4 124 -171 -170 121
		mu 0 4 74 82 105 30
		f 4 173 -173 -172 58
		mu 0 4 31 106 107 108
		f 4 169 -175 -174 61
		mu 0 4 30 105 106 31
		f 4 179 -176 -86 176
		mu 0 4 109 104 56 55
		f 4 -186 -185 172 187
		mu 0 4 110 111 112 113
		f 4 130 -179 177 170
		mu 0 4 92 89 114 115
		f 4 186 -184 181 -181
		mu 0 4 116 110 114 117
		f 4 -129 -182 178 -130
		mu 0 4 91 117 114 89
		f 4 -180 182 185 -187
		mu 0 4 116 118 111 110
		f 4 -188 174 -178 183
		mu 0 4 110 113 115 114
		f 4 188 41 -191 -190
		mu 0 4 119 26 29 120
		f 4 42 -59 -192 190
		mu 0 4 29 31 108 120
		f 4 -195 191 171 196
		mu 0 4 121 120 108 107
		f 4 -85 193 -196 -177
		mu 0 4 55 52 122 109
		f 4 -198 192 -197 184
		mu 0 4 111 123 124 112
		f 4 -199 197 -183 195
		mu 0 4 125 123 111 118
		f 4 203 43 -60 -200
		mu 0 4 126 32 27 26
		f 4 207 87 -89 -201
		mu 0 4 127 54 58 60
		f 4 201 199 -189 -203
		mu 0 4 128 126 26 119
		f 4 217 -215 204 -204
		mu 0 4 126 129 130 32
		f 4 46 -63 -205 209
		mu 0 4 36 33 32 130
		f 4 -206 202 189 194
		mu 0 4 121 131 119 120
		f 4 -217 -216 206 218
		mu 0 4 129 132 133 127
		f 4 211 80 -208 -207
		mu 0 4 133 51 54 127
		f 4 94 -96 -210 208
		mu 0 4 60 62 36 130
		f 4 -211 205 -193 213
		mu 0 4 134 135 124 123
		f 4 -212 212 -194 -82
		mu 0 4 51 136 122 52
		f 4 -214 198 -213 215
		mu 0 4 134 123 125 137
		f 4 -202 210 216 -218
		mu 0 4 126 128 132 129
		f 4 -219 200 -209 214
		mu 0 4 129 127 60 130
		f 4 -253 -252 249 248
		mu 0 4 138 139 140 141
		f 4 -257 -249 255 254
		mu 0 4 142 138 141 143
		f 4 -261 -255 259 258
		mu 0 4 144 142 143 145
		f 4 -220 -221 221 222
		mu 0 4 146 147 148 149
		f 4 -227 -228 219 228
		mu 0 4 150 151 147 146
		f 4 -230 -231 226 231
		mu 0 4 152 153 151 150
		f 4 271 -224 233 -275
		mu 0 4 154 155 156 157
		f 4 270 -225 -272 -273
		mu 0 4 158 159 155 154
		f 4 -276 -234 236 237
		mu 0 4 160 157 156 161
		f 4 240 241 -240 -223
		mu 0 4 149 162 163 164
		f 4 239 243 -243 -229
		mu 0 4 165 166 167 168
		f 4 242 245 -245 -232
		mu 0 4 168 167 169 170
		f 4 250 252 -248 -242
		mu 0 4 162 171 172 163
		f 4 247 256 -254 -244
		mu 0 4 166 173 174 167
		f 4 253 260 -258 -246
		mu 0 4 167 174 175 169
		f 4 -262 -256 263 -263
		mu 0 4 176 177 178 179
		f 4 -346 264 265 -267
		mu 0 4 180 179 181 182
		f 4 234 272 -233 230
		mu 0 4 153 158 154 151
		f 4 232 274 273 227
		mu 0 4 151 154 157 147
		f 4 268 -277 278 277
		mu 0 4 183 184 185 186
		f 4 284 292 286 223
		mu 0 4 155 187 188 156
		f 4 224 225 -286 -285
		mu 0 4 155 159 189 187
		f 4 -237 -287 288 -236
		mu 0 4 161 156 188 190
		f 4 293 294 -239 -289
		mu 0 4 188 191 192 190
		f 4 -291 285 282 -290
		mu 0 4 193 187 189 194
		f 4 -294 -293 290 -292
		mu 0 4 191 188 187 193
		f 3 297 -297 -295
		mu 0 3 191 195 192
		f 4 -282 -288 289 283
		mu 0 4 196 197 193 194
		f 4 -296 -298 291 287
		mu 0 4 197 195 191 193
		f 4 -303 -302 238 246
		mu 0 4 198 199 190 192
		f 4 -307 -306 -305 313
		mu 0 4 200 201 202 203
		f 4 301 304 -308 235
		mu 0 4 190 199 204 161
		f 4 307 309 -268 -238
		mu 0 4 161 204 205 160
		f 4 305 -311 -270 -310
		mu 0 4 202 201 186 206
		f 4 -312 308 -278 310
		mu 0 4 201 207 183 186
		f 4 302 280 -313 -314
		mu 0 4 203 208 209 200
		f 4 -319 -315 303 311
		mu 0 4 201 210 211 207
		f 4 -317 -316 314 -320
		mu 0 4 212 213 211 210
		f 4 279 -322 -321 281
		mu 0 4 196 214 215 197
		f 4 -323 -281 324 330
		mu 0 4 216 209 208 217
		f 4 329 -324 295 320
		mu 0 4 215 218 195 197
		f 4 -247 296 323 -325
		mu 0 4 198 192 195 218
		f 4 321 299 -327 -326
		mu 0 4 219 220 221 222
		f 4 -328 331 -329 322
		mu 0 4 216 222 223 209
		f 4 -331 -330 325 327
		mu 0 4 216 217 219 222
		f 4 -333 -332 326 298
		mu 0 4 224 223 222 221
		f 4 306 -334 334 318
		mu 0 4 201 200 225 210
		f 4 336 300 319 -335
		mu 0 4 225 226 212 210
		f 4 328 -336 333 312
		mu 0 4 209 223 225 200
		f 4 332 -318 -337 335
		mu 0 4 223 224 226 225
		f 4 339 337 -260 261
		mu 0 4 176 227 228 177
		f 4 -340 343 340 -339
		mu 0 4 227 176 229 230
		f 4 262 345 344 -344
		mu 0 4 176 179 180 229
		f 4 -350 -349 266 347
		mu 0 4 231 232 233 234
		f 4 -342 -341 351 358
		mu 0 4 235 236 237 238
		f 4 -352 -345 348 -351
		mu 0 4 238 237 233 232
		f 4 -354 361 349 -353
		mu 0 4 239 240 232 231
		f 4 360 -355 -304 355
		mu 0 4 241 240 207 211
		f 4 346 -357 -356 315
		mu 0 4 213 242 241 211
		f 4 -358 -309 354 353
		mu 0 4 239 183 207 240
		f 4 -360 356 342 -359
		mu 0 4 238 241 242 235
		f 4 -361 359 350 -362
		mu 0 4 240 241 238 232
		f 4 -365 -364 365 -363
		mu 0 4 243 184 244 245
		f 4 -269 357 -368 363
		mu 0 4 184 183 239 244
		f 4 367 352 366 -369
		mu 0 4 244 239 231 246
		f 4 -366 368 370 -372
		mu 0 4 245 244 246 247
		f 4 276 364 372 369
		mu 0 4 185 184 243 248
		f 4 -374 -373 362 371
		mu 0 4 247 248 243 245
		f 4 374 377 -376 -241
		mu 0 4 149 249 250 162
		f 4 -377 -251 375 378
		mu 0 4 251 171 162 250
		f 4 -264 389 379 -265
		mu 0 4 179 178 252 181
		f 4 -380 398 380 -266
		mu 0 4 181 252 253 182
		f 4 399 -367 -348 -381
		mu 0 4 254 246 231 234
		f 4 -375 -222 382 402
		mu 0 4 249 149 148 255
		f 4 -383 220 387 -382
		mu 0 4 255 148 147 256
		f 4 267 -385 -384 386
		mu 0 4 160 205 257 256
		f 4 -386 384 269 -279
		mu 0 4 185 258 206 186
		f 4 -388 -274 275 -387
		mu 0 4 256 147 157 160
		f 4 393 -389 251 376
		mu 0 4 251 259 260 171
		f 4 388 397 -390 -250
		mu 0 4 260 259 252 178
		f 4 -405 -394 -379 403
		mu 0 4 261 259 251 250
		f 4 385 -370 -396 391
		mu 0 4 258 185 248 262
		f 4 -399 -398 394 -397
		mu 0 4 253 252 259 263
		f 4 -371 -400 396 400
		mu 0 4 247 246 254 264
		f 4 -402 395 373 -401
		mu 0 4 264 262 248 247
		f 4 -404 -378 -403 390
		mu 0 4 261 250 249 255
		f 5 383 -392 392 -391 381
		mu 0 5 256 257 265 261 255
		f 4 401 -395 404 -393
		mu 0 4 265 263 259 261
		f 4 -431 -432 433 434
		mu 0 4 266 267 268 269
		f 4 -437 -438 430 438
		mu 0 4 270 271 267 266
		f 4 -259 -440 436 440
		mu 0 4 144 145 271 270
		f 4 -409 -408 406 405
		mu 0 4 272 273 274 275
		f 4 -414 -406 412 411
		mu 0 4 276 272 275 277
		f 4 -416 -412 414 229
		mu 0 4 152 276 277 153
		f 4 453 -418 409 -451
		mu 0 4 278 279 280 281
		f 4 451 450 410 -271
		mu 0 4 158 278 281 159
		f 4 -421 -420 417 454
		mu 0 4 282 283 280 279
		f 4 408 422 -425 -424
		mu 0 4 273 284 285 286
		f 4 413 425 -427 -423
		mu 0 4 287 288 289 290
		f 4 415 244 -428 -426
		mu 0 4 288 170 169 289
		f 4 424 429 -435 -433
		mu 0 4 286 285 291 292
		f 4 426 435 -439 -430
		mu 0 4 290 289 293 294
		f 4 427 257 -441 -436
		mu 0 4 289 169 175 293
		f 4 442 -444 437 441
		mu 0 4 295 296 297 298
		f 4 446 -446 -445 512
		mu 0 4 299 300 301 296
		f 4 -415 416 -452 -235
		mu 0 4 153 277 278 158
		f 4 -413 -453 -454 -417
		mu 0 4 277 275 279 278
		f 4 -457 -458 455 -449
		mu 0 4 302 303 304 305
		f 4 -410 -463 -469 -461
		mu 0 4 281 280 306 307
		f 4 460 461 -226 -411
		mu 0 4 281 307 189 159
		f 4 418 -465 462 419
		mu 0 4 283 308 306 280
		f 4 464 421 -471 -470
		mu 0 4 306 308 309 310
		f 4 465 -283 -462 466
		mu 0 4 311 194 189 307
		f 4 467 -467 468 469
		mu 0 4 310 311 307 306
		f 3 470 472 -474
		mu 0 3 310 309 312
		f 4 -284 -466 463 459
		mu 0 4 196 194 311 313
		f 4 -464 -468 473 471
		mu 0 4 313 311 310 312
		f 4 -429 -422 474 475
		mu 0 4 314 309 308 315
		f 4 -487 477 478 479
		mu 0 4 316 317 318 319
		f 4 -419 480 -478 -475
		mu 0 4 308 283 320 315
		f 4 420 447 -483 -481
		mu 0 4 283 282 321 320
		f 4 482 449 483 -479
		mu 0 4 318 322 303 319
		f 4 -484 456 -482 484
		mu 0 4 319 303 302 323
		f 4 486 485 -459 -476
		mu 0 4 317 316 324 325
		f 4 -485 -477 487 489
		mu 0 4 319 323 326 327
		f 4 490 -488 488 316
		mu 0 4 212 327 326 213
		f 4 -460 491 492 -280
		mu 0 4 196 313 328 214
		f 4 -502 -496 458 493
		mu 0 4 329 330 325 324
		f 4 -492 -472 494 -501
		mu 0 4 328 313 312 331
		f 4 495 -495 -473 428
		mu 0 4 314 331 312 309
		f 4 496 497 -300 -493
		mu 0 4 332 333 221 220
		f 4 -494 499 -503 498
		mu 0 4 329 324 334 333
		f 4 -499 -497 500 501
		mu 0 4 329 333 332 330
		f 4 -299 -498 502 503
		mu 0 4 224 221 333 334
		f 4 -490 -506 504 -480
		mu 0 4 319 327 335 316
		f 4 505 -491 -301 -508
		mu 0 4 335 327 212 226
		f 4 -486 -505 506 -500
		mu 0 4 324 316 335 334
		f 4 -507 507 317 -504
		mu 0 4 334 335 226 224
		f 4 -442 439 -338 -509
		mu 0 4 295 298 336 337
		f 4 338 -510 -511 508
		mu 0 4 337 338 339 295
		f 4 510 -512 -513 -443
		mu 0 4 295 339 299 296
		f 4 -514 -447 514 515
		mu 0 4 340 341 342 343
		f 4 -525 -518 509 341
		mu 0 4 235 344 345 236
		f 4 516 -515 511 517
		mu 0 4 344 343 342 345
		f 4 518 -516 -528 519
		mu 0 4 346 340 343 347
		f 4 -522 476 520 -527
		mu 0 4 348 326 323 347
		f 4 -489 521 522 -347
		mu 0 4 213 326 348 242
		f 4 -520 -521 481 523
		mu 0 4 346 347 323 302
		f 4 524 -343 -523 525
		mu 0 4 344 235 242 348
		f 4 527 -517 -526 526
		mu 0 4 347 343 344 348
		f 4 528 -532 529 530
		mu 0 4 349 350 351 305
		f 4 -530 533 -524 448
		mu 0 4 305 351 346 302
		f 4 534 -533 -519 -534
		mu 0 4 351 352 340 346
		f 4 537 -537 -535 531
		mu 0 4 350 353 352 351
		f 4 -536 -539 -531 -456
		mu 0 4 304 354 349 305
		f 4 -538 -529 538 539
		mu 0 4 353 350 349 354
		f 4 423 541 -544 -541
		mu 0 4 273 286 355 356
		f 4 -545 -542 432 542
		mu 0 4 357 355 286 292
		f 4 444 -546 -556 443
		mu 0 4 296 301 358 297
		f 4 445 -547 -565 545
		mu 0 4 301 300 359 358
		f 4 546 513 532 -566
		mu 0 4 360 341 340 352
		f 4 -569 -549 407 540
		mu 0 4 356 361 274 273
		f 4 547 -554 -407 548
		mu 0 4 361 362 275 274
		f 4 -553 549 550 -448
		mu 0 4 282 362 363 321
		f 4 457 -450 -551 551
		mu 0 4 304 303 322 364
		f 4 552 -455 452 553
		mu 0 4 362 282 279 275
		f 4 -543 -434 554 -560
		mu 0 4 357 292 365 366
		f 4 431 555 -564 -555
		mu 0 4 365 297 358 366
		f 4 -570 544 559 570
		mu 0 4 367 355 357 366
		f 4 -558 561 535 -552
		mu 0 4 364 368 354 304
		f 4 562 -561 563 564
		mu 0 4 359 369 366 358
		f 4 -567 -563 565 536
		mu 0 4 353 370 360 352
		f 4 566 -540 -562 567
		mu 0 4 370 353 354 368
		f 4 -557 568 543 569
		mu 0 4 367 361 356 355
		f 5 -548 556 -559 557 -550
		mu 0 5 362 361 367 371 363
		f 4 558 -571 560 -568
		mu 0 4 371 367 366 369;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".usz" 9.95073;
	setAttr ".bw" 3;
	setAttr ".ns" 0.329599;
createNode transform -n "polySurface44";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurfaceShape46" -p "polySurface44";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".usz" 9.95073;
	setAttr ".bw" 2.921533;
	setAttr ".ns" 0.329599;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape46Orig" -p "polySurface44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 797 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.14427102 0.73355019 0.16780722
		 0.73355019 0.16780722 0.82071316 0.14427102 0.82071316 0.19134367 0.73355019 0.19134367
		 0.82071316 0.050125957 0.73355019 0.073662162 0.73355019 0.073662043 0.82071316 0.050125957
		 0.82071316 0.097198367 0.73355019 0.097198367 0.82071316 0.12073457 0.73355019 0.12073457
		 0.82071316 0.6769737 0.10543212 0.67697364 0.085438699 0.69348854 0.095435411 0.69428849
		 0.11542878 0.71160316 0.10543182 0.71160269 0.085438579 0.69428825 0.075442106 0.36142594
		 0.043025658 0.36142594 0.057391211 0.34841034 0.050208494 0.34898511 0.064573929
		 0.33654401 0.057391331 0.33654419 0.043025658 0.34898505 0.03584294 0.073662043 0.90787613
		 0.097198367 0.90787613 0.097198367 0.99503887 0.073662162 0.99503887 0.050125957
		 0.90787613 0.050125957 0.99503887 0.16780746 0.90787613 0.19134367 0.9078759 0.19134367
		 0.99503887 0.16780746 0.99503887 0.14427102 0.90787613 0.14427102 0.99503887 0.12073457
		 0.90787613 0.12073457 0.99503887 0.097198367 0.84976757 0.073662043 0.84976757 0.050125957
		 0.84976757 0.19134367 0.84976733 0.16780746 0.84976757 0.14427102 0.84976757 0.12073457
		 0.84976757 0.073662043 0.87882185 0.097198367 0.87882185 0.050125957 0.87882185 0.16780746
		 0.87882185 0.19134367 0.87882161 0.14427102 0.87882185 0.12073457 0.87882185 0.74133188
		 0.47130492 0.77021492 0.46098116 0.77035159 0.39179116 0.70919162 0.41397333 0.72464484
		 0.56060457 0.71242827 0.53295487 0.64742649 0.5455094 0.67069054 0.60582024 0.76118565
		 0.50040513 0.77222908 0.52376449 0.74747604 0.52958834 0.68152189 0.366795 0.77034569
		 0.33487552 0.62526691 0.64346164 0.59347886 0.55436319 0.70521551 0.30364007 0.6390146
		 0.31437549 0.76346248 0.26411492 0.52546471 0.5552938 0.55990255 0.61311799 0.56976634
		 0.52553761 0.58178848 0.48309857 0.53552181 0.48548633 0.53109396 0.41025224 0.58506745
		 0.43632343 0.56762028 0.68306744 0.61913234 0.40373185 0.59205812 0.36609751 0.64454257
		 0.36732051 0.66037536 0.39566898 0.74742872 0.51181936 0.73842925 0.49382925 0.71977818
		 0.47415113 0.69482905 0.48736191 0.70058155 0.51488286 0.72783899 0.51643431 0.68848127
		 0.42959756 0.64654624 0.5196439 0.62620521 0.48876131 0.61592478 0.45112813 0.64896423
		 0.43606192 0.60196286 0.52007484 0.74073434 0.47177351 0.70859414 0.41444284 0.76975399
		 0.39225966 0.76961756 0.46144944 0.72404718 0.56107283 0.67009276 0.60628933 0.64682841
		 0.54597831 0.71183068 0.53342307 0.77163154 0.52423298 0.76058775 0.50087392 0.74687845
		 0.53005719 0.68092382 0.36726403 0.76974809 0.33534467 0.62466925 0.64393032 0.59288055
		 0.5548321 0.70461863 0.30410865 0.63841695 0.31484443 0.76286501 0.26458365 0.55930436
		 0.61358702 0.52486688 0.55576301 0.56916934 0.52600724 0.53492439 0.48595592 0.58119088
		 0.48356688 0.5304966 0.4107213 0.58446991 0.43679231 0.56702256 0.68353653 0.61853462
		 0.40420067 0.59146041 0.36656615 0.65977794 0.39613754 0.64394468 0.36778933 0.74683118
		 0.51228797 0.69423133 0.487831 0.7191807 0.47461998 0.73783171 0.4942978 0.69998395
		 0.51535231 0.72724134 0.51690269 0.68788373 0.43006623 0.64594871 0.52011305 0.61532706
		 0.45159703 0.62560785 0.48923039 0.64836687 0.43653077 0.60136539 0.52054393 0.097204566
		 0.73292112 0.097204566 0.82008398 0.073668599 0.82008398 0.073668599 0.73292112 0.050132275
		 0.82008398 0.050132275 0.73292112 0.19134986 0.73292112 0.19134986 0.82008398 0.16781366
		 0.82008398 0.16781366 0.73292112 0.14427745 0.82008398 0.14427745 0.73292112 0.12074101
		 0.82008398 0.12074101 0.73292112 0.35335299 0.029165611 0.34173763 0.022134706 0.35335305
		 0.015103683 0.34117499 0.036196575 0.32899708 0.029165432 0.3289974 0.015103564 0.34117517
		 0.008072719 0.35164642 0.017854795 0.36466202 0.025037572 0.35164642 0.03222023 0.36408722
		 0.039402947 0.37652829 0.032220408 0.37652814 0.017854795 0.36408731 0.010672018
		 0.16781366 0.90724695 0.16781366 0.99440992 0.14427745 0.99440992 0.14427745 0.90724695
		 0.19134986 0.90724695 0.19134986 0.99440992 0.073668361 0.90724695 0.073668361 0.99440992
		 0.050132155 0.99440992 0.050132155 0.90724695 0.097204804 0.90724695 0.097204566
		 0.99440992 0.12074101 0.90724695 0.12074101 0.99440992 0.16781366 0.84913838 0.14427745
		 0.84913838 0.19134986 0.84913838 0.073668361 0.84913838 0.050132275 0.84913826 0.097204566
		 0.84913838 0.12074101 0.84913838 0.16781366 0.87819266 0.14427745 0.87819266 0.19134986
		 0.87819266 0.073668361 0.87819266 0.050132275 0.87819266 0.097204804 0.87819266 0.12074101
		 0.87819266 0.44953245 0.88352484 0.47585556 0.88418686 0.4678767 0.93066525 0.44316304
		 0.91770458 0.44573402 0.97140962 0.42679328 0.94493008 0.3982228 0.98178166 0.39727849
		 0.95220661 0.35419267 0.96812063 0.36777079 0.94199759 0.32545918 0.93033957 0.34765327
		 0.91570705 0.31586558 0.88016361 0.3407914 0.88079053 0.50116211 0.88482302 0.49315217
		 0.939542 0.47616547 0.9877215 0.46010765 0.74215013 0.42686409 0.74407154 0.44109997
		 0.70769876 0.4716939 0.70798582 0.45969442 0.66916096 0.49163833 0.67261302 0.47760442
		 0.63207614 0.50426078 0.63183171 0.48519918 0.58730078 0.50825304 0.58743638 0.53381544
		 0.88564414 0.53207088 0.94263273 0.53078818 0.99456841 0.37027636 0.74227864 0.39087215
		 0.706348 0.41663954 0.66923571 0.43728781 0.62976706 0.453549 0.58711421 0.58525538
		 0.8869378 0.58675861 0.93824953 0.59248042 0.98797953 0.3080821 0.72026879 0.34490547
		 0.6919477 0.3807219 0.66018903 0.40879887 0.62557948 0.42616799 0.58695316 0.64115369
		 0.88834304 0.64143729 0.92888474 0.64616013 0.96906102 0.26155815 0.68285978 0.29745167
		 0.66796207 0.32721597 0.64454979 0.35073453 0.61741424 0.35808471 0.58655226 0.67674839
		 0.88923812 0.67854261 0.91733193 0.68176234 0.94467974;
	setAttr ".uvst[0].uvsp[250:499]" 0.22950801 0.65275937 0.25468618 0.64487922
		 0.27465668 0.62922341 0.28834441 0.60906053 0.29395851 0.58617514 0.7160511 0.89022601
		 0.71584409 0.90696502 0.71525294 0.92221153 0.2021943 0.62795514 0.21346301 0.62111253
		 0.22106493 0.61195904 0.22555476 0.59982187 0.22780219 0.58578646 0.70566595 0.14165954
		 0.6966778 0.14165954 0.70469147 0.13559531 0.70169008 0.13070969 0.69671094 0.12898116
		 0.6917367 0.13063805 0.68811899 0.1353855 0.68638605 0.14165948 0.39551663 0.90902883
		 0.3949421 0.8821522 0.77360237 0.89168185 0.77330226 0.9031617 0.77159488 0.91379315
		 0.14337125 0.61418349 0.15028644 0.60860342 0.15617463 0.60258514 0.15969864 0.59457433
		 0.16151369 0.58539706 0.44488898 0.84906787 0.47022265 0.83736616 0.42990837 0.821055
		 0.4501549 0.79555988 0.40079582 0.81230372 0.4032259 0.78281361 0.37081331 0.82101637
		 0.35856515 0.79424495 0.34939986 0.84626323 0.32796776 0.83053333 0.49591243 0.82977116
		 0.48136905 0.78079867 0.46131456 0.43216273 0.47263557 0.46646088 0.44203934 0.46638909
		 0.42808887 0.42984918 0.49230239 0.50206745 0.46033347 0.50514364 0.50460613 0.54299659
		 0.47795424 0.54243821 0.53493738 0.82863981 0.53626692 0.77670604 0.391803 0.46714678
		 0.37148899 0.43097576 0.41728058 0.50456095 0.43762103 0.54427236 0.58933544 0.83576661
		 0.59755003 0.78638619 0.34572667 0.48100647 0.30912462 0.45225349 0.38129476 0.51318538
		 0.40910062 0.54812372 0.64347416 0.84786719 0.65021062 0.80797857 0.29808834 0.5044319
		 0.26231217 0.48911294 0.3276681 0.52819401 0.35097498 0.55560482 0.6799525 0.86127031
		 0.68454194 0.83411819 0.25514501 0.52701098 0.23003063 0.51883543 0.27499375 0.54290116
		 0.28852388 0.56322563 0.71668684 0.87350011 0.71686137 0.85824108 0.2137405 0.55029088
		 0.20252606 0.54331553 0.22127122 0.55953431 0.22566506 0.57172465 0.70469141 0.14772376
		 0.70168996 0.15260926 0.69671071 0.15433779 0.69173664 0.1526809 0.68811899 0.14793345
		 0.39686716 0.85533828 0.77387714 0.88016897 0.7727111 0.86948675 0.15046379 0.56205213
		 0.14359763 0.5563944 0.15631476 0.56814843 0.15977314 0.57619685 0.86232972 0.14967424
		 0.83924782 0.15500426 0.82710028 0.11535146 0.85150969 0.10496029 0.82362914 0.10553539
		 0.84908533 0.096433491 0.82378674 0.10822791 0.79912341 0.13128933 0.79790413 0.12229281
		 0.77359307 0.14381483 0.79440868 0.1281514 0.77647102 0.14864041 0.76441598 0.19659372
		 0.76996946 0.16830114 0.78693235 0.17306694 0.78362656 0.20488138 0.85929185 0.17227259
		 0.84570563 0.19158524 0.8265388 0.20458572 0.81392264 0.16640264 0.79399151 0.17208961
		 0.80954349 0.20704743 0.8896426 0.27534151 0.87279618 0.2822831 0.8592369 0.28798145
		 0.84201175 0.29525027 0.87175286 0.14789417 0.86232531 0.10284011 0.88948196 0.10104254
		 0.89638501 0.14195451 0.86086571 0.094220191 0.88839626 0.092368558 0.88925362 0.093186677
		 0.91869986 0.094187446 0.9216404 0.10278177 0.95008206 0.10256267 0.9496702 0.10816798
		 0.92445028 0.097864464 0.96428818 0.12285198 0.98193169 0.1456801 0.96846914 0.16168657
		 0.95125926 0.13470286 0.90699983 0.17757145 0.88313597 0.16712281 0.92413807 0.14081873
		 0.92996371 0.18062532 0.94450915 0.13698733 0.94708872 0.17473233 0.92343473 0.27128929
		 0.90681481 0.27223167 0.95610368 0.26913542 0.93806934 0.27032375 0.0053309519 0.17378518
		 0.0053309519 0.16168821 0.038232215 0.15937838 0.038232215 0.17378008 0.0053309519
		 0.060879886 0.00533095 0.014217466 0.038232215 0.014214128 0.038232215 0.06087023
		 0.0053309519 0.18415397 0.038232215 0.18414935 0.0053309519 0.47909427 0.0053309519
		 0.46642104 0.038232215 0.46642104 0.038232215 0.47909433 0.0053309519 0.34890565
		 0.0053309519 0.30224583 0.038232215 0.30224243 0.038232215 0.34890419 0.0053309519
		 0.64500004 0.0053309519 0.59833878 0.038232215 0.59833854 0.038232215 0.64499915
		 0.0053309519 0.48543096 0.038232215 0.484855 0.00533095 0.76309264 0.00533095 0.75560391
		 0.038232215 0.75560141 0.038232215 0.76309013 0.0053309519 0.8374061 0.0053309519
		 0.81263542 0.038232215 0.81263083 0.038232215 0.83740079 0.0053309519 0.95376891
		 0.0053309519 0.92669564 0.038232215 0.92668873 0.038232215 0.95376414 0.0053309519
		 0.89213192 0.0053309519 0.87024134 0.038232215 0.87023634 0.038232215 0.89212757
		 0.0053309519 0.80111319 0.038232215 0.80111003 0.0053309519 0.99236494 0.038232215
		 0.99235946 0.93426216 0.43735373 0.91864741 0.45152223 0.91044521 0.43644232 0.93109286
		 0.43201894 0.90611303 0.46011487 0.90172386 0.45223555 0.88991773 0.44353187 0.84547269
		 0.33055264 0.85427141 0.32602641 0.89663929 0.44038832 0.89539254 0.29867095 0.87282002
		 0.3045269 0.8487227 0.31086129 0.93329287 0.29059857 0.91164684 0.29525828 0.95706761
		 0.28557038 0.8325392 0.30104497 0.79489887 0.21517038 0.83900583 0.31579879 0.89930654
		 0.3169964 0.87731206 0.3214938 0.93690574 0.3077057 0.9158898 0.31346995 0.96004331
		 0.30147272 0.95866263 0.42563862 0.93797815 0.4307549 0.97341573 0.42324382 0.98037386
		 0.10173655 0.99845111 0.12040922 0.74612236 0.15661794 0.73832095 0.18138835 0.73103023
		 0.072447166 0.75579512 0.053720921 0.76821065 0.077652782 0.74471557 0.095394164
		 0.0053309519 0.56204677 0.038232215 0.56204695 0.95616817 0.019666404 0.954211 0.046320245
		 0.92525244 0.040961891 0.92563224 0.013995022 0.038232215 0.68071461 0.0053309519
		 0.68071586 0.77106702 0.083158612 0.74786413 0.10067363 0.0053309519 0.55398202 0.038232215
		 0.55340612 0.9537608 0.052452505 0.92516488 0.047166064 0.038232215 0.68877876 0.0053309519
		 0.68878138 0.78229046 0.10479262 0.76023531 0.12141725 0.0053309519 0.52057058 0.038232215
		 0.5205707 0.9519918 0.076547205 0.92482132 0.07154353 0.038232215 0.72103769 0.00533095
		 0.72104138 0.78505898 0.11012904 0.76328707 0.12653416;
	setAttr ".uvst[0].uvsp[500:749]" 0.0053309519 0.51250571 0.038232215 0.51250589
		 0.95155537 0.082490638 0.92473668 0.077556834 0.038232215 0.72910255 0.00533095 0.72910625
		 0.78733861 0.029868767 0.79840565 0.053661317 0.77245283 0.067892045 0.76135516 0.044171646
		 0.0053309519 0.26652998 0.038232215 0.26652506 0.88673913 0.0067714602 0.91638213
		 0.0079400688 0.91708601 0.034127802 0.88750255 0.033010185 0.038232215 0.38462061
		 0.0053309519 0.38462061 0.80059254 0.058362946 0.77464581 0.072579384 0.0053309519
		 0.25961772 0.038232215 0.25903627 0.91722512 0.039302722 0.88765371 0.038195118 0.038232215
		 0.39153332 0.0053309519 0.39153332 0.81165957 0.082155675 0.78574336 0.096299827
		 0.0053309519 0.22332653 0.038232215 0.2233215 0.9179287 0.065490499 0.88841695 0.064433843
		 0.038232215 0.42724898 0.00533095 0.42724898 0.81384659 0.08685714 0.78793621 0.10098717
		 0.0053309519 0.21641335 0.038232215 0.21640873 0.91806787 0.070665345 0.88856786
		 0.069618866 0.038232215 0.43416172 0.0053309519 0.43416172 0.83519495 0.047367692
		 0.80711734 0.058842644 0.79978895 0.038118467 0.83285999 0.025452808 0.84863925 0.022031412
		 0.85231793 0.04374332 0.88203388 0.04154411 0.87930202 0.019723549 0.038232218 0.091401726
		 0.0053309519 0.091410547 0.83665335 0.052526221 0.80889273 0.063862771 0.85321581
		 0.049035303 0.8826952 0.046829894 0.038232215 0.098314434 0.0053309519 0.098322421
		 0.84301448 0.074969888 0.81640232 0.08509846 0.85703218 0.071559936 0.88552874 0.069463633
		 0.038232215 0.12942249 0.0053309519 0.13000575 0.84482276 0.081356317 0.81841314
		 0.090785518 0.8580296 0.077500328 0.88630176 0.075638697 0.038232215 0.13806421 0.0053309519
		 0.13864586 0.86248457 0.14989831 0.85166466 0.10518454 0.82725513 0.11557568 0.83940274
		 0.15522853 0.84924006 0.096657634 0.82378387 0.10575947 0.82394159 0.1084521 0.79805887
		 0.12251695 0.79927802 0.13151355 0.77374792 0.14403883 0.77662587 0.14886448 0.79456341
		 0.12837547 0.76457071 0.19681779 0.78378153 0.20510551 0.78708744 0.1732911 0.7701242
		 0.16852526 0.84586036 0.19180934 0.85944664 0.17249668 0.81407773 0.16662678 0.82669342
		 0.20481007 0.79414612 0.1723139 0.80969834 0.20727149 0.87295103 0.28250721 0.88979745
		 0.27556568 0.84216672 0.29547444 0.85939175 0.28820556 0.87190771 0.14811826 0.89653981
		 0.14217857 0.88963681 0.10126676 0.86248004 0.10306434 0.88855094 0.092592731 0.86102068
		 0.094444364 0.88940823 0.093410864 0.92179531 0.1030058 0.91885453 0.094411582 0.95023656
		 0.10278697 0.92460507 0.098088533 0.94982517 0.10839204 0.96444297 0.12307622 0.95141411
		 0.13492697 0.96862388 0.16191068 0.98208642 0.14590424 0.90715456 0.17779569 0.88329083
		 0.16734689 0.93011856 0.18084955 0.92429292 0.14104292 0.944664 0.13721152 0.94724357
		 0.17495652 0.90696955 0.27245575 0.92358947 0.27151343 0.93822408 0.27054781 0.9562583
		 0.26935956 0.00533095 0.17378518 0.038232215 0.17378008 0.038232215 0.15937838 0.00533095
		 0.16168821 0.00533095 0.060879886 0.038232215 0.06087023 0.038232215 0.014214128
		 0.00533095 0.014217466 0.00533095 0.18415397 0.038232215 0.18414935 0.00533095 0.47909427
		 0.038232215 0.47909433 0.038232215 0.46642104 0.00533095 0.46642104 0.00533095 0.34890565
		 0.038232215 0.34890419 0.038232215 0.30224243 0.00533095 0.30224583 0.00533095 0.64500004
		 0.038232215 0.64499915 0.038232215 0.59833854 0.00533095 0.59833878 0.00533095 0.48543096
		 0.038232215 0.484855 0.00533095 0.76309264 0.038232215 0.76309013 0.038232215 0.75560141
		 0.00533095 0.75560391 0.00533095 0.8374061 0.038232215 0.83740079 0.038232215 0.81263083
		 0.00533095 0.81263542 0.00533095 0.95376891 0.038232215 0.95376414 0.038232215 0.92668873
		 0.00533095 0.92669564 0.00533095 0.89213192 0.038232215 0.89212757 0.038232215 0.87023634
		 0.00533095 0.87024134 0.00533095 0.80111319 0.038232215 0.80111003 0.00533095 0.99236494
		 0.038232215 0.99235946 0.93441701 0.43757778 0.93124771 0.43224299 0.91059983 0.43666655
		 0.91880226 0.45174643 0.90187871 0.45245963 0.90626788 0.46033907 0.89007235 0.44375616
		 0.8967939 0.44061255 0.85442615 0.32625064 0.84562743 0.33077672 0.87297463 0.30475104
		 0.89554727 0.29889512 0.84887767 0.31108525 0.91180158 0.29548246 0.93344772 0.29082274
		 0.95722258 0.28579456 0.79505372 0.21539447 0.83269387 0.30126917 0.83916068 0.3160229
		 0.8774668 0.32171798 0.89946139 0.31722045 0.91604453 0.31369409 0.93706059 0.30792981
		 0.96019804 0.3016969 0.938133 0.43097904 0.95881724 0.42586291 0.97357047 0.42346799
		 0.98052883 0.10196087 0.99860585 0.12063333 0.74627721 0.15684201 0.73847592 0.18161251
		 0.73118508 0.072671235 0.74487031 0.095618457 0.76836538 0.077876851 0.75594985 0.05394496
		 0.038232215 0.56204695 0.00533095 0.56204677 0.95632249 0.019890666 0.92578727 0.014219314
		 0.92540729 0.041186079 0.95436585 0.046544448 0.038232215 0.68071461 0.00533095 0.68071586
		 0.74801886 0.10089776 0.77122211 0.08338277 0.038232215 0.55340612 0.00533095 0.55398202
		 0.92531973 0.047390267 0.95391542 0.052676633 0.038232215 0.68877876 0.00533095 0.68878138
		 0.76039016 0.12164133 0.78244519 0.10501678 0.038232215 0.5205707 0.00533095 0.52057058
		 0.92497611 0.071767658 0.95214677 0.076771259 0.038232215 0.72103769 0.00533095 0.72104138
		 0.7634418 0.12675825 0.78521383 0.11035308 0.038232215 0.51250589 0.00533095 0.51250571
		 0.92489141 0.077780947 0.95171022 0.082714811 0.038232215 0.72910255 0.00533095 0.72910625
		 0.78749347 0.030092865 0.76151001 0.044395715 0.77260756 0.068116248 0.79856038 0.053885579
		 0.038232215 0.26652506 0.00533095 0.26652998 0.88689411 0.0069955289 0.8876574 0.033234268
		 0.91724086 0.03435199 0.91653711 0.0081641972 0.038232215 0.38462061 0.00533095 0.38462061
		 0.77480078 0.072803587 0.80074728 0.05858703 0.038232215 0.25903627 0.00533095 0.25961772
		 0.88780844 0.038419232;
	setAttr ".uvst[0].uvsp[750:796]" 0.91737998 0.039526775 0.038232215 0.39153332
		 0.00533095 0.39153332 0.78589809 0.096523955 0.81181431 0.082379803 0.038232215 0.2233215
		 0.00533095 0.22332653 0.8885718 0.064658061 0.91808343 0.065714642 0.038232215 0.42724898
		 0.00533095 0.42724898 0.78809118 0.10121131 0.81400132 0.087081298 0.038232215 0.21640873
		 0.00533095 0.21641335 0.88872248 0.069843024 0.91822243 0.070889533 0.038232215 0.43416172
		 0.00533095 0.43416172 0.8353498 0.047591805 0.83301461 0.02567704 0.79994357 0.038342625
		 0.8072722 0.059066772 0.8487941 0.022255599 0.85247248 0.043967351 0.88218874 0.041768327
		 0.87945676 0.019947663 0.038232215 0.091401726 0.00533095 0.091410547 0.83680809
		 0.052750215 0.80904746 0.064086929 0.85337067 0.049259588 0.88285005 0.047054052
		 0.038232215 0.098314434 0.00533095 0.098322421 0.84316921 0.075193942 0.81655705
		 0.085322484 0.85718715 0.071784154 0.88568366 0.069687784 0.038232215 0.12942249
		 0.00533095 0.13000575 0.84497762 0.081580609 0.81856799 0.091009706 0.85818422 0.077724442
		 0.88645655 0.075862698 0.038232215 0.13806421 0.00533095 0.13864586;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 526 ".vt";
	setAttr ".vt[0:165]"  0.18250331 0.031294089 -0.11108924 0.11813073 0.031294089 -0.11108926
		 0.085944429 0.031294089 -0.055340968 0.11813071 0.031294089 0.00040733442 0.1825033 0.031294089 0.00040734187
		 0.2146896 0.031294089 -0.055340957 0.18250331 0.48744792 -0.11108924 0.11813073 0.48744792 -0.11108926
		 0.085944429 0.48744792 -0.055340968 0.11813071 0.48744792 0.00040733442 0.1825033 0.48744792 0.00040734187
		 0.2146896 0.48744792 -0.055340957 0.15031701 0.030554455 -0.055340957 0.15031701 0.48818755 -0.055340957
		 0.17383973 0.33298761 -0.014598392 0.12679428 0.33298761 -0.014598396 0.10327156 0.33298761 -0.055340964
		 0.12679429 0.33298761 -0.096083522 0.17383975 0.33298761 -0.096083522 0.19736247 0.33298761 -0.055340957
		 0.17383973 0.15091383 -0.014598392 0.12679428 0.15091383 -0.014598396 0.10327156 0.15091383 -0.055340964
		 0.12679429 0.15091383 -0.096083522 0.17383975 0.15091383 -0.096083522 0.19736247 0.15091383 -0.055340957
		 0.17032051 0.26775634 -0.020693872 0.13031352 0.26775634 -0.020693876 0.11031002 0.26775634 -0.055340964
		 0.13031352 0.26775634 -0.089988038 0.17032053 0.26775634 -0.089988038 0.19032401 0.26775634 -0.055340957
		 0.17032051 0.21614508 -0.020693872 0.13031352 0.21614508 -0.020693876 0.11031002 0.21614508 -0.055340964
		 0.13031352 0.21614508 -0.089988038 0.17032053 0.21614508 -0.089988038 0.19032401 0.21614508 -0.055340957
		 0.057012714 0.0065946765 -0.082674116 0.14776179 0.0065946653 -0.081086673 0.22565237 0.006594684 -0.12768042
		 0.017166346 0.0066841058 0.083407149 0.1924801 0.0066841058 0.086473837 0.34295315 0.0066841058 -0.0035383552
		 -0.017050527 0.0068483204 0.22602434 0.23088059 0.0068483204 0.23036133 0.44368157 0.0068483204 0.10306485
		 -0.059810974 0.0073912032 0.40425152 0.27886924 0.0073912032 0.41017592 0.56956077 0.0073912032 0.23628573
		 0.00056687742 0.093441442 0.29123515 0.24828294 0.13488284 0.29556835 0.46089932 0.093441442 0.1683823
		 0.021985836 0.10244042 0.20196013 0.22424513 0.14391917 0.20549817 0.39784569 0.10244042 0.10165118
		 0.049899556 0.080083527 0.085614696 0.16344073 0.058033142 -0.022337347 0.31567264 0.080083527 0.014685556
		 0.082405761 0.058055542 -0.049872473 0.21998002 0.058055542 -0.086588092 0.10097966 0.058220319 -0.10803255
		 0.13293843 0.058220319 -0.13663019 0.1748967 0.058220319 -0.12775943 0.16878645 0.006585326 -0.18415284
		 0.11895607 0.0065853037 -0.18902242 0.078178339 0.006585326 -0.15997149 0.41460684 0.0073912032 0.28722888
		 0.34795329 0.095117964 0.20710318 0.099920981 0.0073912032 0.37121183 0.11778706 0.095117964 0.26852959
		 0.28497055 0.097054169 0.11515774 0.13426174 0.097281367 0.16000776 -0.057012714 0.0065946765 -0.082674116
		 -0.14776179 0.0065946653 -0.081086673 -0.22565237 0.006594684 -0.12768042 -0.017166346 0.0066841058 0.083407149
		 -0.1924801 0.0066841058 0.086473837 -0.34295315 0.0066841058 -0.0035383552 0.017050527 0.0068483204 0.22602434
		 -0.23088059 0.0068483204 0.23036133 -0.44368157 0.0068483204 0.10306485 0.059810974 0.0073912032 0.40425152
		 -0.27886924 0.0073912032 0.41017592 -0.56956077 0.0073912032 0.23628573 -0.00056687742 0.093441442 0.29123515
		 -0.24828294 0.13488284 0.29556835 -0.46089932 0.093441442 0.1683823 -0.021985836 0.10244042 0.20196013
		 -0.22424513 0.14391917 0.20549817 -0.39784569 0.10244042 0.10165118 -0.049899556 0.080083527 0.085614696
		 -0.16344073 0.058033142 -0.022337347 -0.31567264 0.080083527 0.014685556 -0.082405761 0.058055542 -0.049872473
		 -0.21998002 0.058055542 -0.086588092 -0.10097966 0.058220319 -0.10803255 -0.13293843 0.058220319 -0.13663019
		 -0.1748967 0.058220319 -0.12775943 -0.16878645 0.006585326 -0.18415284 -0.11895607 0.0065853037 -0.18902242
		 -0.078178339 0.006585326 -0.15997149 -0.41460684 0.0073912032 0.28722888 -0.34795329 0.095117964 0.20710318
		 -0.099920981 0.0073912032 0.37121183 -0.11778706 0.095117964 0.26852959 -0.28497055 0.097054169 0.11515774
		 -0.13426174 0.097281367 0.16000776 -0.18250331 0.018424293 -0.11108924 -0.11813073 0.018424293 -0.11108926
		 -0.085944429 0.018424293 -0.055340968 -0.11813071 0.018424293 0.00040733442 -0.1825033 0.018424293 0.00040734187
		 -0.2146896 0.018424293 -0.055340957 -0.18250331 0.48744792 -0.11108924 -0.11813073 0.48744792 -0.11108926
		 -0.085944429 0.48744792 -0.055340968 -0.11813071 0.48744792 0.00040733442 -0.1825033 0.48744792 0.00040734187
		 -0.2146896 0.48744792 -0.055340957 -0.15031701 0.017684659 -0.055340957 -0.15031701 0.48818755 -0.055340957
		 -0.17383973 0.33298761 -0.014598392 -0.12679428 0.33298761 -0.014598396 -0.10327156 0.33298761 -0.055340964
		 -0.12679429 0.33298761 -0.096083522 -0.17383975 0.33298761 -0.096083522 -0.19736247 0.33298761 -0.055340957
		 -0.17383973 0.15091383 -0.014598392 -0.12679428 0.15091383 -0.014598396 -0.10327156 0.15091383 -0.055340964
		 -0.12679429 0.15091383 -0.096083522 -0.17383975 0.15091383 -0.096083522 -0.19736247 0.15091383 -0.055340957
		 -0.17032051 0.26775634 -0.020693872 -0.13031352 0.26775634 -0.020693876 -0.11031002 0.26775634 -0.055340964
		 -0.13031352 0.26775634 -0.089988038 -0.17032053 0.26775634 -0.089988038 -0.19032401 0.26775634 -0.055340957
		 -0.17032051 0.21614508 -0.020693872 -0.13031352 0.21614508 -0.020693876 -0.11031002 0.21614508 -0.055340964
		 -0.13031352 0.21614508 -0.089988038 -0.17032053 0.21614508 -0.089988038 -0.19032401 0.21614508 -0.055340957
		 -7.9886503e-017 0.35380313 -0.22464404 0.08870206 0.35216671 -0.20356241 0.15376183 0.350366 -0.14683478
		 0.17873324 0.34996709 -0.067188062 0.15584615 0.35094038 0.010712801 0.089389078 0.35231489 0.063796476
		 1.8945187e-017 0.3525486 0.082614429 -1.1180716e-016 0.38963589 -0.29237393 0.12465104 0.38694078 -0.26369706
		 0.21606383 0.38728815 -0.17963555 0.25230527 0.3855775 -0.067705937 0.2206063 0.38511169 0.042820655
		 0.12627929 0.38635591 0.11633836 2.7679776e-017 0.38626021 0.14150356 -1.3528077e-016 0.44749674 -0.33899719
		 0.15077302 0.44420424 -0.30614486 0.26019582 0.44494909 -0.20668197 0.30632922 0.44242653 -0.071949869
		 0.27495497 0.43750212 0.076626211 0.15570301 0.43621314 0.1581675;
	setAttr ".vt[166:331]" 3.2548528e-017 0.43550837 0.18356428 -1.7115156e-016 0.54517961 -0.3464919
		 0.15185438 0.55385661 -0.31446445 0.2688958 0.56430304 -0.22303295 0.32881984 0.5569489 -0.07858932
		 0.29680172 0.54309881 0.079068109 0.1696106 0.53292072 0.18170393 3.539794e-017 0.51166415 0.20645666
		 -1.1277386e-016 0.69095892 -0.28925508 0.13265195 0.6979779 -0.26294622 0.24593033 0.69939971 -0.18307394
		 0.30972263 0.67561501 -0.054004848 0.27839518 0.63932353 0.091476887 0.16096015 0.60333872 0.18486816
		 3.4097235e-017 0.57705069 0.20460856 -1.8169677e-017 0.81323242 -0.18556944 0.10239518 0.81854576 -0.17627054
		 0.19455278 0.81763887 -0.12342133 0.25062639 0.80423582 -0.024053384 0.22376856 0.7811383 0.091309205
		 0.128345 0.74698287 0.16239625 8.6797857e-018 0.7353062 0.17441756 3.8319129e-017 0.90436828 -0.15127981
		 0.071188368 0.91061354 -0.14020674 0.13242178 0.91040039 -0.1040251 0.16518964 0.90347767 -0.037887543
		 0.14580736 0.89218026 0.035077192 0.083075188 0.87541318 0.081188604 3.3328248e-017 0.86628073 0.095902205
		 7.6399599e-017 1.0077496767 -0.14106961 0.043915853 1.0084490776 -0.13417807 0.078465141 1.0073362589 -0.11295315
		 0.090688758 1.0039914846 -0.07774128 0.078971356 1.0014197826 -0.042565115 0.045398705 0.99955142 -0.016982313
		 8.5776962e-017 0.99757642 -0.0047275601 4.9349e-018 0.33006781 -0.066930175 0.068257928 0.32990009 -0.067409366
		 1.125601e-016 1.15377259 -0.18062276 1.5906408e-016 1.16404653 -0.13560885 0.030371124 1.15426791 -0.17574218
		 0.054838892 1.15347981 -0.16071071 0.063495643 1.15111101 -0.13577369 0.055197395 1.14928985 -0.11086196
		 0.031421281 1.14796662 -0.092744246 1.5829327e-016 1.14656794 -0.084065437 -0.08870206 0.35216671 -0.20356241
		 -0.15376183 0.350366 -0.14683478 -0.17873324 0.34996709 -0.067188062 -0.15584615 0.35094038 0.010712801
		 -0.089389078 0.35231489 0.063796476 -0.12465104 0.38694078 -0.26369706 -0.21606383 0.38728815 -0.17963555
		 -0.25230527 0.3855775 -0.067705937 -0.2206063 0.38511169 0.042820655 -0.12627929 0.38635591 0.11633836
		 -0.15077302 0.44420424 -0.30614486 -0.26019582 0.44494909 -0.20668197 -0.30632922 0.44242653 -0.071949869
		 -0.27495497 0.43750212 0.076626211 -0.15570301 0.43621314 0.1581675 -0.15185438 0.55385661 -0.31446445
		 -0.2688958 0.56430304 -0.22303295 -0.32881984 0.5569489 -0.07858932 -0.29680172 0.54309881 0.079068109
		 -0.1696106 0.53292072 0.18170393 -0.13265195 0.6979779 -0.26294622 -0.24593033 0.69939971 -0.18307394
		 -0.30972263 0.67561501 -0.054004848 -0.27839518 0.63932353 0.091476887 -0.16096015 0.60333872 0.18486816
		 -0.10239518 0.81854576 -0.17627054 -0.19455278 0.81763887 -0.12342133 -0.25062639 0.80423582 -0.024053384
		 -0.22376856 0.7811383 0.091309205 -0.128345 0.74698287 0.16239625 -0.071188368 0.91061354 -0.14020674
		 -0.13242178 0.91040039 -0.1040251 -0.16518964 0.90347767 -0.037887543 -0.14580736 0.89218026 0.035077192
		 -0.083075188 0.87541318 0.081188604 -0.043915853 1.0084490776 -0.13417807 -0.078465141 1.0073362589 -0.11295315
		 -0.090688758 1.0039914846 -0.07774128 -0.078971356 1.0014197826 -0.042565115 -0.045398705 0.99955142 -0.016982313
		 -0.068257928 0.32990009 -0.067409366 -0.030371124 1.15426791 -0.17574218 -0.054838892 1.15347981 -0.16071071
		 -0.063495643 1.15111101 -0.13577369 -0.055197395 1.14928985 -0.11086196 -0.031421281 1.14796662 -0.092744246
		 1.021093845 0.80078125 0.15761612 0.92253256 0.81835938 0.19994646 1.034714222 0.80078125 0.34646016
		 1.10714447 0.80078125 0.29402611 0.078097165 0.80078125 0.0029225051 0.080507338 0.80078125 -0.054404762
		 0.078101993 0.80957031 -0.13162296 1.14403522 0.80078125 0.072796911 1.10750651 0.81640625 0.1735252
		 1.020014524 0.80078125 0.050816208 1.035382628 0.80078125 -0.054248884 1.17166626 0.80078125 -0.046427719
		 1.18430614 0.81835938 -0.15666556 1.03324163 0.81835938 -0.15935601 0.96363419 0.81835938 -0.10525128
		 0.89523584 0.81835938 0.1089752 0.91358012 0.80078125 -0.043779407 0.88802266 0.80078125 0.039864711
		 1.42679548 0.80078125 0.16095525 1.38763309 0.79199219 0.27084929 1.45260537 0.80078125 0.13123927
		 1.47667789 0.80078125 0.020982206 1.44012642 0.80078125 -0.017597675 1.45369112 0.81835938 -0.12763737
		 1.018373609 0.80957031 0.13040638 1.033195019 0.87695313 -0.15936896 1.035320997 0.9140625 -0.054265946
		 1.17153823 0.89648438 -0.046463162 1.1841867 0.87695313 -0.15669864 1.43986571 0.89453125 -0.017669901
		 1.453439 0.84863281 -0.1277072 1.47639465 0.88476563 0.020903826 1.14390469 0.89648438 0.07276082
		 1.45231891 0.88476563 0.1311601 1.42651761 0.89453125 0.16087842 1.38735938 0.87695313 0.27077362
		 1.10738015 0.87597656 0.17349029 1.021010995 0.86816406 0.15759316 1.10703683 0.87695313 0.29403037
		 0.92249131 0.87695313 0.19993502 1.034644842 0.85742188 0.34646291 0.96361375 0.88476563 -0.10525694
		 0.91357547 0.9140625 -0.043780692 0.080881655 0.85742188 -0.054404754 0.88801932 0.9140625 0.039863802
		 1.019946337 0.9140625 0.050797373 1.018295765 0.86816406 0.13038486 0.8952198 0.88476563 0.10897078
		 0.078477561 0.83007813 -0.13162296 0.078472733 0.83007813 0.00292252 0.60909754 0.79199219 -0.12483384
		 0.58550197 0.81835938 0.064988688 0.59404016 0.80078125 -0.0036553741 0.60096455 0.80078125 -0.0593604
		 0.59563434 0.89648438 -0.0031716377 0.60257918 0.89648438 -0.059041545 0.61072457 0.85742188 -0.12453746
		 0.58710921 0.85742188 0.06544888 0.53223836 0.79199219 -0.12610446 0.53211892 0.80078125 -0.038286991
		 0.53177035 0.89648438 -0.038131796 0.53188872 0.85742188 -0.12671384 0.53199387 0.81835938 0.055059597
		 0.53164297 0.85742188 0.055616088 0.47076231 0.79199219 -0.12394831 0.47463456 0.80078125 -0.038832463
		 0.47406673 0.89648438 -0.038843311 0.47019428 0.85742188 -0.12390565 0.47882053 0.81835938 0.053117193
		 0.47824913 0.85742188 0.053078413 1.050176144 0.87695313 0.2162593 1.050271392 0.80078125 0.21626863
		 0.96477556 0.80078125 0.26365083 0.96472025 0.88476563 0.26364648;
	setAttr ".vt[332:497]" 1.30303836 0.88378906 0.24147487 1.34011006 0.89648438 0.13723789
		 1.34034348 0.80078125 0.13730237 1.3032676 0.79199219 0.24153826 1.28363872 0.88378906 0.23473418
		 1.32023072 0.89453125 0.13179898 1.32045364 0.80078125 0.13186061 1.28385782 0.79199219 0.23479474
		 1.20741415 0.87695313 0.2082487 1.24212027 0.89648438 0.11042842 1.24230289 0.80078125 0.11047891
		 1.2075932 0.79199219 0.20829815 1.18861151 0.87695313 0.20171541 1.22285247 0.89648438 0.10515684
		 1.22302508 0.80078125 0.10520458 1.18878055 0.79199219 0.20176214 1.12511218 0.87695313 0.17965156
		 1.15778208 0.89648438 0.087353975 1.15792108 0.80957031 0.08739242 1.12524796 0.81835938 0.17968905
		 1.36767197 0.9140625 0.11222759 1.39154291 0.9140625 0.0021533445 1.391783 0.80957031 0.0022197738
		 1.36791515 0.80078125 0.11229481 1.35094523 0.9140625 0.10848643 1.37477589 0.9140625 -0.0015518367
		 1.37500739 0.80078125 -0.0014877692 1.35118008 0.80078125 0.10855129 1.26629841 0.89648438 0.089553908
		 1.28992414 0.89648438 -0.020302314 1.2901125 0.79003906 -0.020250201 1.26648998 0.79003906 0.089606851
		 1.2495718 0.89648438 0.085812747 1.273157 0.89648438 -0.024007499 1.27333677 0.80078125 -0.023957748
		 1.24975479 0.80078125 0.085863337 1.17354155 0.89648438 0.068807498 1.19694293 0.89648438 -0.040849246
		 1.19708383 0.80078125 -0.040810227 1.17368579 0.80078125 0.068847388 1.36786449 0.89648438 -0.025396094
		 1.38118958 0.87695313 -0.13548657 1.38140607 0.81835938 -0.1354266 1.36808968 0.80078125 -0.02533374
		 1.35042322 0.89648438 -0.027267657 1.36368823 0.87695313 -0.13737102 1.36389613 0.81835938 -0.13731343
		 1.35063982 0.80957031 -0.027207691 1.2766453 0.89648438 -0.035184499 1.28675294 0.87695313 -0.14565495
		 1.28892636 0.81835938 -0.14539197 1.27591836 0.80078125 -0.035232052 1.25688672 0.89648438 -0.037304718
		 1.26495218 0.87695313 -0.14800233 1.26847732 0.81835938 -0.14759551 1.25553322 0.80078125 -0.037421215
		 1.20564163 0.89648438 -0.042803645 1.21380448 0.87695313 -0.15350959 1.21306038 0.81835938 -0.15356708
		 1.20030189 0.80078125 -0.043352515 -1.021093845 0.80078125 0.15761612 -0.92253256 0.81835938 0.19994646
		 -1.034714222 0.80078125 0.34646016 -1.10714447 0.80078125 0.29402611 -0.078097165 0.80078125 0.0029225051
		 -0.080507338 0.80078125 -0.054404762 -0.078101993 0.80957031 -0.13162296 -1.14403522 0.80078125 0.072796911
		 -1.10750651 0.81640625 0.1735252 -1.020014524 0.80078125 0.050816208 -1.035382628 0.80078125 -0.054248884
		 -1.17166626 0.80078125 -0.046427719 -1.18430614 0.81835938 -0.15666556 -1.03324163 0.81835938 -0.15935601
		 -0.96363419 0.81835938 -0.10525128 -0.89523584 0.81835938 0.1089752 -0.91358012 0.80078125 -0.043779407
		 -0.88802266 0.80078125 0.039864711 -1.42679548 0.80078125 0.16095525 -1.38763309 0.79199219 0.27084929
		 -1.45260537 0.80078125 0.13123927 -1.47667789 0.80078125 0.020982206 -1.44012642 0.80078125 -0.017597675
		 -1.45369112 0.81835938 -0.12763737 -1.018373609 0.80957031 0.13040638 -1.033195019 0.87695313 -0.15936896
		 -1.035320997 0.9140625 -0.054265946 -1.17153823 0.89648438 -0.046463162 -1.1841867 0.87695313 -0.15669864
		 -1.43986571 0.89453125 -0.017669901 -1.453439 0.84863281 -0.1277072 -1.47639465 0.88476563 0.020903826
		 -1.14390469 0.89648438 0.07276082 -1.45231891 0.88476563 0.1311601 -1.42651761 0.89453125 0.16087842
		 -1.38735938 0.87695313 0.27077362 -1.10738015 0.87597656 0.17349029 -1.021010995 0.86816406 0.15759316
		 -1.10703683 0.87695313 0.29403037 -0.92249131 0.87695313 0.19993502 -1.034644842 0.85742188 0.34646291
		 -0.96361375 0.88476563 -0.10525694 -0.91357547 0.9140625 -0.043780692 -0.080881655 0.85742188 -0.054404754
		 -0.88801932 0.9140625 0.039863802 -1.019946337 0.9140625 0.050797373 -1.018295765 0.86816406 0.13038486
		 -0.8952198 0.88476563 0.10897078 -0.078477561 0.83007813 -0.13162296 -0.078472733 0.83007813 0.00292252
		 -0.60909754 0.79199219 -0.12483384 -0.58550197 0.81835938 0.064988688 -0.59404016 0.80078125 -0.0036553741
		 -0.60096455 0.80078125 -0.0593604 -0.59563434 0.89648438 -0.0031716377 -0.60257918 0.89648438 -0.059041545
		 -0.61072457 0.85742188 -0.12453746 -0.58710921 0.85742188 0.06544888 -0.53223836 0.79199219 -0.12610446
		 -0.53211892 0.80078125 -0.038286991 -0.53177035 0.89648438 -0.038131796 -0.53188872 0.85742188 -0.12671384
		 -0.53199387 0.81835938 0.055059597 -0.53164297 0.85742188 0.055616088 -0.47076231 0.79199219 -0.12394831
		 -0.47463456 0.80078125 -0.038832463 -0.47406673 0.89648438 -0.038843311 -0.47019428 0.85742188 -0.12390565
		 -0.47882053 0.81835938 0.053117193 -0.47824913 0.85742188 0.053078413 -1.050176144 0.87695313 0.2162593
		 -1.050271392 0.80078125 0.21626863 -0.96477556 0.80078125 0.26365083 -0.96472025 0.88476563 0.26364648
		 -1.30303836 0.88378906 0.24147487 -1.34011006 0.89648438 0.13723789 -1.34034348 0.80078125 0.13730237
		 -1.3032676 0.79199219 0.24153826 -1.28363872 0.88378906 0.23473418 -1.32023072 0.89453125 0.13179898
		 -1.32045364 0.80078125 0.13186061 -1.28385782 0.79199219 0.23479474 -1.20741415 0.87695313 0.2082487
		 -1.24212027 0.89648438 0.11042842 -1.24230289 0.80078125 0.11047891 -1.2075932 0.79199219 0.20829815
		 -1.18861151 0.87695313 0.20171541 -1.22285247 0.89648438 0.10515684 -1.22302508 0.80078125 0.10520458
		 -1.18878055 0.79199219 0.20176214 -1.12511218 0.87695313 0.17965156 -1.15778208 0.89648438 0.087353975
		 -1.15792108 0.80957031 0.08739242 -1.12524796 0.81835938 0.17968905 -1.36767197 0.9140625 0.11222759
		 -1.39154291 0.9140625 0.0021533445 -1.391783 0.80957031 0.0022197738 -1.36791515 0.80078125 0.11229481
		 -1.35094523 0.9140625 0.10848643 -1.37477589 0.9140625 -0.0015518367 -1.37500739 0.80078125 -0.0014877692
		 -1.35118008 0.80078125 0.10855129 -1.26629841 0.89648438 0.089553908 -1.28992414 0.89648438 -0.020302314
		 -1.2901125 0.79003906 -0.020250201 -1.26648998 0.79003906 0.089606851;
	setAttr ".vt[498:525]" -1.2495718 0.89648438 0.085812747 -1.273157 0.89648438 -0.024007499
		 -1.27333677 0.80078125 -0.023957748 -1.24975479 0.80078125 0.085863337 -1.17354155 0.89648438 0.068807498
		 -1.19694293 0.89648438 -0.040849246 -1.19708383 0.80078125 -0.040810227 -1.17368579 0.80078125 0.068847388
		 -1.36786449 0.89648438 -0.025396094 -1.38118958 0.87695313 -0.13548657 -1.38140607 0.81835938 -0.1354266
		 -1.36808968 0.80078125 -0.02533374 -1.35042322 0.89648438 -0.027267657 -1.36368823 0.87695313 -0.13737102
		 -1.36389613 0.81835938 -0.13731343 -1.35063982 0.80957031 -0.027207691 -1.2766453 0.89648438 -0.035184499
		 -1.28675294 0.87695313 -0.14565495 -1.28892636 0.81835938 -0.14539197 -1.27591836 0.80078125 -0.035232052
		 -1.25688672 0.89648438 -0.037304718 -1.26495218 0.87695313 -0.14800233 -1.26847732 0.81835938 -0.14759551
		 -1.25553322 0.80078125 -0.037421215 -1.20564163 0.89648438 -0.042803645 -1.21380448 0.87695313 -0.15350959
		 -1.21306038 0.81835938 -0.15356708 -1.20030189 0.80078125 -0.043352515;
	setAttr -s 1050 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 0 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 6 1 0 24 1 1 23 1 2 22 1 3 21 1 4 20 1 5 25 1 12 0 1 12 1 1 12 2 1
		 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1 14 10 1 15 9 1 14 15 1
		 16 8 1 15 16 1 17 7 1 16 17 1 18 6 1 17 18 1 19 11 1 18 19 1 19 14 1 20 32 1 21 33 1
		 20 21 1 22 34 1 21 22 1 23 35 1 22 23 1 24 36 1 23 24 1 25 37 1 24 25 1 25 20 1 26 14 1
		 27 15 1 26 27 1 28 16 1 27 28 1 29 17 1 28 29 1 30 18 1 29 30 1 31 19 1 30 31 1 31 26 1
		 32 26 1 33 27 1 32 33 1 34 28 1 33 34 1 35 29 1 34 35 1 36 30 1 35 36 1 37 31 1 36 37 1
		 37 32 1 38 39 1 39 40 1 41 42 1 42 43 1 38 41 1 39 42 1 40 43 1 64 40 1 65 39 1 66 38 1
		 65 64 1 66 65 1 42 45 1 43 46 1 44 45 1 45 48 1 48 69 1 45 46 1 48 51 1 44 47 1 41 44 1
		 47 69 1 45 69 1 51 68 1 46 49 1 49 67 1 52 68 1 49 52 1 48 67 1 67 68 1 45 67 1 51 70 1
		 47 50 1 50 53 1 44 53 1 69 70 1 50 70 1 57 62 1 57 60 1 60 63 1 38 59 1 59 61 1 61 66 1
		 61 62 1 62 65 1 62 63 1 63 64 1 41 56 1 56 59 1 53 56 1 40 60 1 56 57 1 57 59 1 57 58 1
		 58 60 1 68 71 1 53 72 1 57 54 1 54 71 1 51 54 1 54 72 1 46 55 1 43 58 1 70 72 1 55 71 1
		 52 55 1 57 71 1 55 58 1 57 72 1 73 74 1 74 75 1 76 77 1 77 78 1 73 76 1 74 77 1 75 78 1
		 99 75 1 100 74 1 101 73 1 100 99 1 101 100 1 77 80 1 78 81 1 79 80 1 80 83 1 83 104 1
		 80 81 1 83 86 1;
	setAttr ".ed[166:331]" 79 82 1 76 79 1 82 104 1 80 104 1 86 103 1 81 84 1 84 102 1
		 87 103 1 84 87 1 83 102 1 102 103 1 80 102 1 86 105 1 82 85 1 85 88 1 79 88 1 104 105 1
		 85 105 1 92 97 1 92 95 1 95 98 1 73 94 1 94 96 1 96 101 1 96 97 1 97 100 1 97 98 1
		 98 99 1 76 91 1 91 94 1 88 91 1 75 95 1 91 92 1 92 94 1 92 93 1 93 95 1 103 106 1
		 88 107 1 92 89 1 89 106 1 86 89 1 89 107 1 81 90 1 78 93 1 105 107 1 90 106 1 87 90 1
		 92 106 1 90 93 1 92 107 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 108 1
		 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 114 1 108 132 1 109 131 1 110 130 1
		 111 129 1 112 128 1 113 133 1 120 108 1 120 109 1 120 110 1 120 111 1 120 112 1 120 113 1
		 114 121 1 115 121 1 116 121 1 117 121 1 118 121 1 119 121 1 122 118 1 123 117 1 122 123 1
		 124 116 1 123 124 1 125 115 1 124 125 1 126 114 1 125 126 1 127 119 1 126 127 1 127 122 1
		 128 140 1 129 141 1 128 129 1 130 142 1 129 130 1 131 143 1 130 131 1 132 144 1 131 132 1
		 133 145 1 132 133 1 133 128 1 134 122 1 135 123 1 134 135 1 136 124 1 135 136 1 137 125 1
		 136 137 1 138 126 1 137 138 1 139 127 1 138 139 1 139 134 1 140 134 1 141 135 1 140 141 1
		 142 136 1 141 142 1 143 137 1 142 143 1 144 138 1 143 144 1 145 139 1 144 145 1 145 140 1
		 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1 153 154 1 154 155 1 155 156 1
		 156 157 1 157 158 1 158 159 1 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1
		 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1 172 173 1 174 175 1 175 176 1 176 177 1
		 177 178 1 178 179 1 179 180 1 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1
		 188 189 1 189 190 1;
	setAttr ".ed[332:497]" 190 191 1 191 192 1 192 193 1 193 194 1 195 196 1 196 197 1
		 197 198 1 198 199 1 199 200 1 200 201 1 146 153 1 147 154 1 148 155 1 149 156 1 150 157 1
		 151 158 1 152 159 1 153 160 1 154 161 1 155 162 1 156 163 1 157 164 1 158 165 1 159 166 1
		 160 167 1 161 168 1 162 169 1 163 170 1 164 171 1 165 172 1 166 173 1 167 174 1 168 175 1
		 169 176 1 170 177 1 171 178 1 172 179 1 173 180 1 174 181 1 175 182 1 176 183 1 177 184 1
		 178 185 1 179 186 1 180 187 1 181 188 1 182 189 1 183 190 1 184 191 1 185 192 1 186 193 1
		 187 194 1 188 195 1 189 196 1 190 197 1 191 198 1 192 199 1 193 200 1 194 201 1 203 147 1
		 149 203 1 203 151 1 146 202 1 202 203 1 152 202 1 195 204 1 204 205 1 196 206 1 206 205 1
		 204 206 1 197 207 1 207 205 1 206 207 1 198 208 1 208 205 1 207 208 1 199 209 1 209 205 1
		 208 209 1 200 210 1 210 205 1 209 210 1 201 211 1 211 205 1 210 211 1 146 212 1 212 213 1
		 213 214 1 214 215 1 215 216 1 216 152 1 153 217 1 217 218 1 218 219 1 219 220 1 220 221 1
		 221 159 1 160 222 1 222 223 1 223 224 1 224 225 1 225 226 1 226 166 1 167 227 1 227 228 1
		 228 229 1 229 230 1 230 231 1 231 173 1 174 232 1 232 233 1 233 234 1 234 235 1 235 236 1
		 236 180 1 181 237 1 237 238 1 238 239 1 239 240 1 240 241 1 241 187 1 188 242 1 242 243 1
		 243 244 1 244 245 1 245 246 1 246 194 1 195 247 1 247 248 1 248 249 1 249 250 1 250 251 1
		 251 201 1 212 217 1 213 218 1 214 219 1 215 220 1 216 221 1 217 222 1 218 223 1 219 224 1
		 220 225 1 221 226 1 222 227 1 223 228 1 224 229 1 225 230 1 226 231 1 227 232 1 228 233 1
		 229 234 1 230 235 1 231 236 1 232 237 1 233 238 1 234 239 1 235 240 1 236 241 1 237 242 1
		 238 243 1 239 244 1 240 245 1 241 246 1 242 247 1 243 248 1 244 249 1;
	setAttr ".ed[498:663]" 245 250 1 246 251 1 252 212 1 214 252 1 252 216 1 202 252 1
		 247 253 1 253 205 1 204 253 1 248 254 1 254 205 1 253 254 1 249 255 1 255 205 1 254 255 1
		 250 256 1 256 205 1 255 256 1 251 257 1 257 205 1 256 257 1 257 211 1 259 330 1 260 261 1
		 258 329 1 262 263 1 264 322 1 263 264 1 259 273 1 269 270 1 269 268 1 271 268 1 271 270 1
		 272 271 1 273 309 1 266 351 1 276 277 1 265 371 1 269 370 1 278 279 1 269 391 1 270 390 1
		 280 281 1 265 269 1 265 350 1 258 282 1 282 266 1 258 259 1 266 265 1 272 274 1 274 275 1
		 267 268 1 268 274 1 267 282 1 265 267 1 263 323 1 267 275 1 273 282 1 273 275 1 271 283 1
		 283 284 1 269 285 1 285 284 1 270 286 1 285 286 1 283 286 1 280 287 1 285 388 1 281 288 1
		 287 288 1 286 389 1 279 289 1 285 369 1 265 290 1 290 285 1 278 291 1 290 368 1 291 289 1
		 276 292 1 277 293 1 292 293 1 290 349 1 266 294 1 294 290 1 294 348 1 258 295 1 261 296 1
		 295 328 1 259 297 1 295 297 1 260 298 1 297 331 1 298 296 1 272 299 1 299 300 1 284 300 1
		 299 283 1 301 324 1 300 302 1 303 302 1 303 284 1 282 304 1 304 294 1 290 303 1 303 304 1
		 273 305 1 305 304 1 297 305 1 295 304 1 264 306 1 306 325 1 263 301 1 301 306 1 262 307 1
		 307 301 1 305 315 1 305 302 1 308 272 1 309 320 1 310 275 1 311 274 1 312 302 1 313 300 1
		 314 299 1 315 321 1 312 313 1 314 313 1 312 315 1 311 310 1 311 308 1 309 310 1 308 314 1
		 309 315 1 316 308 1 317 310 1 317 311 1 318 312 1 318 313 1 319 314 1 320 326 1 321 327 1
		 320 321 1 319 318 1 318 321 1 317 316 1 320 317 1 316 319 1 322 316 1 323 317 1 324 318 1
		 325 319 1 326 262 1 327 307 1 326 327 1 325 324 1 324 327 1 323 322 1 326 323 1 322 325 1
		 328 296 1 329 261 1 328 329 1 330 260 1 329 330 1 331 298 1 330 331 1;
	setAttr ".ed[664:829]" 331 328 1 332 293 1 333 292 1 332 333 1 334 276 1 333 334 1
		 335 277 1 334 335 1 335 332 1 336 332 1 337 333 1 336 337 1 338 334 1 337 338 1 339 335 1
		 338 339 1 339 336 1 340 336 1 341 337 1 340 341 1 342 338 1 341 342 1 343 339 1 342 343 1
		 343 340 1 344 340 1 345 341 1 344 345 1 346 342 1 345 346 1 347 343 1 346 347 1 347 344 1
		 348 344 1 349 345 1 348 349 1 350 346 1 349 350 1 351 347 1 350 351 1 351 348 1 352 291 1
		 353 289 1 352 353 1 354 279 1 353 354 1 355 278 1 354 355 1 355 352 1 356 352 1 357 353 1
		 356 357 1 358 354 1 357 358 1 359 355 1 358 359 1 359 356 1 360 356 1 361 357 1 360 361 1
		 362 358 1 361 362 1 363 359 1 362 363 1 363 360 1 364 360 1 365 361 1 364 365 1 366 362 1
		 365 366 1 367 363 1 366 367 1 367 364 1 368 364 1 369 365 1 368 369 1 370 366 1 369 370 1
		 371 367 1 370 371 1 371 368 1 372 287 1 373 288 1 372 373 1 374 281 1 373 374 1 375 280 1
		 374 375 1 375 372 1 376 372 1 377 373 1 376 377 1 378 374 1 377 378 1 379 375 1 378 379 1
		 379 376 1 380 376 1 381 377 1 380 381 1 382 378 1 381 382 1 383 379 1 382 383 1 383 380 1
		 384 380 1 385 381 1 384 385 1 386 382 1 385 386 1 387 383 1 386 387 1 387 384 1 388 384 1
		 389 385 1 388 389 1 390 386 1 389 390 1 391 387 1 390 391 1 391 388 1 393 464 1 394 395 1
		 392 463 1 396 397 1 398 456 1 397 398 1 393 407 1 403 404 1 403 402 1 405 402 1 405 404 1
		 406 405 1 407 443 1 400 485 1 410 411 1 399 505 1 403 504 1 412 413 1 403 525 1 404 524 1
		 414 415 1 399 403 1 399 484 1 392 416 1 416 400 1 392 393 1 400 399 1 406 408 1 408 409 1
		 401 402 1 402 408 1 401 416 1 399 401 1 397 457 1 401 409 1 407 416 1 407 409 1 405 417 1
		 417 418 1 403 419 1 419 418 1 404 420 1 419 420 1 417 420 1 414 421 1;
	setAttr ".ed[830:995]" 419 522 1 415 422 1 421 422 1 420 523 1 413 423 1 419 503 1
		 399 424 1 424 419 1 412 425 1 424 502 1 425 423 1 410 426 1 411 427 1 426 427 1 424 483 1
		 400 428 1 428 424 1 428 482 1 392 429 1 395 430 1 429 462 1 393 431 1 429 431 1 394 432 1
		 431 465 1 432 430 1 406 433 1 433 434 1 418 434 1 433 417 1 435 458 1 434 436 1 437 436 1
		 437 418 1 416 438 1 438 428 1 424 437 1 437 438 1 407 439 1 439 438 1 431 439 1 429 438 1
		 398 440 1 440 459 1 397 435 1 435 440 1 396 441 1 441 435 1 439 449 1 439 436 1 442 406 1
		 443 454 1 444 409 1 445 408 1 446 436 1 447 434 1 448 433 1 449 455 1 446 447 1 448 447 1
		 446 449 1 445 444 1 445 442 1 443 444 1 442 448 1 443 449 1 450 442 1 451 444 1 451 445 1
		 452 446 1 452 447 1 453 448 1 454 460 1 455 461 1 454 455 1 453 452 1 452 455 1 451 450 1
		 454 451 1 450 453 1 456 450 1 457 451 1 458 452 1 459 453 1 460 396 1 461 441 1 460 461 1
		 459 458 1 458 461 1 457 456 1 460 457 1 456 459 1 462 430 1 463 395 1 462 463 1 464 394 1
		 463 464 1 465 432 1 464 465 1 465 462 1 466 427 1 467 426 1 466 467 1 468 410 1 467 468 1
		 469 411 1 468 469 1 469 466 1 470 466 1 471 467 1 470 471 1 472 468 1 471 472 1 473 469 1
		 472 473 1 473 470 1 474 470 1 475 471 1 474 475 1 476 472 1 475 476 1 477 473 1 476 477 1
		 477 474 1 478 474 1 479 475 1 478 479 1 480 476 1 479 480 1 481 477 1 480 481 1 481 478 1
		 482 478 1 483 479 1 482 483 1 484 480 1 483 484 1 485 481 1 484 485 1 485 482 1 486 425 1
		 487 423 1 486 487 1 488 413 1 487 488 1 489 412 1 488 489 1 489 486 1 490 486 1 491 487 1
		 490 491 1 492 488 1 491 492 1 493 489 1 492 493 1 493 490 1 494 490 1 495 491 1 494 495 1
		 496 492 1 495 496 1 497 493 1 496 497 1 497 494 1 498 494 1 499 495 1;
	setAttr ".ed[996:1049]" 498 499 1 500 496 1 499 500 1 501 497 1 500 501 1 501 498 1
		 502 498 1 503 499 1 502 503 1 504 500 1 503 504 1 505 501 1 504 505 1 505 502 1 506 421 1
		 507 422 1 506 507 1 508 415 1 507 508 1 509 414 1 508 509 1 509 506 1 510 506 1 511 507 1
		 510 511 1 512 508 1 511 512 1 513 509 1 512 513 1 513 510 1 514 510 1 515 511 1 514 515 1
		 516 512 1 515 516 1 517 513 1 516 517 1 517 514 1 518 514 1 519 515 1 518 519 1 520 516 1
		 519 520 1 521 517 1 520 521 1 521 518 1 522 518 1 523 519 1 522 523 1 524 520 1 523 524 1
		 525 521 1 524 525 1 525 522 1;
	setAttr -s 538 -ch 2100 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 13 50 -13
		mu 0 4 0 1 2 3
		f 4 1 14 48 -14
		mu 0 4 1 4 5 2
		f 4 2 15 46 -15
		mu 0 4 6 7 8 9
		f 4 3 16 44 -16
		mu 0 4 7 10 11 8
		f 4 4 17 53 -17
		mu 0 4 10 12 13 11
		f 4 5 12 52 -18
		mu 0 4 12 0 3 13
		f 3 -1 -19 19
		mu 0 3 14 15 16
		f 3 -2 -20 20
		mu 0 3 17 14 16
		f 3 -3 -21 21
		mu 0 3 18 17 16
		f 3 -4 -22 22
		mu 0 3 19 18 16
		f 3 -5 -23 23
		mu 0 3 20 19 16
		f 3 -6 -24 18
		mu 0 3 15 20 16
		f 3 6 25 -25
		mu 0 3 21 22 23
		f 3 7 26 -26
		mu 0 3 22 24 23
		f 3 8 27 -27
		mu 0 3 24 25 23
		f 3 9 28 -28
		mu 0 3 25 26 23
		f 3 10 29 -29
		mu 0 3 26 27 23
		f 3 11 24 -30
		mu 0 3 27 21 23
		f 4 -33 30 -10 -32
		mu 0 4 28 29 30 31
		f 4 -35 31 -9 -34
		mu 0 4 32 28 31 33
		f 4 -37 33 -8 -36
		mu 0 4 34 35 36 37
		f 4 -39 35 -7 -38
		mu 0 4 38 34 37 39
		f 4 -41 37 -12 -40
		mu 0 4 40 38 39 41
		f 4 -42 39 -11 -31
		mu 0 4 29 40 41 30
		f 4 -45 42 68 -44
		mu 0 4 8 11 42 43
		f 4 -47 43 70 -46
		mu 0 4 9 8 43 44
		f 4 -49 45 72 -48
		mu 0 4 2 5 45 46
		f 4 -51 47 74 -50
		mu 0 4 3 2 46 47
		f 4 -53 49 76 -52
		mu 0 4 13 3 47 48
		f 4 -54 51 77 -43
		mu 0 4 11 13 48 42
		f 4 -57 54 32 -56
		mu 0 4 49 50 29 28
		f 4 -59 55 34 -58
		mu 0 4 51 49 28 32
		f 4 -61 57 36 -60
		mu 0 4 52 53 35 34
		f 4 -63 59 38 -62
		mu 0 4 54 52 34 38
		f 4 -65 61 40 -64
		mu 0 4 55 54 38 40
		f 4 -66 63 41 -55
		mu 0 4 50 55 40 29
		f 4 -69 66 56 -68
		mu 0 4 43 42 50 49
		f 4 -71 67 58 -70
		mu 0 4 44 43 49 51
		f 4 -73 69 60 -72
		mu 0 4 46 45 53 52
		f 4 -75 71 62 -74
		mu 0 4 47 46 52 54
		f 4 -77 73 64 -76
		mu 0 4 48 47 54 55
		f 4 -78 75 65 -67
		mu 0 4 42 48 55 50
		f 4 78 83 -81 -83
		mu 0 4 56 57 58 59
		f 4 79 84 -82 -84
		mu 0 4 60 61 62 63
		f 4 -79 -88 89 86
		mu 0 4 57 56 64 65
		f 4 -80 -87 88 85
		mu 0 4 61 60 65 66
		f 4 -99 80 90 -93
		mu 0 4 67 59 58 68
		f 4 -91 81 91 -96
		mu 0 4 69 63 62 70
		f 4 -100 -98 92 100
		mu 0 4 71 72 67 68
		f 3 -101 93 94
		mu 0 3 71 68 73
		f 4 102 103 -109 95
		mu 0 4 70 74 75 69
		f 4 104 -108 -104 105
		mu 0 4 76 77 78 74
		f 4 106 107 -102 -97
		mu 0 4 79 78 77 80
		f 3 108 -107 -94
		mu 0 3 69 75 81
		f 4 -114 -95 96 109
		mu 0 4 82 83 79 80
		f 4 97 110 111 -113
		mu 0 4 67 72 84 85
		f 4 113 -115 -111 99
		mu 0 4 83 82 84 72
		f 4 -122 -120 -131 115
		mu 0 4 86 87 88 89
		f 4 117 -124 -116 116
		mu 0 4 90 91 86 89
		f 4 -118 -129 -86 -125
		mu 0 4 91 90 61 66
		f 4 118 119 120 87
		mu 0 4 56 88 87 64
		f 4 -121 121 122 -90
		mu 0 4 64 87 86 65
		f 4 123 124 -89 -123
		mu 0 4 86 91 66 65
		f 4 125 126 -119 82
		mu 0 4 59 92 88 56
		f 4 112 127 -126 98
		mu 0 4 67 85 92 59
		f 4 -133 -141 -85 128
		mu 0 4 90 93 62 61
		f 3 132 -117 131
		mu 0 3 93 90 89
		f 4 101 133 -137 -138
		mu 0 4 80 77 94 95
		f 3 136 -145 135
		mu 0 3 95 94 89
		f 4 -142 -110 137 138
		mu 0 4 96 82 80 95
		f 4 139 -144 -106 -103
		mu 0 4 70 97 76 74
		f 4 -146 -140 -92 140
		mu 0 4 93 97 70 62
		f 4 141 -135 -112 114
		mu 0 4 82 96 85 84
		f 4 142 -134 -105 143
		mu 0 4 97 94 77 76
		f 4 -143 145 -132 144
		mu 0 4 94 97 93 89
		f 3 130 -127 129
		mu 0 3 89 88 92
		f 3 -136 146 -139
		mu 0 3 95 89 96
		f 4 -147 -130 -128 134
		mu 0 4 96 89 92 85
		f 4 151 149 -153 -148
		mu 0 4 98 99 100 101
		f 4 152 150 -154 -149
		mu 0 4 102 103 104 105
		f 4 -156 -159 156 147
		mu 0 4 101 106 107 98
		f 4 -155 -158 155 148
		mu 0 4 105 108 106 102
		f 4 161 -160 -150 167
		mu 0 4 109 110 100 99
		f 4 164 -161 -151 159
		mu 0 4 111 112 104 103
		f 4 -170 -162 166 168
		mu 0 4 113 110 109 114
		f 3 -164 -163 169
		mu 0 3 113 115 110
		f 4 -165 177 -173 -172
		mu 0 4 112 111 116 117
		f 4 -175 172 176 -174
		mu 0 4 118 117 119 120
		f 4 165 170 -177 -176
		mu 0 4 121 122 120 119
		f 3 162 175 -178
		mu 0 3 111 123 116
		f 4 -179 -166 163 182
		mu 0 4 124 122 121 125
		f 4 181 -181 -180 -167
		mu 0 4 109 126 127 114
		f 4 -169 179 183 -183
		mu 0 4 125 114 127 124
		f 4 -185 199 188 190
		mu 0 4 128 129 130 131
		f 4 -186 184 192 -187
		mu 0 4 132 129 128 133
		f 4 193 154 197 186
		mu 0 4 133 108 105 132
		f 4 -157 -190 -189 -188
		mu 0 4 98 107 131 130
		f 4 158 -192 -191 189
		mu 0 4 107 106 128 131
		f 4 191 157 -194 -193
		mu 0 4 128 106 108 133
		f 4 -152 187 -196 -195
		mu 0 4 99 98 130 134
		f 4 -168 194 -197 -182
		mu 0 4 109 99 134 126
		f 4 -198 153 209 201
		mu 0 4 132 105 104 135
		f 3 -201 185 -202
		mu 0 3 135 129 132
		f 4 206 205 -203 -171
		mu 0 4 122 136 137 120
		f 3 -205 213 -206
		mu 0 3 136 129 137
		f 4 -208 -207 178 210
		mu 0 4 138 136 122 124
		f 4 171 174 212 -209
		mu 0 4 112 117 118 139
		f 4 -210 160 208 214
		mu 0 4 135 104 112 139
		f 4 -184 180 203 -211
		mu 0 4 124 127 126 138
		f 4 -213 173 202 -212
		mu 0 4 139 118 120 137
		f 4 -214 200 -215 211
		mu 0 4 137 129 135 139
		f 3 -199 195 -200
		mu 0 3 129 134 130
		f 3 207 -216 204
		mu 0 3 136 138 129
		f 4 -204 196 198 215
		mu 0 4 138 126 134 129
		f 4 228 -267 -230 -217
		mu 0 4 140 141 142 143
		f 4 229 -265 -231 -218
		mu 0 4 143 142 144 145
		f 4 230 -263 -232 -219
		mu 0 4 146 147 148 149
		f 4 231 -261 -233 -220
		mu 0 4 149 148 150 151
		f 4 232 -270 -234 -221
		mu 0 4 151 150 152 153
		f 4 233 -269 -229 -222
		mu 0 4 153 152 141 140
		f 3 -236 234 216
		mu 0 3 154 155 156
		f 3 -237 235 217
		mu 0 3 157 155 154
		f 3 -238 236 218
		mu 0 3 158 155 157
		f 3 -239 237 219
		mu 0 3 159 155 158
		f 3 -240 238 220
		mu 0 3 160 155 159
		f 3 -235 239 221
		mu 0 3 156 155 160
		f 3 240 -242 -223
		mu 0 3 161 162 163
		f 3 241 -243 -224
		mu 0 3 163 162 164
		f 3 242 -244 -225
		mu 0 3 164 162 165
		f 3 243 -245 -226
		mu 0 3 165 162 166
		f 3 244 -246 -227
		mu 0 3 166 162 167
		f 3 245 -241 -228
		mu 0 3 167 162 161
		f 4 247 225 -247 248
		mu 0 4 168 169 170 171
		f 4 249 224 -248 250
		mu 0 4 172 173 169 168
		f 4 251 223 -250 252
		mu 0 4 174 175 176 177
		f 4 253 222 -252 254
		mu 0 4 178 179 175 174
		f 4 255 227 -254 256
		mu 0 4 180 181 179 178
		f 4 246 226 -256 257
		mu 0 4 171 170 181 180
		f 4 259 -285 -259 260
		mu 0 4 148 182 183 150
		f 4 261 -287 -260 262
		mu 0 4 147 184 182 148
		f 4 263 -289 -262 264
		mu 0 4 142 185 186 144
		f 4 265 -291 -264 266
		mu 0 4 141 187 185 142
		f 4 267 -293 -266 268
		mu 0 4 152 188 187 141
		f 4 258 -294 -268 269
		mu 0 4 150 183 188 152
		f 4 271 -249 -271 272
		mu 0 4 189 168 171 190
		f 4 273 -251 -272 274
		mu 0 4 191 172 168 189
		f 4 275 -253 -274 276
		mu 0 4 192 174 177 193
		f 4 277 -255 -276 278
		mu 0 4 194 178 174 192
		f 4 279 -257 -278 280
		mu 0 4 195 180 178 194
		f 4 270 -258 -280 281
		mu 0 4 190 171 180 195
		f 4 283 -273 -283 284
		mu 0 4 182 189 190 183
		f 4 285 -275 -284 286
		mu 0 4 184 191 189 182
		f 4 287 -277 -286 288
		mu 0 4 185 192 193 186
		f 4 289 -279 -288 290
		mu 0 4 187 194 192 185
		f 4 291 -281 -290 292
		mu 0 4 188 195 194 187
		f 4 282 -282 -292 293
		mu 0 4 183 190 195 188
		f 4 342 300 -344 -295
		mu 0 4 196 197 198 199
		f 4 343 301 -345 -296
		mu 0 4 199 198 200 201
		f 4 344 302 -346 -297
		mu 0 4 201 200 202 203
		f 4 345 303 -347 -298
		mu 0 4 203 202 204 205
		f 4 346 304 -348 -299
		mu 0 4 205 204 206 207
		f 4 347 305 -349 -300
		mu 0 4 207 206 208 209
		f 4 349 306 -351 -301
		mu 0 4 197 210 211 198
		f 4 350 307 -352 -302
		mu 0 4 198 211 212 200
		f 4 351 308 -353 -303
		mu 0 4 213 214 215 216
		f 4 352 309 -354 -304
		mu 0 4 216 215 217 218
		f 4 353 310 -355 -305
		mu 0 4 218 217 219 220
		f 4 354 311 -356 -306
		mu 0 4 220 219 221 222
		f 4 356 312 -358 -307
		mu 0 4 210 223 224 211
		f 4 357 313 -359 -308
		mu 0 4 211 224 225 212
		f 4 358 314 -360 -309
		mu 0 4 214 226 227 215
		f 4 359 315 -361 -310
		mu 0 4 215 227 228 217
		f 4 360 316 -362 -311
		mu 0 4 217 228 229 219
		f 4 361 317 -363 -312
		mu 0 4 219 229 230 221
		f 4 363 318 -365 -313
		mu 0 4 223 231 232 224
		f 4 364 319 -366 -314
		mu 0 4 224 232 233 225
		f 4 365 320 -367 -315
		mu 0 4 226 234 235 227
		f 4 366 321 -368 -316
		mu 0 4 227 235 236 228
		f 4 367 322 -369 -317
		mu 0 4 228 236 237 229
		f 4 368 323 -370 -318
		mu 0 4 229 237 238 230
		f 4 -319 370 324 -372
		mu 0 4 232 231 239 240
		f 4 -320 371 325 -373
		mu 0 4 233 232 240 241
		f 4 -321 372 326 -374
		mu 0 4 235 234 242 243
		f 4 -322 373 327 -375
		mu 0 4 236 235 243 244
		f 4 -323 374 328 -376
		mu 0 4 237 236 244 245
		f 4 -324 375 329 -377
		mu 0 4 238 237 245 246
		f 4 377 330 -379 -325
		mu 0 4 239 247 248 240
		f 4 378 331 -380 -326
		mu 0 4 240 248 249 241
		f 4 379 332 -381 -327
		mu 0 4 242 250 251 243
		f 4 380 333 -382 -328
		mu 0 4 243 251 252 244
		f 4 381 334 -383 -329
		mu 0 4 244 252 253 245
		f 4 382 335 -384 -330
		mu 0 4 245 253 254 246
		f 4 -331 384 336 -386
		mu 0 4 248 247 255 256
		f 4 -332 385 337 -387
		mu 0 4 249 248 256 257
		f 4 -333 386 338 -388
		mu 0 4 251 250 258 259
		f 4 -334 387 339 -389
		mu 0 4 252 251 259 260
		f 4 -335 388 340 -390
		mu 0 4 253 252 260 261
		f 4 -336 389 341 -391
		mu 0 4 254 253 261 262
		f 3 398 -401 -402
		mu 0 3 263 264 265
		f 3 400 -404 -405
		mu 0 3 265 264 266
		f 3 403 -407 -408
		mu 0 3 266 264 267
		f 3 406 -410 -411
		mu 0 3 267 264 268
		f 3 409 -413 -414
		mu 0 3 268 264 269
		f 3 412 -416 -417
		mu 0 3 269 264 270
		f 4 392 391 295 296
		mu 0 4 203 271 199 201
		f 4 -394 -393 297 298
		mu 0 4 207 271 203 205
		f 4 396 395 393 299
		mu 0 4 209 272 271 207
		f 4 -396 -395 294 -392
		mu 0 4 271 272 196 199
		f 4 -337 397 401 -400
		mu 0 4 256 255 273 274
		f 4 -338 399 404 -403
		mu 0 4 257 256 274 275
		f 4 -339 402 407 -406
		mu 0 4 259 258 276 277
		f 4 -340 405 410 -409
		mu 0 4 260 259 277 278
		f 4 -341 408 413 -412
		mu 0 4 261 260 278 279
		f 4 -342 411 416 -415
		mu 0 4 262 261 279 280
		f 4 417 465 -424 -343
		mu 0 4 196 281 282 197
		f 4 418 466 -425 -466
		mu 0 4 281 283 284 282
		f 4 419 467 -426 -467
		mu 0 4 283 285 286 284
		f 4 420 468 -427 -468
		mu 0 4 285 287 288 286
		f 4 421 469 -428 -469
		mu 0 4 287 289 290 288
		f 4 422 348 -429 -470
		mu 0 4 289 209 208 290
		f 4 423 470 -430 -350
		mu 0 4 197 282 291 210
		f 4 424 471 -431 -471
		mu 0 4 282 284 292 291
		f 4 425 472 -432 -472
		mu 0 4 293 294 295 296
		f 4 426 473 -433 -473
		mu 0 4 294 297 298 295
		f 4 427 474 -434 -474
		mu 0 4 297 299 300 298
		f 4 428 355 -435 -475
		mu 0 4 299 222 221 300
		f 4 429 475 -436 -357
		mu 0 4 210 291 301 223
		f 4 430 476 -437 -476
		mu 0 4 291 292 302 301
		f 4 431 477 -438 -477
		mu 0 4 296 295 303 304
		f 4 432 478 -439 -478
		mu 0 4 295 298 305 303
		f 4 433 479 -440 -479
		mu 0 4 298 300 306 305
		f 4 434 362 -441 -480
		mu 0 4 300 221 230 306
		f 4 435 480 -442 -364
		mu 0 4 223 301 307 231
		f 4 436 481 -443 -481
		mu 0 4 301 302 308 307
		f 4 437 482 -444 -482
		mu 0 4 304 303 309 310
		f 4 438 483 -445 -483
		mu 0 4 303 305 311 309
		f 4 439 484 -446 -484
		mu 0 4 305 306 312 311
		f 4 440 369 -447 -485
		mu 0 4 306 230 238 312
		f 4 485 -448 -371 441
		mu 0 4 307 313 239 231
		f 4 486 -449 -486 442
		mu 0 4 308 314 313 307
		f 4 487 -450 -487 443
		mu 0 4 309 315 316 310
		f 4 488 -451 -488 444
		mu 0 4 311 317 315 309
		f 4 489 -452 -489 445
		mu 0 4 312 318 317 311
		f 4 376 -453 -490 446
		mu 0 4 238 246 318 312
		f 4 447 490 -454 -378
		mu 0 4 239 313 319 247
		f 4 448 491 -455 -491
		mu 0 4 313 314 320 319
		f 4 449 492 -456 -492
		mu 0 4 316 315 321 322
		f 4 450 493 -457 -493
		mu 0 4 315 317 323 321
		f 4 451 494 -458 -494
		mu 0 4 317 318 324 323
		f 4 452 383 -459 -495
		mu 0 4 318 246 254 324
		f 4 495 -460 -385 453
		mu 0 4 319 325 255 247
		f 4 496 -461 -496 454
		mu 0 4 320 326 325 319
		f 4 497 -462 -497 455
		mu 0 4 321 327 328 322
		f 4 498 -463 -498 456
		mu 0 4 323 329 327 321
		f 4 499 -464 -499 457
		mu 0 4 324 330 329 323
		f 4 390 -465 -500 458
		mu 0 4 254 262 330 324
		f 3 506 505 -399
		mu 0 3 263 331 264
		f 3 509 508 -506
		mu 0 3 331 332 264
		f 3 512 511 -509
		mu 0 3 332 333 264
		f 3 515 514 -512
		mu 0 3 333 334 264
		f 3 518 517 -515
		mu 0 3 334 335 264
		f 3 519 415 -518
		mu 0 3 335 270 264
		f 4 -420 -419 -501 -502
		mu 0 4 285 283 281 336
		f 4 -422 -421 501 502
		mu 0 4 289 287 285 336
		f 4 -423 -503 -504 -397
		mu 0 4 209 289 336 272
		f 4 500 -418 394 503
		mu 0 4 336 281 196 272
		f 4 504 -507 -398 459
		mu 0 4 325 337 273 255
		f 4 507 -510 -505 460
		mu 0 4 326 338 337 325
		f 4 510 -513 -508 461
		mu 0 4 327 339 340 328
		f 4 513 -516 -511 462
		mu 0 4 329 341 339 327
		f 4 516 -519 -514 463
		mu 0 4 330 342 341 329
		f 4 414 -520 -517 464
		mu 0 4 262 280 342 330
		f 4 558 -561 562 -564
		mu 0 4 343 344 345 346
		f 4 -563 565 779 -569
		mu 0 4 346 345 347 348
		f 4 -571 -573 574 739
		mu 0 4 349 345 350 351
		f 4 699 -580 -582 582
		mu 0 4 352 353 350 354
		f 4 664 -586 587 589
		mu 0 4 355 356 357 358
		f 4 -595 592 -594 -559
		mu 0 4 343 359 360 344
		f 4 596 -598 598 593
		mu 0 4 360 361 362 344
		f 4 600 581 601 602
		mu 0 4 363 354 350 362
		f 4 572 560 -599 -602
		mu 0 4 350 345 344 362
		f 4 -605 -606 -588 606
		mu 0 4 363 364 358 357
		f 4 -593 -622 624 620
		mu 0 4 360 359 365 366
		f 4 -620 625 -614 614
		mu 0 4 361 367 368 364
		f 4 597 -615 604 -603
		mu 0 4 362 361 364 363
		f 4 530 -528 528 -530
		mu 0 4 369 370 371 372
		f 4 539 783 -539 527
		mu 0 4 370 373 374 371
		f 4 743 -536 541 536
		mu 0 4 375 376 377 371
		f 4 -534 546 542 703
		mu 0 4 378 379 377 380
		f 4 661 -521 -546 522
		mu 0 4 381 382 383 384
		f 4 -548 531 529 550
		mu 0 4 385 386 369 372
		f 4 -551 -550 554 -549
		mu 0 4 385 372 387 388
		f 4 -545 -552 -553 -547
		mu 0 4 379 389 387 377
		f 4 552 549 -529 -542
		mu 0 4 377 387 372 371
		f 4 -544 545 526 555
		mu 0 4 389 384 383 390
		f 4 -619 627 615 547
		mu 0 4 385 391 392 386
		f 4 -557 532 628 617
		mu 0 4 388 390 393 394
		f 4 551 -556 556 -555
		mu 0 4 387 389 390 388
		f 4 -531 557 563 -562
		mu 0 4 370 369 343 346
		f 4 538 784 -566 -560
		mu 0 4 395 396 397 398
		f 4 540 566 -568 -565
		mu 0 4 399 400 401 402
		f 4 -540 561 568 781
		mu 0 4 373 370 346 348
		f 4 -537 559 570 741
		mu 0 4 403 395 398 404
		f 4 535 744 -575 -572
		mu 0 4 405 406 407 408
		f 4 537 569 -576 -574
		mu 0 4 409 410 411 412
		f 4 -535 576 578 -578
		mu 0 4 413 414 415 416
		f 4 -543 571 579 701
		mu 0 4 417 405 408 418
		f 4 533 704 -583 -581
		mu 0 4 419 420 421 422
		f 4 -523 583 585 659
		mu 0 4 423 424 425 426
		f 4 520 663 -590 -587
		mu 0 4 427 428 429 430
		f 4 521 584 -591 -589
		mu 0 4 431 432 433 434
		f 4 -532 591 594 -558
		mu 0 4 369 386 359 343
		f 4 544 580 -601 -600
		mu 0 4 435 419 422 436
		f 4 -527 586 605 -604
		mu 0 4 437 427 430 438
		f 4 543 599 -607 -584
		mu 0 4 424 435 436 425
		f 4 -616 629 621 -592
		mu 0 4 386 392 365 359
		f 4 -526 609 610 -608
		mu 0 4 439 440 441 442
		f 4 -524 611 612 -610
		mu 0 4 440 443 444 441
		f 4 -650 651 650 -612
		mu 0 4 445 446 447 448
		f 4 -624 619 -597 -621
		mu 0 4 366 367 361 360
		f 4 -625 -637 640 635
		mu 0 4 366 365 449 450
		f 4 -626 -635 641 -623
		mu 0 4 368 367 450 451
		f 4 -627 618 548 -618
		mu 0 4 394 391 385 388
		f 4 -628 -634 642 631
		mu 0 4 392 391 452 453
		f 4 -629 616 643 632
		mu 0 4 394 393 454 452
		f 4 -630 -632 644 636
		mu 0 4 365 392 453 449
		f 4 -631 -533 603 613
		mu 0 4 368 455 456 364
		f 3 634 623 -636
		mu 0 3 450 367 366
		f 3 633 626 -633
		mu 0 3 452 391 394
		f 4 -640 -617 630 622
		mu 0 4 451 457 455 368
		f 4 -641 -649 652 647
		mu 0 4 450 449 458 459
		f 4 -642 -648 653 -639
		mu 0 4 451 450 459 447
		f 4 -643 -647 654 645
		mu 0 4 453 452 460 461
		f 4 -644 637 655 646
		mu 0 4 452 454 462 460
		f 4 -645 -646 656 648
		mu 0 4 449 453 461 458
		f 4 -652 -638 639 638
		mu 0 4 447 446 457 451
		f 4 595 -653 -609 -611
		mu 0 4 441 459 458 442
		f 4 -654 -596 -613 -651
		mu 0 4 447 459 441 448
		f 4 -655 -554 525 524
		mu 0 4 461 460 463 464
		f 4 -656 649 523 553
		mu 0 4 460 462 465 463
		f 4 -657 -525 607 608
		mu 0 4 458 461 464 442
		f 4 -659 -660 657 -585
		mu 0 4 432 423 426 433
		f 4 -522 -661 -662 658
		mu 0 4 466 467 382 381
		f 4 -664 660 588 -663
		mu 0 4 429 428 431 434
		f 4 -658 -665 662 590
		mu 0 4 468 356 355 469
		f 4 -579 -667 -668 665
		mu 0 4 470 471 472 473
		f 4 -669 -670 666 -577
		mu 0 4 414 474 475 415
		f 4 -671 -672 668 534
		mu 0 4 476 477 478 479
		f 4 -673 670 577 -666
		mu 0 4 480 481 413 416
		f 4 667 -675 -676 673
		mu 0 4 473 472 482 483
		f 4 -677 -678 674 669
		mu 0 4 474 484 485 475
		f 4 -679 -680 676 671
		mu 0 4 477 486 487 478
		f 4 -681 678 672 -674
		mu 0 4 488 489 481 480
		f 4 675 -683 -684 681
		mu 0 4 483 482 490 491
		f 4 -685 -686 682 677
		mu 0 4 484 492 493 485
		f 4 -687 -688 684 679
		mu 0 4 486 494 495 487
		f 4 -689 686 680 -682
		mu 0 4 496 497 489 488
		f 4 683 -691 -692 689
		mu 0 4 491 490 498 499
		f 4 -693 -694 690 685
		mu 0 4 492 500 501 493
		f 4 -695 -696 692 687
		mu 0 4 494 502 503 495
		f 4 -697 694 688 -690
		mu 0 4 504 505 497 496
		f 4 691 -699 -700 697
		mu 0 4 499 498 353 352
		f 4 -701 -702 698 693
		mu 0 4 500 417 418 501
		f 4 -703 -704 700 695
		mu 0 4 502 378 380 503
		f 4 -705 702 696 -698
		mu 0 4 421 420 505 504
		f 4 -707 -708 705 575
		mu 0 4 506 507 508 509
		f 4 -709 -710 706 -570
		mu 0 4 410 510 511 411
		f 4 -538 -711 -712 708
		mu 0 4 512 513 514 515
		f 4 -713 710 573 -706
		mu 0 4 516 517 409 412
		f 4 -715 -716 713 707
		mu 0 4 507 518 519 508
		f 4 -717 -718 714 709
		mu 0 4 510 520 521 511
		f 4 711 -719 -720 716
		mu 0 4 515 514 522 523
		f 4 -721 718 712 -714
		mu 0 4 524 525 517 516
		f 4 -723 -724 721 715
		mu 0 4 518 526 527 519
		f 4 -725 -726 722 717
		mu 0 4 520 528 529 521
		f 4 719 -727 -728 724
		mu 0 4 523 522 530 531
		f 4 -729 726 720 -722
		mu 0 4 532 533 525 524
		f 4 -731 -732 729 723
		mu 0 4 526 534 535 527
		f 4 -733 -734 730 725
		mu 0 4 528 536 537 529
		f 4 727 -735 -736 732
		mu 0 4 531 530 538 539
		f 4 -737 734 728 -730
		mu 0 4 540 541 533 532
		f 4 -739 -740 737 731
		mu 0 4 534 349 351 535
		f 4 -741 -742 738 733
		mu 0 4 536 403 404 537
		f 4 735 -743 -744 740
		mu 0 4 539 538 376 375
		f 4 -745 742 736 -738
		mu 0 4 407 406 541 540
		f 4 -748 745 567 -747
		mu 0 4 542 543 544 545
		f 4 -749 -750 746 -567
		mu 0 4 546 547 542 545
		f 4 -752 748 -541 -751
		mu 0 4 548 547 546 549
		f 4 -753 750 564 -746
		mu 0 4 550 551 399 402
		f 4 -756 753 747 -755
		mu 0 4 552 553 543 542
		f 4 -757 -758 754 749
		mu 0 4 547 554 552 542
		f 4 -760 756 751 -759
		mu 0 4 555 554 547 548
		f 4 -761 758 752 -754
		mu 0 4 556 557 551 550
		f 4 -764 761 755 -763
		mu 0 4 558 559 553 552
		f 4 -765 -766 762 757
		mu 0 4 554 560 558 552
		f 4 -768 764 759 -767
		mu 0 4 561 560 554 555
		f 4 -769 766 760 -762
		mu 0 4 562 563 557 556
		f 4 -772 769 763 -771
		mu 0 4 564 565 559 558
		f 4 -773 -774 770 765
		mu 0 4 560 566 564 558
		f 4 -776 772 767 -775
		mu 0 4 567 566 560 561
		f 4 -777 774 768 -770
		mu 0 4 568 569 563 562
		f 4 -780 777 771 -779
		mu 0 4 348 347 565 564
		f 4 -781 -782 778 773
		mu 0 4 566 373 348 564
		f 4 -784 780 775 -783
		mu 0 4 374 373 566 567
		f 4 -785 782 776 -778
		mu 0 4 397 396 569 568
		f 4 828 -828 825 -824
		mu 0 4 570 571 572 573
		f 4 833 -1045 -831 827
		mu 0 4 571 574 575 572
		f 4 -1005 -840 837 835
		mu 0 4 576 577 578 572
		f 4 -848 846 844 -965
		mu 0 4 579 580 578 581
		f 4 -855 -853 850 -930
		mu 0 4 582 583 584 585
		f 4 823 858 -858 859
		mu 0 4 570 573 586 587
		f 4 -859 -864 862 -862
		mu 0 4 586 573 588 589
		f 4 -868 -867 -847 -866
		mu 0 4 590 588 578 580
		f 4 866 863 -826 -838
		mu 0 4 578 588 573 572
		f 4 -872 852 870 869
		mu 0 4 590 584 583 591
		f 4 -886 -890 886 857
		mu 0 4 586 592 593 587
		f 4 -880 878 -891 884
		mu 0 4 589 591 594 595
		f 4 867 -870 879 -863
		mu 0 4 588 590 591 589
		f 4 794 -794 792 -796
		mu 0 4 596 597 598 599
		f 4 -793 803 -1049 -805
		mu 0 4 599 598 600 601
		f 4 -802 -807 800 -1009
		mu 0 4 602 598 603 604
		f 4 -969 -808 -812 798
		mu 0 4 605 606 603 607
		f 4 -788 810 785 -927
		mu 0 4 608 609 610 611
		f 4 -816 -795 -797 812
		mu 0 4 612 597 596 613
		f 4 813 -820 814 815
		mu 0 4 612 614 615 597
		f 4 811 817 816 809
		mu 0 4 607 603 615 616
		f 4 806 793 -815 -818
		mu 0 4 603 598 597 615
		f 4 -821 -792 -811 808
		mu 0 4 616 617 610 609
		f 4 -813 -881 -893 883
		mu 0 4 612 613 618 619
		f 4 -883 -894 -798 821
		mu 0 4 614 620 621 617
		f 4 819 -822 820 -817
		mu 0 4 615 614 617 616
		f 4 826 -829 -823 795
		mu 0 4 599 571 570 596
		f 4 824 830 -1050 -804
		mu 0 4 622 623 624 625
		f 4 829 832 -832 -806
		mu 0 4 626 627 628 629
		f 4 -1047 -834 -827 804
		mu 0 4 601 574 571 599
		f 4 -1007 -836 -825 801
		mu 0 4 630 631 623 622
		f 4 836 839 -1010 -801
		mu 0 4 632 633 634 635
		f 4 838 840 -835 -803
		mu 0 4 636 637 638 639
		f 4 842 -844 -842 799
		mu 0 4 640 641 642 643
		f 4 -967 -845 -837 807
		mu 0 4 644 645 633 632
		f 4 845 847 -970 -799
		mu 0 4 646 647 648 649
		f 4 -925 -851 -849 787
		mu 0 4 650 651 652 653
		f 4 851 854 -929 -786
		mu 0 4 654 655 656 657
		f 4 853 855 -850 -787
		mu 0 4 658 659 660 661
		f 4 822 -860 -857 796
		mu 0 4 596 570 587 613
		f 4 864 865 -846 -810
		mu 0 4 662 663 647 646
		f 4 868 -871 -852 791
		mu 0 4 664 665 655 654
		f 4 848 871 -865 -809
		mu 0 4 653 652 663 662
		f 4 856 -887 -895 880
		mu 0 4 613 587 593 618
		f 4 872 -876 -875 790
		mu 0 4 666 667 668 669
		f 4 874 -878 -877 788
		mu 0 4 669 668 670 671
		f 4 876 -916 -917 914
		mu 0 4 672 673 674 675
		f 4 885 861 -885 888
		mu 0 4 592 586 589 595
		f 4 -901 -906 901 889
		mu 0 4 592 676 677 593
		f 4 887 -907 899 890
		mu 0 4 594 678 676 595
		f 4 882 -814 -884 891
		mu 0 4 620 614 612 619
		f 4 -897 -908 898 892
		mu 0 4 618 679 680 619
		f 4 -898 -909 -882 893
		mu 0 4 620 680 681 621
		f 4 -902 -910 896 894
		mu 0 4 593 677 679 618
		f 4 -879 -869 797 895
		mu 0 4 594 591 682 683
		f 3 900 -889 -900
		mu 0 3 676 592 595
		f 3 897 -892 -899
		mu 0 3 680 620 619
		f 4 -888 -896 881 904
		mu 0 4 678 594 683 684
		f 4 -913 -918 913 905
		mu 0 4 676 685 686 677
		f 4 903 -919 912 906
		mu 0 4 678 674 685 676
		f 4 -911 -920 911 907
		mu 0 4 679 687 688 680
		f 4 -912 -921 -903 908
		mu 0 4 680 688 689 681
		f 4 -914 -922 910 909
		mu 0 4 677 686 687 679
		f 4 -904 -905 902 916
		mu 0 4 674 678 684 675
		f 4 875 873 917 -861
		mu 0 4 668 667 686 685
		f 4 915 877 860 918
		mu 0 4 674 673 668 685
		f 4 -790 -791 818 919
		mu 0 4 687 690 691 688
		f 4 -819 -789 -915 920
		mu 0 4 688 691 692 689
		f 4 -874 -873 789 921
		mu 0 4 686 667 690 687
		f 4 849 -923 924 923
		mu 0 4 661 660 651 650
		f 4 -924 926 925 786
		mu 0 4 693 608 611 694
		f 4 927 -854 -926 928
		mu 0 4 656 659 658 657
		f 4 -856 -928 929 922
		mu 0 4 695 696 582 585
		f 4 -931 932 931 843
		mu 0 4 697 698 699 700
		f 4 841 -932 934 933
		mu 0 4 643 642 701 702
		f 4 -800 -934 936 935
		mu 0 4 703 704 705 706
		f 4 930 -843 -936 937
		mu 0 4 707 641 640 708
		f 4 -939 940 939 -933
		mu 0 4 698 709 710 699
		f 4 -935 -940 942 941
		mu 0 4 702 701 711 712
		f 4 -937 -942 944 943
		mu 0 4 706 705 713 714
		f 4 938 -938 -944 945
		mu 0 4 715 707 708 716
		f 4 -947 948 947 -941
		mu 0 4 709 717 718 710
		f 4 -943 -948 950 949
		mu 0 4 712 711 719 720
		f 4 -945 -950 952 951
		mu 0 4 714 713 721 722
		f 4 946 -946 -952 953
		mu 0 4 723 715 716 724
		f 4 -955 956 955 -949
		mu 0 4 717 725 726 718
		f 4 -951 -956 958 957
		mu 0 4 720 719 727 728
		f 4 -953 -958 960 959
		mu 0 4 722 721 729 730
		f 4 954 -954 -960 961
		mu 0 4 731 723 724 732
		f 4 -963 964 963 -957
		mu 0 4 725 579 581 726
		f 4 -959 -964 966 965
		mu 0 4 728 727 645 644
		f 4 -961 -966 968 967
		mu 0 4 730 729 606 605
		f 4 962 -962 -968 969
		mu 0 4 648 731 732 649
		f 4 -841 -971 972 971
		mu 0 4 733 734 735 736
		f 4 834 -972 974 973
		mu 0 4 639 638 737 738;
	setAttr ".fc[500:537]"
		f 4 -974 976 975 802
		mu 0 4 739 740 741 742
		f 4 970 -839 -976 977
		mu 0 4 743 637 636 744
		f 4 -973 -979 980 979
		mu 0 4 736 735 745 746
		f 4 -975 -980 982 981
		mu 0 4 738 737 747 748
		f 4 -982 984 983 -977
		mu 0 4 740 749 750 741
		f 4 978 -978 -984 985
		mu 0 4 751 743 744 752
		f 4 -981 -987 988 987
		mu 0 4 746 745 753 754
		f 4 -983 -988 990 989
		mu 0 4 748 747 755 756
		f 4 -990 992 991 -985
		mu 0 4 749 757 758 750
		f 4 986 -986 -992 993
		mu 0 4 759 751 752 760
		f 4 -989 -995 996 995
		mu 0 4 754 753 761 762
		f 4 -991 -996 998 997
		mu 0 4 756 755 763 764
		f 4 -998 1000 999 -993
		mu 0 4 757 765 766 758
		f 4 994 -994 -1000 1001
		mu 0 4 767 759 760 768
		f 4 -997 -1003 1004 1003
		mu 0 4 762 761 577 576
		f 4 -999 -1004 1006 1005
		mu 0 4 764 763 631 630
		f 4 -1006 1008 1007 -1001
		mu 0 4 765 602 604 766
		f 4 1002 -1002 -1008 1009
		mu 0 4 634 767 768 635
		f 4 1011 -833 -1011 1012
		mu 0 4 769 770 771 772
		f 4 831 -1012 1014 1013
		mu 0 4 773 770 769 774
		f 4 1015 805 -1014 1016
		mu 0 4 775 776 773 774
		f 4 1010 -830 -1016 1017
		mu 0 4 777 627 626 778
		f 4 1019 -1013 -1019 1020
		mu 0 4 779 769 772 780
		f 4 -1015 -1020 1022 1021
		mu 0 4 774 769 779 781
		f 4 1023 -1017 -1022 1024
		mu 0 4 782 775 774 781
		f 4 1018 -1018 -1024 1025
		mu 0 4 783 777 778 784
		f 4 1027 -1021 -1027 1028
		mu 0 4 785 779 780 786
		f 4 -1023 -1028 1030 1029
		mu 0 4 781 779 785 787
		f 4 1031 -1025 -1030 1032
		mu 0 4 788 782 781 787
		f 4 1026 -1026 -1032 1033
		mu 0 4 789 783 784 790
		f 4 1035 -1029 -1035 1036
		mu 0 4 791 785 786 792
		f 4 -1031 -1036 1038 1037
		mu 0 4 787 785 791 793
		f 4 1039 -1033 -1038 1040
		mu 0 4 794 788 787 793
		f 4 1034 -1034 -1040 1041
		mu 0 4 795 789 790 796
		f 4 1043 -1037 -1043 1044
		mu 0 4 574 791 792 575
		f 4 -1039 -1044 1046 1045
		mu 0 4 793 791 574 601
		f 4 1047 -1041 -1046 1048
		mu 0 4 600 794 793 601
		f 4 1042 -1042 -1048 1049
		mu 0 4 624 795 796 625;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".usz" 9.95073;
	setAttr ".bw" 2.921533;
	setAttr ".ns" 0.329599;
parent -s -nc -r -add "|group1|polySurface3|polySurfaceShape6" "polySurface10" ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 0\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 0\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 26 100 -ps 2 74 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 0\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 0\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -336.90476190476193 -228.57142857142856 ;
	setAttr ".vh" -type "double2" 336.90476190476193 230.95238095238099 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 128 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 396.66665649414062;
	setAttr ".hyp[2].y" -90.476188659667969;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 2.3809523582458496;
	setAttr ".hyp[3].y" -1.1904761791229248;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".hyp[118].nvs" 1920;
	setAttr ".hyp[119].nvs" 1920;
	setAttr ".hyp[120].nvs" 1920;
	setAttr ".hyp[121].nvs" 1920;
	setAttr ".hyp[122].nvs" 1920;
	setAttr ".hyp[123].nvs" 1920;
	setAttr ".hyp[124].nvs" 1920;
	setAttr ".hyp[125].nvs" 1920;
	setAttr ".hyp[126].nvs" 1920;
	setAttr ".hyp[127].nvs" 1920;
	setAttr ".anf" yes;
createNode HIKCharacterNode -n "Character1";
	setAttr ".ReferenceTz" -0.053975402786643784;
	setAttr ".ReferenceMinRLimitx" -45;
	setAttr ".ReferenceMinRLimity" -45;
	setAttr ".ReferenceMinRLimitz" -45;
	setAttr ".ReferenceMaxRLimitx" 45;
	setAttr ".ReferenceMaxRLimity" 45;
	setAttr ".ReferenceMaxRLimitz" 45;
	setAttr ".HipsTy" 0.46311460752525702;
	setAttr ".HipsTz" -0.079577002337712477;
	setAttr ".HipsMinRLimitx" -45;
	setAttr ".HipsMinRLimity" -45;
	setAttr ".HipsMinRLimitz" -45;
	setAttr ".HipsMaxRLimitx" 45;
	setAttr ".HipsMaxRLimity" 45;
	setAttr ".HipsMaxRLimitz" 45;
	setAttr ".LeftUpLegTx" 0.14883236860324839;
	setAttr ".LeftUpLegTy" 0.43407731950309614;
	setAttr ".LeftUpLegTz" -0.034260211807780189;
	setAttr ".LeftUpLegMinRLimitx" -45;
	setAttr ".LeftUpLegMinRLimity" -45;
	setAttr ".LeftUpLegMinRLimitz" -45;
	setAttr ".LeftUpLegMaxRLimitx" 45;
	setAttr ".LeftUpLegMaxRLimity" 45;
	setAttr ".LeftUpLegMaxRLimitz" 45;
	setAttr ".LeftLegTx" 0.14883236860324839;
	setAttr ".LeftLegTy" 0.22623775912656163;
	setAttr ".LeftLegTz" -0.034260211807780189;
	setAttr ".LeftLegMinRLimitx" -45;
	setAttr ".LeftLegMinRLimity" -45;
	setAttr ".LeftLegMinRLimitz" -45;
	setAttr ".LeftLegMaxRLimitx" 45;
	setAttr ".LeftLegMaxRLimity" 45;
	setAttr ".LeftLegMaxRLimitz" 45;
	setAttr ".LeftFootTx" 0.14883236860324839;
	setAttr ".LeftFootTy" 0.037745676054161958;
	setAttr ".LeftFootTz" -0.061068847280243144;
	setAttr ".LeftFootMinRLimitx" -45;
	setAttr ".LeftFootMinRLimity" -45;
	setAttr ".LeftFootMinRLimitz" -45;
	setAttr ".LeftFootMaxRLimitx" 45;
	setAttr ".LeftFootMaxRLimity" 45;
	setAttr ".LeftFootMaxRLimitz" 45;
	setAttr ".RightUpLegTx" -0.14883236860324839;
	setAttr ".RightUpLegTy" 0.43407731950309614;
	setAttr ".RightUpLegTz" -0.034260211807780189;
	setAttr ".RightUpLegMinRLimitx" -45;
	setAttr ".RightUpLegMinRLimity" -45;
	setAttr ".RightUpLegMinRLimitz" -45;
	setAttr ".RightUpLegMaxRLimitx" 45;
	setAttr ".RightUpLegMaxRLimity" 45;
	setAttr ".RightUpLegMaxRLimitz" 45;
	setAttr ".RightLegTx" -0.14883238381284838;
	setAttr ".RightLegTy" 0.22623775912656163;
	setAttr ".RightLegTz" -0.034257753273380188;
	setAttr ".RightLegMinRLimitx" -45;
	setAttr ".RightLegMinRLimity" -45;
	setAttr ".RightLegMinRLimitz" -45;
	setAttr ".RightLegMaxRLimitx" 45;
	setAttr ".RightLegMaxRLimity" 45;
	setAttr ".RightLegMaxRLimitz" 45;
	setAttr ".RightFootTx" -0.14883237866644838;
	setAttr ".RightFootTy" 0.037745676072686585;
	setAttr ".RightFootTz" -0.061066388745843143;
	setAttr ".RightFootMinRLimitx" -45;
	setAttr ".RightFootMinRLimity" -45;
	setAttr ".RightFootMinRLimitz" -45;
	setAttr ".RightFootMaxRLimitx" 45;
	setAttr ".RightFootMaxRLimity" 45;
	setAttr ".RightFootMaxRLimitz" 45;
	setAttr ".SpineTy" 0.59250075719660633;
	setAttr ".SpineTz" -0.079577002337712477;
	setAttr ".SpineMinRLimitx" -45;
	setAttr ".SpineMinRLimity" -45;
	setAttr ".SpineMinRLimitz" -45;
	setAttr ".SpineMaxRLimitx" 45;
	setAttr ".SpineMaxRLimity" 45;
	setAttr ".SpineMaxRLimitz" 45;
	setAttr ".LeftArmTx" 0.23735999925564835;
	setAttr ".LeftArmTy" 0.8424308147127888;
	setAttr ".LeftArmTz" -0.079577002337712477;
	setAttr ".LeftArmMinRLimitx" -45;
	setAttr ".LeftArmMinRLimity" -45;
	setAttr ".LeftArmMinRLimitz" -45;
	setAttr ".LeftArmMaxRLimitx" 45;
	setAttr ".LeftArmMaxRLimity" 45;
	setAttr ".LeftArmMaxRLimitz" 45;
	setAttr ".LeftForeArmTx" 0.51712065696038412;
	setAttr ".LeftForeArmTy" 0.8424308147127888;
	setAttr ".LeftForeArmTz" -0.079577002337712477;
	setAttr ".LeftForeArmMinRLimitx" -45;
	setAttr ".LeftForeArmMinRLimity" -45;
	setAttr ".LeftForeArmMinRLimitz" -45;
	setAttr ".LeftForeArmMaxRLimitx" 45;
	setAttr ".LeftForeArmMaxRLimity" 45;
	setAttr ".LeftForeArmMaxRLimitz" 45;
	setAttr ".LeftHandTx" 0.66662468223238402;
	setAttr ".LeftHandTy" 0.8424308147127888;
	setAttr ".LeftHandTz" -0.079577002337712477;
	setAttr ".LeftHandMinRLimitx" -45;
	setAttr ".LeftHandMinRLimity" -45;
	setAttr ".LeftHandMinRLimitz" -45;
	setAttr ".LeftHandMaxRLimitx" 45;
	setAttr ".LeftHandMaxRLimity" 45;
	setAttr ".LeftHandMaxRLimitz" 45;
	setAttr ".RightArmTx" -0.23736011392504661;
	setAttr ".RightArmTy" 0.84243218460579772;
	setAttr ".RightArmTz" -0.079577002337712477;
	setAttr ".RightArmMinRLimitx" -45;
	setAttr ".RightArmMinRLimity" -45;
	setAttr ".RightArmMinRLimitz" -45;
	setAttr ".RightArmMaxRLimitx" 45;
	setAttr ".RightArmMaxRLimity" 45;
	setAttr ".RightArmMaxRLimitz" 45;
	setAttr ".RightForeArmTx" -0.39027146412504654;
	setAttr ".RightForeArmTy" 0.84243218460579772;
	setAttr ".RightForeArmTz" -0.079577002337712477;
	setAttr ".RightForeArmMinRLimitx" -45;
	setAttr ".RightForeArmMinRLimity" -45;
	setAttr ".RightForeArmMinRLimitz" -45;
	setAttr ".RightForeArmMaxRLimitx" 45;
	setAttr ".RightForeArmMaxRLimity" 45;
	setAttr ".RightForeArmMaxRLimitz" 45;
	setAttr ".RightHandTx" -0.53977459754104662;
	setAttr ".RightHandTy" 0.84243217858530794;
	setAttr ".RightHandTz" -0.079577002337712477;
	setAttr ".RightHandMinRLimitx" -45;
	setAttr ".RightHandMinRLimity" -45;
	setAttr ".RightHandMinRLimitz" -45;
	setAttr ".RightHandMaxRLimitx" 45;
	setAttr ".RightHandMaxRLimity" 45;
	setAttr ".RightHandMaxRLimitz" 45;
	setAttr ".HeadTy" 1.306437467245126;
	setAttr ".HeadTz" -0.098364199693498799;
	setAttr ".HeadMinRLimitx" -45;
	setAttr ".HeadMinRLimity" -45;
	setAttr ".HeadMinRLimitz" -45;
	setAttr ".HeadMaxRLimitx" 45;
	setAttr ".HeadMaxRLimity" 45;
	setAttr ".HeadMaxRLimitz" 45;
	setAttr ".LeftToeBaseTx" 0.14883241579444839;
	setAttr ".LeftToeBaseTy" 0.0087439703638133408;
	setAttr ".LeftToeBaseTz" 0.20617328034075064;
	setAttr ".LeftToeBaseMinRLimitx" -45;
	setAttr ".LeftToeBaseMinRLimity" -45;
	setAttr ".LeftToeBaseMinRLimitz" -45;
	setAttr ".LeftToeBaseMaxRLimitx" 45;
	setAttr ".LeftToeBaseMaxRLimity" 45;
	setAttr ".LeftToeBaseMaxRLimitz" 45;
	setAttr ".RightToeBaseTx" -0.14883845183109867;
	setAttr ".RightToeBaseTy" 0.0087439704425428325;
	setAttr ".RightToeBaseTz" 0.20617589660475055;
	setAttr ".RightToeBaseSx" 0.99999999999999967;
	setAttr ".RightToeBaseSz" 0.99999999999999967;
	setAttr ".RightToeBaseJointOrienty" 1.4622811973002423e-006;
	setAttr ".RightToeBaseMinRLimitx" -45;
	setAttr ".RightToeBaseMinRLimity" -45;
	setAttr ".RightToeBaseMinRLimitz" -45;
	setAttr ".RightToeBaseMaxRLimitx" 45;
	setAttr ".RightToeBaseMaxRLimity" 45;
	setAttr ".RightToeBaseMaxRLimitz" 45;
	setAttr ".LeftShoulderTx" 0.17739939593484835;
	setAttr ".LeftShoulderTy" 0.84243017839331813;
	setAttr ".LeftShoulderTz" -0.079577002337712477;
	setAttr ".LeftShoulderMinRLimitx" -45;
	setAttr ".LeftShoulderMinRLimity" -45;
	setAttr ".LeftShoulderMinRLimitz" -45;
	setAttr ".LeftShoulderMaxRLimitx" 45;
	setAttr ".LeftShoulderMaxRLimity" 45;
	setAttr ".LeftShoulderMaxRLimitz" 45;
	setAttr ".RightShoulderTx" -0.17739937175784662;
	setAttr ".RightShoulderTy" 0.84243017839331813;
	setAttr ".RightShoulderTz" -0.079577002337712477;
	setAttr ".RightShoulderMinRLimitx" -45;
	setAttr ".RightShoulderMinRLimity" -45;
	setAttr ".RightShoulderMinRLimitz" -45;
	setAttr ".RightShoulderMaxRLimitx" 45;
	setAttr ".RightShoulderMaxRLimity" 45;
	setAttr ".RightShoulderMaxRLimitz" 45;
	setAttr ".NeckTy" 0.92205088175108962;
	setAttr ".NeckTz" -0.098364199693498799;
	setAttr ".NeckMinRLimitx" -45;
	setAttr ".NeckMinRLimity" -45;
	setAttr ".NeckMinRLimitz" -45;
	setAttr ".NeckMaxRLimitx" 45;
	setAttr ".NeckMaxRLimity" 45;
	setAttr ".NeckMaxRLimitz" 45;
	setAttr ".LeftFingerBaseTx" 0.45091056326399998;
	setAttr ".LeftFingerBaseTy" 0.82370161775999995;
	setAttr ".LeftFingerBaseTz" 0.0073062326455999999;
	setAttr ".LeftFingerBaseRy" -6.2191910648259641e-005;
	setAttr ".RightFingerBaseTx" -0.45090990940800002;
	setAttr ".RightFingerBaseTy" 0.82370328207999999;
	setAttr ".RightFingerBaseTz" 0.0073105665751999997;
	setAttr ".RightFingerBaseRy" -0.034907713150901909;
	setAttr ".Spine1Ty" 0.75727581947384803;
	setAttr ".Spine1Tz" -0.079577002337712477;
	setAttr ".Spine1MinRLimitx" -45;
	setAttr ".Spine1MinRLimity" -45;
	setAttr ".Spine1MinRLimitz" -45;
	setAttr ".Spine1MaxRLimitx" 45;
	setAttr ".Spine1MaxRLimity" 45;
	setAttr ".Spine1MaxRLimitz" 45;
	setAttr ".Spine2Ty" 0.74106666666666676;
	setAttr ".Spine2Tz" -0.053975402786643784;
	setAttr ".Spine2MinRLimitx" -45;
	setAttr ".Spine2MinRLimity" -45;
	setAttr ".Spine2MinRLimitz" -45;
	setAttr ".Spine2MaxRLimitx" 45;
	setAttr ".Spine2MaxRLimity" 45;
	setAttr ".Spine2MaxRLimitz" 45;
	setAttr ".Spine3Ty" 0.6664;
	setAttr ".Spine4Ty" 0.68880000000000008;
	setAttr ".Spine5Ty" 0.71119999999999994;
	setAttr ".Spine6Ty" 0.7336;
	setAttr ".Spine7Ty" 0.756;
	setAttr ".Spine8Ty" 0.7784;
	setAttr ".Spine9Ty" 0.8008;
	setAttr ".Neck1Ty" 0.8232;
	setAttr ".Neck2Ty" 0.8344;
	setAttr ".Neck3Ty" 0.8456;
	setAttr ".Neck4Ty" 0.8568;
	setAttr ".Neck5Ty" 0.868;
	setAttr ".Neck6Ty" 0.8792;
	setAttr ".Neck7Ty" 0.8904;
	setAttr ".Neck8Ty" 0.9016;
	setAttr ".Neck9Ty" 0.9128;
	setAttr ".LeftUpLegRollTx" 0.14883236860324839;
	setAttr ".LeftUpLegRollTy" 0.33015753931482894;
	setAttr ".LeftUpLegRollTz" -0.034260211807780189;
	setAttr ".LeftLegRollTx" 0.14883236860324839;
	setAttr ".LeftLegRollTy" 0.1319917175903618;
	setAttr ".LeftLegRollTz" -0.047664529544011666;
	setAttr ".RightUpLegRollTx" -0.1488323762080484;
	setAttr ".RightUpLegRollTy" 0.33015753931482894;
	setAttr ".RightUpLegRollTz" -0.034258982540580185;
	setAttr ".RightLegRollTx" -0.14883238123964837;
	setAttr ".RightLegRollTy" 0.13199171759962411;
	setAttr ".RightLegRollTz" -0.047662071009611666;
	setAttr ".LeftArmRollTx" 0.37724032810801622;
	setAttr ".LeftArmRollTy" 0.8424308147127888;
	setAttr ".LeftArmRollTz" -0.079577002337712477;
	setAttr ".LeftForeArmRollTx" 0.59187266959638407;
	setAttr ".LeftForeArmRollTy" 0.8424308147127888;
	setAttr ".LeftForeArmRollTz" -0.079577002337712477;
	setAttr ".RightArmRollTx" -0.31381578902504659;
	setAttr ".RightArmRollTy" 0.84243218460579772;
	setAttr ".RightArmRollTz" -0.079577002337712477;
	setAttr ".RightForeArmRollTx" -0.46502303083304658;
	setAttr ".RightForeArmRollTy" 0.842432181595553;
	setAttr ".RightForeArmRollTz" -0.079577002337712477;
	setAttr ".HipsTranslationTy" 0.55999999999999994;
	setAttr ".LeftHandThumb1Tx" 0.69097772059238394;
	setAttr ".LeftHandThumb1Ty" 0.83873283299383439;
	setAttr ".LeftHandThumb1Tz" -0.055595372122512483;
	setAttr ".LeftHandThumb1MinRLimitx" -45;
	setAttr ".LeftHandThumb1MinRLimity" -45;
	setAttr ".LeftHandThumb1MinRLimitz" -45;
	setAttr ".LeftHandThumb1MaxRLimitx" 45;
	setAttr ".LeftHandThumb1MaxRLimity" 45;
	setAttr ".LeftHandThumb1MaxRLimitz" 45;
	setAttr ".LeftHandThumb2Tx" 0.70504822425638403;
	setAttr ".LeftHandThumb2Ty" 0.83625007836157905;
	setAttr ".LeftHandThumb2Tz" -0.051633627908112469;
	setAttr ".LeftHandThumb2MinRLimitx" -45;
	setAttr ".LeftHandThumb2MinRLimity" -45;
	setAttr ".LeftHandThumb2MinRLimitz" -45;
	setAttr ".LeftHandThumb2MaxRLimitx" 45;
	setAttr ".LeftHandThumb2MaxRLimity" 45;
	setAttr ".LeftHandThumb2MaxRLimitz" 45;
	setAttr ".LeftHandThumb3Tx" 0.71928981055238406;
	setAttr ".LeftHandThumb3Ty" 0.83625001723045089;
	setAttr ".LeftHandThumb3Tz" -0.051633575592912477;
	setAttr ".LeftHandThumb3MinRLimitx" -45;
	setAttr ".LeftHandThumb3MinRLimity" -45;
	setAttr ".LeftHandThumb3MinRLimitz" -45;
	setAttr ".LeftHandThumb3MaxRLimitx" 45;
	setAttr ".LeftHandThumb3MaxRLimity" 45;
	setAttr ".LeftHandThumb3MaxRLimitz" 45;
	setAttr ".LeftHandThumb4Tx" 0.73422358893638395;
	setAttr ".LeftHandThumb4Ty" 0.83625003066077441;
	setAttr ".LeftHandThumb4Tz" -0.051633621574512477;
	setAttr ".LeftHandThumb4MinRLimitx" -45;
	setAttr ".LeftHandThumb4MinRLimity" -45;
	setAttr ".LeftHandThumb4MinRLimitz" -45;
	setAttr ".LeftHandThumb4MaxRLimitx" 45;
	setAttr ".LeftHandThumb4MaxRLimity" 45;
	setAttr ".LeftHandThumb4MaxRLimitz" 45;
	setAttr ".LeftHandIndex1Tx" 0.71602775186438405;
	setAttr ".LeftHandIndex1Ty" 0.84335578981348203;
	setAttr ".LeftHandIndex1Tz" -0.060135653608112474;
	setAttr ".LeftHandIndex1MinRLimitx" -45;
	setAttr ".LeftHandIndex1MinRLimity" -45;
	setAttr ".LeftHandIndex1MinRLimitz" -45;
	setAttr ".LeftHandIndex1MaxRLimitx" 45;
	setAttr ".LeftHandIndex1MaxRLimity" 45;
	setAttr ".LeftHandIndex1MaxRLimitz" 45;
	setAttr ".LeftHandIndex2Tx" 0.73967517762438395;
	setAttr ".LeftHandIndex2Ty" 0.84335568746515377;
	setAttr ".LeftHandIndex2Tz" -0.059311339101712469;
	setAttr ".LeftHandIndex2Ry" 0.00060923483500415518;
	setAttr ".LeftHandIndex2JointOrienty" 0.00060923483500415518;
	setAttr ".LeftHandIndex2MinRLimitx" -45;
	setAttr ".LeftHandIndex2MinRLimity" -45;
	setAttr ".LeftHandIndex2MinRLimitz" -45;
	setAttr ".LeftHandIndex2MaxRLimitx" 45;
	setAttr ".LeftHandIndex2MaxRLimity" 45;
	setAttr ".LeftHandIndex2MaxRLimitz" 45;
	setAttr ".LeftHandIndex3Tx" 0.75452820014438382;
	setAttr ".LeftHandIndex3Ty" 0.84335562355533844;
	setAttr ".LeftHandIndex3Tz" -0.058793585613712493;
	setAttr ".LeftHandIndex3Ry" -0.0036554090100249345;
	setAttr ".LeftHandIndex3JointOrienty" -0.0042646438450290895;
	setAttr ".LeftHandIndex3MinRLimitx" -45;
	setAttr ".LeftHandIndex3MinRLimity" -45;
	setAttr ".LeftHandIndex3MinRLimitz" -45;
	setAttr ".LeftHandIndex3MaxRLimitx" 45;
	setAttr ".LeftHandIndex3MaxRLimity" 45;
	setAttr ".LeftHandIndex3MaxRLimitz" 45;
	setAttr ".LeftHandIndex4Tx" 0.76548759183238402;
	setAttr ".LeftHandIndex4Ty" 0.84335557631764813;
	setAttr ".LeftHandIndex4Tz" -0.058411559773712485;
	setAttr ".LeftHandIndex4JointOrienty" 0.0091385225250623352;
	setAttr ".LeftHandIndex4MinRLimitx" -45;
	setAttr ".LeftHandIndex4MinRLimity" -45;
	setAttr ".LeftHandIndex4MinRLimitz" -45;
	setAttr ".LeftHandIndex4MaxRLimitx" 45;
	setAttr ".LeftHandIndex4MaxRLimity" 45;
	setAttr ".LeftHandIndex4MaxRLimitz" 45;
	setAttr ".LeftHandMiddle1Tx" 0.71596000664838411;
	setAttr ".LeftHandMiddle1Ty" 0.84475051178599503;
	setAttr ".LeftHandMiddle1Tz" -0.072270769804112484;
	setAttr ".LeftHandMiddle1MinRLimitx" -45;
	setAttr ".LeftHandMiddle1MinRLimity" -45;
	setAttr ".LeftHandMiddle1MinRLimitz" -45;
	setAttr ".LeftHandMiddle1MaxRLimitx" 45;
	setAttr ".LeftHandMiddle1MaxRLimity" 45;
	setAttr ".LeftHandMiddle1MaxRLimitz" 45;
	setAttr ".LeftHandMiddle2Tx" 0.74319421605638403;
	setAttr ".LeftHandMiddle2Ty" 0.84475051178599503;
	setAttr ".LeftHandMiddle2Tz" -0.072269076056112491;
	setAttr ".LeftHandMiddle2MinRLimitx" -45;
	setAttr ".LeftHandMiddle2MinRLimity" -45;
	setAttr ".LeftHandMiddle2MinRLimitz" -45;
	setAttr ".LeftHandMiddle2MaxRLimitx" 45;
	setAttr ".LeftHandMiddle2MaxRLimity" 45;
	setAttr ".LeftHandMiddle2MaxRLimitz" 45;
	setAttr ".LeftHandMiddle3Tx" 0.758679541072384;
	setAttr ".LeftHandMiddle3Ty" 0.84475051178599503;
	setAttr ".LeftHandMiddle3Tz" -0.072268114071312492;
	setAttr ".LeftHandMiddle3MinRLimitx" -45;
	setAttr ".LeftHandMiddle3MinRLimity" -45;
	setAttr ".LeftHandMiddle3MinRLimitz" -45;
	setAttr ".LeftHandMiddle3MaxRLimitx" 45;
	setAttr ".LeftHandMiddle3MaxRLimity" 45;
	setAttr ".LeftHandMiddle3MaxRLimitz" 45;
	setAttr ".LeftHandMiddle4Tx" 0.76991108116838403;
	setAttr ".LeftHandMiddle4Ty" 0.84475051178599503;
	setAttr ".LeftHandMiddle4Tz" -0.072267421933712495;
	setAttr ".LeftHandMiddle4MinRLimitx" -45;
	setAttr ".LeftHandMiddle4MinRLimity" -45;
	setAttr ".LeftHandMiddle4MinRLimitz" -45;
	setAttr ".LeftHandMiddle4MaxRLimitx" 45;
	setAttr ".LeftHandMiddle4MaxRLimity" 45;
	setAttr ".LeftHandMiddle4MaxRLimitz" 45;
	setAttr ".LeftHandRing1Tx" 0.71642973705638402;
	setAttr ".LeftHandRing1Ty" 0.84419027787724032;
	setAttr ".LeftHandRing1Tz" -0.084018692228112479;
	setAttr ".LeftHandRing1MinRLimitx" -45;
	setAttr ".LeftHandRing1MinRLimity" -45;
	setAttr ".LeftHandRing1MinRLimitz" -45;
	setAttr ".LeftHandRing1MaxRLimitx" 45;
	setAttr ".LeftHandRing1MaxRLimity" 45;
	setAttr ".LeftHandRing1MaxRLimitz" 45;
	setAttr ".LeftHandRing2Tx" 0.74184118650438402;
	setAttr ".LeftHandRing2Ty" 0.84419027787724032;
	setAttr ".LeftHandRing2Tz" -0.084018691729712477;
	setAttr ".LeftHandRing2MinRLimitx" -45;
	setAttr ".LeftHandRing2MinRLimity" -45;
	setAttr ".LeftHandRing2MinRLimitz" -45;
	setAttr ".LeftHandRing2MaxRLimitx" 45;
	setAttr ".LeftHandRing2MaxRLimity" 45;
	setAttr ".LeftHandRing2MaxRLimitz" 45;
	setAttr ".LeftHandRing3Tx" 0.75474653132038405;
	setAttr ".LeftHandRing3Ty" 0.84419027787724032;
	setAttr ".LeftHandRing3Tz" -0.084018692384912469;
	setAttr ".LeftHandRing3MinRLimitx" -45;
	setAttr ".LeftHandRing3MinRLimity" -45;
	setAttr ".LeftHandRing3MinRLimitz" -45;
	setAttr ".LeftHandRing3MaxRLimitx" 45;
	setAttr ".LeftHandRing3MaxRLimity" 45;
	setAttr ".LeftHandRing3MaxRLimitz" 45;
	setAttr ".LeftHandRing4Tx" 0.76551727653638402;
	setAttr ".LeftHandRing4Ty" 0.84419027787724032;
	setAttr ".LeftHandRing4Tz" -0.084018696960112466;
	setAttr ".LeftHandRing4MinRLimitx" -45;
	setAttr ".LeftHandRing4MinRLimity" -45;
	setAttr ".LeftHandRing4MinRLimitz" -45;
	setAttr ".LeftHandRing4MaxRLimitx" 45;
	setAttr ".LeftHandRing4MaxRLimity" 45;
	setAttr ".LeftHandRing4MaxRLimitz" 45;
	setAttr ".LeftHandPinky1Tx" 0.45131597744799989;
	setAttr ".LeftHandPinky1Ty" 0.81914368031999996;
	setAttr ".LeftHandPinky1Tz" -0.067921398990643783;
	setAttr ".LeftHandPinky1MinRLimitx" -45;
	setAttr ".LeftHandPinky1MinRLimity" -45;
	setAttr ".LeftHandPinky1MinRLimitz" -45;
	setAttr ".LeftHandPinky1MaxRLimitx" 45;
	setAttr ".LeftHandPinky1MaxRLimity" 45;
	setAttr ".LeftHandPinky1MaxRLimitz" 45;
	setAttr ".LeftHandPinky2Tx" 0.46836293369600002;
	setAttr ".LeftHandPinky2Ty" 0.81914390767999989;
	setAttr ".LeftHandPinky2Tz" -0.067921398990643783;
	setAttr ".LeftHandPinky2MinRLimitx" -45;
	setAttr ".LeftHandPinky2MinRLimity" -45;
	setAttr ".LeftHandPinky2MinRLimitz" -45;
	setAttr ".LeftHandPinky2MaxRLimitx" 45;
	setAttr ".LeftHandPinky2MaxRLimity" 45;
	setAttr ".LeftHandPinky2MaxRLimitz" 45;
	setAttr ".LeftHandPinky3Tx" 0.47942014203999994;
	setAttr ".LeftHandPinky3Ty" 0.81914405495999998;
	setAttr ".LeftHandPinky3Tz" -0.067921399791443779;
	setAttr ".LeftHandPinky3MinRLimitx" -45;
	setAttr ".LeftHandPinky3MinRLimity" -45;
	setAttr ".LeftHandPinky3MinRLimitz" -45;
	setAttr ".LeftHandPinky3MaxRLimitx" 45;
	setAttr ".LeftHandPinky3MaxRLimity" 45;
	setAttr ".LeftHandPinky3MaxRLimitz" 45;
	setAttr ".LeftHandPinky4Tx" 0.48875318408000001;
	setAttr ".LeftHandPinky4Ty" 0.81914417928000016;
	setAttr ".LeftHandPinky4Tz" -0.067921395361843787;
	setAttr ".LeftHandPinky4MinRLimitx" -45;
	setAttr ".LeftHandPinky4MinRLimity" -45;
	setAttr ".LeftHandPinky4MinRLimitz" -45;
	setAttr ".LeftHandPinky4MaxRLimitx" 45;
	setAttr ".LeftHandPinky4MaxRLimity" 45;
	setAttr ".LeftHandPinky4MaxRLimitz" 45;
	setAttr ".LeftHandExtraFinger1Tx" 0.45131597744799989;
	setAttr ".LeftHandExtraFinger1Ty" 0.82201511504000002;
	setAttr ".LeftHandExtraFinger1Tz" -0.025145996204000001;
	setAttr ".LeftHandExtraFinger1Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger1Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger2Tx" 0.46276293369600002;
	setAttr ".LeftHandExtraFinger2Ty" 0.82201499128000011;
	setAttr ".LeftHandExtraFinger2Tz" -0.025145996204000001;
	setAttr ".LeftHandExtraFinger2Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger2Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger3Tx" 0.47382014203999995;
	setAttr ".LeftHandExtraFinger3Ty" 0.82201491400000004;
	setAttr ".LeftHandExtraFinger3Tz" -0.025145997004799997;
	setAttr ".LeftHandExtraFinger3Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger3Rz" -5.2244860362123464e-006;
	setAttr ".LeftHandExtraFinger4Tx" 0.48315318408000002;
	setAttr ".LeftHandExtraFinger4Ty" 0.82201485687999998;
	setAttr ".LeftHandExtraFinger4Tz" -0.025145992575200001;
	setAttr ".LeftHandExtraFinger4Ry" -0.03490658477808721;
	setAttr ".LeftHandExtraFinger4Rz" -5.2244860362123464e-006;
	setAttr ".RightHandThumb1Tx" -0.56412552996504661;
	setAttr ".RightHandThumb1Ty" 0.83873421724339614;
	setAttr ".RightHandThumb1Tz" -0.055593239804912473;
	setAttr ".RightHandThumb1MinRLimitx" -45;
	setAttr ".RightHandThumb1MinRLimity" -45;
	setAttr ".RightHandThumb1MinRLimitz" -45;
	setAttr ".RightHandThumb1MaxRLimitx" 45;
	setAttr ".RightHandThumb1MaxRLimity" 45;
	setAttr ".RightHandThumb1MaxRLimitz" 45;
	setAttr ".RightHandThumb2Tx" -0.57819568402104649;
	setAttr ".RightHandThumb2Ty" 0.83625146492671409;
	setAttr ".RightHandThumb2Tz" -0.051630250564912473;
	setAttr ".RightHandThumb2MinRLimitx" -45;
	setAttr ".RightHandThumb2MinRLimity" -45;
	setAttr ".RightHandThumb2MinRLimitz" -45;
	setAttr ".RightHandThumb2MaxRLimitx" 45;
	setAttr ".RightHandThumb2MaxRLimity" 45;
	setAttr ".RightHandThumb2MaxRLimitz" 45;
	setAttr ".RightHandThumb3Tx" -0.59242858443704649;
	setAttr ".RightHandThumb3Ty" 0.83625158904142893;
	setAttr ".RightHandThumb3Tz" -0.05113285680091248;
	setAttr ".RightHandThumb3MinRLimitx" -45;
	setAttr ".RightHandThumb3MinRLimity" -45;
	setAttr ".RightHandThumb3MinRLimitz" -45;
	setAttr ".RightHandThumb3MaxRLimitx" 45;
	setAttr ".RightHandThumb3MaxRLimity" 45;
	setAttr ".RightHandThumb3MaxRLimitz" 45;
	setAttr ".RightHandThumb4Tx" -0.60735325509304638;
	setAttr ".RightHandThumb4Ty" 0.83625167379140208;
	setAttr ".RightHandThumb4Tz" -0.050611287825712475;
	setAttr ".RightHandThumb4MinRLimitx" -45;
	setAttr ".RightHandThumb4MinRLimity" -45;
	setAttr ".RightHandThumb4MinRLimitz" -45;
	setAttr ".RightHandThumb4MaxRLimitx" 45;
	setAttr ".RightHandThumb4MaxRLimity" 45;
	setAttr ".RightHandThumb4MaxRLimitz" 45;
	setAttr ".RightHandIndex1Tx" -0.58917596443704656;
	setAttr ".RightHandIndex1Ty" 0.84335717452615877;
	setAttr ".RightHandIndex1Tz" -0.06013131428011248;
	setAttr ".RightHandIndex1MinRLimitx" -45;
	setAttr ".RightHandIndex1MinRLimity" -45;
	setAttr ".RightHandIndex1MinRLimitz" -45;
	setAttr ".RightHandIndex1MaxRLimitx" 45;
	setAttr ".RightHandIndex1MaxRLimity" 45;
	setAttr ".RightHandIndex1MaxRLimitz" 45;
	setAttr ".RightHandIndex2Tx" -0.6128233656690466;
	setAttr ".RightHandIndex2Ty" 0.84335717313681458;
	setAttr ".RightHandIndex2Tz" -0.060956484292912477;
	setAttr ".RightHandIndex2Ry" 0.00060925453552654676;
	setAttr ".RightHandIndex2Sx" 0.99999999999999989;
	setAttr ".RightHandIndex2Sz" 0.99999999999999989;
	setAttr ".RightHandIndex2JointOrienty" 0.00060925453552654666;
	setAttr ".RightHandIndex2MinRLimitx" -45;
	setAttr ".RightHandIndex2MinRLimity" -45;
	setAttr ".RightHandIndex2MinRLimitz" -45;
	setAttr ".RightHandIndex2MaxRLimitx" 45;
	setAttr ".RightHandIndex2MaxRLimity" 45;
	setAttr ".RightHandIndex2MaxRLimitz" 45;
	setAttr ".RightHandIndex3Tx" -0.62767637334904691;
	setAttr ".RightHandIndex3Ty" 0.84335717174746971;
	setAttr ".RightHandIndex3Tz" -0.061474776282512453;
	setAttr ".RightHandIndex3Ry" -0.0036555272131592797;
	setAttr ".RightHandIndex3Sx" 0.99999999999999989;
	setAttr ".RightHandIndex3Sz" 0.99999999999999989;
	setAttr ".RightHandIndex3JointOrienty" -0.0042647817486858274;
	setAttr ".RightHandIndex3MinRLimitx" -45;
	setAttr ".RightHandIndex3MinRLimity" -45;
	setAttr ".RightHandIndex3MinRLimitz" -45;
	setAttr ".RightHandIndex3MaxRLimitx" 45;
	setAttr ".RightHandIndex3MaxRLimity" 45;
	setAttr ".RightHandIndex3MaxRLimitz" 45;
	setAttr ".RightHandIndex4Tx" -0.63863575378104687;
	setAttr ".RightHandIndex4Ty" 0.84335717128435583;
	setAttr ".RightHandIndex4Tz" -0.061857201133712472;
	setAttr ".RightHandIndex4JointOrienty" 0.0091388180328982032;
	setAttr ".RightHandIndex4MinRLimitx" -45;
	setAttr ".RightHandIndex4MinRLimity" -45;
	setAttr ".RightHandIndex4MinRLimitz" -45;
	setAttr ".RightHandIndex4MaxRLimitx" 45;
	setAttr ".RightHandIndex4MaxRLimity" 45;
	setAttr ".RightHandIndex4MaxRLimitz" 45;
	setAttr ".RightHandMiddle1Tx" -0.58910928730904644;
	setAttr ".RightHandMiddle1Ty" 0.84475188769949394;
	setAttr ".RightHandMiddle1Tz" -0.072266435146512487;
	setAttr ".RightHandMiddle1MinRLimitx" -45;
	setAttr ".RightHandMiddle1MinRLimity" -45;
	setAttr ".RightHandMiddle1MinRLimitz" -45;
	setAttr ".RightHandMiddle1MaxRLimitx" 45;
	setAttr ".RightHandMiddle1MaxRLimity" 45;
	setAttr ".RightHandMiddle1MaxRLimitz" 45;
	setAttr ".RightHandMiddle2Tx" -0.61632693645304648;
	setAttr ".RightHandMiddle2Ty" 0.84475188584703531;
	setAttr ".RightHandMiddle2Tz" -0.07321618815771247;
	setAttr ".RightHandMiddle2Ry" 0.00060925453552654676;
	setAttr ".RightHandMiddle2Sx" 0.99999999999999989;
	setAttr ".RightHandMiddle2Sz" 0.99999999999999989;
	setAttr ".RightHandMiddle2JointOrienty" 0.00060925453552654666;
	setAttr ".RightHandMiddle2MinRLimitx" -45;
	setAttr ".RightHandMiddle2MinRLimity" -45;
	setAttr ".RightHandMiddle2MinRLimitz" -45;
	setAttr ".RightHandMiddle2MaxRLimitx" 45;
	setAttr ".RightHandMiddle2MaxRLimity" 45;
	setAttr ".RightHandMiddle2MaxRLimitz" 45;
	setAttr ".RightHandMiddle3Tx" -0.63180284501304662;
	setAttr ".RightHandMiddle3Ty" 0.84475188492080511;
	setAttr ".RightHandMiddle3Tz" -0.073756216104912467;
	setAttr ".RightHandMiddle3Ry" -0.0036555272131592797;
	setAttr ".RightHandMiddle3Sx" 0.99999999999999989;
	setAttr ".RightHandMiddle3Sz" 0.99999999999999989;
	setAttr ".RightHandMiddle3JointOrienty" -0.0042647817486858274;
	setAttr ".RightHandMiddle3MinRLimitx" -45;
	setAttr ".RightHandMiddle3MinRLimity" -45;
	setAttr ".RightHandMiddle3MinRLimitz" -45;
	setAttr ".RightHandMiddle3MaxRLimitx" 45;
	setAttr ".RightHandMiddle3MaxRLimity" 45;
	setAttr ".RightHandMiddle3MaxRLimitz" 45;
	setAttr ".RightHandMiddle4Tx" -0.64302755602104678;
	setAttr ".RightHandMiddle4Ty" 0.84475188399457646;
	setAttr ".RightHandMiddle4Tz" -0.074147899564912453;
	setAttr ".RightHandMiddle4JointOrienty" 0.0091388180328982032;
	setAttr ".RightHandMiddle4MinRLimitx" -45;
	setAttr ".RightHandMiddle4MinRLimity" -45;
	setAttr ".RightHandMiddle4MinRLimitz" -45;
	setAttr ".RightHandMiddle4MaxRLimitx" 45;
	setAttr ".RightHandMiddle4MaxRLimity" 45;
	setAttr ".RightHandMiddle4MaxRLimitz" 45;
	setAttr ".RightHandRing1Tx" -0.58958005914904654;
	setAttr ".RightHandRing1Ty" 0.84419164499156163;
	setAttr ".RightHandRing1Tz" -0.084014312171312486;
	setAttr ".RightHandRing1MinRLimitx" -45;
	setAttr ".RightHandRing1MinRLimity" -45;
	setAttr ".RightHandRing1MinRLimitz" -45;
	setAttr ".RightHandRing1MaxRLimitx" 45;
	setAttr ".RightHandRing1MaxRLimity" 45;
	setAttr ".RightHandRing1MaxRLimitz" 45;
	setAttr ".RightHandRing2Tx" -0.61497605696504642;
	setAttr ".RightHandRing2Ty" 0.844191643139103;
	setAttr ".RightHandRing2Tz" -0.084900499134512475;
	setAttr ".RightHandRing2Ry" 0.00060925453552654676;
	setAttr ".RightHandRing2Sx" 0.99999999999999989;
	setAttr ".RightHandRing2Sz" 0.99999999999999989;
	setAttr ".RightHandRing2JointOrienty" 0.00060925453552654666;
	setAttr ".RightHandRing2MinRLimitx" -45;
	setAttr ".RightHandRing2MinRLimity" -45;
	setAttr ".RightHandRing2MinRLimitz" -45;
	setAttr ".RightHandRing2MaxRLimitx" 45;
	setAttr ".RightHandRing2MaxRLimity" 45;
	setAttr ".RightHandRing2MaxRLimitz" 45;
	setAttr ".RightHandRing3Tx" -0.62787355455704652;
	setAttr ".RightHandRing3Ty" 0.84419164221287279;
	setAttr ".RightHandRing3Tz" -0.085350554065712486;
	setAttr ".RightHandRing3Ry" -0.0036555272131592797;
	setAttr ".RightHandRing3Sx" 0.99999999999999989;
	setAttr ".RightHandRing3Sz" 0.99999999999999989;
	setAttr ".RightHandRing3JointOrienty" -0.0042647817486858274;
	setAttr ".RightHandRing3MinRLimitx" -45;
	setAttr ".RightHandRing3MinRLimity" -45;
	setAttr ".RightHandRing3MinRLimitz" -45;
	setAttr ".RightHandRing3MaxRLimitx" 45;
	setAttr ".RightHandRing3MaxRLimity" 45;
	setAttr ".RightHandRing3MaxRLimitz" 45;
	setAttr ".RightHandRing4Tx" -0.63863775090904651;
	setAttr ".RightHandRing4Ty" 0.84419164174975869;
	setAttr ".RightHandRing4Tz" -0.085726167995312463;
	setAttr ".RightHandRing4JointOrienty" 0.0091388180328982032;
	setAttr ".RightHandRing4MinRLimitx" -45;
	setAttr ".RightHandRing4MinRLimity" -45;
	setAttr ".RightHandRing4MinRLimitz" -45;
	setAttr ".RightHandRing4MaxRLimitx" 45;
	setAttr ".RightHandRing4MaxRLimity" 45;
	setAttr ".RightHandRing4MaxRLimitz" 45;
	setAttr ".RightHandPinky1Tx" -0.45131720127199998;
	setAttr ".RightHandPinky1Ty" 0.81914532504000004;
	setAttr ".RightHandPinky1Tz" -0.067917018273043778;
	setAttr ".RightHandPinky1MinRLimitx" -45;
	setAttr ".RightHandPinky1MinRLimity" -45;
	setAttr ".RightHandPinky1MinRLimitz" -45;
	setAttr ".RightHandPinky1MaxRLimitx" 45;
	setAttr ".RightHandPinky1MaxRLimity" 45;
	setAttr ".RightHandPinky1MaxRLimitz" 45;
	setAttr ".RightHandPinky2Tx" -0.46837447994399994;
	setAttr ".RightHandPinky2Ty" 0.81914495543999988;
	setAttr ".RightHandPinky2Tz" -0.068512227718643778;
	setAttr ".RightHandPinky2JointOrienty" 0.00060925453552654633;
	setAttr ".RightHandPinky2MinRLimitx" -45;
	setAttr ".RightHandPinky2MinRLimity" -45;
	setAttr ".RightHandPinky2MinRLimitz" -45;
	setAttr ".RightHandPinky2MaxRLimitx" 45;
	setAttr ".RightHandPinky2MaxRLimity" 45;
	setAttr ".RightHandPinky2MaxRLimitz" 45;
	setAttr ".RightHandPinky3Tx" -0.47943838392800031;
	setAttr ".RightHandPinky3Ty" 0.81914471575999925;
	setAttr ".RightHandPinky3Tz" -0.068898299838643776;
	setAttr ".RightHandPinky3JointOrienty" -0.0024370181421061862;
	setAttr ".RightHandPinky3MinRLimitx" -45;
	setAttr ".RightHandPinky3MinRLimity" -45;
	setAttr ".RightHandPinky3MinRLimitz" -45;
	setAttr ".RightHandPinky3MaxRLimitx" 45;
	setAttr ".RightHandPinky3MaxRLimity" 45;
	setAttr ".RightHandPinky3MaxRLimitz" 45;
	setAttr ".RightHandPinky4Tx" -0.48877707748799998;
	setAttr ".RightHandPinky4Ty" 0.81914451304000002;
	setAttr ".RightHandPinky4Tz" -0.069224171225043776;
	setAttr ".RightHandPinky4JointOrienty" 0.0036555272131592797;
	setAttr ".RightHandPinky4MinRLimitx" -45;
	setAttr ".RightHandPinky4MinRLimity" -45;
	setAttr ".RightHandPinky4MinRLimitz" -45;
	setAttr ".RightHandPinky4MaxRLimitx" 45;
	setAttr ".RightHandPinky4MaxRLimity" 45;
	setAttr ".RightHandPinky4MaxRLimitz" 45;
	setAttr ".RightHandExtraFinger1Tx" -0.45131720127199998;
	setAttr ".RightHandExtraFinger1Ty" 0.82201678944000012;
	setAttr ".RightHandExtraFinger1Tz" -0.025141615486399999;
	setAttr ".RightHandExtraFinger1Ry" -0.034907713534874346;
	setAttr ".RightHandExtraFinger2Tx" -0.46277447994399989;
	setAttr ".RightHandExtraFinger2Ty" 0.82201678775999998;
	setAttr ".RightHandExtraFinger2Tz" -0.025736824931999996;
	setAttr ".RightHandExtraFinger2Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger3Tx" -0.47383838392799998;
	setAttr ".RightHandExtraFinger3Ty" 0.82201678607999984;
	setAttr ".RightHandExtraFinger3Tz" -0.026122897052000001;
	setAttr ".RightHandExtraFinger3Ry" -0.034907713150901909;
	setAttr ".RightHandExtraFinger4Tx" -0.48317707748799998;
	setAttr ".RightHandExtraFinger4Ty" 0.82201678551999979;
	setAttr ".RightHandExtraFinger4Tz" -0.026448768438400001;
	setAttr ".RightHandExtraFinger4Ry" -0.034907713150901909;
	setAttr ".LeftFootThumb1Tx" 0.034631644151999999;
	setAttr ".LeftFootThumb1Ty" 0.027995795900799997;
	setAttr ".LeftFootThumb1Tz" 0.0108086899704;
	setAttr ".LeftFootThumb2Tx" 0.025487894392800001;
	setAttr ".LeftFootThumb2Ty" 0.0149205470736;
	setAttr ".LeftFootThumb2Tz" 0.020114850884800001;
	setAttr ".LeftFootThumb3Tx" 0.0193869014584;
	setAttr ".LeftFootThumb3Ty" 0.010573241755999999;
	setAttr ".LeftFootThumb3Tz" 0.035840795592000006;
	setAttr ".LeftFootThumb4Tx" 0.019386901519999999;
	setAttr ".LeftFootThumb4Ty" 0.010573241588;
	setAttr ".LeftFootThumb4Tz" 0.054304296950399997;
	setAttr ".LeftFootIndex1Tx" 0.039818911820800003;
	setAttr ".LeftFootIndex1Ty" 0.0105732430552;
	setAttr ".LeftFootIndex1Tz" 0.072546437039999995;
	setAttr ".LeftFootIndex2Tx" 0.03981891186;
	setAttr ".LeftFootIndex2Ty" 0.01057324296;
	setAttr ".LeftFootIndex2Tz" 0.08304647372;
	setAttr ".LeftFootIndex3Tx" 0.039818911893600005;
	setAttr ".LeftFootIndex3Ty" 0.010573242864800001;
	setAttr ".LeftFootIndex3Tz" 0.093873608752000001;
	setAttr ".LeftFootIndex4Tx" 0.039818911932799995;
	setAttr ".LeftFootIndex4Ty" 0.010573242764;
	setAttr ".LeftFootIndex4Tz" 0.10556373212;
	setAttr ".LeftFootMiddle1Tx" 0.049933655794399998;
	setAttr ".LeftFootMiddle1Ty" 0.010573243312800001;
	setAttr ".LeftFootMiddle1Tz" 0.072546437039999995;
	setAttr ".LeftFootMiddle2Tx" 0.049933655827999995;
	setAttr ".LeftFootMiddle2Ty" 0.0105732432232;
	setAttr ".LeftFootMiddle2Tz" 0.083040162520000016;
	setAttr ".LeftFootMiddle3Tx" 0.0499336558616;
	setAttr ".LeftFootMiddle3Ty" 0.010573243133600002;
	setAttr ".LeftFootMiddle3Tz" 0.093238389271999997;
	setAttr ".LeftFootMiddle4Tx" 0.049933655895199991;
	setAttr ".LeftFootMiddle4Ty" 0.0105732430384;
	setAttr ".LeftFootMiddle4Tz" 0.103967258976;
	setAttr ".LeftFootRing1Tx" 0.060053860943999997;
	setAttr ".LeftFootRing1Ty" 0.0105732435816;
	setAttr ".LeftFootRing1Tz" 0.072546437039999995;
	setAttr ".LeftFootRing2Tx" 0.060053860943999997;
	setAttr ".LeftFootRing2Ty" 0.010573243491999999;
	setAttr ".LeftFootRing2Tz" 0.082395332656000006;
	setAttr ".LeftFootRing3Tx" 0.060053861;
	setAttr ".LeftFootRing3Ty" 0.010573243408;
	setAttr ".LeftFootRing3Tz" 0.092244175575999995;
	setAttr ".LeftFootRing4Tx" 0.060053861056000003;
	setAttr ".LeftFootRing4Ty" 0.010573243318400002;
	setAttr ".LeftFootRing4Tz" 0.102339155632;
	setAttr ".LeftFootPinky1Tx" 0.070166861407999992;
	setAttr ".LeftFootPinky1Ty" 0.010573243839200001;
	setAttr ".LeftFootPinky1Tz" 0.072546437039999995;
	setAttr ".LeftFootPinky2Tx" 0.070166861464000002;
	setAttr ".LeftFootPinky2Ty" 0.010573243755199999;
	setAttr ".LeftFootPinky2Tz" 0.08164601648;
	setAttr ".LeftFootPinky3Tx" 0.070166861464000002;
	setAttr ".LeftFootPinky3Ty" 0.010573243682400001;
	setAttr ".LeftFootPinky3Tz" 0.090404156135999988;
	setAttr ".LeftFootPinky4Tx" 0.070166861519999998;
	setAttr ".LeftFootPinky4Ty" 0.0105732435928;
	setAttr ".LeftFootPinky4Tz" 0.10002269871999998;
	setAttr ".LeftFootExtraFinger1Tx" 0.028482126316;
	setAttr ".LeftFootExtraFinger1Ty" 0.0105732438224;
	setAttr ".LeftFootExtraFinger1Tz" 0.072546437039999995;
	setAttr ".LeftFootExtraFinger2Tx" 0.028482126349600002;
	setAttr ".LeftFootExtraFinger2Ty" 0.010573243721600002;
	setAttr ".LeftFootExtraFinger2Tz" 0.083686483048000013;
	setAttr ".LeftFootExtraFinger3Tx" 0.028482126388800003;
	setAttr ".LeftFootExtraFinger3Ty" 0.010573243620799998;
	setAttr ".LeftFootExtraFinger3Tz" 0.095154230192000006;
	setAttr ".LeftFootExtraFinger4Tx" 0.028482126428;
	setAttr ".LeftFootExtraFinger4Ty" 0.0105732435144;
	setAttr ".LeftFootExtraFinger4Tz" 0.10684454312;
	setAttr ".RightFootThumb1Tx" -0.034608000078400002;
	setAttr ".RightFootThumb1Ty" 0.027995797771199999;
	setAttr ".RightFootThumb1Tz" 0.010808689427200001;
	setAttr ".RightFootThumb2Tx" -0.025479999899199999;
	setAttr ".RightFootThumb2Ty" 0.014920549515200001;
	setAttr ".RightFootThumb2Tz" 0.020114850386399999;
	setAttr ".RightFootThumb3Tx" -0.019375999921599999;
	setAttr ".RightFootThumb3Ty" 0.010573244276;
	setAttr ".RightFootThumb3Tz" 0.035840795116000003;
	setAttr ".RightFootThumb4Tx" -0.019375999921599999;
	setAttr ".RightFootThumb4Ty" 0.010573244130400001;
	setAttr ".RightFootThumb4Tz" 0.054304296474399993;
	setAttr ".RightFootIndex1Tx" -0.039815999910400003;
	setAttr ".RightFootIndex1Ty" 0.010573243867200001;
	setAttr ".RightFootIndex1Tz" 0.072546435583999994;
	setAttr ".RightFootIndex2Tx" -0.039815999910400003;
	setAttr ".RightFootIndex2Ty" 0.010573243788800001;
	setAttr ".RightFootIndex2Tz" 0.083046472263999999;
	setAttr ".RightFootIndex3Tx" -0.039815999910400003;
	setAttr ".RightFootIndex3Ty" 0.010573243710400001;
	setAttr ".RightFootIndex3Tz" 0.093873607295999986;
	setAttr ".RightFootIndex4Tx" -0.039815999910400003;
	setAttr ".RightFootIndex4Ty" 0.010573243620799998;
	setAttr ".RightFootIndex4Tz" 0.105563730664;
	setAttr ".RightFootMiddle1Tx" -0.049952;
	setAttr ".RightFootMiddle1Ty" 0.010573243548000001;
	setAttr ".RightFootMiddle1Tz" 0.072546435527999997;
	setAttr ".RightFootMiddle2Tx" -0.049952;
	setAttr ".RightFootMiddle2Ty" 0.010573243469600001;
	setAttr ".RightFootMiddle2Tz" 0.083040161008000005;
	setAttr ".RightFootMiddle3Tx" -0.049952;
	setAttr ".RightFootMiddle3Ty" 0.010573243391200001;
	setAttr ".RightFootMiddle3Tz" 0.093238387759999999;
	setAttr ".RightFootMiddle4Tx" -0.049952;
	setAttr ".RightFootMiddle4Ty" 0.010573243307199999;
	setAttr ".RightFootMiddle4Tz" 0.103967257464;
	setAttr ".RightFootRing1Tx" -0.060032;
	setAttr ".RightFootRing1Ty" 0.0105732433016;
	setAttr ".RightFootRing1Tz" 0.072546435472000001;
	setAttr ".RightFootRing2Tx" -0.060032;
	setAttr ".RightFootRing2Ty" 0.0105732432232;
	setAttr ".RightFootRing2Tz" 0.082395331144000022;
	setAttr ".RightFootRing3Tx" -0.060032;
	setAttr ".RightFootRing3Ty" 0.010573243150399999;
	setAttr ".RightFootRing3Tz" 0.092244174063999998;
	setAttr ".RightFootRing4Tx" -0.060032;
	setAttr ".RightFootRing4Ty" 0.010573243071999999;
	setAttr ".RightFootRing4Tz" 0.10233915412;
	setAttr ".RightFootPinky1Tx" -0.070168000336;
	setAttr ".RightFootPinky1Ty" 0.0105732429768;
	setAttr ".RightFootPinky1Tz" 0.072546435472000001;
	setAttr ".RightFootPinky2Tx" -0.070168000336;
	setAttr ".RightFootPinky2Ty" 0.0105732429096;
	setAttr ".RightFootPinky2Tz" 0.081646014912000006;
	setAttr ".RightFootPinky3Tx" -0.070168000336;
	setAttr ".RightFootPinky3Ty" 0.010573242842400001;
	setAttr ".RightFootPinky3Tz" 0.090404154624000005;
	setAttr ".RightFootPinky4Tx" -0.070168000336;
	setAttr ".RightFootPinky4Ty" 0.0105732427696;
	setAttr ".RightFootPinky4Tz" 0.10002269715200002;
	setAttr ".RightFootExtraFinger1Tx" -0.028504000016800004;
	setAttr ".RightFootExtraFinger1Ty" 0.0105732431056;
	setAttr ".RightFootExtraFinger1Tz" 0.072546435583999994;
	setAttr ".RightFootExtraFinger2Tx" -0.028504000016800004;
	setAttr ".RightFootExtraFinger2Ty" 0.010573243021600001;
	setAttr ".RightFootExtraFinger2Tz" 0.083686481647999994;
	setAttr ".RightFootExtraFinger3Tx" -0.028504000016800004;
	setAttr ".RightFootExtraFinger3Ty" 0.010573242937599999;
	setAttr ".RightFootExtraFinger3Tz" 0.095154228736000004;
	setAttr ".RightFootExtraFinger4Tx" -0.028504000016800004;
	setAttr ".RightFootExtraFinger4Ty" 0.010573242848;
	setAttr ".RightFootExtraFinger4Tz" 0.10684454172000001;
	setAttr ".LeftInHandThumbTx" 0.40157523952000002;
	setAttr ".LeftInHandThumbTy" 0.82089663152000003;
	setAttr ".LeftInHandIndexTx" 0.40157523952000002;
	setAttr ".LeftInHandIndexTy" 0.82089663152000003;
	setAttr ".LeftInHandMiddleTx" 0.40157523952000002;
	setAttr ".LeftInHandMiddleTy" 0.82089663152000003;
	setAttr ".LeftInHandRingTx" 0.40157523952000002;
	setAttr ".LeftInHandRingTy" 0.82089663152000003;
	setAttr ".LeftInHandPinkyTx" 0.40157523952000002;
	setAttr ".LeftInHandPinkyTy" 0.82089663152000003;
	setAttr ".LeftInHandExtraFingerTx" 0.40157523952000002;
	setAttr ".LeftInHandExtraFingerTy" 0.82089663152000003;
	setAttr ".RightInHandThumbTx" -0.401575224344;
	setAttr ".RightInHandThumbTy" 0.82089828072000004;
	setAttr ".RightInHandIndexTx" -0.401575224344;
	setAttr ".RightInHandIndexTy" 0.82089828072000004;
	setAttr ".RightInHandMiddleTx" -0.401575224344;
	setAttr ".RightInHandMiddleTy" 0.82089828072000004;
	setAttr ".RightInHandRingTx" -0.401575224344;
	setAttr ".RightInHandRingTy" 0.82089828072000004;
	setAttr ".RightInHandPinkyTx" -0.401575224344;
	setAttr ".RightInHandPinkyTy" 0.82089828072000004;
	setAttr ".RightInHandExtraFingerTx" -0.401575224344;
	setAttr ".RightInHandExtraFingerTy" 0.82089828072000004;
	setAttr ".LeftInFootThumbTx" 0.049896004485600005;
	setAttr ".LeftInFootThumbTy" 0.045642218999999998;
	setAttr ".LeftInFootIndexTx" 0.049896004485600005;
	setAttr ".LeftInFootIndexTy" 0.045642219543199997;
	setAttr ".LeftInFootMiddleTx" 0.049896004485600005;
	setAttr ".LeftInFootMiddleTy" 0.045642219543199997;
	setAttr ".LeftInFootRingTx" 0.049896004485600005;
	setAttr ".LeftInFootRingTy" 0.045642219543199997;
	setAttr ".LeftInFootPinkyTx" 0.049896004485600005;
	setAttr ".LeftInFootPinkyTy" 0.045642219543199997;
	setAttr ".LeftInFootExtraFingerTx" 0.049896004485600005;
	setAttr ".LeftInFootExtraFingerTy" 0.045642219543199997;
	setAttr ".RightInFootThumbTx" -0.049896014548799994;
	setAttr ".RightInFootThumbTy" 0.045642219800799994;
	setAttr ".RightInFootThumbTz" 2.4573975999999997e-006;
	setAttr ".RightInFootIndexTx" -0.0498960146664;
	setAttr ".RightInFootIndexTy" 0.045642219806399993;
	setAttr ".RightInFootIndexTz" 2.4573975999999997e-006;
	setAttr ".RightInFootMiddleTx" -0.0498960146664;
	setAttr ".RightInFootMiddleTy" 0.045642219806399993;
	setAttr ".RightInFootMiddleTz" 2.4573975999999997e-006;
	setAttr ".RightInFootRingTx" -0.0498960146664;
	setAttr ".RightInFootRingTy" 0.045642219806399993;
	setAttr ".RightInFootRingTz" 2.4573975999999997e-006;
	setAttr ".RightInFootPinkyTx" -0.0498960146664;
	setAttr ".RightInFootPinkyTy" 0.045642219806399993;
	setAttr ".RightInFootPinkyTz" 2.4573975999999997e-006;
	setAttr ".RightInFootExtraFingerTx" -0.0498960146664;
	setAttr ".RightInFootExtraFingerTy" 0.045642219806399993;
	setAttr ".RightInFootExtraFingerTz" 2.4573975999999997e-006;
	setAttr ".LeftShoulderExtraTx" 0.069180302996000004;
	setAttr ".LeftShoulderExtraTy" 0.82089663152000003;
	setAttr ".RightShoulderExtraTx" -0.069180368412399995;
	setAttr ".RightShoulderExtraTy" 0.82089828799999998;
createNode HIKProperty2State -n "HIKproperties1";
createNode HIKSkeletonGeneratorNode -n "HIKSkeletonGeneratorNode1";
	setAttr ".ihi" 0;
	setAttr ".SpineCount" 2;
	setAttr ".WantIndexFinger" yes;
	setAttr ".WantMiddleFinger" yes;
	setAttr ".WantRingFinger" yes;
	setAttr ".WantThumb" yes;
	setAttr ".FingerJointCount" 2;
	setAttr ".WantToeBase" yes;
	setAttr ".ReferenceTz" -0.053975402786643784;
	setAttr ".HipsTy" 0.46311460752525702;
	setAttr ".HipsTz" -0.079577002337712477;
	setAttr ".LeftUpLegTx" 0.14883236860324839;
	setAttr ".LeftUpLegTy" 0.43407731950309614;
	setAttr ".LeftUpLegTz" -0.034260211807780189;
	setAttr ".LeftLegTx" 0.14883236860324839;
	setAttr ".LeftLegTy" 0.22623775912656163;
	setAttr ".LeftLegTz" -0.034260211807780189;
	setAttr ".LeftFootTx" 0.14883236860324839;
	setAttr ".LeftFootTy" 0.037745676054161958;
	setAttr ".LeftFootTz" -0.061068847280243144;
	setAttr ".RightUpLegTx" -0.14883236860324839;
	setAttr ".RightUpLegTy" 0.43407731950309614;
	setAttr ".RightUpLegTz" -0.034260211807780189;
	setAttr ".RightLegTx" -0.14883238381284838;
	setAttr ".RightLegTy" 0.22623775912656163;
	setAttr ".RightLegTz" -0.034257753273380188;
	setAttr ".RightFootTx" -0.14883237866644838;
	setAttr ".RightFootTy" 0.037745676072686585;
	setAttr ".RightFootTz" -0.061066388745843143;
	setAttr ".SpineTy" 0.59250075719660633;
	setAttr ".SpineTz" -0.079577002337712477;
	setAttr ".LeftArmTx" 0.23735999925564835;
	setAttr ".LeftArmTy" 0.8424308147127888;
	setAttr ".LeftArmTz" -0.079577002337712477;
	setAttr ".LeftForeArmTx" 0.51712065696038412;
	setAttr ".LeftForeArmTy" 0.8424308147127888;
	setAttr ".LeftForeArmTz" -0.079577002337712477;
	setAttr ".LeftHandTx" 0.66662468223238402;
	setAttr ".LeftHandTy" 0.8424308147127888;
	setAttr ".LeftHandTz" -0.079577002337712477;
	setAttr ".RightArmTx" -0.23736011392504661;
	setAttr ".RightArmTy" 0.84243218460579772;
	setAttr ".RightArmTz" -0.079577002337712477;
	setAttr ".RightForeArmTx" -0.39027146412504654;
	setAttr ".RightForeArmTy" 0.84243218460579772;
	setAttr ".RightForeArmTz" -0.079577002337712477;
	setAttr ".RightHandTx" -0.53977459754104662;
	setAttr ".RightHandTy" 0.84243217858530794;
	setAttr ".RightHandTz" -0.079577002337712477;
	setAttr ".HeadTy" 1.306437467245126;
	setAttr ".HeadTz" -0.098364199693498799;
	setAttr ".LeftToeBaseTx" 0.14883241579444839;
	setAttr ".LeftToeBaseTy" 0.0087439703638133408;
	setAttr ".LeftToeBaseTz" 0.20617328034075064;
	setAttr ".RightToeBaseTx" -0.14883845183109867;
	setAttr ".RightToeBaseTy" 0.0087439704425428325;
	setAttr ".RightToeBaseTz" 0.20617589660475055;
	setAttr ".LeftShoulderTx" 0.17739939593484835;
	setAttr ".LeftShoulderTy" 0.84243017839331813;
	setAttr ".LeftShoulderTz" -0.079577002337712477;
	setAttr ".RightShoulderTx" -0.17739937175784662;
	setAttr ".RightShoulderTy" 0.84243017839331813;
	setAttr ".RightShoulderTz" -0.079577002337712477;
	setAttr ".NeckTy" 0.92205088175108962;
	setAttr ".NeckTz" -0.098364199693498799;
	setAttr ".LeftFingerBaseTx" 0.45091056326399998;
	setAttr ".LeftFingerBaseTy" 0.82370161775999995;
	setAttr ".LeftFingerBaseTz" 0.0073062326455999999;
	setAttr ".LeftFingerBaseRy" -0.0035633340000000005;
	setAttr ".RightFingerBaseTx" -0.45090990940800002;
	setAttr ".RightFingerBaseTy" 0.82370328207999999;
	setAttr ".RightFingerBaseTz" 0.0073105665751999997;
	setAttr ".RightFingerBaseRy" -2.0000646359999998;
	setAttr ".Spine1Ty" 0.74708161068534418;
	setAttr ".Spine1Tz" -0.079577002337712477;
	setAttr ".Spine2Ty" 0.74106666666666676;
	setAttr ".Spine2Tz" -0.053975402786643784;
	setAttr ".Spine3Ty" 0.6664;
	setAttr ".Spine4Ty" 0.68880000000000008;
	setAttr ".Spine5Ty" 0.71119999999999994;
	setAttr ".Spine6Ty" 0.7336;
	setAttr ".Spine7Ty" 0.756;
	setAttr ".Spine8Ty" 0.7784;
	setAttr ".Spine9Ty" 0.8008;
	setAttr ".Neck1Ty" 0.8232;
	setAttr ".Neck2Ty" 0.8344;
	setAttr ".Neck3Ty" 0.8456;
	setAttr ".Neck4Ty" 0.8568;
	setAttr ".Neck5Ty" 0.868;
	setAttr ".Neck6Ty" 0.8792;
	setAttr ".Neck7Ty" 0.8904;
	setAttr ".Neck8Ty" 0.9016;
	setAttr ".Neck9Ty" 0.9128;
	setAttr ".LeftUpLegRollTx" 0.14883236860324839;
	setAttr ".LeftUpLegRollTy" 0.33015753931482894;
	setAttr ".LeftUpLegRollTz" -0.034260211807780189;
	setAttr ".LeftLegRollTx" 0.14883236860324839;
	setAttr ".LeftLegRollTy" 0.1319917175903618;
	setAttr ".LeftLegRollTz" -0.047664529544011666;
	setAttr ".RightUpLegRollTx" -0.1488323762080484;
	setAttr ".RightUpLegRollTy" 0.33015753931482894;
	setAttr ".RightUpLegRollTz" -0.034258982540580185;
	setAttr ".RightLegRollTx" -0.14883238123964837;
	setAttr ".RightLegRollTy" 0.13199171759962411;
	setAttr ".RightLegRollTz" -0.047662071009611666;
	setAttr ".LeftArmRollTx" 0.37724032810801622;
	setAttr ".LeftArmRollTy" 0.8424308147127888;
	setAttr ".LeftArmRollTz" -0.079577002337712477;
	setAttr ".LeftForeArmRollTx" 0.59187266959638407;
	setAttr ".LeftForeArmRollTy" 0.8424308147127888;
	setAttr ".LeftForeArmRollTz" -0.079577002337712477;
	setAttr ".RightArmRollTx" -0.31381578902504659;
	setAttr ".RightArmRollTy" 0.84243218460579772;
	setAttr ".RightArmRollTz" -0.079577002337712477;
	setAttr ".RightForeArmRollTx" -0.46502303083304658;
	setAttr ".RightForeArmRollTy" 0.842432181595553;
	setAttr ".RightForeArmRollTz" -0.079577002337712477;
	setAttr ".HipsTranslationTy" 0.55999999999999994;
	setAttr ".LeftHandThumb1Tx" 0.69097772059238394;
	setAttr ".LeftHandThumb1Ty" 0.83873283299383439;
	setAttr ".LeftHandThumb1Tz" -0.055595372122512483;
	setAttr ".LeftHandThumb2Tx" 0.70504822425638403;
	setAttr ".LeftHandThumb2Ty" 0.83625007836157905;
	setAttr ".LeftHandThumb2Tz" -0.051633627908112469;
	setAttr ".LeftHandThumb3Tx" 0.71928981055238406;
	setAttr ".LeftHandThumb3Ty" 0.83625001723045089;
	setAttr ".LeftHandThumb3Tz" -0.051633575592912477;
	setAttr ".LeftHandThumb4Tx" 0.73422358893638395;
	setAttr ".LeftHandThumb4Ty" 0.83625003066077441;
	setAttr ".LeftHandThumb4Tz" -0.051633621574512477;
	setAttr ".LeftHandIndex1Tx" 0.71602775186438405;
	setAttr ".LeftHandIndex1Ty" 0.84335578981348203;
	setAttr ".LeftHandIndex1Tz" -0.060135653608112474;
	setAttr ".LeftHandIndex2Tx" 0.73967517762438395;
	setAttr ".LeftHandIndex2Ty" 0.84335568746515377;
	setAttr ".LeftHandIndex2Tz" -0.059311339101712469;
	setAttr ".LeftHandIndex3Tx" 0.75452820014438382;
	setAttr ".LeftHandIndex3Ty" 0.84335562355533855;
	setAttr ".LeftHandIndex3Tz" -0.058793585613712479;
	setAttr ".LeftHandIndex4Tx" 0.76548759183238402;
	setAttr ".LeftHandIndex4Ty" 0.84335557631764813;
	setAttr ".LeftHandIndex4Tz" -0.058411559773712485;
	setAttr ".LeftHandMiddle1Tx" 0.71596000664838411;
	setAttr ".LeftHandMiddle1Ty" 0.84475051178599503;
	setAttr ".LeftHandMiddle1Tz" -0.072270769804112484;
	setAttr ".LeftHandMiddle2Tx" 0.74319421605638403;
	setAttr ".LeftHandMiddle2Ty" 0.84475051178599503;
	setAttr ".LeftHandMiddle2Tz" -0.072269076056112491;
	setAttr ".LeftHandMiddle3Tx" 0.758679541072384;
	setAttr ".LeftHandMiddle3Ty" 0.84475051178599503;
	setAttr ".LeftHandMiddle3Tz" -0.072268114071312492;
	setAttr ".LeftHandMiddle4Tx" 0.76991108116838403;
	setAttr ".LeftHandMiddle4Ty" 0.84475051178599503;
	setAttr ".LeftHandMiddle4Tz" -0.072267421933712495;
	setAttr ".LeftHandRing1Tx" 0.71642973705638402;
	setAttr ".LeftHandRing1Ty" 0.84419027787724032;
	setAttr ".LeftHandRing1Tz" -0.084018692228112479;
	setAttr ".LeftHandRing2Tx" 0.74184118650438402;
	setAttr ".LeftHandRing2Ty" 0.84419027787724032;
	setAttr ".LeftHandRing2Tz" -0.084018691729712477;
	setAttr ".LeftHandRing3Tx" 0.75474653132038405;
	setAttr ".LeftHandRing3Ty" 0.84419027787724032;
	setAttr ".LeftHandRing3Tz" -0.084018692384912469;
	setAttr ".LeftHandRing4Tx" 0.76551727653638402;
	setAttr ".LeftHandRing4Ty" 0.84419027787724032;
	setAttr ".LeftHandRing4Tz" -0.084018696960112466;
	setAttr ".LeftHandPinky1Tx" 0.45131597744799989;
	setAttr ".LeftHandPinky1Ty" 0.81914368031999996;
	setAttr ".LeftHandPinky1Tz" -0.067921398990643783;
	setAttr ".LeftHandPinky2Tx" 0.46836293369600002;
	setAttr ".LeftHandPinky2Ty" 0.81914390767999989;
	setAttr ".LeftHandPinky2Tz" -0.067921398990643783;
	setAttr ".LeftHandPinky3Tx" 0.47942014203999994;
	setAttr ".LeftHandPinky3Ty" 0.81914405495999998;
	setAttr ".LeftHandPinky3Tz" -0.067921399791443779;
	setAttr ".LeftHandPinky4Tx" 0.48875318408000001;
	setAttr ".LeftHandPinky4Ty" 0.81914417928000016;
	setAttr ".LeftHandPinky4Tz" -0.067921395361843787;
	setAttr ".LeftHandExtraFinger1Tx" 0.45131597744799989;
	setAttr ".LeftHandExtraFinger1Ty" 0.82201511504000002;
	setAttr ".LeftHandExtraFinger1Tz" -0.025145996204000001;
	setAttr ".LeftHandExtraFinger1Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger1Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger2Tx" 0.46276293369600002;
	setAttr ".LeftHandExtraFinger2Ty" 0.82201499128000011;
	setAttr ".LeftHandExtraFinger2Tz" -0.025145996204000001;
	setAttr ".LeftHandExtraFinger2Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger2Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger3Tx" 0.47382014203999995;
	setAttr ".LeftHandExtraFinger3Ty" 0.82201491400000004;
	setAttr ".LeftHandExtraFinger3Tz" -0.025145997004799997;
	setAttr ".LeftHandExtraFinger3Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger3Rz" -0.00029934100000000001;
	setAttr ".LeftHandExtraFinger4Tx" 0.48315318408000002;
	setAttr ".LeftHandExtraFinger4Ty" 0.82201485687999998;
	setAttr ".LeftHandExtraFinger4Tz" -0.025145992575200001;
	setAttr ".LeftHandExtraFinger4Ry" -1.9999999850000001;
	setAttr ".LeftHandExtraFinger4Rz" -0.00029934100000000001;
	setAttr ".RightHandThumb1Tx" -0.56412552996504661;
	setAttr ".RightHandThumb1Ty" 0.83873421724339614;
	setAttr ".RightHandThumb1Tz" -0.055593239804912473;
	setAttr ".RightHandThumb2Tx" -0.57819568402104649;
	setAttr ".RightHandThumb2Ty" 0.83625146492671409;
	setAttr ".RightHandThumb2Tz" -0.051630250564912473;
	setAttr ".RightHandThumb3Tx" -0.59242858443704649;
	setAttr ".RightHandThumb3Ty" 0.83625158904142893;
	setAttr ".RightHandThumb3Tz" -0.05113285680091248;
	setAttr ".RightHandThumb4Tx" -0.60735325509304638;
	setAttr ".RightHandThumb4Ty" 0.83625167379140208;
	setAttr ".RightHandThumb4Tz" -0.050611287825712475;
	setAttr ".RightHandIndex1Tx" -0.58917596443704656;
	setAttr ".RightHandIndex1Ty" 0.84335717452615877;
	setAttr ".RightHandIndex1Tz" -0.06013131428011248;
	setAttr ".RightHandIndex2Tx" -0.6128233656690466;
	setAttr ".RightHandIndex2Ty" 0.84335717313681458;
	setAttr ".RightHandIndex2Tz" -0.060956484292912477;
	setAttr ".RightHandIndex3Tx" -0.62767637334904691;
	setAttr ".RightHandIndex3Ty" 0.84335717174747005;
	setAttr ".RightHandIndex3Tz" -0.061474776282512453;
	setAttr ".RightHandIndex4Tx" -0.63863575378104687;
	setAttr ".RightHandIndex4Ty" 0.84335717128435583;
	setAttr ".RightHandIndex4Tz" -0.061857201133712472;
	setAttr ".RightHandMiddle1Tx" -0.58910928730904644;
	setAttr ".RightHandMiddle1Ty" 0.84475188769949394;
	setAttr ".RightHandMiddle1Tz" -0.072266435146512487;
	setAttr ".RightHandMiddle2Tx" -0.61632693645304648;
	setAttr ".RightHandMiddle2Ty" 0.84475188584703531;
	setAttr ".RightHandMiddle2Tz" -0.07321618815771247;
	setAttr ".RightHandMiddle3Tx" -0.63180284501304651;
	setAttr ".RightHandMiddle3Ty" 0.84475188492080533;
	setAttr ".RightHandMiddle3Tz" -0.073756216104912467;
	setAttr ".RightHandMiddle4Tx" -0.64302755602104678;
	setAttr ".RightHandMiddle4Ty" 0.84475188399457646;
	setAttr ".RightHandMiddle4Tz" -0.074147899564912453;
	setAttr ".RightHandRing1Tx" -0.58958005914904654;
	setAttr ".RightHandRing1Ty" 0.84419164499156163;
	setAttr ".RightHandRing1Tz" -0.084014312171312486;
	setAttr ".RightHandRing2Tx" -0.61497605696504642;
	setAttr ".RightHandRing2Ty" 0.844191643139103;
	setAttr ".RightHandRing2Tz" -0.084900499134512475;
	setAttr ".RightHandRing3Tx" -0.62787355455704652;
	setAttr ".RightHandRing3Ty" 0.84419164221287291;
	setAttr ".RightHandRing3Tz" -0.085350554065712458;
	setAttr ".RightHandRing4Tx" -0.63863775090904651;
	setAttr ".RightHandRing4Ty" 0.84419164174975869;
	setAttr ".RightHandRing4Tz" -0.085726167995312463;
	setAttr ".RightHandPinky1Tx" -0.45131720127199998;
	setAttr ".RightHandPinky1Ty" 0.81914532504000004;
	setAttr ".RightHandPinky1Tz" -0.067917018273043778;
	setAttr ".RightHandPinky2Tx" -0.46837447994399994;
	setAttr ".RightHandPinky2Ty" 0.81914495543999988;
	setAttr ".RightHandPinky2Tz" -0.068512227718643778;
	setAttr ".RightHandPinky3Tx" -0.47943838392800031;
	setAttr ".RightHandPinky3Ty" 0.81914471575999925;
	setAttr ".RightHandPinky3Tz" -0.068898299838643776;
	setAttr ".RightHandPinky4Tx" -0.48877707748799998;
	setAttr ".RightHandPinky4Ty" 0.81914451304000002;
	setAttr ".RightHandPinky4Tz" -0.069224171225043776;
	setAttr ".RightHandExtraFinger1Tx" -0.45131720127199998;
	setAttr ".RightHandExtraFinger1Ty" 0.82201678944000012;
	setAttr ".RightHandExtraFinger1Tz" -0.025141615486399999;
	setAttr ".RightHandExtraFinger1Ry" -2.0000646579999999;
	setAttr ".RightHandExtraFinger2Tx" -0.46277447994399989;
	setAttr ".RightHandExtraFinger2Ty" 0.82201678775999998;
	setAttr ".RightHandExtraFinger2Tz" -0.025736824931999996;
	setAttr ".RightHandExtraFinger2Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger3Tx" -0.47383838392799998;
	setAttr ".RightHandExtraFinger3Ty" 0.82201678607999984;
	setAttr ".RightHandExtraFinger3Tz" -0.026122897052000001;
	setAttr ".RightHandExtraFinger3Ry" -2.0000646359999998;
	setAttr ".RightHandExtraFinger4Tx" -0.48317707748799998;
	setAttr ".RightHandExtraFinger4Ty" 0.82201678551999979;
	setAttr ".RightHandExtraFinger4Tz" -0.026448768438400001;
	setAttr ".RightHandExtraFinger4Ry" -2.0000646359999998;
	setAttr ".LeftFootThumb1Tx" 0.034631644151999999;
	setAttr ".LeftFootThumb1Ty" 0.027995795900799997;
	setAttr ".LeftFootThumb1Tz" 0.0108086899704;
	setAttr ".LeftFootThumb2Tx" 0.025487894392800001;
	setAttr ".LeftFootThumb2Ty" 0.0149205470736;
	setAttr ".LeftFootThumb2Tz" 0.020114850884800001;
	setAttr ".LeftFootThumb3Tx" 0.0193869014584;
	setAttr ".LeftFootThumb3Ty" 0.010573241755999999;
	setAttr ".LeftFootThumb3Tz" 0.035840795592000006;
	setAttr ".LeftFootThumb4Tx" 0.019386901519999999;
	setAttr ".LeftFootThumb4Ty" 0.010573241588;
	setAttr ".LeftFootThumb4Tz" 0.054304296950399997;
	setAttr ".LeftFootIndex1Tx" 0.039818911820800003;
	setAttr ".LeftFootIndex1Ty" 0.0105732430552;
	setAttr ".LeftFootIndex1Tz" 0.072546437039999995;
	setAttr ".LeftFootIndex2Tx" 0.03981891186;
	setAttr ".LeftFootIndex2Ty" 0.01057324296;
	setAttr ".LeftFootIndex2Tz" 0.08304647372;
	setAttr ".LeftFootIndex3Tx" 0.039818911893600005;
	setAttr ".LeftFootIndex3Ty" 0.010573242864800001;
	setAttr ".LeftFootIndex3Tz" 0.093873608752000001;
	setAttr ".LeftFootIndex4Tx" 0.039818911932799995;
	setAttr ".LeftFootIndex4Ty" 0.010573242764;
	setAttr ".LeftFootIndex4Tz" 0.10556373212;
	setAttr ".LeftFootMiddle1Tx" 0.049933655794399998;
	setAttr ".LeftFootMiddle1Ty" 0.010573243312800001;
	setAttr ".LeftFootMiddle1Tz" 0.072546437039999995;
	setAttr ".LeftFootMiddle2Tx" 0.049933655827999995;
	setAttr ".LeftFootMiddle2Ty" 0.0105732432232;
	setAttr ".LeftFootMiddle2Tz" 0.083040162520000016;
	setAttr ".LeftFootMiddle3Tx" 0.0499336558616;
	setAttr ".LeftFootMiddle3Ty" 0.010573243133600002;
	setAttr ".LeftFootMiddle3Tz" 0.093238389271999997;
	setAttr ".LeftFootMiddle4Tx" 0.049933655895199991;
	setAttr ".LeftFootMiddle4Ty" 0.0105732430384;
	setAttr ".LeftFootMiddle4Tz" 0.103967258976;
	setAttr ".LeftFootRing1Tx" 0.060053860943999997;
	setAttr ".LeftFootRing1Ty" 0.0105732435816;
	setAttr ".LeftFootRing1Tz" 0.072546437039999995;
	setAttr ".LeftFootRing2Tx" 0.060053860943999997;
	setAttr ".LeftFootRing2Ty" 0.010573243491999999;
	setAttr ".LeftFootRing2Tz" 0.082395332656000006;
	setAttr ".LeftFootRing3Tx" 0.060053861;
	setAttr ".LeftFootRing3Ty" 0.010573243408;
	setAttr ".LeftFootRing3Tz" 0.092244175575999995;
	setAttr ".LeftFootRing4Tx" 0.060053861056000003;
	setAttr ".LeftFootRing4Ty" 0.010573243318400002;
	setAttr ".LeftFootRing4Tz" 0.102339155632;
	setAttr ".LeftFootPinky1Tx" 0.070166861407999992;
	setAttr ".LeftFootPinky1Ty" 0.010573243839200001;
	setAttr ".LeftFootPinky1Tz" 0.072546437039999995;
	setAttr ".LeftFootPinky2Tx" 0.070166861464000002;
	setAttr ".LeftFootPinky2Ty" 0.010573243755199999;
	setAttr ".LeftFootPinky2Tz" 0.08164601648;
	setAttr ".LeftFootPinky3Tx" 0.070166861464000002;
	setAttr ".LeftFootPinky3Ty" 0.010573243682400001;
	setAttr ".LeftFootPinky3Tz" 0.090404156135999988;
	setAttr ".LeftFootPinky4Tx" 0.070166861519999998;
	setAttr ".LeftFootPinky4Ty" 0.0105732435928;
	setAttr ".LeftFootPinky4Tz" 0.10002269871999998;
	setAttr ".LeftFootExtraFinger1Tx" 0.028482126316;
	setAttr ".LeftFootExtraFinger1Ty" 0.0105732438224;
	setAttr ".LeftFootExtraFinger1Tz" 0.072546437039999995;
	setAttr ".LeftFootExtraFinger2Tx" 0.028482126349600002;
	setAttr ".LeftFootExtraFinger2Ty" 0.010573243721600002;
	setAttr ".LeftFootExtraFinger2Tz" 0.083686483048000013;
	setAttr ".LeftFootExtraFinger3Tx" 0.028482126388800003;
	setAttr ".LeftFootExtraFinger3Ty" 0.010573243620799998;
	setAttr ".LeftFootExtraFinger3Tz" 0.095154230192000006;
	setAttr ".LeftFootExtraFinger4Tx" 0.028482126428;
	setAttr ".LeftFootExtraFinger4Ty" 0.0105732435144;
	setAttr ".LeftFootExtraFinger4Tz" 0.10684454312;
	setAttr ".RightFootThumb1Tx" -0.034608000078400002;
	setAttr ".RightFootThumb1Ty" 0.027995797771199999;
	setAttr ".RightFootThumb1Tz" 0.010808689427200001;
	setAttr ".RightFootThumb2Tx" -0.025479999899199999;
	setAttr ".RightFootThumb2Ty" 0.014920549515200001;
	setAttr ".RightFootThumb2Tz" 0.020114850386399999;
	setAttr ".RightFootThumb3Tx" -0.019375999921599999;
	setAttr ".RightFootThumb3Ty" 0.010573244276;
	setAttr ".RightFootThumb3Tz" 0.035840795116000003;
	setAttr ".RightFootThumb4Tx" -0.019375999921599999;
	setAttr ".RightFootThumb4Ty" 0.010573244130400001;
	setAttr ".RightFootThumb4Tz" 0.054304296474399993;
	setAttr ".RightFootIndex1Tx" -0.039815999910400003;
	setAttr ".RightFootIndex1Ty" 0.010573243867200001;
	setAttr ".RightFootIndex1Tz" 0.072546435583999994;
	setAttr ".RightFootIndex2Tx" -0.039815999910400003;
	setAttr ".RightFootIndex2Ty" 0.010573243788800001;
	setAttr ".RightFootIndex2Tz" 0.083046472263999999;
	setAttr ".RightFootIndex3Tx" -0.039815999910400003;
	setAttr ".RightFootIndex3Ty" 0.010573243710400001;
	setAttr ".RightFootIndex3Tz" 0.093873607295999986;
	setAttr ".RightFootIndex4Tx" -0.039815999910400003;
	setAttr ".RightFootIndex4Ty" 0.010573243620799998;
	setAttr ".RightFootIndex4Tz" 0.105563730664;
	setAttr ".RightFootMiddle1Tx" -0.049952;
	setAttr ".RightFootMiddle1Ty" 0.010573243548000001;
	setAttr ".RightFootMiddle1Tz" 0.072546435527999997;
	setAttr ".RightFootMiddle2Tx" -0.049952;
	setAttr ".RightFootMiddle2Ty" 0.010573243469600001;
	setAttr ".RightFootMiddle2Tz" 0.083040161008000005;
	setAttr ".RightFootMiddle3Tx" -0.049952;
	setAttr ".RightFootMiddle3Ty" 0.010573243391200001;
	setAttr ".RightFootMiddle3Tz" 0.093238387759999999;
	setAttr ".RightFootMiddle4Tx" -0.049952;
	setAttr ".RightFootMiddle4Ty" 0.010573243307199999;
	setAttr ".RightFootMiddle4Tz" 0.103967257464;
	setAttr ".RightFootRing1Tx" -0.060032;
	setAttr ".RightFootRing1Ty" 0.0105732433016;
	setAttr ".RightFootRing1Tz" 0.072546435472000001;
	setAttr ".RightFootRing2Tx" -0.060032;
	setAttr ".RightFootRing2Ty" 0.0105732432232;
	setAttr ".RightFootRing2Tz" 0.082395331144000022;
	setAttr ".RightFootRing3Tx" -0.060032;
	setAttr ".RightFootRing3Ty" 0.010573243150399999;
	setAttr ".RightFootRing3Tz" 0.092244174063999998;
	setAttr ".RightFootRing4Tx" -0.060032;
	setAttr ".RightFootRing4Ty" 0.010573243071999999;
	setAttr ".RightFootRing4Tz" 0.10233915412;
	setAttr ".RightFootPinky1Tx" -0.070168000336;
	setAttr ".RightFootPinky1Ty" 0.0105732429768;
	setAttr ".RightFootPinky1Tz" 0.072546435472000001;
	setAttr ".RightFootPinky2Tx" -0.070168000336;
	setAttr ".RightFootPinky2Ty" 0.0105732429096;
	setAttr ".RightFootPinky2Tz" 0.081646014912000006;
	setAttr ".RightFootPinky3Tx" -0.070168000336;
	setAttr ".RightFootPinky3Ty" 0.010573242842400001;
	setAttr ".RightFootPinky3Tz" 0.090404154624000005;
	setAttr ".RightFootPinky4Tx" -0.070168000336;
	setAttr ".RightFootPinky4Ty" 0.0105732427696;
	setAttr ".RightFootPinky4Tz" 0.10002269715200002;
	setAttr ".RightFootExtraFinger1Tx" -0.028504000016800004;
	setAttr ".RightFootExtraFinger1Ty" 0.0105732431056;
	setAttr ".RightFootExtraFinger1Tz" 0.072546435583999994;
	setAttr ".RightFootExtraFinger2Tx" -0.028504000016800004;
	setAttr ".RightFootExtraFinger2Ty" 0.010573243021600001;
	setAttr ".RightFootExtraFinger2Tz" 0.083686481647999994;
	setAttr ".RightFootExtraFinger3Tx" -0.028504000016800004;
	setAttr ".RightFootExtraFinger3Ty" 0.010573242937599999;
	setAttr ".RightFootExtraFinger3Tz" 0.095154228736000004;
	setAttr ".RightFootExtraFinger4Tx" -0.028504000016800004;
	setAttr ".RightFootExtraFinger4Ty" 0.010573242848;
	setAttr ".RightFootExtraFinger4Tz" 0.10684454172000001;
	setAttr ".LeftInHandThumbTx" 0.40157523952000002;
	setAttr ".LeftInHandThumbTy" 0.82089663152000003;
	setAttr ".LeftInHandIndexTx" 0.40157523952000002;
	setAttr ".LeftInHandIndexTy" 0.82089663152000003;
	setAttr ".LeftInHandMiddleTx" 0.40157523952000002;
	setAttr ".LeftInHandMiddleTy" 0.82089663152000003;
	setAttr ".LeftInHandRingTx" 0.40157523952000002;
	setAttr ".LeftInHandRingTy" 0.82089663152000003;
	setAttr ".LeftInHandPinkyTx" 0.40157523952000002;
	setAttr ".LeftInHandPinkyTy" 0.82089663152000003;
	setAttr ".LeftInHandExtraFingerTx" 0.40157523952000002;
	setAttr ".LeftInHandExtraFingerTy" 0.82089663152000003;
	setAttr ".RightInHandThumbTx" -0.401575224344;
	setAttr ".RightInHandThumbTy" 0.82089828072000004;
	setAttr ".RightInHandIndexTx" -0.401575224344;
	setAttr ".RightInHandIndexTy" 0.82089828072000004;
	setAttr ".RightInHandMiddleTx" -0.401575224344;
	setAttr ".RightInHandMiddleTy" 0.82089828072000004;
	setAttr ".RightInHandRingTx" -0.401575224344;
	setAttr ".RightInHandRingTy" 0.82089828072000004;
	setAttr ".RightInHandPinkyTx" -0.401575224344;
	setAttr ".RightInHandPinkyTy" 0.82089828072000004;
	setAttr ".RightInHandExtraFingerTx" -0.401575224344;
	setAttr ".RightInHandExtraFingerTy" 0.82089828072000004;
	setAttr ".LeftInFootThumbTx" 0.049896004485600005;
	setAttr ".LeftInFootThumbTy" 0.045642218999999998;
	setAttr ".LeftInFootIndexTx" 0.049896004485600005;
	setAttr ".LeftInFootIndexTy" 0.045642219543199997;
	setAttr ".LeftInFootMiddleTx" 0.049896004485600005;
	setAttr ".LeftInFootMiddleTy" 0.045642219543199997;
	setAttr ".LeftInFootRingTx" 0.049896004485600005;
	setAttr ".LeftInFootRingTy" 0.045642219543199997;
	setAttr ".LeftInFootPinkyTx" 0.049896004485600005;
	setAttr ".LeftInFootPinkyTy" 0.045642219543199997;
	setAttr ".LeftInFootExtraFingerTx" 0.049896004485600005;
	setAttr ".LeftInFootExtraFingerTy" 0.045642219543199997;
	setAttr ".RightInFootThumbTx" -0.049896014548799994;
	setAttr ".RightInFootThumbTy" 0.045642219800799994;
	setAttr ".RightInFootThumbTz" 2.4573975999999997e-006;
	setAttr ".RightInFootIndexTx" -0.0498960146664;
	setAttr ".RightInFootIndexTy" 0.045642219806399993;
	setAttr ".RightInFootIndexTz" 2.4573975999999997e-006;
	setAttr ".RightInFootMiddleTx" -0.0498960146664;
	setAttr ".RightInFootMiddleTy" 0.045642219806399993;
	setAttr ".RightInFootMiddleTz" 2.4573975999999997e-006;
	setAttr ".RightInFootRingTx" -0.0498960146664;
	setAttr ".RightInFootRingTy" 0.045642219806399993;
	setAttr ".RightInFootRingTz" 2.4573975999999997e-006;
	setAttr ".RightInFootPinkyTx" -0.0498960146664;
	setAttr ".RightInFootPinkyTy" 0.045642219806399993;
	setAttr ".RightInFootPinkyTz" 2.4573975999999997e-006;
	setAttr ".RightInFootExtraFingerTx" -0.0498960146664;
	setAttr ".RightInFootExtraFingerTy" 0.045642219806399993;
	setAttr ".RightInFootExtraFingerTz" 2.4573975999999997e-006;
	setAttr ".LeftShoulderExtraTx" 0.069180302996000004;
	setAttr ".LeftShoulderExtraTy" 0.82089663152000003;
	setAttr ".RightShoulderExtraTx" -0.069180368412399995;
	setAttr ".RightShoulderExtraTy" 0.82089828799999998;
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture1";
	setAttr ".re" -type "float2" 30 30 ;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode blinn -n "blinn2";
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode psdFileTex -n "psdFileTex1";
	setAttr ".ftn" -type "string" "Z:/Users/Jonathan Desmeules/Desktop/canard texture.psd";
createNode place2dTexture -n "place2dTexture2";
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo3";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "Z:/Users/Jonathan Desmeules/Desktop/canard texture.psd";
createNode place2dTexture -n "place2dTexture3";
createNode groupId -n "groupId136";
	setAttr ".ihi" 0;
createNode groupId -n "groupId137";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	setAttr -s 526 ".wl";
	setAttr -s 3 ".wl[0].w[2:4]"  1 1 0.17180204391479492;
	setAttr -s 3 ".wl[1].w[2:4]"  1 1 0.085799276828765869;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[1]" 4.1246414184570313e-005;
	setAttr ".wl[2].w[2]" 1;
	setAttr ".wl[2].w[3]" 1;
	setAttr ".wl[2].w[4]" 0.35141003131866455;
	setAttr ".wl[2].w[7]" 0.12613368034362793;
	setAttr -s 4 ".wl[3].w[1:4]"  0.0042949914932250977 1 1 0.87084895372390747;
	setAttr -s 4 ".wl[4].w[1:4]"  0.0036586523056030273 0.99936062097549438 
		1 0.97101271152496338;
	setAttr -s 3 ".wl[5].w[2:4]"  1 1 0.65389347076416016;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[0]" 0.81588423252105713;
	setAttr ".wl[6].w[1]" 1;
	setAttr ".wl[6].w[9]" 0.031585335731506348;
	setAttr -s 4 ".wl[7].w";
	setAttr ".wl[7].w[0]" 1;
	setAttr ".wl[7].w[1]" 1;
	setAttr ".wl[7].w[9]" 0.3425602912902832;
	setAttr ".wl[7].w[10]" 0.092221379280090332;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[0]" 1;
	setAttr ".wl[8].w[1]" 1;
	setAttr ".wl[8].w[5]" 0.017418861389160156;
	setAttr ".wl[8].w[9]" 0.52159923315048218;
	setAttr ".wl[8].w[10]" 0.22247648239135745;
	setAttr -s 4 ".wl[9].w";
	setAttr ".wl[9].w[0]" 1;
	setAttr ".wl[9].w[1]" 1;
	setAttr ".wl[9].w[9]" 0.22393286228179932;
	setAttr ".wl[9].w[10]" 0.0095343589782714844;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.8285592794418335;
	setAttr ".wl[10].w[1]" 1;
	setAttr ".wl[10].w[9]" 0.0042870044708251953;
	setAttr -s 2 ".wl[11].w[0:1]"  0.53752040863037109 1;
	setAttr -s 4 ".wl[12].w[1:4]"  0.01026463508605957 1 1 0.56821584701538086;
	setAttr -s 4 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.99718099832534801;
	setAttr ".wl[13].w[1]" 1;
	setAttr ".wl[13].w[9]" 0.17581427097320557;
	setAttr ".wl[13].w[10]" 0.0030257105827331543;
	setAttr -s 3 ".wl[14].w[0:2]"  0.42961990833282471 1 0.17811048030853271;
	setAttr -s 3 ".wl[15].w[0:2]"  0.77982985973358165 1 0.18841457366943359;
	setAttr -s 3 ".wl[16].w[0:2]"  0.98652172088623036 1 0.089749574661254883;
	setAttr -s 3 ".wl[17].w[0:2]"  0.9853975772857666 1 0.023675441741943359;
	setAttr -s 3 ".wl[18].w[0:2]"  0.723868727684021 1 0.020161151885986328;
	setAttr -s 3 ".wl[19].w[0:2]"  0.37858450412750239 1 0.075856328010559082;
	setAttr -s 4 ".wl[20].w[1:4]"  1 1 1 0.60097014904022217;
	setAttr -s 4 ".wl[21].w[1:4]"  1 1 1 0.48735088109970098;
	setAttr -s 5 ".wl[22].w[0:4]"  0.013698458671569824 0.99722969532012939 
		1 1 0.15924286842346191;
	setAttr -s 5 ".wl[23].w[0:4]"  0.064529478549957275 0.98051893711090077 
		1 1 0.031641602516174316;
	setAttr -s 4 ".wl[24].w[1:4]"  0.9786410927772522 1 1 0.070845127105712891;
	setAttr -s 4 ".wl[25].w[1:4]"  0.99556815624237061 1 1 0.32949304580688477;
	setAttr -s 5 ".wl[26].w[0:4]"  0.14229786396026611 1 1 0.10935616493225098 
		0.021396994590759277;
	setAttr -s 5 ".wl[27].w[0:4]"  0.37041366100311279 1 1 0.10593342781066896 
		0.005272984504699707;
	setAttr -s 4 ".wl[28].w[0:3]"  0.67740797996520996 1 1 0.12299752235412598;
	setAttr -s 4 ".wl[29].w[0:3]"  0.72575640678405762 1 0.97668641805648804 
		0.14482307434082031;
	setAttr -s 4 ".wl[30].w[0:3]"  0.42642444372177118 1 0.97106671333312988 
		0.13617801666259766;
	setAttr -s 4 ".wl[31].w[0:3]"  0.14926373958587646 1 1 0.10870242118835448;
	setAttr -s 5 ".wl[32].w[0:4]"  0.0021952390670776367 1 1 0.6641729474067688 
		0.21258366107940671;
	setAttr -s 5 ".wl[33].w[0:4]"  0.07765495777130127 1 1 0.65379977226257324 
		0.1488490104675293;
	setAttr -s 5 ".wl[34].w[0:4]"  0.30862319469451904 1 1 0.67666631937026978 
		0.015172779560089111;
	setAttr -s 4 ".wl[35].w[0:3]"  0.3901455402374267 1 1 0.71454596519470215;
	setAttr -s 5 ".wl[36].w[0:4]"  0.15534776449203491 1 1 0.69997698068618774 
		0.00019919872283935547;
	setAttr -s 5 ".wl[37].w[0:4]"  0.0078406333923339844 1 1 0.65370339155197144 
		0.074409723281860352;
	setAttr -s 4 ".wl[38].w";
	setAttr ".wl[38].w[2]" 0.72882795333862305;
	setAttr ".wl[38].w[3]" 1;
	setAttr ".wl[38].w[4]" 0.089138507843017578;
	setAttr ".wl[38].w[7]" 0.40597933530807495;
	setAttr -s 3 ".wl[39].w[2:4]"  1 1 0.35156279802322388;
	setAttr -s 3 ".wl[40].w[2:4]"  0.62158894538879395 1 0.092297673225402832;
	setAttr -s 4 ".wl[41].w";
	setAttr ".wl[41].w[3]" 0.81587523221969604;
	setAttr ".wl[41].w[4]" 0.78489029407501221;
	setAttr ".wl[41].w[7]" 0.4470970630645752;
	setAttr ".wl[41].w[8]" 0.52958738803863525;
	setAttr -s 2 ".wl[42].w[3:4]"  1 1;
	setAttr -s 2 ".wl[43].w[3:4]"  0.77808904647827148 0.79686862230300892;
	setAttr -s 4 ".wl[44].w";
	setAttr ".wl[44].w[3]" 0.072004556655883789;
	setAttr ".wl[44].w[4]" 0.70985186100006104;
	setAttr ".wl[44].w[7]" 0.38086467981338507;
	setAttr ".wl[44].w[8]" 0.92878758907318115;
	setAttr -s 2 ".wl[45].w[3:4]"  1 1;
	setAttr -s 2 ".wl[46].w[3:4]"  0.07937312126159668 0.72783994674682628;
	setAttr -s 2 ".wl[47].w";
	setAttr ".wl[47].w[4]" 0.0471077561378479;
	setAttr ".wl[47].w[8]" 0.89172697067260731;
	setAttr -s 2 ".wl[48].w[3:4]"  0.02328181266784668 1;
	setAttr ".wl[49].w[4]"  0.07937312126159668;
	setAttr -s 4 ".wl[50].w";
	setAttr ".wl[50].w[3]" 0.00055146217346191406;
	setAttr ".wl[50].w[4]" 0.59326720237731934;
	setAttr ".wl[50].w[7]" 0.0001468658447265625;
	setAttr ".wl[50].w[8]" 0.58430826663970947;
	setAttr -s 2 ".wl[51].w[3:4]"  0.70601600408554077 1;
	setAttr -s 2 ".wl[52].w[3:4]"  0.0014725923538208008 0.62156140804290771;
	setAttr -s 4 ".wl[53].w";
	setAttr ".wl[53].w[3]" 0.30123937129974365;
	setAttr ".wl[53].w[4]" 0.86094450950622559;
	setAttr ".wl[53].w[7]" 0.01335299015045166;
	setAttr ".wl[53].w[8]" 0.54355359077453613;
	setAttr -s 2 ".wl[54].w[3:4]"  0.99566590785980225 1;
	setAttr -s 2 ".wl[55].w[3:4]"  0.30369919538497925 0.8730853796005249;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[1]" 0.00094914436340332031;
	setAttr ".wl[56].w[3]" 0.96716821193695068;
	setAttr ".wl[56].w[4]" 0.89857876300811779;
	setAttr ".wl[56].w[7]" 0.084180057048797594;
	setAttr ".wl[56].w[8]" 0.21509778499603271;
	setAttr -s 4 ".wl[57].w[1:4]"  0.1919243335723877 1 1 0.81729376316070557;
	setAttr -s 2 ".wl[58].w[3:4]"  0.95024114847183228 0.90630173683166493;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[1]" 0.10280501842498781;
	setAttr ".wl[59].w[2]" 1;
	setAttr ".wl[59].w[3]" 1;
	setAttr ".wl[59].w[4]" 0.34930688142776489;
	setAttr ".wl[59].w[7]" 0.14531439542770386;
	setAttr -s 4 ".wl[60].w[1:4]"  0.055043578147888184 0.97306716442108165 
		1 0.35415446758270264;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[1]" 0.056811273097991943;
	setAttr ".wl[61].w[2]" 1;
	setAttr ".wl[61].w[3]" 1;
	setAttr ".wl[61].w[4]" 0.05854332447052002;
	setAttr ".wl[61].w[7]" 0.026416361331939697;
	setAttr -s 4 ".wl[62].w[1:4]"  0.024629652500152588 0.94878482818603516 
		1 0.0090597867965698242;
	setAttr -s 4 ".wl[63].w[1:4]"  0.037015318870544434 0.98990797996520996 
		1 0.059656620025634766;
	setAttr -s 2 ".wl[64].w[2:3]"  0.18018805980682373 1;
	setAttr -s 2 ".wl[65].w[2:3]"  0.07937312126159668 1;
	setAttr -s 3 ".wl[66].w";
	setAttr ".wl[66].w[2]" 0.21513849496841431;
	setAttr ".wl[66].w[3]" 1;
	setAttr ".wl[66].w[7]" 0.066610574722290039;
	setAttr -s 2 ".wl[67].w[3:4]"  0.12586450576782229 1;
	setAttr -s 2 ".wl[68].w[3:4]"  0.87790930271148693 1;
	setAttr -s 2 ".wl[69].w[3:4]"  0.11841470003128052 1;
	setAttr -s 2 ".wl[70].w[3:4]"  0.86995595693588257 1;
	setAttr -s 2 ".wl[71].w[3:4]"  1 1;
	setAttr -s 2 ".wl[72].w[3:4]"  1 1;
	setAttr -s 4 ".wl[73].w";
	setAttr ".wl[73].w[3]" 0.40601682662963862;
	setAttr ".wl[73].w[6]" 0.72885423898696899;
	setAttr ".wl[73].w[7]" 1;
	setAttr ".wl[73].w[8]" 0.089089393615722656;
	setAttr -s 3 ".wl[74].w[6:8]"  1 1 0.35150134563446045;
	setAttr -s 3 ".wl[75].w[6:8]"  0.62159633636474609 1 0.092262744903564453;
	setAttr -s 4 ".wl[76].w";
	setAttr ".wl[76].w[3]" 0.44716250896453857;
	setAttr ".wl[76].w[4]" 0.52968329191207886;
	setAttr ".wl[76].w[7]" 0.81582826375961315;
	setAttr ".wl[76].w[8]" 0.78481876850128174;
	setAttr -s 2 ".wl[77].w[7:8]"  1 1;
	setAttr -s 2 ".wl[78].w[7:8]"  0.7780727744102478 0.79685384035110485;
	setAttr -s 4 ".wl[79].w";
	setAttr ".wl[79].w[3]" 0.38096791505813599;
	setAttr ".wl[79].w[4]" 0.92883610725402832;
	setAttr ".wl[79].w[7]" 0.071946859359741211;
	setAttr ".wl[79].w[8]" 0.7097594141960144;
	setAttr -s 2 ".wl[80].w[7:8]"  1 1;
	setAttr -s 2 ".wl[81].w[7:8]"  0.07937312126159668 0.7278321385383606;
	setAttr -s 2 ".wl[82].w";
	setAttr ".wl[82].w[4]" 0.89180612564086914;
	setAttr ".wl[82].w[8]" 0.047045111656188965;
	setAttr -s 2 ".wl[83].w[7:8]"  0.023282766342163089 1;
	setAttr ".wl[84].w[8]"  0.07937312126159668;
	setAttr -s 4 ".wl[85].w";
	setAttr ".wl[85].w[3]" 0.00014936923980712891;
	setAttr ".wl[85].w[4]" 0.58441352844238281;
	setAttr ".wl[85].w[7]" 0.00054669380187988281;
	setAttr ".wl[85].w[8]" 0.59316229820251465;
	setAttr -s 2 ".wl[86].w[7:8]"  0.70601624250411987 1;
	setAttr -s 2 ".wl[87].w[7:8]"  0.0014729499816894531 0.62155449390411377;
	setAttr -s 4 ".wl[88].w";
	setAttr ".wl[88].w[3]" 0.013376355171203612;
	setAttr ".wl[88].w[4]" 0.54365503787994385;
	setAttr ".wl[88].w[7]" 0.30115318298339844;
	setAttr ".wl[88].w[8]" 0.86088132858276367;
	setAttr -s 2 ".wl[89].w[7:8]"  0.99566334486007679 1;
	setAttr -s 2 ".wl[90].w[7:8]"  0.3036959171295166 0.87308013439178467;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[3]" 0.084218621253967285;
	setAttr ".wl[91].w[4]" 0.21518373489379883;
	setAttr ".wl[91].w[5]" 0.00094890594482421875;
	setAttr ".wl[91].w[7]" 0.96714913845062256;
	setAttr ".wl[91].w[8]" 0.89853161573410034;
	setAttr -s 4 ".wl[92].w[5:8]"  0.19191473722457889 1 1 0.81725430488586437;
	setAttr -s 2 ".wl[93].w[7:8]"  0.95023524761199951 0.90629142522811879;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[3]" 0.14534449577331543;
	setAttr ".wl[94].w[5]" 0.10279512405395508;
	setAttr ".wl[94].w[6]" 1;
	setAttr ".wl[94].w[7]" 1;
	setAttr ".wl[94].w[8]" 0.34923458099365234;
	setAttr -s 4 ".wl[95].w[5:8]"  0.055034101009368896 0.97307127714157104 
		1 0.35410451889038086;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[3]" 0.026431918144226071;
	setAttr ".wl[96].w[5]" 0.056800603866577155;
	setAttr ".wl[96].w[6]" 1;
	setAttr ".wl[96].w[7]" 1;
	setAttr ".wl[96].w[8]" 0.058506011962890625;
	setAttr -s 4 ".wl[97].w[5:8]"  0.024621486663818359 0.94877582788467407 
		1 0.0090450048446655273;
	setAttr -s 4 ".wl[98].w[5:8]"  0.037005782127380371 0.98990398645401012 
		1 0.059624075889587402;
	setAttr -s 2 ".wl[99].w[6:7]"  0.18018531799316409 1;
	setAttr -s 2 ".wl[100].w[6:7]"  0.07937312126159668 1;
	setAttr -s 3 ".wl[101].w";
	setAttr ".wl[101].w[3]" 0.066634893417358398;
	setAttr ".wl[101].w[6]" 0.21514320373535156;
	setAttr ".wl[101].w[7]" 1;
	setAttr -s 2 ".wl[102].w[7:8]"  0.1258847713470459 1;
	setAttr -s 2 ".wl[103].w[7:8]"  0.8779292106628418 1;
	setAttr -s 2 ".wl[104].w[7:8]"  0.11838126182556152 1;
	setAttr -s 2 ".wl[105].w[7:8]"  0.86991816759109508 1;
	setAttr -s 2 ".wl[106].w[7:8]"  1 1;
	setAttr -s 2 ".wl[107].w[7:8]"  1 1;
	setAttr -s 3 ".wl[108].w[6:8]"  1 1 0.17586946487426758;
	setAttr -s 3 ".wl[109].w[6:8]"  1 1 0.088680267333984361;
	setAttr -s 4 ".wl[110].w";
	setAttr ".wl[110].w[3]" 0.1197868585586548;
	setAttr ".wl[110].w[6]" 1;
	setAttr ".wl[110].w[7]" 1;
	setAttr ".wl[110].w[8]" 0.35696220397949219;
	setAttr -s 3 ".wl[111].w[6:8]"  0.99903881549835205 1 0.87587076425552368;
	setAttr -s 3 ".wl[112].w[6:8]"  0.99623155593872081 1 0.97377485036849987;
	setAttr -s 3 ".wl[113].w[6:8]"  1 1 0.66021472215652466;
	setAttr -s 3 ".wl[114].w";
	setAttr ".wl[114].w[0]" 0.81588423252105713;
	setAttr ".wl[114].w[5]" 1;
	setAttr ".wl[114].w[9]" 0.031585335731506348;
	setAttr -s 4 ".wl[115].w";
	setAttr ".wl[115].w[0]" 1;
	setAttr ".wl[115].w[5]" 1;
	setAttr ".wl[115].w[9]" 0.3425602912902832;
	setAttr ".wl[115].w[10]" 0.092222213745117188;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[0]" 1;
	setAttr ".wl[116].w[1]" 0.017423152923583984;
	setAttr ".wl[116].w[5]" 1;
	setAttr ".wl[116].w[9]" 0.52159923315048218;
	setAttr ".wl[116].w[10]" 0.2224774956703186;
	setAttr -s 4 ".wl[117].w";
	setAttr ".wl[117].w[0]" 1;
	setAttr ".wl[117].w[5]" 1;
	setAttr ".wl[117].w[9]" 0.22393286228179932;
	setAttr ".wl[117].w[10]" 0.0095346570014953613;
	setAttr -s 3 ".wl[118].w";
	setAttr ".wl[118].w[0]" 0.8285592794418335;
	setAttr ".wl[118].w[5]" 1;
	setAttr ".wl[118].w[9]" 0.0042870044708251953;
	setAttr -s 2 ".wl[119].w";
	setAttr ".wl[119].w[0]" 0.53752040863037109;
	setAttr ".wl[119].w[5]" 1;
	setAttr -s 3 ".wl[120].w[6:8]"  1 1 0.5742114782333374;
	setAttr -s 4 ".wl[121].w";
	setAttr ".wl[121].w[0]" 0.99718099832534801;
	setAttr ".wl[121].w[5]" 1;
	setAttr ".wl[121].w[9]" 0.17581427097320557;
	setAttr ".wl[121].w[10]" 0.0030258893966674805;
	setAttr -s 3 ".wl[122].w";
	setAttr ".wl[122].w[0]" 0.42961990833282471;
	setAttr ".wl[122].w[5]" 1;
	setAttr ".wl[122].w[6]" 0.17815101146697998;
	setAttr -s 3 ".wl[123].w";
	setAttr ".wl[123].w[0]" 0.77982985973358165;
	setAttr ".wl[123].w[5]" 1;
	setAttr ".wl[123].w[6]" 0.18845582008361816;
	setAttr -s 3 ".wl[124].w";
	setAttr ".wl[124].w[0]" 0.98652172088623036;
	setAttr ".wl[124].w[5]" 1;
	setAttr ".wl[124].w[6]" 0.08977103233337401;
	setAttr -s 3 ".wl[125].w";
	setAttr ".wl[125].w[0]" 0.9853975772857666;
	setAttr ".wl[125].w[5]" 1;
	setAttr ".wl[125].w[6]" 0.023682773113250732;
	setAttr -s 3 ".wl[126].w";
	setAttr ".wl[126].w[0]" 0.723868727684021;
	setAttr ".wl[126].w[5]" 1;
	setAttr ".wl[126].w[6]" 0.020168066024780273;
	setAttr -s 3 ".wl[127].w";
	setAttr ".wl[127].w[0]" 0.37858450412750239;
	setAttr ".wl[127].w[5]" 1;
	setAttr ".wl[127].w[6]" 0.075876712799072266;
	setAttr -s 4 ".wl[128].w[5:8]"  1 1 1 0.60091596841812134;
	setAttr -s 4 ".wl[129].w[5:8]"  1 1 1 0.48728460073471069;
	setAttr -s 5 ".wl[130].w";
	setAttr ".wl[130].w[0]" 0.013698458671569824;
	setAttr ".wl[130].w[5]" 0.99722838401794434;
	setAttr ".wl[130].w[6]" 1;
	setAttr ".wl[130].w[7]" 1;
	setAttr ".wl[130].w[8]" 0.15918654203414917;
	setAttr -s 5 ".wl[131].w";
	setAttr ".wl[131].w[0]" 0.064529478549957275;
	setAttr ".wl[131].w[5]" 0.98051357269287109;
	setAttr ".wl[131].w[6]" 1;
	setAttr ".wl[131].w[7]" 1;
	setAttr ".wl[131].w[8]" 0.031614363193511963;
	setAttr -s 4 ".wl[132].w[5:8]"  0.97863543033599854 1 1 0.070809841156005859;
	setAttr -s 4 ".wl[133].w[5:8]"  0.99556660652160645 1 1 0.32943904399871826;
	setAttr -s 5 ".wl[134].w";
	setAttr ".wl[134].w[0]" 0.14229786396026611;
	setAttr ".wl[134].w[5]" 1;
	setAttr ".wl[134].w[6]" 1;
	setAttr ".wl[134].w[7]" 0.1093231439590454;
	setAttr ".wl[134].w[8]" 0.02137523889541626;
	setAttr -s 5 ".wl[135].w";
	setAttr ".wl[135].w[0]" 0.37041366100311279;
	setAttr ".wl[135].w[5]" 1;
	setAttr ".wl[135].w[6]" 1;
	setAttr ".wl[135].w[7]" 0.10590112209320068;
	setAttr ".wl[135].w[8]" 0.0052610635757446289;
	setAttr -s 4 ".wl[136].w";
	setAttr ".wl[136].w[0]" 0.67740797996520996;
	setAttr ".wl[136].w[5]" 1;
	setAttr ".wl[136].w[6]" 1;
	setAttr ".wl[136].w[7]" 0.12296438217163086;
	setAttr -s 4 ".wl[137].w";
	setAttr ".wl[137].w[0]" 0.72575640678405762;
	setAttr ".wl[137].w[5]" 1;
	setAttr ".wl[137].w[6]" 0.97668278217315685;
	setAttr ".wl[137].w[7]" 0.14478659629821777;
	setAttr -s 4 ".wl[138].w";
	setAttr ".wl[138].w[0]" 0.42642444372177118;
	setAttr ".wl[138].w[5]" 1;
	setAttr ".wl[138].w[6]" 0.97106307744979858;
	setAttr ".wl[138].w[7]" 0.13614130020141602;
	setAttr -s 4 ".wl[139].w";
	setAttr ".wl[139].w[0]" 0.14926373958587646;
	setAttr ".wl[139].w[5]" 1;
	setAttr ".wl[139].w[6]" 1;
	setAttr ".wl[139].w[7]" 0.10866844654083252;
	setAttr -s 5 ".wl[140].w";
	setAttr ".wl[140].w[0]" 0.0021952390670776367;
	setAttr ".wl[140].w[5]" 1;
	setAttr ".wl[140].w[6]" 1;
	setAttr ".wl[140].w[7]" 0.66413462162017822;
	setAttr ".wl[140].w[8]" 0.21252942085266113;
	setAttr -s 5 ".wl[141].w";
	setAttr ".wl[141].w[0]" 0.07765495777130127;
	setAttr ".wl[141].w[5]" 1;
	setAttr ".wl[141].w[6]" 1;
	setAttr ".wl[141].w[7]" 0.65376144647598267;
	setAttr ".wl[141].w[8]" 0.14879608154296875;
	setAttr -s 5 ".wl[142].w";
	setAttr ".wl[142].w[0]" 0.30862319469451904;
	setAttr ".wl[142].w[5]" 1;
	setAttr ".wl[142].w[6]" 1;
	setAttr ".wl[142].w[7]" 0.67663085460662842;
	setAttr ".wl[142].w[8]" 0.015152573585510254;
	setAttr -s 4 ".wl[143].w";
	setAttr ".wl[143].w[0]" 0.3901455402374267;
	setAttr ".wl[143].w[5]" 1;
	setAttr ".wl[143].w[6]" 1;
	setAttr ".wl[143].w[7]" 0.71451061964035034;
	setAttr -s 5 ".wl[144].w";
	setAttr ".wl[144].w[0]" 0.15534776449203491;
	setAttr ".wl[144].w[5]" 1;
	setAttr ".wl[144].w[6]" 1;
	setAttr ".wl[144].w[7]" 0.69993829727172852;
	setAttr ".wl[144].w[8]" 0.00019705295562744141;
	setAttr -s 5 ".wl[145].w";
	setAttr ".wl[145].w[0]" 0.0078406333923339844;
	setAttr ".wl[145].w[5]" 1;
	setAttr ".wl[145].w[6]" 1;
	setAttr ".wl[145].w[7]" 0.65366274118423462;
	setAttr ".wl[145].w[8]" 0.074374198913574219;
	setAttr -s 3 ".wl[146].w";
	setAttr ".wl[146].w[0]" 1;
	setAttr ".wl[146].w[1]" 0.0032042264938354492;
	setAttr ".wl[146].w[5]" 0.0032011270523071289;
	setAttr -s 2 ".wl[147].w[0:1]"  1 0.56245660781860352;
	setAttr -s 2 ".wl[148].w[0:1]"  0.97288763523101807 1;
	setAttr -s 2 ".wl[149].w[0:1]"  0.65963959693908691 1;
	setAttr -s 2 ".wl[150].w[0:1]"  0.56489014625549316 1;
	setAttr -s 2 ".wl[151].w[0:1]"  0.71951329708099365 1;
	setAttr -s 3 ".wl[152].w";
	setAttr ".wl[152].w[0]" 0.81047213077545166;
	setAttr ".wl[152].w[1]" 0.44053947925567621;
	setAttr ".wl[152].w[5]" 0.4405331015586853;
	setAttr ".wl[153].w[0]"  1;
	setAttr -s 2 ".wl[154].w[0:1]"  1 0.038074970245361328;
	setAttr -s 2 ".wl[155].w[0:1]"  0.52300930023193359 0.79172492027282715;
	setAttr -s 2 ".wl[156].w[0:1]"  0.098486661911010742 1;
	setAttr -s 2 ".wl[157].w[0:1]"  0.10970914363861084 1;
	setAttr -s 2 ".wl[158].w[0:1]"  0.46896904706954962 0.86708402633666992;
	setAttr -s 3 ".wl[159].w";
	setAttr ".wl[159].w[0]" 0.72004801034927368;
	setAttr ".wl[159].w[1]" 0.0400276780128479;
	setAttr ".wl[159].w[5]" 0.040023207664489746;
	setAttr ".wl[160].w[0]"  0.99917030334472656;
	setAttr ".wl[161].w[0]"  0.73068422079086304;
	setAttr -s 2 ".wl[162].w[0:1]"  0.05998760461807251 0.24798572063446045;
	setAttr ".wl[163].w[1]"  0.77303016185760498;
	setAttr ".wl[164].w[1]"  0.70599818229675293;
	setAttr -s 2 ".wl[165].w[0:1]"  0.38273626565933233 0.39880824089050299;
	setAttr ".wl[166].w[0]"  0.8333899974822998;
	setAttr ".wl[167].w[0]"  0.37881946563720703;
	setAttr ".wl[168].w[0]"  0.07937312126159668;
	setAttr ".wl[169].w[1]"  0.07937312126159668;
	setAttr ".wl[170].w[1]"  0.48981976509094238;
	setAttr ".wl[171].w[1]"  0.47685784101486206;
	setAttr -s 2 ".wl[172].w[0:1]"  0.68774759769439697 0.13203048706054688;
	setAttr ".wl[173].w[0]"  1;
	setAttr -s 2 ".wl[174].w[9:10]"  0.49850916862487793 0.25535881519317627;
	setAttr -s 3 ".wl[175].w[9:11]"  0.31582283973693848 0.07937312126159668 
		8.4638595581054688e-006;
	setAttr -s 4 ".wl[176].w";
	setAttr ".wl[176].w[1]" 0.082893967628479004;
	setAttr ".wl[176].w[9]" 0.019854605197906498;
	setAttr ".wl[176].w[11]" 0.5163954496383667;
	setAttr ".wl[176].w[12]" 0.65907597541809082;
	setAttr -s 3 ".wl[177].w";
	setAttr ".wl[177].w[1]" 0.34836763143539429;
	setAttr ".wl[177].w[11]" 0.68938320875167847;
	setAttr ".wl[177].w[12]" 0.89995932579040527;
	setAttr -s 4 ".wl[178].w";
	setAttr ".wl[178].w[0]" 0.013124704360961914;
	setAttr ".wl[178].w[1]" 0.36212319135665894;
	setAttr ".wl[178].w[11]" 0.0023435354232788086;
	setAttr ".wl[178].w[12]" 0.07937312126159668;
	setAttr -s 2 ".wl[179].w[0:1]"  0.93384993076324463 0.085061132907867418;
	setAttr ".wl[180].w[0]"  1;
	setAttr -s 4 ".wl[181].w";
	setAttr ".wl[181].w[9]" 1;
	setAttr ".wl[181].w[10]" 1;
	setAttr ".wl[181].w[11]" 0.62425720691680908;
	setAttr ".wl[181].w[29]" 0.62425929307937622;
	setAttr -s 5 ".wl[182].w";
	setAttr ".wl[182].w[9]" 0.92951434850692749;
	setAttr ".wl[182].w[10]" 0.91051876544952404;
	setAttr ".wl[182].w[11]" 0.99986135959625244;
	setAttr ".wl[182].w[12]" 0.41925066709518433;
	setAttr ".wl[182].w[29]" 0.00022029876708984375;
	setAttr -s 4 ".wl[183].w[9:12]"  0.43036496639251715 0.26659882068634033 
		1 1;
	setAttr -s 3 ".wl[184].w";
	setAttr ".wl[184].w[9]" 0.023195326328277588;
	setAttr ".wl[184].w[11]" 1;
	setAttr ".wl[184].w[12]" 1;
	setAttr -s 3 ".wl[185].w";
	setAttr ".wl[185].w[0]" 0.056480050086975098;
	setAttr ".wl[185].w[11]" 0.86859607696533203;
	setAttr ".wl[185].w[12]" 0.87593215703964245;
	setAttr -s 3 ".wl[186].w";
	setAttr ".wl[186].w[0]" 0.96001726388931286;
	setAttr ".wl[186].w[9]" 0.0034689903259277344;
	setAttr ".wl[186].w[11]" 0.07937312126159668;
	setAttr -s 2 ".wl[187].w";
	setAttr ".wl[187].w[0]" 1;
	setAttr ".wl[187].w[9]" 0.07937312126159668;
	setAttr -s 5 ".wl[188].w";
	setAttr ".wl[188].w[9]" 0.77509903907775868;
	setAttr ".wl[188].w[10]" 1;
	setAttr ".wl[188].w[11]" 0.78627157211303711;
	setAttr ".wl[188].w[27]" 1;
	setAttr ".wl[188].w[29]" 0.78627133369445812;
	setAttr -s 6 ".wl[189].w";
	setAttr ".wl[189].w[9]" 0.62088972330093384;
	setAttr ".wl[189].w[10]" 1;
	setAttr ".wl[189].w[11]" 1;
	setAttr ".wl[189].w[12]" 0.2142179012298584;
	setAttr ".wl[189].w[27]" 0.4176483154296875;
	setAttr ".wl[189].w[29]" 0.18116337060928345;
	setAttr -s 4 ".wl[190].w[9:12]"  0.37384724617004395 0.947532057762146 
		1 0.88618588447570801;
	setAttr -s 4 ".wl[191].w[9:12]"  0.18905758857727051 0.67735397815704346 
		1 1;
	setAttr -s 4 ".wl[192].w[9:12]"  0.15890085697174072 0.56056559085845947 
		1 0.87664633989334118;
	setAttr -s 6 ".wl[193].w";
	setAttr ".wl[193].w[0]" 0.14537692070007324;
	setAttr ".wl[193].w[9]" 0.28958374261856079;
	setAttr ".wl[193].w[10]" 0.65844273567199707;
	setAttr ".wl[193].w[11]" 0.97946703433990479;
	setAttr ".wl[193].w[12]" 0.14303457736968994;
	setAttr ".wl[193].w[29]" 0.028098821640014648;
	setAttr -s 5 ".wl[194].w";
	setAttr ".wl[194].w[0]" 0.39482349157333374;
	setAttr ".wl[194].w[9]" 0.39483422040939326;
	setAttr ".wl[194].w[10]" 0.73184573650360107;
	setAttr ".wl[194].w[11]" 0.53458237648010254;
	setAttr ".wl[194].w[29]" 0.53458261489868164;
	setAttr -s 5 ".wl[195].w";
	setAttr ".wl[195].w[9]" 1.1920928955078125e-006;
	setAttr ".wl[195].w[10]" 0.94731664657592773;
	setAttr ".wl[195].w[11]" 0.16236340999603271;
	setAttr ".wl[195].w[27]" 1;
	setAttr ".wl[195].w[29]" 0.16236114501953125;
	setAttr -s 4 ".wl[196].w";
	setAttr ".wl[196].w[10]" 0.92245370149612427;
	setAttr ".wl[196].w[11]" 0.40331685543060303;
	setAttr ".wl[196].w[27]" 0.98944061994552612;
	setAttr ".wl[196].w[29]" 0.013999223709106444;
	setAttr -s 4 ".wl[197].w";
	setAttr ".wl[197].w[10]" 0.88266146183013916;
	setAttr ".wl[197].w[11]" 0.63963228464126587;
	setAttr ".wl[197].w[12]" 0.015164017677307127;
	setAttr ".wl[197].w[27]" 0.49893331527709961;
	setAttr -s 4 ".wl[198].w";
	setAttr ".wl[198].w[10]" 0.9037432074546814;
	setAttr ".wl[198].w[11]" 0.79960852861404419;
	setAttr ".wl[198].w[12]" 0.093876838684082031;
	setAttr ".wl[198].w[27]" 0.14781349897384644;
	setAttr -s 5 ".wl[199].w";
	setAttr ".wl[199].w[10]" 0.95366781949996948;
	setAttr ".wl[199].w[11]" 0.82091498374938965;
	setAttr ".wl[199].w[12]" 0.052866458892822266;
	setAttr ".wl[199].w[27]" 0.07937312126159668;
	setAttr ".wl[199].w[29]" 0.0013554692268371582;
	setAttr -s 5 ".wl[200].w";
	setAttr ".wl[200].w[9]" 0.0020903944969177246;
	setAttr ".wl[200].w[10]" 0.99300777912139893;
	setAttr ".wl[200].w[11]" 0.6911320686340332;
	setAttr ".wl[200].w[27]" 0.14397245645523071;
	setAttr ".wl[200].w[29]" 0.10663938522338869;
	setAttr -s 5 ".wl[201].w";
	setAttr ".wl[201].w[9]" 0.0055844783782958984;
	setAttr ".wl[201].w[10]" 0.99937331676483154;
	setAttr ".wl[201].w[11]" 0.40296554565429688;
	setAttr ".wl[201].w[27]" 0.13480019569396973;
	setAttr ".wl[201].w[29]" 0.40296274423599238;
	setAttr -s 3 ".wl[202].w";
	setAttr ".wl[202].w[0]" 1;
	setAttr ".wl[202].w[1]" 0.8662341833114624;
	setAttr ".wl[202].w[5]" 0.86622416973114014;
	setAttr -s 3 ".wl[203].w";
	setAttr ".wl[203].w[0]" 1;
	setAttr ".wl[203].w[1]" 1;
	setAttr ".wl[203].w[5]" 0.11001193523406982;
	setAttr ".wl[204].w[27]"  0.42687225341796869;
	setAttr ".wl[205].w[27]"  1;
	setAttr ".wl[206].w[27]"  0.40166455507278442;
	setAttr ".wl[207].w[27]"  0.40434396266937256;
	setAttr ".wl[208].w[27]"  0.67566829919815063;
	setAttr ".wl[209].w[27]"  0.98987793922424316;
	setAttr ".wl[210].w[27]"  1;
	setAttr ".wl[211].w[27]"  1;
	setAttr -s 2 ".wl[212].w";
	setAttr ".wl[212].w[0]" 1;
	setAttr ".wl[212].w[5]" 0.56243175268173218;
	setAttr -s 2 ".wl[213].w";
	setAttr ".wl[213].w[0]" 0.97288763523101807;
	setAttr ".wl[213].w[5]" 1;
	setAttr -s 2 ".wl[214].w";
	setAttr ".wl[214].w[0]" 0.65963959693908691;
	setAttr ".wl[214].w[5]" 1;
	setAttr -s 2 ".wl[215].w";
	setAttr ".wl[215].w[0]" 0.56489014625549316;
	setAttr ".wl[215].w[5]" 1;
	setAttr -s 2 ".wl[216].w";
	setAttr ".wl[216].w[0]" 0.71951329708099365;
	setAttr ".wl[216].w[5]" 1;
	setAttr -s 2 ".wl[217].w";
	setAttr ".wl[217].w[0]" 1;
	setAttr ".wl[217].w[5]" 0.038065791130065918;
	setAttr -s 2 ".wl[218].w";
	setAttr ".wl[218].w[0]" 0.52300930023193359;
	setAttr ".wl[218].w[5]" 0.7917102575302124;
	setAttr -s 2 ".wl[219].w";
	setAttr ".wl[219].w[0]" 0.098486661911010742;
	setAttr ".wl[219].w[5]" 1;
	setAttr -s 2 ".wl[220].w";
	setAttr ".wl[220].w[0]" 0.10970914363861084;
	setAttr ".wl[220].w[5]" 1;
	setAttr -s 2 ".wl[221].w";
	setAttr ".wl[221].w[0]" 0.46896904706954962;
	setAttr ".wl[221].w[5]" 0.8670811653137207;
	setAttr ".wl[222].w[0]"  0.73068422079086304;
	setAttr -s 2 ".wl[223].w";
	setAttr ".wl[223].w[0]" 0.05998760461807251;
	setAttr ".wl[223].w[5]" 0.2479737401008606;
	setAttr ".wl[224].w[5]"  0.77302038669586171;
	setAttr ".wl[225].w[5]"  0.70598667860031128;
	setAttr -s 2 ".wl[226].w";
	setAttr ".wl[226].w[0]" 0.38273626565933233;
	setAttr ".wl[226].w[5]" 0.39879399538040161;
	setAttr ".wl[227].w[0]"  0.07937312126159668;
	setAttr ".wl[228].w[5]"  0.07937312126159668;
	setAttr ".wl[229].w[5]"  0.48981046676635742;
	setAttr ".wl[230].w[5]"  0.4768339991569519;
	setAttr -s 2 ".wl[231].w";
	setAttr ".wl[231].w[0]" 0.68774759769439697;
	setAttr ".wl[231].w[5]" 0.13200962543487549;
	setAttr -s 3 ".wl[232].w";
	setAttr ".wl[232].w[9]" 0.31582283973693848;
	setAttr ".wl[232].w[10]" 0.07937389612197876;
	setAttr ".wl[232].w[29]" 8.4638595581054688e-006;
	setAttr -s 4 ".wl[233].w";
	setAttr ".wl[233].w[5]" 0.082901477813720703;
	setAttr ".wl[233].w[9]" 0.019854605197906498;
	setAttr ".wl[233].w[29]" 0.51639330387115479;
	setAttr ".wl[233].w[30]" 0.65907579660415649;
	setAttr -s 3 ".wl[234].w";
	setAttr ".wl[234].w[5]" 0.34837079048156738;
	setAttr ".wl[234].w[29]" 0.68937855958938599;
	setAttr ".wl[234].w[30]" 0.89995878934860229;
	setAttr -s 4 ".wl[235].w";
	setAttr ".wl[235].w[0]" 0.013124704360961914;
	setAttr ".wl[235].w[5]" 0.36210739612579346;
	setAttr ".wl[235].w[29]" 0.0023432374000549316;
	setAttr ".wl[235].w[30]" 0.07937312126159668;
	setAttr -s 2 ".wl[236].w";
	setAttr ".wl[236].w[0]" 0.93384993076324463;
	setAttr ".wl[236].w[5]" 0.085043847560882554;
	setAttr -s 5 ".wl[237].w";
	setAttr ".wl[237].w[9]" 0.92951434850692749;
	setAttr ".wl[237].w[10]" 0.91051805019378651;
	setAttr ".wl[237].w[11]" 0.00022023916244506836;
	setAttr ".wl[237].w[29]" 0.99986135959625244;
	setAttr ".wl[237].w[30]" 0.41925233602523809;
	setAttr -s 4 ".wl[238].w";
	setAttr ".wl[238].w[9]" 0.43036496639251715;
	setAttr ".wl[238].w[10]" 0.26659739017486572;
	setAttr ".wl[238].w[29]" 1;
	setAttr ".wl[238].w[30]" 1;
	setAttr -s 3 ".wl[239].w";
	setAttr ".wl[239].w[9]" 0.023195326328277588;
	setAttr ".wl[239].w[29]" 1;
	setAttr ".wl[239].w[30]" 1;
	setAttr -s 3 ".wl[240].w";
	setAttr ".wl[240].w[0]" 0.056480050086975098;
	setAttr ".wl[240].w[29]" 0.86859524250030506;
	setAttr ".wl[240].w[30]" 0.87593233585357666;
	setAttr -s 3 ".wl[241].w";
	setAttr ".wl[241].w[0]" 0.96001726388931286;
	setAttr ".wl[241].w[9]" 0.0034689903259277344;
	setAttr ".wl[241].w[29]" 0.07937312126159668;
	setAttr -s 6 ".wl[242].w";
	setAttr ".wl[242].w[9]" 0.62088972330093384;
	setAttr ".wl[242].w[10]" 1;
	setAttr ".wl[242].w[11]" 0.18116295337676999;
	setAttr ".wl[242].w[27]" 0.4176483154296875;
	setAttr ".wl[242].w[29]" 1;
	setAttr ".wl[242].w[30]" 0.21421986818313599;
	setAttr -s 4 ".wl[243].w";
	setAttr ".wl[243].w[9]" 0.37384724617004395;
	setAttr ".wl[243].w[10]" 0.94753032922744751;
	setAttr ".wl[243].w[29]" 1;
	setAttr ".wl[243].w[30]" 0.88618719577789307;
	setAttr -s 4 ".wl[244].w";
	setAttr ".wl[244].w[9]" 0.18905758857727051;
	setAttr ".wl[244].w[10]" 0.67735022306442261;
	setAttr ".wl[244].w[29]" 1;
	setAttr ".wl[244].w[30]" 1;
	setAttr -s 4 ".wl[245].w";
	setAttr ".wl[245].w[9]" 0.15890085697174072;
	setAttr ".wl[245].w[10]" 0.56056231260299683;
	setAttr ".wl[245].w[29]" 1;
	setAttr ".wl[245].w[30]" 0.87664759159088124;
	setAttr -s 6 ".wl[246].w";
	setAttr ".wl[246].w[0]" 0.14537692070007324;
	setAttr ".wl[246].w[9]" 0.28958374261856079;
	setAttr ".wl[246].w[10]" 0.65844094753265381;
	setAttr ".wl[246].w[11]" 0.028098464012145996;
	setAttr ".wl[246].w[29]" 0.97946667671203613;
	setAttr ".wl[246].w[30]" 0.1430361270904541;
	setAttr -s 4 ".wl[247].w";
	setAttr ".wl[247].w[10]" 0.92245298624038685;
	setAttr ".wl[247].w[11]" 0.013999819755554199;
	setAttr ".wl[247].w[27]" 0.98944061994552612;
	setAttr ".wl[247].w[29]" 0.40331292152404785;
	setAttr -s 4 ".wl[248].w";
	setAttr ".wl[248].w[10]" 0.88266003131866444;
	setAttr ".wl[248].w[27]" 0.49893331527709961;
	setAttr ".wl[248].w[29]" 0.63962769508361816;
	setAttr ".wl[248].w[30]" 0.015164852142333984;
	setAttr -s 4 ".wl[249].w";
	setAttr ".wl[249].w[10]" 0.90374183654785156;
	setAttr ".wl[249].w[27]" 0.14781349897384644;
	setAttr ".wl[249].w[29]" 0.79960417747497547;
	setAttr ".wl[249].w[30]" 0.093878626823425293;
	setAttr -s 5 ".wl[250].w";
	setAttr ".wl[250].w[10]" 0.95366686582565308;
	setAttr ".wl[250].w[11]" 0.0013556480407714844;
	setAttr ".wl[250].w[27]" 0.07937312126159668;
	setAttr ".wl[250].w[29]" 0.82091116905212402;
	setAttr ".wl[250].w[30]" 0.052867770195007331;
	setAttr -s 5 ".wl[251].w";
	setAttr ".wl[251].w[9]" 0.0020903944969177246;
	setAttr ".wl[251].w[10]" 0.99300754070281982;
	setAttr ".wl[251].w[11]" 0.10664069652557372;
	setAttr ".wl[251].w[27]" 0.14397245645523071;
	setAttr ".wl[251].w[29]" 0.69112813472747803;
	setAttr -s 3 ".wl[252].w";
	setAttr ".wl[252].w[0]" 1;
	setAttr ".wl[252].w[1]" 0.11002373695373537;
	setAttr ".wl[252].w[5]" 1;
	setAttr ".wl[253].w[27]"  0.40166455507278442;
	setAttr ".wl[254].w[27]"  0.40434396266937256;
	setAttr ".wl[255].w[27]"  0.67566829919815063;
	setAttr ".wl[256].w[27]"  0.98987793922424316;
	setAttr ".wl[257].w[27]"  1;
	setAttr ".wl[258].w[15]"  0.15972983837127686;
	setAttr ".wl[259].w[15]"  0.77180862426757813;
	setAttr ".wl[260].w[17]"  0.07937312126159668;
	setAttr ".wl[261].w[17]"  0.68226474523544312;
	setAttr -s 6 ".wl[262].w";
	setAttr ".wl[262].w[0]" 0.3935549259185791;
	setAttr ".wl[262].w[9]" 1;
	setAttr ".wl[262].w[10]" 1;
	setAttr ".wl[262].w[11]" 1;
	setAttr ".wl[262].w[12]" 0.42334556579589838;
	setAttr ".wl[262].w[29]" 0.31615316867828369;
	setAttr -s 6 ".wl[263].w";
	setAttr ".wl[263].w[0]" 0.091654837131500244;
	setAttr ".wl[263].w[9]" 1;
	setAttr ".wl[263].w[10]" 1;
	setAttr ".wl[263].w[11]" 1;
	setAttr ".wl[263].w[12]" 0.54736673831939697;
	setAttr ".wl[263].w[29]" 0.36856597661972046;
	setAttr -s 5 ".wl[264].w";
	setAttr ".wl[264].w[9]" 1;
	setAttr ".wl[264].w[10]" 1;
	setAttr ".wl[264].w[11]" 1;
	setAttr ".wl[264].w[12]" 0.39131808280944824;
	setAttr ".wl[264].w[29]" 0.23509383201599121;
	setAttr -s 3 ".wl[265].w";
	setAttr ".wl[265].w[14]" 1;
	setAttr ".wl[265].w[18]" 0.27744245529174805;
	setAttr ".wl[265].w[21]" 0.40143197774887091;
	setAttr -s 2 ".wl[266].w";
	setAttr ".wl[266].w[14]" 0.053288698196411133;
	setAttr ".wl[266].w[18]" 0.93848955631256092;
	setAttr ".wl[267].w[14]"  1;
	setAttr -s 2 ".wl[268].w";
	setAttr ".wl[268].w[14]" 0.64853870868682861;
	setAttr ".wl[268].w[24]" 0.63546991348266602;
	setAttr -s 3 ".wl[269].w";
	setAttr ".wl[269].w[14]" 0.085921764373779297;
	setAttr ".wl[269].w[21]" 0.2909015417098999;
	setAttr ".wl[269].w[24]" 0.34396666288375854;
	setAttr ".wl[270].w[24]"  0.88340497016906738;
	setAttr ".wl[271].w[24]"  1;
	setAttr -s 2 ".wl[272].w";
	setAttr ".wl[272].w[14]" 0.15916121006011963;
	setAttr ".wl[272].w[24]" 0.64675474166870117;
	setAttr -s 3 ".wl[273].w[13:15]"  0.090798258781433105 0.16414046287536621 
		0.95720040798187267;
	setAttr -s 2 ".wl[274].w[13:14]"  1 1;
	setAttr -s 3 ".wl[275].w[13:15]"  1 1 0.00089728832244873047;
	setAttr -s 2 ".wl[276].w";
	setAttr ".wl[276].w[20]" 0.99053382873535156;
	setAttr ".wl[276].w[23]" 0.65019428730010986;
	setAttr ".wl[277].w[20]"  0.97666084766387939;
	setAttr -s 3 ".wl[278].w";
	setAttr ".wl[278].w[20]" 0.17553174495697019;
	setAttr ".wl[278].w[22]" 0.049126923084259033;
	setAttr ".wl[278].w[23]" 1;
	setAttr -s 2 ".wl[279].w[22:23]"  0.01104682683944702 1;
	setAttr -s 3 ".wl[280].w";
	setAttr ".wl[280].w[22]" 0.022795498371124268;
	setAttr ".wl[280].w[23]" 0.52081841230392456;
	setAttr ".wl[280].w[26]" 0.062761187553405762;
	setAttr -s 2 ".wl[281].w[25:26]"  0.14319390058517456 1;
	setAttr -s 2 ".wl[282].w[14:15]"  0.33096730709075928 0.07937312126159668;
	setAttr ".wl[283].w[24]"  0.69388604164123535;
	setAttr ".wl[284].w[14]"  0.29810118675231934;
	setAttr -s 3 ".wl[285].w";
	setAttr ".wl[285].w[14]" 0.068616628646850586;
	setAttr ".wl[285].w[21]" 0.31689411401748657;
	setAttr ".wl[285].w[24]" 0.31093835830688477;
	setAttr ".wl[286].w[24]"  0.90037518739700317;
	setAttr ".wl[287].w[23]"  0.07937312126159668;
	setAttr -s 2 ".wl[288].w[25:26]"  0.15474677085876465 0.97477638721466064;
	setAttr ".wl[289].w[23]"  0.47760212421417231;
	setAttr -s 3 ".wl[290].w";
	setAttr ".wl[290].w[14]" 1;
	setAttr ".wl[290].w[18]" 0.15209043025970459;
	setAttr ".wl[290].w[21]" 0.43086928129196167;
	setAttr ".wl[291].w[23]"  0.61241775751113892;
	setAttr -s 2 ".wl[292].w";
	setAttr ".wl[292].w[20]" 0.07937312126159668;
	setAttr ".wl[292].w[23]" 0.052895426750183105;
	setAttr ".wl[293].w[20]"  0.41170954704284674;
	setAttr -s 2 ".wl[294].w";
	setAttr ".wl[294].w[14]" 0.05664902925491333;
	setAttr ".wl[294].w[18]" 0.89458376169204701;
	setAttr -s 2 ".wl[295].w[14:15]"  0.0095528364181518555 0.27890056371688843;
	setAttr ".wl[296].w[17]"  0.51415562629699707;
	setAttr ".wl[297].w[15]"  0.40286499261856079;
	setAttr ".wl[298].w[17]"  0.29937070608139038;
	setAttr -s 2 ".wl[299].w";
	setAttr ".wl[299].w[14]" 0.07937312126159668;
	setAttr ".wl[299].w[24]" 0.055160045623779297;
	setAttr -s 2 ".wl[300].w[13:14]"  0.7146342396736145 0.85150110721588124;
	setAttr -s 6 ".wl[301].w";
	setAttr ".wl[301].w[9]" 0.98996841907501221;
	setAttr ".wl[301].w[10]" 1;
	setAttr ".wl[301].w[11]" 1;
	setAttr ".wl[301].w[12]" 0.59358572959899902;
	setAttr ".wl[301].w[27]" 0.0079848170280456543;
	setAttr ".wl[301].w[29]" 0.40882247686386114;
	setAttr -s 2 ".wl[302].w[13:14]"  0.76332974433898926 0.78001612424850464;
	setAttr ".wl[303].w[14]"  0.96952998638153076;
	setAttr -s 2 ".wl[304].w[14:15]"  0.40598428249359125 0.08137965202331543;
	setAttr -s 3 ".wl[305].w[13:15]"  0.030405521392822266 0.081415772438049316 
		0.5432586669921875;
	setAttr -s 5 ".wl[306].w";
	setAttr ".wl[306].w[9]" 1;
	setAttr ".wl[306].w[10]" 1;
	setAttr ".wl[306].w[11]" 1;
	setAttr ".wl[306].w[12]" 0.4191050529479981;
	setAttr ".wl[306].w[29]" 0.25422495603561401;
	setAttr -s 6 ".wl[307].w";
	setAttr ".wl[307].w[0]" 0.18290972709655759;
	setAttr ".wl[307].w[9]" 0.99101138114929199;
	setAttr ".wl[307].w[10]" 1;
	setAttr ".wl[307].w[11]" 1;
	setAttr ".wl[307].w[12]" 0.46933716535568237;
	setAttr ".wl[307].w[29]" 0.35638368129730225;
	setAttr -s 2 ".wl[308].w[12:13]"  1 0.49623537063598633;
	setAttr -s 2 ".wl[309].w[12:13]"  1 0.07937312126159668;
	setAttr -s 2 ".wl[310].w[12:13]"  1 1;
	setAttr -s 2 ".wl[311].w[12:13]"  1 1;
	setAttr -s 2 ".wl[312].w[12:13]"  1 0.97700142860412587;
	setAttr -s 2 ".wl[313].w[12:13]"  1 1;
	setAttr -s 2 ".wl[314].w[12:13]"  1 0.80538797378540028;
	setAttr -s 2 ".wl[315].w[12:13]"  1 0.09856706857681273;
	setAttr -s 2 ".wl[316].w[12:13]"  1 0.60651004314422607;
	setAttr -s 2 ".wl[317].w[12:13]"  1 1;
	setAttr -s 2 ".wl[318].w[12:13]"  1 1;
	setAttr -s 2 ".wl[319].w[12:13]"  1 0.8861013650894165;
	setAttr -s 2 ".wl[320].w[12:13]"  1 0.10663557052612305;
	setAttr -s 2 ".wl[321].w[12:13]"  1 0.1224844455718994;
	setAttr -s 3 ".wl[322].w[11:13]"  0.070873618125915527 1 0.055033326148986816;
	setAttr -s 3 ".wl[323].w[11:13]"  0.12287414073944092 1 0.70892757177352905;
	setAttr -s 3 ".wl[324].w[11:13]"  0.10691714286804201 1 0.53710216283798218;
	setAttr -s 3 ".wl[325].w[11:13]"  0.10959553718566896 1 0.2206190824508667;
	setAttr -s 2 ".wl[326].w[11:12]"  0.0017411708831787109 1;
	setAttr -s 2 ".wl[327].w[11:12]"  0.0032249689102172852 1;
	setAttr ".wl[328].w[16]"  0.07937312126159668;
	setAttr ".wl[329].w[16]"  0.15802812576293945;
	setAttr -s 2 ".wl[330].w[15:16]"  0.036002516746520996 0.69988429546356201;
	setAttr ".wl[331].w[16]"  0.30223524570465088;
	setAttr -s 2 ".wl[332].w[19:20]"  0.3688245415687561 0.56617313623428345;
	setAttr -s 4 ".wl[333].w";
	setAttr ".wl[333].w[19]" 0.07937312126159668;
	setAttr ".wl[333].w[20]" 0.32710963487625122;
	setAttr ".wl[333].w[22]" 0.04531562328338623;
	setAttr ".wl[333].w[23]" 0.11081314086914064;
	setAttr -s 4 ".wl[334].w";
	setAttr ".wl[334].w[19]" 0.55561548471450806;
	setAttr ".wl[334].w[20]" 0.91322326660156239;
	setAttr ".wl[334].w[22]" 0.15956562757492063;
	setAttr ".wl[334].w[23]" 0.46522444486618042;
	setAttr -s 2 ".wl[335].w[19:20]"  0.39953261613845825 0.82184994220733643;
	setAttr -s 3 ".wl[336].w[18:20]"  6.67572021484375e-006 0.51752877235412598 
		0.34227174520492554;
	setAttr -s 4 ".wl[337].w";
	setAttr ".wl[337].w[19]" 0.22230279445648193;
	setAttr ".wl[337].w[20]" 0.20288431644439697;
	setAttr ".wl[337].w[22]" 0.09528601169586183;
	setAttr ".wl[337].w[23]" 0.031407535076141357;
	setAttr -s 4 ".wl[338].w";
	setAttr ".wl[338].w[19]" 0.45823651552200317;
	setAttr ".wl[338].w[20]" 0.74037325382232677;
	setAttr ".wl[338].w[22]" 0.1185515522956848;
	setAttr ".wl[338].w[23]" 0.25896263122558594;
	setAttr -s 2 ".wl[339].w[19:20]"  0.2931981086730957 0.59520900249481201;
	setAttr ".wl[340].w[18]"  0.93454420566558827;
	setAttr -s 3 ".wl[341].w";
	setAttr ".wl[341].w[14]" 0.6423262357711792;
	setAttr ".wl[341].w[18]" 0.6386759877204895;
	setAttr ".wl[341].w[21]" 0.22351735830307007;
	setAttr -s 3 ".wl[342].w";
	setAttr ".wl[342].w[14]" 0.66221565008163452;
	setAttr ".wl[342].w[18]" 0.17171746492385864;
	setAttr ".wl[342].w[21]" 0.027493715286254883;
	setAttr ".wl[343].w[18]"  0.07937312126159668;
	setAttr ".wl[344].w[18]"  0.93173140287399292;
	setAttr -s 3 ".wl[345].w";
	setAttr ".wl[345].w[14]" 0.92692142724990845;
	setAttr ".wl[345].w[18]" 0.59675353765487671;
	setAttr ".wl[345].w[21]" 0.23936784267425537;
	setAttr -s 3 ".wl[346].w";
	setAttr ".wl[346].w[14]" 0.94008612632751476;
	setAttr ".wl[346].w[18]" 0.23656892776489255;
	setAttr ".wl[346].w[21]" 0.065292000770568848;
	setAttr ".wl[347].w[18]"  0.13771986961364746;
	setAttr -s 2 ".wl[348].w";
	setAttr ".wl[348].w[14]" 0.042496919631958008;
	setAttr ".wl[348].w[18]" 0.89924019575119019;
	setAttr -s 3 ".wl[349].w";
	setAttr ".wl[349].w[14]" 1;
	setAttr ".wl[349].w[18]" 0.42867445945739746;
	setAttr ".wl[349].w[21]" 0.2688630223274231;
	setAttr -s 3 ".wl[350].w";
	setAttr ".wl[350].w[14]" 1;
	setAttr ".wl[350].w[18]" 0.67034471035003662;
	setAttr ".wl[350].w[21]" 0.37657827138900762;
	setAttr -s 2 ".wl[351].w";
	setAttr ".wl[351].w[14]" 0.044445455074310303;
	setAttr ".wl[351].w[18]" 0.91944372653961182;
	setAttr -s 2 ".wl[352].w[22:23]"  0.15523463487625122 0.36252522468566895;
	setAttr -s 2 ".wl[353].w[22:23]"  0.07937312126159668 0.26039814949035645;
	setAttr -s 2 ".wl[354].w[22:23]"  0.87551593780517589 0.99392753839492798;
	setAttr -s 3 ".wl[355].w";
	setAttr ".wl[355].w[20]" 0.25354713201522827;
	setAttr ".wl[355].w[22]" 0.92799019813537598;
	setAttr ".wl[355].w[23]" 1;
	setAttr -s 2 ".wl[356].w[22:23]"  0.2478402853012085 0.27345383167266846;
	setAttr -s 2 ".wl[357].w[22:23]"  0.15390491485595703 0.18223381042480469;
	setAttr -s 3 ".wl[358].w";
	setAttr ".wl[358].w[22]" 0.73597711324691772;
	setAttr ".wl[358].w[23]" 0.91208195686340332;
	setAttr ".wl[358].w[25]" 0.0002740025520324707;
	setAttr -s 3 ".wl[359].w";
	setAttr ".wl[359].w[20]" 0.2342413067817688;
	setAttr ".wl[359].w[22]" 0.87745320796966564;
	setAttr ".wl[359].w[23]" 0.98047137260437012;
	setAttr -s 4 ".wl[360].w";
	setAttr ".wl[360].w[14]" 0.34256637096405029;
	setAttr ".wl[360].w[18]" 0.0089576244354248047;
	setAttr ".wl[360].w[21]" 0.86367547512054443;
	setAttr ".wl[360].w[22]" 0.064727604389190674;
	setAttr -s 4 ".wl[361].w";
	setAttr ".wl[361].w[21]" 0.73703956604003906;
	setAttr ".wl[361].w[22]" 0.017274618148803711;
	setAttr ".wl[361].w[24]" 0.090674579143524156;
	setAttr ".wl[361].w[25]" 0.22933298349380493;
	setAttr -s 3 ".wl[362].w";
	setAttr ".wl[362].w[21]" 0.07937312126159668;
	setAttr ".wl[362].w[22]" 0.00031411647796630859;
	setAttr ".wl[362].w[25]" 0.0005410313606262207;
	setAttr -s 3 ".wl[363].w";
	setAttr ".wl[363].w[14]" 0.24602711200714111;
	setAttr ".wl[363].w[21]" 0.16738533973693848;
	setAttr ".wl[363].w[22]" 0.018942952156066895;
	setAttr -s 3 ".wl[364].w";
	setAttr ".wl[364].w[14]" 0.68819963932037354;
	setAttr ".wl[364].w[18]" 0.023986160755157471;
	setAttr ".wl[364].w[21]" 0.85305327177047729;
	setAttr -s 3 ".wl[365].w";
	setAttr ".wl[365].w[21]" 0.68830078840255737;
	setAttr ".wl[365].w[24]" 0.14636623859405518;
	setAttr ".wl[365].w[25]" 0.32030868530273438;
	setAttr -s 2 ".wl[366].w";
	setAttr ".wl[366].w[21]" 0.28020721673965454;
	setAttr ".wl[366].w[25]" 0.041224360466003418;
	setAttr -s 2 ".wl[367].w";
	setAttr ".wl[367].w[14]" 0.70777326822280884;
	setAttr ".wl[367].w[21]" 0.45641523599624634;
	setAttr -s 3 ".wl[368].w";
	setAttr ".wl[368].w[14]" 1;
	setAttr ".wl[368].w[18]" 0.019080519676208496;
	setAttr ".wl[368].w[21]" 0.77773821353912354;
	setAttr -s 3 ".wl[369].w";
	setAttr ".wl[369].w[14]" 0.057801961898803711;
	setAttr ".wl[369].w[21]" 0.4384570717811585;
	setAttr ".wl[369].w[24]" 0.28074055910110474;
	setAttr -s 3 ".wl[370].w";
	setAttr ".wl[370].w[14]" 0.068330705165863037;
	setAttr ".wl[370].w[21]" 0.38256430625915527;
	setAttr ".wl[370].w[24]" 0.18965107202529907;
	setAttr -s 3 ".wl[371].w";
	setAttr ".wl[371].w[14]" 1;
	setAttr ".wl[371].w[18]" 0.017660260200500488;
	setAttr ".wl[371].w[21]" 0.73607128858566284;
	setAttr -s 3 ".wl[372].w";
	setAttr ".wl[372].w[22]" 0.08706200122833252;
	setAttr ".wl[372].w[23]" 0.078037381172180176;
	setAttr ".wl[372].w[25]" 0.07937312126159668;
	setAttr -s 2 ".wl[373].w[25:26]"  0.97530227899551392 0.76813030242919922;
	setAttr -s 2 ".wl[374].w[25:26]"  1 1;
	setAttr -s 4 ".wl[375].w";
	setAttr ".wl[375].w[22]" 0.16701489686965942;
	setAttr ".wl[375].w[23]" 0.40110921859741205;
	setAttr ".wl[375].w[25]" 0.40687167644500738;
	setAttr ".wl[375].w[26]" 0.07937312126159668;
	setAttr -s 4 ".wl[376].w";
	setAttr ".wl[376].w[21]" 0.0051145553588867188;
	setAttr ".wl[376].w[22]" 0.1197335720062256;
	setAttr ".wl[376].w[23]" 0.014479756355285645;
	setAttr ".wl[376].w[25]" 0.16768455505371094;
	setAttr -s 3 ".wl[377].w[24:26]"  0.064624667167663574 0.99455934762954723 
		0.67432022094726563;
	setAttr -s 2 ".wl[378].w[25:26]"  1 1;
	setAttr -s 4 ".wl[379].w";
	setAttr ".wl[379].w[22]" 0.24980658292770383;
	setAttr ".wl[379].w[23]" 0.27727127075195313;
	setAttr ".wl[379].w[25]" 0.51008343696594238;
	setAttr ".wl[379].w[26]" 0.087066054344177246;
	setAttr -s 3 ".wl[380].w";
	setAttr ".wl[380].w[21]" 0.3842397928237915;
	setAttr ".wl[380].w[24]" 0.45092815160751343;
	setAttr ".wl[380].w[25]" 0.62503141164779663;
	setAttr -s 2 ".wl[381].w[24:25]"  0.99999988079071045 1;
	setAttr -s 2 ".wl[382].w[24:25]"  0.74241650104522705 0.94428801536560059;
	setAttr -s 3 ".wl[383].w";
	setAttr ".wl[383].w[21]" 0.082356452941894531;
	setAttr ".wl[383].w[24]" 0.039493083953857422;
	setAttr ".wl[383].w[25]" 0.21218657493591309;
	setAttr -s 3 ".wl[384].w";
	setAttr ".wl[384].w[21]" 0.38426810503005981;
	setAttr ".wl[384].w[24]" 0.43146228790283198;
	setAttr ".wl[384].w[25]" 0.56400144100189209;
	setAttr -s 2 ".wl[385].w[24:25]"  0.99628621339797963 0.9995417594909668;
	setAttr -s 2 ".wl[386].w[24:25]"  0.78040218353271484 0.84346890449523915;
	setAttr -s 3 ".wl[387].w";
	setAttr ".wl[387].w[21]" 0.1315159797668457;
	setAttr ".wl[387].w[24]" 0.07937312126159668;
	setAttr ".wl[387].w[25]" 0.14204007387161255;
	setAttr -s 4 ".wl[388].w";
	setAttr ".wl[388].w[14]" 0.023232877254486084;
	setAttr ".wl[388].w[21]" 0.3713301420211792;
	setAttr ".wl[388].w[24]" 0.36537575721740723;
	setAttr ".wl[388].w[25]" 0.0074523091316223145;
	setAttr -s 2 ".wl[389].w[24:25]"  0.95235800743103027 0.23265969753265381;
	setAttr -s 2 ".wl[390].w[24:25]"  0.857230544090271 0.045611381530761719;
	setAttr -s 3 ".wl[391].w";
	setAttr ".wl[391].w[14]" 0.036232948303222656;
	setAttr ".wl[391].w[21]" 0.3055071234703064;
	setAttr ".wl[391].w[24]" 0.24038857221603391;
	setAttr ".wl[392].w[33]"  0.14683258533477783;
	setAttr ".wl[393].w[33]"  0.98626637458801281;
	setAttr ".wl[394].w[35]"  0.07937312126159668;
	setAttr ".wl[395].w[35]"  0.74935901165008545;
	setAttr -s 6 ".wl[396].w";
	setAttr ".wl[396].w[0]" 0.3935549259185791;
	setAttr ".wl[396].w[9]" 1;
	setAttr ".wl[396].w[10]" 1;
	setAttr ".wl[396].w[11]" 0.3161500096321106;
	setAttr ".wl[396].w[29]" 1;
	setAttr ".wl[396].w[30]" 0.42334675788879395;
	setAttr -s 6 ".wl[397].w";
	setAttr ".wl[397].w[0]" 0.091654837131500244;
	setAttr ".wl[397].w[9]" 1;
	setAttr ".wl[397].w[10]" 1;
	setAttr ".wl[397].w[11]" 0.36856275796890253;
	setAttr ".wl[397].w[29]" 1;
	setAttr ".wl[397].w[30]" 0.54736793041229248;
	setAttr -s 5 ".wl[398].w";
	setAttr ".wl[398].w[9]" 1;
	setAttr ".wl[398].w[10]" 1;
	setAttr ".wl[398].w[11]" 0.23509120941162109;
	setAttr ".wl[398].w[29]" 1;
	setAttr ".wl[398].w[30]" 0.39131927490234375;
	setAttr -s 2 ".wl[399].w";
	setAttr ".wl[399].w[32]" 1;
	setAttr ".wl[399].w[36]" 0.13567459583282471;
	setAttr -s 2 ".wl[400].w";
	setAttr ".wl[400].w[32]" 0.050925374031066895;
	setAttr ".wl[400].w[36]" 1;
	setAttr ".wl[401].w[32]"  1;
	setAttr -s 2 ".wl[402].w";
	setAttr ".wl[402].w[32]" 0.64013767242431641;
	setAttr ".wl[402].w[42]" 0.66814678907394409;
	setAttr -s 2 ".wl[403].w";
	setAttr ".wl[403].w[32]" 0.074016213417053223;
	setAttr ".wl[403].w[42]" 0.35612994432449341;
	setAttr ".wl[404].w[42]"  0.79069733619689941;
	setAttr ".wl[405].w[42]"  1;
	setAttr -s 2 ".wl[406].w";
	setAttr ".wl[406].w[32]" 0.15985405445098877;
	setAttr ".wl[406].w[42]" 0.6264265775680542;
	setAttr -s 3 ".wl[407].w[31:33]"  0.090799748897552476 0.16461795568466189 
		1;
	setAttr -s 2 ".wl[408].w[31:32]"  1 1;
	setAttr -s 3 ".wl[409].w[31:33]"  1 1 0.099559545516967773;
	setAttr -s 2 ".wl[410].w";
	setAttr ".wl[410].w[38]" 0.52341294288635254;
	setAttr ".wl[410].w[41]" 0.70082926750183105;
	setAttr ".wl[411].w[38]"  0.93892651796340942;
	setAttr -s 2 ".wl[412].w[40:41]"  0.069970786571502686 1;
	setAttr -s 2 ".wl[413].w[40:41]"  0.010646343231201172 0.99998766183853149;
	setAttr -s 3 ".wl[414].w";
	setAttr ".wl[414].w[40]" 0.018436789512634277;
	setAttr ".wl[414].w[41]" 0.50630933046340942;
	setAttr ".wl[414].w[44]" 0.058650851249694824;
	setAttr -s 2 ".wl[415].w[43:44]"  0.10290235280990601 1;
	setAttr -s 2 ".wl[416].w[32:33]"  0.32675528526306152 0.07937312126159668;
	setAttr ".wl[417].w[42]"  0.61207950115203857;
	setAttr ".wl[418].w[32]"  0.30653417110443115;
	setAttr -s 2 ".wl[419].w";
	setAttr ".wl[419].w[32]" 0.07532656192779541;
	setAttr ".wl[419].w[42]" 0.34718304872512817;
	setAttr -s 2 ".wl[420].w[42:43]"  0.82805895805358876 9.0479850769042969e-005;
	setAttr ".wl[421].w[41]"  0.07937312126159668;
	setAttr -s 2 ".wl[422].w[43:44]"  0.10450625419616701 0.8999553918838501;
	setAttr ".wl[423].w[41]"  0.47924590110778809;
	setAttr -s 2 ".wl[424].w";
	setAttr ".wl[424].w[32]" 1;
	setAttr ".wl[424].w[36]" 0.070511341094970703;
	setAttr -s 2 ".wl[425].w[40:41]"  0.0004425048828125 0.6549370288848877;
	setAttr ".wl[426].w[41]"  0.080442547798156738;
	setAttr ".wl[427].w[38]"  0.07937312126159668;
	setAttr -s 2 ".wl[428].w";
	setAttr ".wl[428].w[32]" 0.064179778099060059;
	setAttr ".wl[428].w[36]" 0.99835699796676636;
	setAttr -s 2 ".wl[429].w[32:33]"  0.011151254177093506 0.3857426643371582;
	setAttr ".wl[430].w[35]"  0.8961794376373291;
	setAttr ".wl[431].w[33]"  0.91096782684326172;
	setAttr ".wl[432].w[35]"  0.46007978916168218;
	setAttr -s 2 ".wl[433].w";
	setAttr ".wl[433].w[32]" 0.07937312126159668;
	setAttr ".wl[433].w[42]" 0.045321226119995117;
	setAttr -s 2 ".wl[434].w[31:32]"  0.71463894844055176 0.84694874286651611;
	setAttr -s 6 ".wl[435].w";
	setAttr ".wl[435].w[9]" 0.98996841907501221;
	setAttr ".wl[435].w[10]" 1;
	setAttr ".wl[435].w[11]" 0.4088201522827149;
	setAttr ".wl[435].w[27]" 0.0079848170280456543;
	setAttr ".wl[435].w[29]" 1;
	setAttr ".wl[435].w[30]" 0.59358739852905273;
	setAttr -s 2 ".wl[436].w[31:32]"  0.76333522796630859 0.77369415760040283;
	setAttr ".wl[437].w[32]"  0.97568714618682861;
	setAttr -s 2 ".wl[438].w[32:33]"  0.41405725479125977 0.16498714685440063;
	setAttr -s 3 ".wl[439].w[31:33]"  0.030407369136810303 0.080701708793640151 
		0.96531832218170155;
	setAttr -s 5 ".wl[440].w";
	setAttr ".wl[440].w[9]" 1;
	setAttr ".wl[440].w[10]" 1;
	setAttr ".wl[440].w[11]" 0.25422286987304688;
	setAttr ".wl[440].w[29]" 1;
	setAttr ".wl[440].w[30]" 0.41910666227340698;
	setAttr -s 6 ".wl[441].w";
	setAttr ".wl[441].w[0]" 0.18290972709655759;
	setAttr ".wl[441].w[9]" 0.99101138114929199;
	setAttr ".wl[441].w[10]" 1;
	setAttr ".wl[441].w[11]" 0.3563811182975769;
	setAttr ".wl[441].w[29]" 1;
	setAttr ".wl[441].w[30]" 0.46933859586715698;
	setAttr -s 2 ".wl[442].w[30:31]"  1 0.49623680114746094;
	setAttr -s 2 ".wl[443].w[30:31]"  1 0.07937312126159668;
	setAttr -s 2 ".wl[444].w[30:31]"  1 1;
	setAttr -s 2 ".wl[445].w[30:31]"  1 1;
	setAttr -s 2 ".wl[446].w[30:31]"  1 0.97700268030166626;
	setAttr -s 2 ".wl[447].w[30:31]"  1 1;
	setAttr -s 2 ".wl[448].w[30:31]"  1 0.80539155006408691;
	setAttr -s 2 ".wl[449].w[30:31]"  1 0.098568081855773926;
	setAttr -s 2 ".wl[450].w[30:31]"  1 0.60651099681854248;
	setAttr -s 2 ".wl[451].w[30:31]"  1 1;
	setAttr -s 2 ".wl[452].w[30:31]"  1 1;
	setAttr -s 2 ".wl[453].w[30:31]"  1 0.8861040472984314;
	setAttr -s 2 ".wl[454].w[30:31]"  1 0.10663527250289916;
	setAttr -s 2 ".wl[455].w[30:31]"  1 0.12248510122299194;
	setAttr -s 3 ".wl[456].w[29:31]"  0.070869088172912598 1 0.05503392219543457;
	setAttr -s 3 ".wl[457].w[29:31]"  0.12286835908889772 1 0.70892608165740967;
	setAttr -s 3 ".wl[458].w[29:31]"  0.10691213607788086 1 0.5371057391166687;
	setAttr -s 3 ".wl[459].w[29:31]"  0.1095905303955078 1 0.22062182426452637;
	setAttr -s 2 ".wl[460].w[29:30]"  0.0017404556274414063 1;
	setAttr -s 2 ".wl[461].w[29:30]"  0.0032240152359008789 1;
	setAttr -s 2 ".wl[462].w[34:35]"  0.18410706520080569 0.033848702907562256;
	setAttr -s 2 ".wl[463].w[34:35]"  0.07937312126159668 0.0031897425651550293;
	setAttr -s 2 ".wl[464].w[33:34]"  4.8279762268066406e-006 0.37927085161209106;
	setAttr -s 2 ".wl[465].w[33:34]"  0.00014632940292358398 0.32741010189056396;
	setAttr -s 2 ".wl[466].w[37:38]"  0.72760355472564708 0.29795807600021362;
	setAttr -s 3 ".wl[467].w";
	setAttr ".wl[467].w[37]" 0.07937312126159668;
	setAttr ".wl[467].w[40]" 0.074004054069519043;
	setAttr ".wl[467].w[41]" 0.14181959629058838;
	setAttr -s 4 ".wl[468].w";
	setAttr ".wl[468].w[37]" 0.52627992630004883;
	setAttr ".wl[468].w[38]" 0.35425889492034912;
	setAttr ".wl[468].w[40]" 0.20342648029327393;
	setAttr ".wl[468].w[41]" 0.51203703880310059;
	setAttr -s 2 ".wl[469].w[37:38]"  0.81415367126464844 0.67429226636886597;
	setAttr -s 3 ".wl[470].w[36:38]"  0.059806108474731445 0.84975063800811779 
		0.099332690238952637;
	setAttr -s 3 ".wl[471].w";
	setAttr ".wl[471].w[37]" 0.20085608959198001;
	setAttr ".wl[471].w[40]" 0.13192814588546753;
	setAttr ".wl[471].w[41]" 0.04859161376953125;
	setAttr -s 4 ".wl[472].w";
	setAttr ".wl[472].w[37]" 0.45083016157150274;
	setAttr ".wl[472].w[38]" 0.16830331087112427;
	setAttr ".wl[472].w[40]" 0.15708744525909424;
	setAttr ".wl[472].w[41]" 0.29778909683227539;
	setAttr -s 2 ".wl[473].w[37:38]"  0.71849203109741211 0.3841254711151123;
	setAttr -s 2 ".wl[474].w[36:37]"  1 0.13882482051849365;
	setAttr -s 3 ".wl[475].w";
	setAttr ".wl[475].w[32]" 0.67609608173370361;
	setAttr ".wl[475].w[36]" 0.47661703824996943;
	setAttr ".wl[475].w[39]" 0.27905070781707764;
	setAttr -s 3 ".wl[476].w";
	setAttr ".wl[476].w[32]" 0.64551961421966553;
	setAttr ".wl[476].w[36]" 0.07937312126159668;
	setAttr ".wl[476].w[39]" 0.052590847015380859;
	setAttr -s 2 ".wl[477].w[36:37]"  0.22963953018188477 0.0018275976181030273;
	setAttr ".wl[478].w[36]"  1;
	setAttr -s 3 ".wl[479].w";
	setAttr ".wl[479].w[32]" 0.94656765460968018;
	setAttr ".wl[479].w[36]" 0.44137686491012573;
	setAttr ".wl[479].w[39]" 0.29518866539001465;
	setAttr -s 3 ".wl[480].w";
	setAttr ".wl[480].w[32]" 0.92846250534057617;
	setAttr ".wl[480].w[36]" 0.12438404560089111;
	setAttr ".wl[480].w[39]" 0.096285462379455566;
	setAttr ".wl[481].w[36]"  0.31365019083023071;
	setAttr -s 2 ".wl[482].w";
	setAttr ".wl[482].w[32]" 0.049746990203857422;
	setAttr ".wl[482].w[36]" 0.99921923875808716;
	setAttr -s 2 ".wl[483].w";
	setAttr ".wl[483].w[32]" 1;
	setAttr ".wl[483].w[36]" 0.30478560924530029;
	setAttr -s 2 ".wl[484].w";
	setAttr ".wl[484].w[32]" 1;
	setAttr ".wl[484].w[36]" 0.486255943775177;
	setAttr -s 2 ".wl[485].w";
	setAttr ".wl[485].w[32]" 0.04233705997467041;
	setAttr ".wl[485].w[36]" 0.99957489967346191;
	setAttr -s 2 ".wl[486].w[40:41]"  0.19262826442718503 0.40031659603118896;
	setAttr -s 2 ".wl[487].w[40:41]"  0.07937312126159668 0.26078915596008301;
	setAttr -s 2 ".wl[488].w[40:41]"  0.85813784599304188 0.99019181728363037;
	setAttr -s 2 ".wl[489].w[40:41]"  0.95035493373870839 1;
	setAttr -s 2 ".wl[490].w[40:41]"  0.29176992177963257 0.30671846866607666;
	setAttr -s 2 ".wl[491].w[40:41]"  0.15242278575897217 0.18203377723693848;
	setAttr -s 3 ".wl[492].w";
	setAttr ".wl[492].w[40]" 0.71668928861618042;
	setAttr ".wl[492].w[41]" 0.90142083168029796;
	setAttr ".wl[492].w[43]" 0.0044409632682800293;
	setAttr -s 2 ".wl[493].w[40:41]"  0.90592056512832642 0.98913264274597168;
	setAttr -s 3 ".wl[494].w";
	setAttr ".wl[494].w[32]" 0.37243771553039551;
	setAttr ".wl[494].w[39]" 0.89867889881134033;
	setAttr ".wl[494].w[40]" 0.08218616247177124;
	setAttr -s 4 ".wl[495].w";
	setAttr ".wl[495].w[39]" 0.71972554922103882;
	setAttr ".wl[495].w[40]" 0.014147818088531494;
	setAttr ".wl[495].w[42]" 0.026535630226135257;
	setAttr ".wl[495].w[43]" 0.24843639135360721;
	setAttr -s 3 ".wl[496].w";
	setAttr ".wl[496].w[39]" 0.07937312126159668;
	setAttr ".wl[496].w[40]" 5.4240226745605469e-005;
	setAttr ".wl[496].w[43]" 0.0056769847869873047;
	setAttr -s 3 ".wl[497].w";
	setAttr ".wl[497].w[32]" 0.2292560338973999;
	setAttr ".wl[497].w[39]" 0.20926362276077273;
	setAttr ".wl[497].w[40]" 0.029333114624023441;
	setAttr -s 2 ".wl[498].w";
	setAttr ".wl[498].w[32]" 0.71980047225952148;
	setAttr ".wl[498].w[39]" 0.88880228996276844;
	setAttr -s 3 ".wl[499].w";
	setAttr ".wl[499].w[39]" 0.67100417613983154;
	setAttr ".wl[499].w[42]" 0.1351935863494873;
	setAttr ".wl[499].w[43]" 0.39656925201416016;
	setAttr -s 2 ".wl[500].w";
	setAttr ".wl[500].w[39]" 0.2747417688369751;
	setAttr ".wl[500].w[43]" 0.065550923347473145;
	setAttr -s 2 ".wl[501].w";
	setAttr ".wl[501].w[32]" 0.68965721130371094;
	setAttr ".wl[501].w[39]" 0.50991851091384888;
	setAttr -s 2 ".wl[502].w";
	setAttr ".wl[502].w[32]" 1;
	setAttr ".wl[502].w[39]" 0.34670662879943848;
	setAttr -s 4 ".wl[503].w";
	setAttr ".wl[503].w[32]" 0.064560651779174805;
	setAttr ".wl[503].w[39]" 0.11694669723510742;
	setAttr ".wl[503].w[42]" 0.31793463230133057;
	setAttr ".wl[503].w[43]" 0.043477296829223633;
	setAttr -s 3 ".wl[504].w";
	setAttr ".wl[504].w[32]" 0.056352138519287109;
	setAttr ".wl[504].w[39]" 0.013423800468444824;
	setAttr ".wl[504].w[42]" 0.19684296846389773;
	setAttr -s 2 ".wl[505].w";
	setAttr ".wl[505].w[32]" 1;
	setAttr ".wl[505].w[39]" 0.13260906934738159;
	setAttr -s 3 ".wl[506].w";
	setAttr ".wl[506].w[40]" 0.080420732498168945;
	setAttr ".wl[506].w[41]" 0.074952602386474609;
	setAttr ".wl[506].w[43]" 0.07937312126159668;
	setAttr -s 2 ".wl[507].w[43:44]"  0.93406522274017323 0.61959123611450195;
	setAttr -s 2 ".wl[508].w[43:44]"  1 1;
	setAttr -s 4 ".wl[509].w";
	setAttr ".wl[509].w[40]" 0.15352761745452881;
	setAttr ".wl[509].w[41]" 0.38696086406707758;
	setAttr ".wl[509].w[43]" 0.46610713005065918;
	setAttr ".wl[509].w[44]" 0.07937312126159668;
	setAttr -s 4 ".wl[510].w";
	setAttr ".wl[510].w[39]" 0.0043509602546691895;
	setAttr ".wl[510].w[40]" 0.10991644859313963;
	setAttr ".wl[510].w[41]" 0.013486802577972412;
	setAttr ".wl[510].w[43]" 0.17085707187652588;
	setAttr -s 2 ".wl[511].w[43:44]"  0.96896803379058827 0.53656268119812012;
	setAttr -s 2 ".wl[512].w[43:44]"  1 0.99664223194122314;
	setAttr -s 4 ".wl[513].w";
	setAttr ".wl[513].w[40]" 0.23310947418212891;
	setAttr ".wl[513].w[41]" 0.26545596122741699;
	setAttr ".wl[513].w[43]" 0.57121556997299194;
	setAttr ".wl[513].w[44]" 0.095056533813476563;
	setAttr -s 3 ".wl[514].w";
	setAttr ".wl[514].w[39]" 0.36769390106201166;
	setAttr ".wl[514].w[42]" 0.40899008512496943;
	setAttr ".wl[514].w[43]" 0.68790137767791748;
	setAttr -s 2 ".wl[515].w[42:43]"  0.94414126873016357 1;
	setAttr -s 2 ".wl[516].w[42:43]"  0.58507192134857178 0.9181969165802002;
	setAttr -s 3 ".wl[517].w";
	setAttr ".wl[517].w[39]" 0.078976154327392578;
	setAttr ".wl[517].w[42]" 0.036251485347747803;
	setAttr ".wl[517].w[43]" 0.25988227128982544;
	setAttr -s 3 ".wl[518].w";
	setAttr ".wl[518].w[39]" 0.36833548545837402;
	setAttr ".wl[518].w[42]" 0.47774976491928106;
	setAttr ".wl[518].w[43]" 0.73437827825546276;
	setAttr -s 2 ".wl[519].w[42:43]"  0.97065317630767822 0.99996972084045399;
	setAttr -s 2 ".wl[520].w[42:43]"  0.67181700468063354 0.80603766441345215;
	setAttr -s 3 ".wl[521].w";
	setAttr ".wl[521].w[39]" 0.12660473585128784;
	setAttr ".wl[521].w[42]" 0.07937312126159668;
	setAttr ".wl[521].w[43]" 0.1858217716217041;
	setAttr -s 4 ".wl[522].w";
	setAttr ".wl[522].w[32]" 0.027598798274993896;
	setAttr ".wl[522].w[39]" 0.15180027484893799;
	setAttr ".wl[522].w[42]" 0.40634185075759888;
	setAttr ".wl[522].w[43]" 0.17852878570556641;
	setAttr -s 2 ".wl[523].w[42:43]"  0.89619529247283936 0.4693673849105835;
	setAttr -s 2 ".wl[524].w[42:43]"  0.75931346416473389 0.13662534952163696;
	setAttr -s 3 ".wl[525].w";
	setAttr ".wl[525].w[32]" 0.027596473693847656;
	setAttr ".wl[525].w[39]" 0.0089349746704101563;
	setAttr ".wl[525].w[42]" 0.24751162528991699;
	setAttr -s 45 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.46311460752525702 0.079577002337712477 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.14883236860324842 -0.43407731950309614 0.034260211807780182 1;
	setAttr ".pm[2]" -type "matrix" 7.6941305159871345e-016 1 1.0943119568657173e-016 0
		 -0.99003666642113197 7.8504607955393813e-016 -0.14080979774764352 0 -0.14080979774764352 -4.8495454181588502e-019 0.99003666642113197 0
		 0.21915950336880297 -0.14883236860324864 0.065775358994547811 1;
	setAttr ".pm[3]" -type "matrix" 0.27563735581699983 0.96126169593831856 1.1102230246251563e-016 0
		 -0.95168432500509659 0.27289108889419789 -0.14080979774764349 0 -0.13535506498763145 0.038812440324286886 0.99003666642113164 0
		 -0.013367770096651393 -0.15099708270280587 0.0657753589945477 1;
	setAttr ".pm[4]" -type "matrix" 0.27563735581699983 0.96126169593831856 1.1102230246251563e-016 0
		 -0.95168432500509659 0.27289108889419789 -0.14080979774764349 0 -0.13535506498763145 0.038812440324286886 0.99003666642113164 0
		 -0.025550917872615545 -0.224584035705545 -0.19248029915525736 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.14883236860324839 -0.43407731950309614 0.034260211807780182 1;
	setAttr ".pm[6]" -type "matrix" 1.9005536145417888e-007 2.7030978104153284e-008 -0.99999999999998157 0
		 0.1408097977612055 -0.99003666641920285 -2.4477013791824483e-015 0 -0.99003666641918475 -0.14080979776120289 -1.9196800304450322e-007 0
		 -0.065772896671955128 0.21915985357671872 -0.14883239038923757 1;
	setAttr ".pm[7]" -type "matrix" 1.9005536146254879e-007 0.27563738180083791 -0.96126168848755389 0
		 0.14080979776120547 -0.95168432500324196 -0.27289108889366781 0 -0.99003666641918475 -0.13535501208711281 -0.038812624859512528 0
		 -0.065772896671955086 0.068680093651026453 -0.13513655181194387 1;
	setAttr ".pm[8]" -type "matrix" 1.9005536146254879e-007 0.27563738180083791 -0.96126168848755389 0
		 0.14080979776120547 -0.95168432500324196 -0.27289108889366781 0 -0.99003666641918475 -0.13535501208711281 -0.038812624859512528 0
		 0.19248127206518045 0.097344719411212866 -0.20400353668618268 1;
	setAttr ".pm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.2301898630244245e-019 -0.59250075719660633 0.079577002337712477 1;
	setAttr ".pm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.3109406191097617e-017 -0.75727581947384803 0.079577002337712477 1;
	setAttr ".pm[11]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.17739939593484841 -0.84243017839331813 0.052983103243568128 1;
	setAttr ".pm[12]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 0 1 0 0
		 0.049826270734263579 0 0.99875789996611086 0 -0.26857907453059726 -0.8424308147127888 0.070837585399137218 1;
	setAttr ".pm[13]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 0 1 0 0
		 0.049826270734263579 0 0.99875789996611086 0 -0.53363468753258636 -0.8424308147127888 0.081717999691207632 1;
	setAttr ".pm[14]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 0 1 0 0
		 0.049826270734263579 0 0.99875789996611086 0 -0.94089278715045876 -0.8424308147127888 0.041569576269255053 1;
	setAttr ".pm[15]" -type "matrix" 0.61827938811865613 0 -0.78595839471795181 0 0 1 0 0
		 0.78595839471795181 0 0.61827938811865613 0 -0.71979550074590304 -0.83873283299383439 0.65426597278274423 1;
	setAttr ".pm[16]" -type "matrix" 0.7537149009068207 0 -0.65720152780636554 0 0 1 0 0
		 0.65720152780636554 0 0.7537149009068207 0 -0.90229355391896915 -0.83625007836157883 0.47246580089162082 1;
	setAttr ".pm[17]" -type "matrix" 0.7537149009068207 0 -0.65720152780636554 0 0 1 0 0
		 0.65720152780636554 0 0.7537149009068207 0 -0.99270293944010335 -0.836250017230451 0.47246574857642054 1;
	setAttr ".pm[18]" -type "matrix" 0.94896858187515676 -0.13431389859477588 -0.28533910923342815 0
		 0.14013999120388648 0.99013169975785276 -6.7307270867900115e-016 0 0.28252329723268593 -0.039987420258096783 0.95842662355647956 0
		 -1.2478592625200404 -0.68001366618005599 0.19521240051919453 1;
	setAttr ".pm[19]" -type "matrix" 0.91721962179985683 0.27409432172492787 -0.28910286782299405 0
		 -0.28632078109976283 0.95813381649455509 9.5298768876261875e-014 0 0.27699923410679239 0.082776158933173721 0.95729803709007999 0
		 -0.93668469325490755 -1.179280386055827 0.20006712905745536 1;
	setAttr ".pm[20]" -type "matrix" 0.99875789996611086 5.0507296092526135e-015 -0.049826270734263635 0
		 -2.7359560634762011e-016 1 9.8126574981841834e-014 0 0.049826270734263656 -9.8046709432964366e-014 0.99875789996611086 0
		 -1.3508678667096059 -0.82971192987799436 -0.12936760859310187 1;
	setAttr ".pm[21]" -type "matrix" 0.97793214170176801 -0.12075724018579666 -0.17048875379127815 0
		 0.1225514395755033 0.99246216283441835 -2.5538599013330554e-014 0 0.16920363732663965 -0.020893642208529711 0.98535962208256578 0
		 -1.2627581282701164 -0.70009718734227988 0.18055291805902071 1;
	setAttr ".pm[22]" -type "matrix" 0.93229627090211964 0.28069911336429659 -0.22810451775118201 0
		 -0.28829965773774691 0.95754023797869636 -5.6690763194922072e-015 0 0.21841925421148095 0.065762454396104841 0.97363665141648237 0
		 -0.96174475901713341 -1.1909490462517871 0.2552958439038171 1;
	setAttr ".pm[23]" -type "matrix" 0.99875789996611075 -3.0102861681132091e-016 -0.049826270734263392 0
		 -9.0610586348358712e-018 1 -5.7520973539928323e-015 0 0.049826270734263475 5.7361789603370852e-015 0.99875789996611075 0
		 -1.3941199714460215 -0.83110681810866338 0.0054058888222268805 1;
	setAttr ".pm[24]" -type "matrix" 0.98784259525291851 -0.14122828461528852 -0.064973676428240867 0
		 0.14152733495151268 0.98993434805623481 -7.1111519450717253e-014 0 0.06431967401581741 -0.0091955512668206035 0.99788697825525241 0
		 -1.2833623536292249 -0.6741676444651088 0.18315450340252393 1;
	setAttr ".pm[25]" -type "matrix" 0.95412397371950464 0.29917463024041374 -0.011915678504109619 0
		 -0.29919587141709331 0.95419171581342399 -3.756543687227775e-015 0 0.011369841716916369 0.0035651218135665892 0.99992900578280386 0
		 -0.96105876081084418 -1.2053086489515132 0.11550108676035896 1;
	setAttr ".pm[26]" -type "matrix" 0.99875789996611086 -2.1134177217751714e-016 -0.049826270734263586 0
		 1.4561861982248363e-016 1 -3.7658747663863186e-015 0 0.049826270734263593 3.7526817166622835e-015 0.99875789996611086 0
		 -1.3743524087760848 -0.83054658419990846 0.16773973385146651 1;
	setAttr ".pm[27]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.0559005796650005e-017 -0.92205088175108973 0.098364199693498799 1;
	setAttr ".pm[28]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.981867266410693e-017 -1.3064374672451262 0.098364199693498827 1;
	setAttr ".pm[29]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-016 0 0 -1.2246467991473532e-016 -1 0
		 0.17739900000000006 0.84243000000000001 -0.052983100000000179 1;
	setAttr ".pm[30]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 0.2685790296421961 0.84243100000000004 -0.070837578803530546 1;
	setAttr ".pm[31]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 0.53363512251657041 0.84243100000000004 -0.081718050080597182 1;
	setAttr ".pm[32]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 0.94089242664683637 0.84243100000000004 -0.041569554326761696 1;
	setAttr ".pm[33]" -type "matrix" 0.61827938811865613 -1.2325951644078303e-032 -0.78595839471795181 0
		 9.6252143235433163e-017 -1 7.5717387363829619e-017 0 -0.78595839471795181 -1.224646799147353e-016 -0.61827938811865613 0
		 0.69703179409791438 0.84440280738931983 -0.65293697378790305 1;
	setAttr ".pm[34]" -type "matrix" 0.7537149009068207 0 -0.65720152780636554 0 8.0483974742281585e-017 -1 9.2303454086520245e-017 0
		 -0.65720152780636554 -1.224646799147353e-016 -0.7537149009068207 0 0.8796824453173131 0.84191980738932004 -0.47539743382138067 1;
	setAttr ".pm[35]" -type "matrix" 0.7537149009068207 0 -0.65720152780636554 0 8.0483974742281585e-017 -1 9.2303454086520245e-017 0
		 -0.65720152780636554 -1.224646799147353e-016 -0.7537149009068207 0 0.97008952184277442 0.84191980738931982 -0.47539566765892566 1;
	setAttr ".pm[36]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 1.1465642572991748 0.84817826226710236 0.087680886048307954 1;
	setAttr ".pm[37]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 1.2394803023962178 0.86171626226710241 0.11037241117387324 1;
	setAttr ".pm[38]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 1.3434256708742165 0.82971226226710204 0.13618726573423984 1;
	setAttr ".pm[39]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 1.1810602238691867 0.84957303361245828 -0.036244891755297576 1;
	setAttr ".pm[40]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 1.2898873799985224 0.86311103361245822 -0.022959090806028572 1;
	setAttr ".pm[41]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 1.3944669452836276 0.83110703361245808 -0.0038995266539165324 1;
	setAttr ".pm[42]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 1.1730447347995967 0.84901261808968476 -0.16260429637661428 1;
	setAttr ".pm[43]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 1.2677239398459674 0.86255061808968436 -0.16116722309138343 1;
	setAttr ".pm[44]" -type "matrix" 0.99875789996611086 0 -0.049826270734263579 0 6.1019582968165331e-018 -1 1.22312566531663e-016 0
		 -0.049826270734263579 -1.2246467991473532e-016 -0.99875789996611086 0 1.3697177698269771 0.83054661808968433 -0.16503780292458359 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 45 ".ma";
	setAttr -s 45 ".dpf[0:44]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 45 ".lw";
	setAttr -s 45 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 0;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
	setAttr -s 45 ".ifcl";
	setAttr -s 45 ".ifcl";
createNode groupId -n "groupId138";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:537]";
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId140";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 46 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -0.053975402786643784 1;
	setAttr -s 46 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -0.053975402786643784 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.46311460752525702
		 -0.025601599551068693 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.14883236860324842 -0.029037288022160823
		 0.045316790529932295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.5511151231257827e-017
		 -0.20783956037653464 -6.9388939039072284e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.049908249766115895 0.049908249766115936 -0.70534329698756093 0.70534329698756149 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0.27925268031909273 0 0.19038899211054147
		 -2.7755575615628914e-016 8.3266726846886741e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.012183147775964152 0.073586953002739125
		 0.25825565814980511 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.14883236860324839 -0.029037288022160823
		 0.045316790529932295 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.5209599968368792e-008
		 -0.20783956037653459 2.4585344000627174e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.70534336468888803 -0.049908254561341125 0.70534322928554394 0.049908244980552352 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -0.27925268031909273 0 0 0 -4.163336342344337e-017
		 0.19038899209220156 9.1593399531575415e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.25825416873713547 -0.028664625760186399
		 0.068866984874238812 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.2301898630244245e-019
		 0.12938614967134932 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2586387204795175e-017
		 0.1647750622772417 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.17739939593484841 0.085154358919469986
		 0.026593899094144349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 -0.049846910726924397 0 0 0.094375649226431366
		 6.3631947078146567e-007 -0.0043842011072247056 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.2650556130019891 0
		 -0.010880414292070401 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.40725809961787229 0
		 0.040148423421952566 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 -0.85439779244088732 0 0 0.025208771367208005
		 -0.0036979817189544129 0.15478311196676819 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0.18714488612289343 0 0 0.078839168649931901
		 -0.0024827546322553351 0.022174005348503001 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0904093855211342 -6.1131127937485985e-008
		 5.2315200227415204e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.21311529288046693 0.0057472585138858001
		 0.12243065396420348 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0083920346703223684 -0.11917550500326408 0.06974040346288328 0.99038530324623841 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.096603764913293796
		 0 1.1102230246251563e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00014699783860093972 -0.0019591549628894885 -0.21382934135685897 0.97686905615766062 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.11177740571589144 0
		 -1.9428902930940239e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.017567517509644595 0.1201433929292985 0.14361223513779794 0.98215705128187647 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23982496355244545 0.0071419804863988023
		 0.0038180559162859992 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0037265901815273388 -0.060587537435938081 0.06127830862882646 0.99627317123601089 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.1104691479792772 0
		 8.3266726846886741e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0024898344708962905 -0.029292521209138663 -0.20607718615687912 0.97809403549514751 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.11100994865965774 4.4408920985006262e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.01311630504102583 0.089059054363383891 0.14511320943567663 0.98531142479180067 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23678210769972077 0.0065817465776439876
		 -0.12373628715875395 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00053818413134039053 -0.0075670971192306332 0.070940371649177644 0.99745170964278052 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.095657514629084117
		 -1.1102230246251563e-016 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.0021460475364150503 0.02646175986223414 -0.22100716949365817 0.97491076554593781 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.10696715182759819 -4.4408920985006262e-016
		 -4.163336342344337e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0028700846511768665 -0.018745899207928237 0.15131392767152368 0.98830382432205444 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.5504003944476122e-018
		 0.1647750622772417 -0.018787197355786323 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.0377678460756936e-017
		 0.38438658549403648 -2.7755575615628914e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.17739900000000006
		 0.085154180526151979 0.026593902337712399 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-1 0 0 6.123233995736766e-017 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 -0.049846910726924397 0 0 -0.094375999999999988
		 -1.0000000000287557e-006 0.0043842000000000048 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.26505609287437432
		 0 0.010880471277066636 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.40725730413026584
		 0 -0.040148495753835473 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 -0.85439779244088732 0 0 -0.0092585262961940584
		 -0.0019718073893197907 -0.13848797540404745 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0.18714488612289343 0 0 -0.078841125997762718
		 0.002482999999999902 -0.022171457493925018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.090407076525461316
		 1.1102230246251563e-016 -1.7661624548970245e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.20567183065233827
		 -0.0057472622671023155 -0.12925044037506966 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.092916045097042987
		 -0.01353800000000005 -0.022691525125565243 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.10394536847799896
		 0.032004000000000477 -0.025814854560366599 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.24016779722235049
		 -0.0071420336124582429 -0.0053246625714641199 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.10882715612933568
		 -0.013537999999999941 -0.013285800949269013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.10457956528510516
		 0.032004000000000143 -0.019059564152112039 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.23215230815276044
		 -0.0065816180896847154 0.12103474204985259 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.094679205046370937
		 -0.013537999999999497 -0.0014370732852308499 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.1019938299810097 0.03200399999999981
		 0.0038705798332001606 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 46 ".m";
	setAttr -s 46 ".p";
	setAttr -s 46 ".g[0:45]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no;
	setAttr ".bp" yes;
createNode skinBinding -n "skinBinding1";
	setAttr -s 45 ".l[0:44]"  0.25403546796192722 0.14827334880828855 
		0.11558708733271338 0.12876241377976699 0.1124080554991311 0.14827454192566908 0.11558708802786792 
		0.12876502987360891 0.11240800761788219 0.030208957515049373 0.11066092938322286 
		0.066744897488947769 0.12628465871560582 0.17507671206131314 0.14121395792348579 
		0.057543480961866261 0.023552679631430817 0.017501379928120675 0.060570030022418557 
		0.024394521737286123 0.037763441028104805 0.052995048123948174 0.025857425549365876 
		0.039652040463805327 0.12974400527502861 0.045615009519459626 0.037625958081272559 
		0.12983912229537964 0 0.06674477465812223 0.1262846679842286 0.17507669956560423 
		0.14163058286951802 0.048237192479411328 0.016671288312988697 0.02880778744516016 
		0.06056951921577447 0.02545839738063127 0.040436667610318722 0.024688874472724831 
		0.025565490439888983 0.039358958327903815 0.11991699431621128 0.052730764279419091 
		0.038595812366120419;
	setAttr -s 45 ".rr[0:44]"  0.29094333419464441 0.24609135472817187 
		0.13847638268684836 0.26167572756216151 0.35425428323605729 0.2460899305506451 0.13847898591628011 
		0.2616705211895291 0.35424506932271865 0.27939401343688597 0.24274264277614535 0.25661885862877615 
		0.2769468398107171 0.12553061294148271 0.13224647700436545 0.079846316424286135 0.075012673324916762 
		0.07068371506918418 0.09158350832351303 0.08894932561153325 0.11080126224724188 0.10211457643621356 
		0.10571072654123916 0.12478958191693051 0.095510578444596025 0.104111643847031 0.088552057930866415 
		0.10636501159405091 0 0.2566187022246319 0.27694700186993515 0.12553072986516792 
		0.13226263573393884 0.089579984397691312 0.072796662370401249 0.076889246445056805 
		0.094113629321156966 0.096778691320089746 0.090262926796776277 0.1030911887286433 
		0.10654385861943054 0.12592056627456816 0.093771355143827145 0.1029639902182618 0.085385527845755996;
	setAttr -s 45 ".lr[0:44]"  0.29094333419464441 0.24609135472817187 
		0.13847638268684836 0.26167572756216151 0.35425428323605729 0.2460899305506451 0.13847898591628011 
		0.2616705211895291 0.35424506932271865 0.27939401343688597 0.24274264277614535 0.25661885862877615 
		0.2769468398107171 0.12553061294148271 0.13224647700436545 0.079846316424286135 0.075012673324916762 
		0.07068371506918418 0.09158350832351303 0.08894932561153325 0.11080126224724188 0.10211457643621356 
		0.10571072654123916 0.12478958191693051 0.095510578444596025 0.104111643847031 0.088552057930866415 
		0.10636501159405091 0 0.2566187022246319 0.27694700186993515 0.12553072986516792 
		0.13226263573393884 0.089579984397691312 0.072796662370401249 0.076889246445056805 
		0.094113629321156966 0.096778691320089746 0.090262926796776277 0.1030911887286433 
		0.10654385861943054 0.12592056627456816 0.093771355143827145 0.1029639902182618 0.085385527845755996;
	setAttr -s 45 ".bpm";
	setAttr ".bpm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.46311460752525702 -0.079577002337712477 1;
	setAttr ".bpm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.14883236860324842 0.43407731950309614 -0.034260211807780182 1;
	setAttr ".bpm[2]" -type "matrix" 7.7715611723760958e-016 -0.99003666642113197 -0.14080979774764352 0
		 1 7.7715611723760958e-016 0 0 1.1102230246251563e-016 -0.14080979774764352 0.99003666642113197 0
		 0.14883236860324847 0.22623775912656155 -0.034260211807780189 1;
	setAttr ".bpm[3]" -type "matrix" 0.27563735581699983 -0.95168432500509681 -0.13535506498763147 0
		 0.96126169593831867 0.27289108889419794 0.038812440324286893 0 1.1102230246251563e-016 -0.14080979774764352 0.99003666642113197 0
		 0.14883236860324833 0.037745676054161875 -0.061068847280243144 1;
	setAttr ".bpm[4]" -type "matrix" 0.27563735581699983 -0.95168432500509681 -0.13535506498763147 0
		 0.96126169593831867 0.27289108889419794 0.038812440324286893 0 1.1102230246251563e-016 -0.14080979774764352 0.99003666642113197 0
		 0.22292681848408924 0.0098674620286211094 0.19582076206188076 1;
	setAttr ".bpm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.14883236860324839 0.43407731950309614 -0.034260211807780182 1;
	setAttr ".bpm[6]" -type "matrix" 1.9005536144867108e-007 0.1408097977612055 -0.99003666641918475 0
		 2.7030978108633099e-008 -0.9900366664192034 -0.14080979776120292 0 -0.99999999999998157 -2.4424906541753456e-015 -1.9196800304932535e-007 0
		 -0.14883238381284836 0.22623775912656161 -0.034257753273380119 1;
	setAttr ".bpm[7]" -type "matrix" 1.9005536144867108e-007 0.1408097977612055 -0.99003666641918475 0
		 0.27563738180083786 -0.9516843250032424 -0.13535501208711287 0 -0.96126168848755378 -0.27289108889366792 -0.038812624859512555 0
		 -0.14883237866644861 0.037745676072686307 -0.061066388745842241 1;
	setAttr ".bpm[8]" -type "matrix" 1.9005536144867108e-007 0.1408097977612055 -0.99003666641918475 0
		 0.27563738180083786 -0.9516843250032424 -0.13535501208711287 0 -0.96126168848755378 -0.27289108889366792 -0.038812624859512555 0
		 -0.22293266430513425 0.0098674473287207812 0.19582169987664211 1;
	setAttr ".bpm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.2301898630244245e-019 0.59250075719660633 -0.079577002337712477 1;
	setAttr ".bpm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.3109406191097617e-017 0.75727581947384803 -0.079577002337712477 1;
	setAttr ".bpm[11]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.17739939593484841 0.84243017839331813 -0.052983103243568128 1;
	setAttr ".bpm[12]" -type "matrix" 0.99875789996611086 0 0.049826270734263579 0 0 1 0 0
		 -0.049826270734263579 0 0.99875789996611086 0 0.27177504516127976 0.8424308147127888 -0.057367304350792833 1;
	setAttr ".bpm[13]" -type "matrix" 0.99875789996611086 0 0.049826270734263579 0 0 1 0 0
		 -0.049826270734263579 0 0.99875789996611086 0 0.53704356304559431 0.8424308147127888 -0.055027471346829025 1;
	setAttr ".bpm[14]" -type "matrix" 0.99875789996611086 0 0.049826270734263579 0 0 1 0 0
		 -0.049826270734263579 0 0.99875789996611086 0 0.94179536114915363 0.8424308147127888 0.005363236047312335 1;
	setAttr ".bpm[15]" -type "matrix" 0.61827938811865635 0 0.78595839471795215 0 0 1 0 0
		 -0.78595839471795215 0 0.61827938811865635 0 0.95926055545864397 0.83873283299383439 0.16121015097248181 1;
	setAttr ".bpm[16]" -type "matrix" 0.75371490090682092 0 0.65720152780636587 0 0 1 0 0
		 -0.65720152780636587 0 0.75371490090682092 0 0.99057734276313081 0.83625007836157905 0.23688418786449245 1;
	setAttr ".bpm[17]" -type "matrix" 0.75371490090682092 0 0.65720152780636587 0 0 1 0 0
		 -0.65720152780636587 0 0.75371490090682092 0 1.0587202094306094 0.836250017230451 0.29630141358776252 1;
	setAttr ".bpm[18]" -type "matrix" 0.94896858187515676 0.14013999120388648 0.28252329723268593 0
		 -0.13431389859477583 0.99013169975785276 -0.039987420258096776 0 -0.28533910923342815 -6.7307270867900115e-016 0.95842662355647967 0
		 1.148545680606518 0.8481780732266746 0.13826055917275182 1;
	setAttr ".bpm[19]" -type "matrix" 0.91721962179985661 -0.28632078109976278 0.27699923410679234 0
		 0.27409432172492787 0.95813381649455509 0.082776158933173749 0 -0.2891028678229941 9.5310917136575733e-014 0.95729803709008021 0
		 1.2402196184000871 0.86171612399188591 0.16555337336114695 1;
	setAttr ".bpm[20]" -type "matrix" 0.99875789996611086 -1.5915420902323427e-016 0.049826270734263635 0
		 5.1625370645069779e-015 1 -9.7991059710977879e-014 0 -0.049826270734263656 9.8176584632771144e-014 0.99875789996611086 0
		 1.3427440481965864 0.82971192987800668 0.1965156291348929 1;
	setAttr ".bpm[21]" -type "matrix" 0.97793214170176801 0.1225514395755033 0.16920363732663968 0
		 -0.12075724018579664 0.99246216283441835 -0.020893642208529711 0 -0.17048875379127815 -2.5534262204640615e-014 0.98535962208256589 0
		 1.1811321986184795 0.8495727951991876 0.02112613311901437 1;
	setAttr ".bpm[22]" -type "matrix" 0.93229627090211964 -0.2882996577377468 0.2184192542114809 0
		 0.28069911336429654 0.95754023797869603 0.065762454396104841 0 -0.22810451775118201 -5.6552979532289637e-015 0.97363665141648237 0
		 1.2891635290938237 0.86311094831272739 0.039817914769482959 1;
	setAttr ".bpm[23]" -type "matrix" 0.99875789996611086 1.4842303298236754e-017 0.049826270734263406 0
		 -2.7755575615628914e-016 1 5.7454041524351851e-015 0 -0.049826270734263489 -5.7440531856160587e-015 0.99875789996611108 0
		 1.3926576902622585 0.83110681810866349 0.06406462496578022 1;
	setAttr ".bpm[24]" -type "matrix" 0.98784259525291851 0.14152733495151268 0.06431967401581741 0
		 -0.1412282846152885 0.98993434805623481 -0.0091955512668206018 0 -0.064973676428240867 -7.1110652088979214e-014 0.99788697825525241 0
		 1.1844486795285007 0.84901256129043279 -0.10642138886169256 1;
	setAttr ".bpm[25]" -type "matrix" 0.95412397371950497 -0.29919587141709342 0.011369841716916372 0
		 0.29917463024041374 0.95419171581342399 0.0035651218135665901 0 -0.011915678504109619 -3.7560484090012235e-015 0.99992900578280397 0
		 1.2789432470351392 0.86255071440397213 -0.10026872870358652 1;
	setAttr ".bpm[26]" -type "matrix" 0.99875789996611086 2.409712936119721e-017 0.049826270734263586 0
		 -3.3307724259116356e-016 1 3.7539415404361432e-015 0 -0.049826270734263593 -3.7585508829328185e-015 0.99875789996611086 0
		 1.3810031709943449 0.83054658419990901 -0.099052529118397417 1;
	setAttr ".bpm[27]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.0559005796650005e-017 0.92205088175108973 -0.098364199693498799 1;
	setAttr ".bpm[28]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -6.981867266410693e-017 1.3064374672451262 -0.098364199693498827 1;
	setAttr ".bpm[29]" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-016 0 0 1.2246467991473532e-016 -1 0
		 -0.17739900000000006 0.84243000000000001 -0.052983100000000075 1;
	setAttr ".bpm[30]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -0.27177500000000004 0.84243100000000004 -0.057367300000000079 1;
	setAttr ".bpm[31]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -0.53704400000000008 0.84243100000000004 -0.055027500000000056 1;
	setAttr ".bpm[32]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -0.94179500000000005 0.84243100000000004 0.0053632399999999289 1;
	setAttr ".bpm[33]" -type "matrix" 0.61827938811865635 9.62521432354332e-017 -0.78595839471795215 0
		 0 -1 -1.2246467991473532e-016 0 -0.78595839471795215 7.5717387363829656e-017 -0.61827938811865635 0
		 -0.94414168692444578 0.84440280738931983 0.14414051732293923 1;
	setAttr ".bpm[34]" -type "matrix" 0.75371490090682092 8.0483974742281598e-017 -0.65720152780636587 0
		 0 -1 -1.2246467991473532e-016 0 -0.65720152780636587 9.230345408652027e-017 -0.75371490090682092 0
		 -0.97546168692444579 0.84191980738932004 0.21981451732293936 1;
	setAttr ".bpm[35]" -type "matrix" 0.75371490090682092 8.0483974742281598e-017 -0.65720152780636587 0
		 0 -1 -1.2246467991473532e-016 0 -0.65720152780636587 9.230345408652027e-017 -0.75371490090682092 0
		 -1.0436016869244455 0.84191980738931982 0.27923151732293927 1;
	setAttr ".bpm[36]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.1407712982298639 0.84817826226710236 0.14470099871519457 1;
	setAttr ".bpm[37]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.2324412982298634 0.86171626226710241 0.17199399871519466 1;
	setAttr ".bpm[38]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.3349712982298627 0.82971226226710193 0.20295599871519457 1;
	setAttr ".bpm[39]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.1813991767144272 0.84957303361245828 0.022647954493956134 1;
	setAttr ".bpm[40]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.2894291767144268 0.86311103361245822 0.041339704493956075 1;
	setAttr ".bpm[41]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.392929176714427 0.83110703361245808 0.065586404493956099 1;
	setAttr ".bpm[42]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.1796896615885639 0.84901261808968476 -0.10395388103504716 1;
	setAttr ".bpm[43]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.2741796615885634 0.86255061808968436 -0.097801081035047255 1;
	setAttr ".bpm[44]" -type "matrix" 0.99875789996611086 6.1019582968165331e-018 -0.049826270734263579 0
		 0 -1 -1.2246467991473532e-016 0 -0.049826270734263579 1.22312566531663e-016 -0.99875789996611086 0
		 -1.3762396615885648 0.83054661808968444 -0.096584881035047199 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 45 ".pm";
	setAttr -s 45 ".lm";
	setAttr ".lm[0]" -type "matrix" 1 -7.0819804901924504e-016 2.4520848071249185e-016 0
		 -7.0819804901924504e-016 -0.78589912356196145 0.61835472633799826 0 -2.4520848071249185e-016 -0.61835472633799826 -0.78589912356196145 0
		 9.9309416630906002e-018 0.025043361862998461 0.031828908716737825 1;
	setAttr ".lm[1]" -type "matrix" 1 2.6708655046561144e-016 -2.6708655046561149e-016 0
		 2.6708655046561144e-016 2.2204460492503131e-016 1 0 2.6708655046561149e-016 -1 2.2204460492503131e-016 0
		 4.8202786550399807e-018 -0.018047627806929239 -2.2536895101529911e-017 1;
	setAttr ".lm[2]" -type "matrix" -4.4408920985006262e-016 1.4578351042225069e-015 1 0
		 1.4578351042225069e-015 1 -1.4578351042225063e-015 0 -1 1.4578351042225063e-015 -4.4408920985006262e-016 0
		 0.12366893290811844 -1.8028891169519298e-016 5.4278553586350016e-017 1;
	setAttr ".lm[3]" -type "matrix" 0.9476891554188962 -0.31596068048338616 0.045322324409666222 0
		 -0.31596068048338616 -0.90842171276252148 0.27374959391765802 0 -0.045322324409666222 -0.27374959391765802 -0.96073255734362539 0
		 0.0051018398635088351 0.030815422842050761 0.10814766724941206 1;
	setAttr ".lm[4]" -type "matrix" 0.9476891554188962 -0.31596068048338616 0.045322324409666222 0
		 -0.31596068048338616 -0.90842171276252148 0.27374959391765802 0 -0.045322324409666222 -0.27374959391765802 -0.96073255734362539 0
		 0.004900125160306015 0.029597053775410043 0.10387176381360952 1;
	setAttr ".lm[5]" -type "matrix" 0.99999999999999467 -7.3180389023097257e-008 -7.3179523377310973e-008 0
		 -7.3180389023097257e-008 -1.1829001150376328e-005 -0.99999999993003486 0 7.3179523377310973e-008 0.99999999993003486 -1.18290011557054e-005 0
		 -1.320641347038914e-009 -0.01804659672538908 2.1347321353380045e-007 1;
	setAttr ".lm[6]" -type "matrix" 1 2.1867526565444169e-016 -2.1867526565444061e-016 0
		 2.1867526565444169e-016 -4.8849813083506888e-015 1 0 2.1867526565444061e-016 -1 -4.8849813083506888e-015 0
		 -2.7043412484093042e-017 0.12366927920795634 5.970657811628804e-016 1;
	setAttr ".lm[7]" -type "matrix" -0.24090329317073911 -0.1377326402019366 -0.96072645595012995 0
		 -0.1377326402019366 0.98471252330346914 -0.10663473295469304 0 0.96072645595012995 0.10663473295469304 -0.25619076986727007 0
		 -0.10814733108981218 -0.012003689186553972 0.028838956020617548 1;
	setAttr ".lm[8]" -type "matrix" -0.24090329317073911 -0.1377326402019366 -0.96072645595012995 0
		 -0.1377326402019366 0.98471252330346914 -0.10663473295469304 0 0.96072645595012995 0.10663473295469304 -0.25619076986727007 0
		 -0.10386861774929564 -0.011528778298413145 0.027697978942325025 1;
	setAttr ".lm[9]" -type "matrix" 1 -7.63852674721979e-017 7.6385267472197925e-017 0
		 -7.63852674721979e-017 2.2204460492503131e-016 1 0 -7.6385267472197925e-017 -1 2.2204460492503131e-016 0
		 8.6007129022408967e-018 0.11259648865367022 -6.7077360366261935e-018 1;
	setAttr ".lm[10]" -type "matrix" 0.99999999999846123 -1.30227226469129e-006 1.1754221651450599e-006 0
		 -1.30227226469129e-006 -0.10212597525353262 0.99477147384553566 0 -1.1754221651450599e-006 -0.99477147384553566 -0.1021259752550714 0
		 2.7360523036606957e-008 0.023155482883846508 0.0023772055534255522 1;
	setAttr ".lm[11]" -type "matrix" -0.046404746606489189 -7.055291487174998e-006 -0.99892271945461841 0
		 -7.055291487174998e-006 0.99999999995243027 -6.7351481171790052e-006 0 0.99892271945461841 6.7351481171790052e-006 -0.046404746654058915 0
		 0.0077397305399668909 5.2184448865264878e-008 -0.0003595475684784943 1;
	setAttr ".lm[12]" -type "matrix" -0.041015010515365713 0 -0.99915853042068581 0 0 1 0 0
		 0.99915853042068581 0 -0.041015010515365713 0 0.13410443922944751 0 -0.0055049272139398812 1;
	setAttr ".lm[13]" -type "matrix" -0.098106688523851515 0 0.99517590287691549 0 0 1 0 0
		 -0.99517590287691549 0 -0.098106688523851515 0 0.18516541609215653 0 0.01825402499138826 1;
	setAttr ".lm[14]" -type "matrix" -0.21423482099116353 -0.026788776661411332 0.97641476992099485 0
		 -0.026788776661411332 0.99940897877197332 0.02154192644464379 0 -0.97641476992099485 -0.02154192644464379 -0.21482584221919021 0
		 0.097805867744713851 0.0021578194776607721 0.021518752644367471 1;
	setAttr ".lm[15]" -type "matrix" -0.26936794474781101 0.039974154964174453 0.96220734630184601 0
		 0.039974154964174453 0.99874115848622813 -0.030301242226798707 0 -0.96220734630184601 0.030301242226798707 -0.27062678626158299 0
		 -0.015949175788322174 0.00050226163907102195 -0.0044858046487629491 1;
	setAttr ".lm[16]" -type "matrix" -5.7864743352453729e-007 6.7615948232018657e-007 0.99999999999960398 0
		 6.7615948232018657e-007 0.99999999999954292 -6.7615909106219617e-007 0 -0.99999999999960398 6.7615909106219617e-007 -5.7864789071437883e-007 0
		 0.021652013129145609 -1.464020551707563e-008 1.2528891724308646e-008 1;
	setAttr ".lm[17]" -type "matrix" -5.7864743352453729e-007 6.7615948232018657e-007 0.99999999999960398 0
		 6.7615948232018657e-007 0.99999999999954292 -6.7615909106219617e-007 0 -0.99999999999960398 6.7615909106219617e-007 -5.7864789071437883e-007 0
		 0.017501379928113743 -1.183371714453224e-008 1.0127136579997994e-008 1;
	setAttr ".lm[18]" -type "matrix" -1.1102230246251563e-015 0 1 0 0 1 0 0 -1 0 -1.1102230246251563e-015 0
		 0.027135729277998899 0 3.2012000629579866e-017 1;
	setAttr ".lm[19]" -type "matrix" -1.7763568394002505e-015 0 -1 0 0 1 0 0 1 0 -1.7763568394002505e-015 0
		 0.077062458573289971 0 -1.3475666043544306e-016 1;
	setAttr ".lm[20]" -type "matrix" -0.1243545321973385 0.34620092102627642 0.92988218210832452 0
		 0.34620092102627642 0.89340099204722556 -0.28632078109978526 0 -0.92988218210832452 0.28632078109978526 -0.23095354015011305 0
		 0.035115550947133124 -0.010812457932182646 0.0087216003936908294 1;
	setAttr ".lm[21]" -type "matrix" -6.6613381477509392e-016 0 1 0 0 1 0 0 -1 0 -6.6613381477509392e-016 0
		 0.05213533039469076 0 3.9568852464623488e-017 1;
	setAttr ".lm[22]" -type "matrix" 2.2204460492503131e-016 -4.0004451421879592e-015 1 0
		 -4.0004451421879592e-015 1 4.0004451421879592e-015 0 -1 -4.0004451421879592e-015 2.2204460492503131e-016 0
		 0.081362399879194747 3.2548581735347885e-016 -5.7415018404873565e-018 1;
	setAttr ".lm[23]" -type "matrix" -0.071349579989023804 0.32787976550471681 0.94202128256635587 0
		 0.32787976550471681 0.89965447073911253 -0.28829965773774208 0 -0.94202128256635587 0.28829965773774208 -0.17169510924991127 0
		 0.03735306601408693 -0.011431669694318176 0.0068080614194149583 1;
	setAttr ".lm[24]" -type "matrix" -4.4408920985006262e-016 1.1606229044629598e-015 1 0
		 1.1606229044629598e-015 1 -1.1606229044629597e-015 0 -1 1.1606229044629597e-015 -4.4408920985006262e-016 0
		 -0.027367760874710489 3.1763650115054223e-017 -5.6383867305121118e-018 1;
	setAttr ".lm[25]" -type "matrix" -4.4408920985006262e-016 4.1516409688631627e-015 -1 0
		 4.1516409688631627e-015 1 4.1516409688631611e-015 0 1 -4.1516409688631611e-015 -4.4408920985006262e-016 0
		 0.048241248162447514 -2.0028034226031175e-016 -1.8488620522848905e-017 1;
	setAttr ".lm[26]" -type "matrix" 0.056694248784778349 0.29599538105040241 -0.95350537311100492 0
		 0.29599538105040241 0.90712103102275765 0.29919587141709753 0 0.95350537311100492 -0.29919587141709753 -0.036184720192464104 0
		 0.033419141792091302 -0.010486431993427534 -0.0012682280865116086 1;
	setAttr ".lm[27]" -type "matrix" 1 2.0910635670974518e-016 2.0910635670974508e-016 0
		 2.0910635670974518e-016 -2.2204460492503131e-016 -1 0 -2.0910635670974508e-016 1 -2.2204460492503131e-016 0
		 -2.3452641677571417e-017 0.11215652190873082 3.89394535244834e-018 1;
	setAttr ".lm[28]" -type "matrix" 1 2.0910635670974518e-016 2.0910635670974508e-016 0
		 2.0910635670974518e-016 -2.2204460492503131e-016 -1 0 -2.0910635670974508e-016 1 -2.2204460492503131e-016 0
		 0 0 0 1;
	setAttr ".lm[29]" -type "matrix" -0.046404562736638066 -1.1087612981761552e-005 -0.99892272795961856 0
		 -1.1087612981761552e-005 0.99999999988251664 -1.0584499533656265e-005 0 0.99892272795961856 1.0584499533656265e-005 -0.046404562854121423 0
		 -0.0077396752547368372 -8.2008935057211496e-008 0.00035954357306748901 1;
	setAttr ".lm[30]" -type "matrix" -0.041015150834351699 0 -0.99915852466064436 0 0 1 0 0
		 0.99915852466064436 0 -0.041015150834351699 0 -0.13410447192369315 0 0.0055049474210105975 1;
	setAttr ".lm[31]" -type "matrix" -0.098107053358582386 0 0.99517586691061599 0 0 1 0 0
		 -0.99517586691061599 0 -0.098107053358582386 0 -0.18516501130259136 0 -0.018254053628128684 1;
	setAttr ".lm[32]" -type "matrix" -0.2147081282474339 -0.037899789602073526 0.97594263438616213 0
		 -0.037899789602073526 0.99881749860853086 0.030450130073876081 0 -0.97594263438616213 -0.030450130073876081 -0.21589062963890293 0
		 -0.097767982792221653 -0.0030504331793600754 -0.021627491842093709 1;
	setAttr ".lm[33]" -type "matrix" -0.26933273016305459 0.039976004009432561 0.96221712703856654 0
		 0.039976004009432561 0.99874100709877955 -0.030303792547362457 0 -0.96221712703856654 0.030303792547362457 -0.27059172306427515 0
		 0.0040101411342423759 -0.00012629424441003008 0.0011277194811375266 1;
	setAttr ".lm[34]" -type "matrix" -1.9535666039072197e-005 1.2280506750582921e-015 0.99999999980917909 0
		 1.2280506750582921e-015 1 -1.2280266845047588e-015 0 -0.99999999980917909 1.2280266845047588e-015 -1.9535666039072197e-005 0
		 -0.037382525004299061 4.5906738248205583e-017 -7.3029252431548124e-007 1;
	setAttr ".lm[35]" -type "matrix" -1.9535666039072197e-005 1.2280506750582921e-015 0.99999999980917909 0
		 1.2280506750582921e-015 1 -1.2280266845047588e-015 0 -0.99999999980917909 1.2280266845047588e-015 -1.9535666039072197e-005 0
		 -0.02880778743966303 3.537673170419785e-017 -5.6277931485322567e-007 1;
	setAttr ".lm[36]" -type "matrix" -0.20923108628969225 -0.17618669013615712 0.9618630893993706 0
		 -0.17618669013615712 0.97432934851486475 0.14014482095841094 0 -0.9618630893993706 -0.14014482095841094 -0.23490173777482748 0
		 -0.031446791404905659 -0.0045818422598053838 -0.0076797893898471036 1;
	setAttr ".lm[37]" -type "matrix" -0.12435235298624624 0.3461796637200692 0.92989038748308606 0
		 0.3461796637200692 0.89341387577030651 -0.28630628181676193 0 -0.92989038748308606 0.28630628181676193 -0.23093847721593977 0
		 -0.075646203243973073 0.023290899095062368 -0.018786750803624554 1;
	setAttr ".lm[38]" -type "matrix" -0.12435235298624624 0.3461796637200692 0.92989038748308606 0
		 0.3461796637200692 0.89341387577030651 -0.28630628181676193 0 -0.92989038748308606 0.28630628181676193 -0.23093847721593977 0
		 -0.037601668512684032 0.011577271952570641 -0.0093383824416141178 1;
	setAttr ".lm[39]" -type "matrix" -0.10319640084365655 -0.13723663656956872 0.98514801346599068 0
		 -0.13723663656956872 0.98292788627435268 0.12255152372494447 0 -0.98514801346599068 -0.12255152372494447 -0.1202685145693041 0
		 -0.078735773706183926 -0.0097946591856862848 -0.0096121947338571323 1;
	setAttr ".lm[40]" -type "matrix" -0.071350436115982463 0.32786041196462579 0.94202795368950976 0
		 0.32786041196462579 0.89966639662432812 -0.28828445162960681 0 -0.94202795368950976 0.28828445162960681 -0.17168403949165434 0
		 -0.076373189286709914 0.023372133392105421 -0.013918968746361431 1;
	setAttr ".lm[41]" -type "matrix" -0.071350436115982463 0.32786041196462579 0.94202795368950976 0
		 0.32786041196462579 0.89966639662432812 -0.28828445162960681 0 -0.94202795368950976 0.28828445162960681 -0.17168403949165434 0
		 -0.037077238972985919 0.011346575718272295 -0.0067573049559182157 1;
	setAttr ".lm[42]" -type "matrix" 0.0053131475488937818 -0.14222838691861966 0.98981960801837565 0
		 -0.14222838691861966 0.97966303264627996 0.14153242886639444 0 -0.98981960801837565 -0.14153242886639444 -0.015023819804826257 0
		 0.032320168298933735 0.004621399579946301 0.00049056654429886879 1;
	setAttr ".lm[43]" -type "matrix" 0.05669341647141557 0.29599421754109695 -0.95350578378478235 0
		 0.29599421754109695 0.90712184315513011 0.29919456019966884 0 0.95350578378478235 -0.29919456019966884 -0.036184740373454323 0
		 -0.043520328456847994 0.01365596911295797 0.0016515597628865065 1;
	setAttr ".lm[44]" -type "matrix" 0.05669341647141557 0.29599421754109695 -0.95350578378478235 0
		 0.29599421754109695 0.90712184315513011 0.29919456019966884 0 0.95350578378478235 -0.29919456019966884 -0.036184740373454323 0
		 -0.036801330320968051 0.011547657106430338 0.0013965794499706248 1;
	setAttr ".otw" -type "doubleArray" 526 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.058650851249694824 1 0 0 0 0
		 0 0 0.8999553918838501 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.61959123611450195 1 0.07937312126159668 0 0.53656268119812012
		 0.99664223194122314 0.095056533813476563 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr -s 3 ".fc[0:2]"  0 1 2 0.5 1 2 1 0 2;
	setAttr ".ci" 44;
createNode animCurveTA -n "Character1_Hips_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Hips_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Hips_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftUpLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftUpLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftUpLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftFoot_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftFoot_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftFoot_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 16;
createNode animCurveTA -n "Character1_LeftToeBase_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftToeBase_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftToeBase_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightUpLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightUpLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightUpLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightLeg_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightLeg_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightLeg_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightFoot_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -16;
createNode animCurveTA -n "Character1_RightFoot_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightFoot_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightToeBase_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightToeBase_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_RightToeBase_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Spine_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 24.396834414786401;
createNode animCurveTA -n "Character1_Spine_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Spine_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Spine1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 15.055912172993468;
createNode animCurveTA -n "Character1_Spine1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Spine1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftShoulder_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -59.155929607511041;
createNode animCurveTA -n "Character1_LeftShoulder_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftShoulder_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftShoulder1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftShoulder1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftShoulder1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -92.954520249131136;
createNode animCurveTA -n "Character1_LeftArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 25.30501123159236;
createNode animCurveTA -n "Character1_LeftArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 58.997595195144044;
createNode animCurveTA -n "Character1_LeftForeArm_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -85.947492433867239;
createNode animCurveTA -n "Character1_LeftForeArm_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -13.11558964617103;
createNode animCurveTA -n "Character1_LeftForeArm_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.8853629329815018;
createNode animCurveTA -n "Character1_LeftHand_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHand_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHand_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 41.158736442221567;
createNode animCurveTA -n "Character1_LeftHandIndex1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -60.634043279749477;
createNode animCurveTA -n "Character1_LeftHandIndex2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex3_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex3_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex3_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -60.634043279749477;
createNode animCurveTA -n "Character1_LeftHandMiddle2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle3_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle3_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle3_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -60.634043279749477;
createNode animCurveTA -n "Character1_LeftHandRing2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing3_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing3_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing3_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -48.953387532157357;
createNode animCurveTA -n "Character1_LeftHandThumb1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 10.722612132298202;
createNode animCurveTA -n "Character1_LeftHandThumb2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb3_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb3_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb3_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftArm_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -116.42345439111085;
createNode animCurveTA -n "Character1_LeftArm_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -34.088511653366403;
createNode animCurveTA -n "Character1_LeftArm_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 51.03492209681324;
createNode animCurveTA -n "Character1_LeftForeArm_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftForeArm_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -33.40410431427707;
createNode animCurveTA -n "Character1_LeftForeArm_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHand_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -29.298451207307426;
createNode animCurveTA -n "Character1_LeftHand_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 25.05594956412461;
createNode animCurveTA -n "Character1_LeftHand_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 37.042636203818091;
createNode animCurveTA -n "Character1_LeftHandIndex1_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex1_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex1_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -79.674092269672869;
createNode animCurveTA -n "Character1_LeftHandIndex2_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex2_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex2_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex3_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex3_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandIndex3_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle1_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle1_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle1_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -79.674092269672869;
createNode animCurveTA -n "Character1_LeftHandMiddle2_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle2_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle2_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle3_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle3_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandMiddle3_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing1_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing1_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing1_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -22.011615315191648;
createNode animCurveTA -n "Character1_LeftHandRing2_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing2_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing2_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -63.715075265788293;
createNode animCurveTA -n "Character1_LeftHandRing3_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing3_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandRing3_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb1_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb1_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -48.953387532157357;
createNode animCurveTA -n "Character1_LeftHandThumb1_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb2_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb2_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 10.722612132298202;
createNode animCurveTA -n "Character1_LeftHandThumb2_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb3_rotateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb3_rotateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_LeftHandThumb3_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Neck_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 44.450498069347688;
createNode animCurveTA -n "Character1_Neck_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Neck_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Head_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -73.227692784848202;
createNode animCurveTA -n "Character1_Head_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "Character1_Head_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Character1_LeftHandRing3_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandRing3_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.1019938299810097;
createNode animCurveTL -n "Character1_LeftHandRing3_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.03200399999999981;
createNode animCurveTL -n "Character1_LeftHandRing3_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.0038705798332001606;
createNode animCurveTU -n "Character1_LeftHandRing3_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing3_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing3_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandRing2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.094679205046370937;
createNode animCurveTL -n "Character1_LeftHandRing2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.013537999999999497;
createNode animCurveTL -n "Character1_LeftHandRing2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0014370732852308499;
createNode animCurveTU -n "Character1_LeftHandRing2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandRing1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.23215230815276044;
createNode animCurveTL -n "Character1_LeftHandRing1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0065816180896847154;
createNode animCurveTL -n "Character1_LeftHandRing1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.12103474204985259;
createNode animCurveTU -n "Character1_LeftHandRing1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle3_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandMiddle3_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.10457956528510516;
createNode animCurveTL -n "Character1_LeftHandMiddle3_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.032004000000000143;
createNode animCurveTL -n "Character1_LeftHandMiddle3_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.019059564152112039;
createNode animCurveTU -n "Character1_LeftHandMiddle3_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle3_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle3_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandMiddle2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.10882715612933568;
createNode animCurveTL -n "Character1_LeftHandMiddle2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.013537999999999941;
createNode animCurveTL -n "Character1_LeftHandMiddle2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.013285800949269013;
createNode animCurveTU -n "Character1_LeftHandMiddle2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandMiddle1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.24016779722235049;
createNode animCurveTL -n "Character1_LeftHandMiddle1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0071420336124582429;
createNode animCurveTL -n "Character1_LeftHandMiddle1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0053246625714641199;
createNode animCurveTU -n "Character1_LeftHandMiddle1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex3_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandIndex3_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.10394536847799896;
createNode animCurveTL -n "Character1_LeftHandIndex3_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.032004000000000477;
createNode animCurveTL -n "Character1_LeftHandIndex3_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.025814854560366599;
createNode animCurveTU -n "Character1_LeftHandIndex3_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex3_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex3_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandIndex2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.092916045097042987;
createNode animCurveTL -n "Character1_LeftHandIndex2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.01353800000000005;
createNode animCurveTL -n "Character1_LeftHandIndex2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.022691525125565243;
createNode animCurveTU -n "Character1_LeftHandIndex2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandIndex1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.20567183065233827;
createNode animCurveTL -n "Character1_LeftHandIndex1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0057472622671023155;
createNode animCurveTL -n "Character1_LeftHandIndex1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.12925044037506966;
createNode animCurveTU -n "Character1_LeftHandIndex1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb3_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandThumb3_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.090407076525461316;
createNode animCurveTL -n "Character1_LeftHandThumb3_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1102230246251563e-016;
createNode animCurveTL -n "Character1_LeftHandThumb3_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.7661624548970245e-006;
createNode animCurveTU -n "Character1_LeftHandThumb3_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb3_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb3_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandThumb2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.078841125997762718;
createNode animCurveTL -n "Character1_LeftHandThumb2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.002482999999999902;
createNode animCurveTL -n "Character1_LeftHandThumb2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.022171457493925018;
createNode animCurveTU -n "Character1_LeftHandThumb2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandThumb1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0092585262961940584;
createNode animCurveTL -n "Character1_LeftHandThumb1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0019718073893197907;
createNode animCurveTL -n "Character1_LeftHandThumb1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.13848797540404745;
createNode animCurveTU -n "Character1_LeftHandThumb1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHand_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHand_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.48813688105591146;
createNode animCurveTL -n "Character1_LeftHand_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.01222298118845979;
createNode animCurveTL -n "Character1_LeftHand_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.021742438870073526;
createNode animCurveTU -n "Character1_LeftHand_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHand_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHand_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftForeArm_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftForeArm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.35708388806950719;
createNode animCurveTL -n "Character1_LeftForeArm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.022190109658748979;
createNode animCurveTL -n "Character1_LeftForeArm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.006905284235180234;
createNode animCurveTU -n "Character1_LeftForeArm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftForeArm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftForeArm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftArm_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftArm_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.094375999999999988;
createNode animCurveTL -n "Character1_LeftArm_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.0000000000287557e-006;
createNode animCurveTL -n "Character1_LeftArm_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.0043842000000000048;
createNode animCurveTU -n "Character1_LeftArm_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftArm_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftArm_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftShoulder1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftShoulder1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.17739900000000006;
createNode animCurveTL -n "Character1_LeftShoulder1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.085154180526151979;
createNode animCurveTL -n "Character1_LeftShoulder1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.026593902337712399;
createNode animCurveTU -n "Character1_LeftShoulder1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftShoulder1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftShoulder1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Head_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_Head_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -8.0377678460756936e-017;
createNode animCurveTL -n "Character1_Head_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.38438658549403648;
createNode animCurveTL -n "Character1_Head_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.7755575615628914e-017;
createNode animCurveTU -n "Character1_Head_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Head_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Head_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Neck_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_Neck_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.5504003944476122e-018;
createNode animCurveTL -n "Character1_Neck_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.1647750622772417;
createNode animCurveTL -n "Character1_Neck_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.018787197355786323;
createNode animCurveTU -n "Character1_Neck_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Neck_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Neck_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing3_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandRing3_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.10696715182759819;
createNode animCurveTL -n "Character1_LeftHandRing3_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.4408920985006262e-016;
createNode animCurveTL -n "Character1_LeftHandRing3_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.163336342344337e-017;
createNode animCurveTU -n "Character1_LeftHandRing3_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing3_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing3_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing2_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandRing2_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.095657514629084117;
createNode animCurveTL -n "Character1_LeftHandRing2_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.1102230246251563e-016;
createNode animCurveTL -n "Character1_LeftHandRing2_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 5.5511151231257827e-017;
createNode animCurveTU -n "Character1_LeftHandRing2_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing2_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing2_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing1_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandRing1_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.23678210769972077;
createNode animCurveTL -n "Character1_LeftHandRing1_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.0065817465776439876;
createNode animCurveTL -n "Character1_LeftHandRing1_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.12373628715875395;
createNode animCurveTU -n "Character1_LeftHandRing1_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing1_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandRing1_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle3_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandMiddle3_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.11100994865965774;
createNode animCurveTL -n "Character1_LeftHandMiddle3_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.4408920985006262e-016;
createNode animCurveTL -n "Character1_LeftHandMiddle3_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Character1_LeftHandMiddle3_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle3_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle3_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle2_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandMiddle2_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.1104691479792772;
createNode animCurveTL -n "Character1_LeftHandMiddle2_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Character1_LeftHandMiddle2_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 8.3266726846886741e-017;
createNode animCurveTU -n "Character1_LeftHandMiddle2_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle2_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle2_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle1_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandMiddle1_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.23982496355244545;
createNode animCurveTL -n "Character1_LeftHandMiddle1_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.0071419804863988023;
createNode animCurveTL -n "Character1_LeftHandMiddle1_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.0038180559162859992;
createNode animCurveTU -n "Character1_LeftHandMiddle1_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle1_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandMiddle1_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex3_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandIndex3_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.11177740571589144;
createNode animCurveTL -n "Character1_LeftHandIndex3_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Character1_LeftHandIndex3_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.9428902930940239e-016;
createNode animCurveTU -n "Character1_LeftHandIndex3_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex3_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex3_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex2_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandIndex2_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.096603764913293796;
createNode animCurveTL -n "Character1_LeftHandIndex2_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Character1_LeftHandIndex2_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1102230246251563e-016;
createNode animCurveTU -n "Character1_LeftHandIndex2_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex2_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex2_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex1_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandIndex1_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.21311529288046693;
createNode animCurveTL -n "Character1_LeftHandIndex1_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.0057472585138858001;
createNode animCurveTL -n "Character1_LeftHandIndex1_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.12243065396420348;
createNode animCurveTU -n "Character1_LeftHandIndex1_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex1_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandIndex1_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb3_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandThumb3_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.0904093855211342;
createNode animCurveTL -n "Character1_LeftHandThumb3_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -6.1131127937485985e-008;
createNode animCurveTL -n "Character1_LeftHandThumb3_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 5.2315200227415204e-008;
createNode animCurveTU -n "Character1_LeftHandThumb3_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb3_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb3_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb2_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandThumb2_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.078839168649931901;
createNode animCurveTL -n "Character1_LeftHandThumb2_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0024827546322553351;
createNode animCurveTL -n "Character1_LeftHandThumb2_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.022174005348503001;
createNode animCurveTU -n "Character1_LeftHandThumb2_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb2_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb2_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb1_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHandThumb1_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.025208771367208005;
createNode animCurveTL -n "Character1_LeftHandThumb1_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0036979817189544129;
createNode animCurveTL -n "Character1_LeftHandThumb1_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.15478311196676819;
createNode animCurveTU -n "Character1_LeftHandThumb1_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb1_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHandThumb1_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHand_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftHand_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.48227721329210249;
createNode animCurveTL -n "Character1_LeftHand_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 8.3266726846886741e-017;
createNode animCurveTL -n "Character1_LeftHand_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.04014842342195251;
createNode animCurveTU -n "Character1_LeftHand_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHand_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftHand_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftForeArm_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftForeArm_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.34368287349674065;
createNode animCurveTL -n "Character1_LeftForeArm_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.7470027081099033e-016;
createNode animCurveTL -n "Character1_LeftForeArm_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.045574191208958531;
createNode animCurveTU -n "Character1_LeftForeArm_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftForeArm_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftForeArm_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftArm_visibility1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftArm_translateX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.094375649226431366;
createNode animCurveTL -n "Character1_LeftArm_translateY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 6.3631947078146567e-007;
createNode animCurveTL -n "Character1_LeftArm_translateZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.0043842011072247056;
createNode animCurveTU -n "Character1_LeftArm_scaleX1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftArm_scaleY1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftArm_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftShoulder_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftShoulder_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.17739939593484841;
createNode animCurveTL -n "Character1_LeftShoulder_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.085154358919469986;
createNode animCurveTL -n "Character1_LeftShoulder_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.026593899094144349;
createNode animCurveTU -n "Character1_LeftShoulder_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftShoulder_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftShoulder_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Spine1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_Spine1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.2586387204795175e-017;
createNode animCurveTL -n "Character1_Spine1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.1647750622772417;
createNode animCurveTL -n "Character1_Spine1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Character1_Spine1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Spine1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Spine1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Spine_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_Spine_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 5.2301898630244245e-019;
createNode animCurveTL -n "Character1_Spine_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.12938614967134932;
createNode animCurveTL -n "Character1_Spine_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Character1_Spine_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Spine_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Spine_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightToeBase_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_RightToeBase_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.25825416873713547;
createNode animCurveTL -n "Character1_RightToeBase_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.028664625760186399;
createNode animCurveTL -n "Character1_RightToeBase_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.068866984874238812;
createNode animCurveTU -n "Character1_RightToeBase_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightToeBase_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightToeBase_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightFoot_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_RightFoot_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -4.163336342344337e-017;
createNode animCurveTL -n "Character1_RightFoot_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.19038899209220156;
createNode animCurveTL -n "Character1_RightFoot_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 9.1593399531575415e-016;
createNode animCurveTU -n "Character1_RightFoot_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightFoot_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightFoot_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightLeg_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_RightLeg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.5209599968368792e-008;
createNode animCurveTL -n "Character1_RightLeg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.20783956037653459;
createNode animCurveTL -n "Character1_RightLeg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.4585344000627174e-006;
createNode animCurveTU -n "Character1_RightLeg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightLeg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightLeg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightUpLeg_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_RightUpLeg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.14883236860324839;
createNode animCurveTL -n "Character1_RightUpLeg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.029037288022160823;
createNode animCurveTL -n "Character1_RightUpLeg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.045316790529932295;
createNode animCurveTU -n "Character1_RightUpLeg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightUpLeg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_RightUpLeg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftToeBase_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftToeBase_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.012183147775964152;
createNode animCurveTL -n "Character1_LeftToeBase_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.073586953002739125;
createNode animCurveTL -n "Character1_LeftToeBase_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.25825565814980511;
createNode animCurveTU -n "Character1_LeftToeBase_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftToeBase_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftToeBase_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftFoot_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftFoot_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.19038899211054147;
createNode animCurveTL -n "Character1_LeftFoot_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.7755575615628914e-016;
createNode animCurveTL -n "Character1_LeftFoot_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 8.3266726846886741e-017;
createNode animCurveTU -n "Character1_LeftFoot_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftFoot_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftFoot_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftLeg_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftLeg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 5.5511151231257827e-017;
createNode animCurveTL -n "Character1_LeftLeg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.20783956037653464;
createNode animCurveTL -n "Character1_LeftLeg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -6.9388939039072284e-018;
createNode animCurveTU -n "Character1_LeftLeg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftLeg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftLeg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftUpLeg_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_LeftUpLeg_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.14883236860324842;
createNode animCurveTL -n "Character1_LeftUpLeg_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.029037288022160823;
createNode animCurveTL -n "Character1_LeftUpLeg_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.045316790529932295;
createNode animCurveTU -n "Character1_LeftUpLeg_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftUpLeg_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_LeftUpLeg_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Hips_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Character1_Hips_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Character1_Hips_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.46311460752525702;
createNode animCurveTL -n "Character1_Hips_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.025601599551068693;
createNode animCurveTU -n "Character1_Hips_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Hips_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Character1_Hips_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :lambert1;
	setAttr ".c" -type "float3" 1 1 0 ;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".laa" yes;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId59.id" "|group1|polySurface3|polySurfaceShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|polySurface3|polySurfaceShape6.iog.og[0].gco"
		;
connectAttr "groupId60.id" "|group1|polySurface10|polySurfaceShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|polySurface10|polySurfaceShape6.iog.og[0].gco"
		;
connectAttr "Character1_Hips_scaleX.o" "Character1_Hips.sx";
connectAttr "Character1_Hips_scaleY.o" "Character1_Hips.sy";
connectAttr "Character1_Hips_scaleZ.o" "Character1_Hips.sz";
connectAttr "Character1_Hips_rotateX.o" "Character1_Hips.rx";
connectAttr "Character1_Hips_rotateY.o" "Character1_Hips.ry";
connectAttr "Character1_Hips_rotateZ.o" "Character1_Hips.rz";
connectAttr "Character1_Hips_visibility.o" "Character1_Hips.v";
connectAttr "Character1_Hips_translateX.o" "Character1_Hips.tx";
connectAttr "Character1_Hips_translateY.o" "Character1_Hips.ty";
connectAttr "Character1_Hips_translateZ.o" "Character1_Hips.tz";
connectAttr "Character1_Hips.s" "Character1_LeftUpLeg.is";
connectAttr "Character1_LeftUpLeg_scaleX.o" "Character1_LeftUpLeg.sx";
connectAttr "Character1_LeftUpLeg_scaleY.o" "Character1_LeftUpLeg.sy";
connectAttr "Character1_LeftUpLeg_scaleZ.o" "Character1_LeftUpLeg.sz";
connectAttr "Character1_LeftUpLeg_rotateX.o" "Character1_LeftUpLeg.rx";
connectAttr "Character1_LeftUpLeg_rotateY.o" "Character1_LeftUpLeg.ry";
connectAttr "Character1_LeftUpLeg_rotateZ.o" "Character1_LeftUpLeg.rz";
connectAttr "Character1_LeftUpLeg_visibility.o" "Character1_LeftUpLeg.v";
connectAttr "Character1_LeftUpLeg_translateX.o" "Character1_LeftUpLeg.tx";
connectAttr "Character1_LeftUpLeg_translateY.o" "Character1_LeftUpLeg.ty";
connectAttr "Character1_LeftUpLeg_translateZ.o" "Character1_LeftUpLeg.tz";
connectAttr "Character1_LeftUpLeg.s" "Character1_LeftLeg.is";
connectAttr "Character1_LeftLeg_scaleX.o" "Character1_LeftLeg.sx";
connectAttr "Character1_LeftLeg_scaleY.o" "Character1_LeftLeg.sy";
connectAttr "Character1_LeftLeg_scaleZ.o" "Character1_LeftLeg.sz";
connectAttr "Character1_LeftLeg_rotateX.o" "Character1_LeftLeg.rx";
connectAttr "Character1_LeftLeg_rotateY.o" "Character1_LeftLeg.ry";
connectAttr "Character1_LeftLeg_rotateZ.o" "Character1_LeftLeg.rz";
connectAttr "Character1_LeftLeg_visibility.o" "Character1_LeftLeg.v";
connectAttr "Character1_LeftLeg_translateX.o" "Character1_LeftLeg.tx";
connectAttr "Character1_LeftLeg_translateY.o" "Character1_LeftLeg.ty";
connectAttr "Character1_LeftLeg_translateZ.o" "Character1_LeftLeg.tz";
connectAttr "Character1_LeftLeg.s" "Character1_LeftFoot.is";
connectAttr "Character1_LeftFoot_scaleX.o" "Character1_LeftFoot.sx";
connectAttr "Character1_LeftFoot_scaleY.o" "Character1_LeftFoot.sy";
connectAttr "Character1_LeftFoot_scaleZ.o" "Character1_LeftFoot.sz";
connectAttr "Character1_LeftFoot_rotateX.o" "Character1_LeftFoot.rx";
connectAttr "Character1_LeftFoot_rotateY.o" "Character1_LeftFoot.ry";
connectAttr "Character1_LeftFoot_rotateZ.o" "Character1_LeftFoot.rz";
connectAttr "Character1_LeftFoot_visibility.o" "Character1_LeftFoot.v";
connectAttr "Character1_LeftFoot_translateX.o" "Character1_LeftFoot.tx";
connectAttr "Character1_LeftFoot_translateY.o" "Character1_LeftFoot.ty";
connectAttr "Character1_LeftFoot_translateZ.o" "Character1_LeftFoot.tz";
connectAttr "Character1_LeftFoot.s" "Character1_LeftToeBase.is";
connectAttr "Character1_LeftToeBase_rotateX.o" "Character1_LeftToeBase.rx";
connectAttr "Character1_LeftToeBase_rotateY.o" "Character1_LeftToeBase.ry";
connectAttr "Character1_LeftToeBase_rotateZ.o" "Character1_LeftToeBase.rz";
connectAttr "Character1_LeftToeBase_visibility.o" "Character1_LeftToeBase.v";
connectAttr "Character1_LeftToeBase_translateX.o" "Character1_LeftToeBase.tx";
connectAttr "Character1_LeftToeBase_translateY.o" "Character1_LeftToeBase.ty";
connectAttr "Character1_LeftToeBase_translateZ.o" "Character1_LeftToeBase.tz";
connectAttr "Character1_LeftToeBase_scaleX.o" "Character1_LeftToeBase.sx";
connectAttr "Character1_LeftToeBase_scaleY.o" "Character1_LeftToeBase.sy";
connectAttr "Character1_LeftToeBase_scaleZ.o" "Character1_LeftToeBase.sz";
connectAttr "Character1_Hips.s" "Character1_RightUpLeg.is";
connectAttr "Character1_RightUpLeg_scaleX.o" "Character1_RightUpLeg.sx";
connectAttr "Character1_RightUpLeg_scaleY.o" "Character1_RightUpLeg.sy";
connectAttr "Character1_RightUpLeg_scaleZ.o" "Character1_RightUpLeg.sz";
connectAttr "Character1_RightUpLeg_rotateX.o" "Character1_RightUpLeg.rx";
connectAttr "Character1_RightUpLeg_rotateY.o" "Character1_RightUpLeg.ry";
connectAttr "Character1_RightUpLeg_rotateZ.o" "Character1_RightUpLeg.rz";
connectAttr "Character1_RightUpLeg_visibility.o" "Character1_RightUpLeg.v";
connectAttr "Character1_RightUpLeg_translateX.o" "Character1_RightUpLeg.tx";
connectAttr "Character1_RightUpLeg_translateY.o" "Character1_RightUpLeg.ty";
connectAttr "Character1_RightUpLeg_translateZ.o" "Character1_RightUpLeg.tz";
connectAttr "Character1_RightUpLeg.s" "Character1_RightLeg.is";
connectAttr "Character1_RightLeg_scaleX.o" "Character1_RightLeg.sx";
connectAttr "Character1_RightLeg_scaleY.o" "Character1_RightLeg.sy";
connectAttr "Character1_RightLeg_scaleZ.o" "Character1_RightLeg.sz";
connectAttr "Character1_RightLeg_rotateX.o" "Character1_RightLeg.rx";
connectAttr "Character1_RightLeg_rotateY.o" "Character1_RightLeg.ry";
connectAttr "Character1_RightLeg_rotateZ.o" "Character1_RightLeg.rz";
connectAttr "Character1_RightLeg_visibility.o" "Character1_RightLeg.v";
connectAttr "Character1_RightLeg_translateX.o" "Character1_RightLeg.tx";
connectAttr "Character1_RightLeg_translateY.o" "Character1_RightLeg.ty";
connectAttr "Character1_RightLeg_translateZ.o" "Character1_RightLeg.tz";
connectAttr "Character1_RightLeg.s" "Character1_RightFoot.is";
connectAttr "Character1_RightFoot_scaleX.o" "Character1_RightFoot.sx";
connectAttr "Character1_RightFoot_scaleY.o" "Character1_RightFoot.sy";
connectAttr "Character1_RightFoot_scaleZ.o" "Character1_RightFoot.sz";
connectAttr "Character1_RightFoot_rotateX.o" "Character1_RightFoot.rx";
connectAttr "Character1_RightFoot_rotateY.o" "Character1_RightFoot.ry";
connectAttr "Character1_RightFoot_rotateZ.o" "Character1_RightFoot.rz";
connectAttr "Character1_RightFoot_visibility.o" "Character1_RightFoot.v";
connectAttr "Character1_RightFoot_translateX.o" "Character1_RightFoot.tx";
connectAttr "Character1_RightFoot_translateY.o" "Character1_RightFoot.ty";
connectAttr "Character1_RightFoot_translateZ.o" "Character1_RightFoot.tz";
connectAttr "Character1_RightFoot.s" "Character1_RightToeBase.is";
connectAttr "Character1_RightToeBase_rotateX.o" "Character1_RightToeBase.rx";
connectAttr "Character1_RightToeBase_rotateY.o" "Character1_RightToeBase.ry";
connectAttr "Character1_RightToeBase_rotateZ.o" "Character1_RightToeBase.rz";
connectAttr "Character1_RightToeBase_visibility.o" "Character1_RightToeBase.v";
connectAttr "Character1_RightToeBase_translateX.o" "Character1_RightToeBase.tx";
connectAttr "Character1_RightToeBase_translateY.o" "Character1_RightToeBase.ty";
connectAttr "Character1_RightToeBase_translateZ.o" "Character1_RightToeBase.tz";
connectAttr "Character1_RightToeBase_scaleX.o" "Character1_RightToeBase.sx";
connectAttr "Character1_RightToeBase_scaleY.o" "Character1_RightToeBase.sy";
connectAttr "Character1_RightToeBase_scaleZ.o" "Character1_RightToeBase.sz";
connectAttr "Character1_Hips.s" "Character1_Spine.is";
connectAttr "Character1_Spine_scaleX.o" "Character1_Spine.sx";
connectAttr "Character1_Spine_scaleY.o" "Character1_Spine.sy";
connectAttr "Character1_Spine_scaleZ.o" "Character1_Spine.sz";
connectAttr "Character1_Spine_rotateX.o" "Character1_Spine.rx";
connectAttr "Character1_Spine_rotateY.o" "Character1_Spine.ry";
connectAttr "Character1_Spine_rotateZ.o" "Character1_Spine.rz";
connectAttr "Character1_Spine_visibility.o" "Character1_Spine.v";
connectAttr "Character1_Spine_translateX.o" "Character1_Spine.tx";
connectAttr "Character1_Spine_translateY.o" "Character1_Spine.ty";
connectAttr "Character1_Spine_translateZ.o" "Character1_Spine.tz";
connectAttr "Character1_Spine.s" "Character1_Spine1.is";
connectAttr "Character1_Spine1_scaleX.o" "Character1_Spine1.sx";
connectAttr "Character1_Spine1_scaleY.o" "Character1_Spine1.sy";
connectAttr "Character1_Spine1_scaleZ.o" "Character1_Spine1.sz";
connectAttr "Character1_Spine1_rotateX.o" "Character1_Spine1.rx";
connectAttr "Character1_Spine1_rotateY.o" "Character1_Spine1.ry";
connectAttr "Character1_Spine1_rotateZ.o" "Character1_Spine1.rz";
connectAttr "Character1_Spine1_visibility.o" "Character1_Spine1.v";
connectAttr "Character1_Spine1_translateX.o" "Character1_Spine1.tx";
connectAttr "Character1_Spine1_translateY.o" "Character1_Spine1.ty";
connectAttr "Character1_Spine1_translateZ.o" "Character1_Spine1.tz";
connectAttr "Character1_Spine1.s" "Character1_LeftShoulder.is";
connectAttr "Character1_LeftShoulder_scaleX.o" "Character1_LeftShoulder.sx";
connectAttr "Character1_LeftShoulder_scaleY.o" "Character1_LeftShoulder.sy";
connectAttr "Character1_LeftShoulder_scaleZ.o" "Character1_LeftShoulder.sz";
connectAttr "Character1_LeftShoulder_rotateX.o" "Character1_LeftShoulder.rx";
connectAttr "Character1_LeftShoulder_rotateY.o" "Character1_LeftShoulder.ry";
connectAttr "Character1_LeftShoulder_rotateZ.o" "Character1_LeftShoulder.rz";
connectAttr "Character1_LeftShoulder_visibility.o" "Character1_LeftShoulder.v";
connectAttr "Character1_LeftShoulder_translateX.o" "Character1_LeftShoulder.tx";
connectAttr "Character1_LeftShoulder_translateY.o" "Character1_LeftShoulder.ty";
connectAttr "Character1_LeftShoulder_translateZ.o" "Character1_LeftShoulder.tz";
connectAttr "Character1_LeftShoulder.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.is"
		;
connectAttr "Character1_LeftArm_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.sx"
		;
connectAttr "Character1_LeftArm_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.sy"
		;
connectAttr "Character1_LeftArm_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.sz"
		;
connectAttr "Character1_LeftArm_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.rx"
		;
connectAttr "Character1_LeftArm_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.ry"
		;
connectAttr "Character1_LeftArm_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.rz"
		;
connectAttr "Character1_LeftArm_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.v"
		;
connectAttr "Character1_LeftArm_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.tx"
		;
connectAttr "Character1_LeftArm_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.ty"
		;
connectAttr "Character1_LeftArm_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.is"
		;
connectAttr "Character1_LeftForeArm_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.sx"
		;
connectAttr "Character1_LeftForeArm_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.sy"
		;
connectAttr "Character1_LeftForeArm_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.sz"
		;
connectAttr "Character1_LeftForeArm_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.rx"
		;
connectAttr "Character1_LeftForeArm_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.ry"
		;
connectAttr "Character1_LeftForeArm_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.rz"
		;
connectAttr "Character1_LeftForeArm_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.v"
		;
connectAttr "Character1_LeftForeArm_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.tx"
		;
connectAttr "Character1_LeftForeArm_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.ty"
		;
connectAttr "Character1_LeftForeArm_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.is"
		;
connectAttr "Character1_LeftHand_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.sx"
		;
connectAttr "Character1_LeftHand_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.sy"
		;
connectAttr "Character1_LeftHand_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.sz"
		;
connectAttr "Character1_LeftHand_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.rx"
		;
connectAttr "Character1_LeftHand_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.ry"
		;
connectAttr "Character1_LeftHand_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.rz"
		;
connectAttr "Character1_LeftHand_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.v"
		;
connectAttr "Character1_LeftHand_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.tx"
		;
connectAttr "Character1_LeftHand_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.ty"
		;
connectAttr "Character1_LeftHand_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.is"
		;
connectAttr "Character1_LeftHandThumb1_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.sx"
		;
connectAttr "Character1_LeftHandThumb1_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.sy"
		;
connectAttr "Character1_LeftHandThumb1_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.sz"
		;
connectAttr "Character1_LeftHandThumb1_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.rx"
		;
connectAttr "Character1_LeftHandThumb1_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.ry"
		;
connectAttr "Character1_LeftHandThumb1_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.rz"
		;
connectAttr "Character1_LeftHandThumb1_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.v"
		;
connectAttr "Character1_LeftHandThumb1_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.tx"
		;
connectAttr "Character1_LeftHandThumb1_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.ty"
		;
connectAttr "Character1_LeftHandThumb1_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.is"
		;
connectAttr "Character1_LeftHandThumb2_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.sx"
		;
connectAttr "Character1_LeftHandThumb2_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.sy"
		;
connectAttr "Character1_LeftHandThumb2_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.sz"
		;
connectAttr "Character1_LeftHandThumb2_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.rx"
		;
connectAttr "Character1_LeftHandThumb2_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.ry"
		;
connectAttr "Character1_LeftHandThumb2_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.rz"
		;
connectAttr "Character1_LeftHandThumb2_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.v"
		;
connectAttr "Character1_LeftHandThumb2_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.tx"
		;
connectAttr "Character1_LeftHandThumb2_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.ty"
		;
connectAttr "Character1_LeftHandThumb2_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.is"
		;
connectAttr "Character1_LeftHandThumb3_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.rx"
		;
connectAttr "Character1_LeftHandThumb3_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.ry"
		;
connectAttr "Character1_LeftHandThumb3_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.rz"
		;
connectAttr "Character1_LeftHandThumb3_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.v"
		;
connectAttr "Character1_LeftHandThumb3_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.tx"
		;
connectAttr "Character1_LeftHandThumb3_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.ty"
		;
connectAttr "Character1_LeftHandThumb3_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.tz"
		;
connectAttr "Character1_LeftHandThumb3_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.sx"
		;
connectAttr "Character1_LeftHandThumb3_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.sy"
		;
connectAttr "Character1_LeftHandThumb3_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.sz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.is"
		;
connectAttr "Character1_LeftHandIndex1_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.sx"
		;
connectAttr "Character1_LeftHandIndex1_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.sy"
		;
connectAttr "Character1_LeftHandIndex1_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.sz"
		;
connectAttr "Character1_LeftHandIndex1_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.rx"
		;
connectAttr "Character1_LeftHandIndex1_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.ry"
		;
connectAttr "Character1_LeftHandIndex1_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.rz"
		;
connectAttr "Character1_LeftHandIndex1_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.v"
		;
connectAttr "Character1_LeftHandIndex1_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.tx"
		;
connectAttr "Character1_LeftHandIndex1_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.ty"
		;
connectAttr "Character1_LeftHandIndex1_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.is"
		;
connectAttr "Character1_LeftHandIndex2_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.sx"
		;
connectAttr "Character1_LeftHandIndex2_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.sy"
		;
connectAttr "Character1_LeftHandIndex2_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.sz"
		;
connectAttr "Character1_LeftHandIndex2_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.rx"
		;
connectAttr "Character1_LeftHandIndex2_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.ry"
		;
connectAttr "Character1_LeftHandIndex2_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.rz"
		;
connectAttr "Character1_LeftHandIndex2_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.v"
		;
connectAttr "Character1_LeftHandIndex2_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.tx"
		;
connectAttr "Character1_LeftHandIndex2_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.ty"
		;
connectAttr "Character1_LeftHandIndex2_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.is"
		;
connectAttr "Character1_LeftHandIndex3_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.rx"
		;
connectAttr "Character1_LeftHandIndex3_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.ry"
		;
connectAttr "Character1_LeftHandIndex3_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.rz"
		;
connectAttr "Character1_LeftHandIndex3_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.v"
		;
connectAttr "Character1_LeftHandIndex3_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.tx"
		;
connectAttr "Character1_LeftHandIndex3_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.ty"
		;
connectAttr "Character1_LeftHandIndex3_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.tz"
		;
connectAttr "Character1_LeftHandIndex3_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.sx"
		;
connectAttr "Character1_LeftHandIndex3_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.sy"
		;
connectAttr "Character1_LeftHandIndex3_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.sz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.is"
		;
connectAttr "Character1_LeftHandMiddle1_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.sx"
		;
connectAttr "Character1_LeftHandMiddle1_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.sy"
		;
connectAttr "Character1_LeftHandMiddle1_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.sz"
		;
connectAttr "Character1_LeftHandMiddle1_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.rx"
		;
connectAttr "Character1_LeftHandMiddle1_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.ry"
		;
connectAttr "Character1_LeftHandMiddle1_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.rz"
		;
connectAttr "Character1_LeftHandMiddle1_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.v"
		;
connectAttr "Character1_LeftHandMiddle1_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.tx"
		;
connectAttr "Character1_LeftHandMiddle1_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.ty"
		;
connectAttr "Character1_LeftHandMiddle1_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.is"
		;
connectAttr "Character1_LeftHandMiddle2_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.sx"
		;
connectAttr "Character1_LeftHandMiddle2_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.sy"
		;
connectAttr "Character1_LeftHandMiddle2_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.sz"
		;
connectAttr "Character1_LeftHandMiddle2_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.rx"
		;
connectAttr "Character1_LeftHandMiddle2_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.ry"
		;
connectAttr "Character1_LeftHandMiddle2_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.rz"
		;
connectAttr "Character1_LeftHandMiddle2_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.v"
		;
connectAttr "Character1_LeftHandMiddle2_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.tx"
		;
connectAttr "Character1_LeftHandMiddle2_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.ty"
		;
connectAttr "Character1_LeftHandMiddle2_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.is"
		;
connectAttr "Character1_LeftHandMiddle3_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.rx"
		;
connectAttr "Character1_LeftHandMiddle3_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.ry"
		;
connectAttr "Character1_LeftHandMiddle3_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.rz"
		;
connectAttr "Character1_LeftHandMiddle3_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.v"
		;
connectAttr "Character1_LeftHandMiddle3_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.tx"
		;
connectAttr "Character1_LeftHandMiddle3_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.ty"
		;
connectAttr "Character1_LeftHandMiddle3_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.tz"
		;
connectAttr "Character1_LeftHandMiddle3_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.sx"
		;
connectAttr "Character1_LeftHandMiddle3_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.sy"
		;
connectAttr "Character1_LeftHandMiddle3_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.sz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.is"
		;
connectAttr "Character1_LeftHandRing1_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.sx"
		;
connectAttr "Character1_LeftHandRing1_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.sy"
		;
connectAttr "Character1_LeftHandRing1_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.sz"
		;
connectAttr "Character1_LeftHandRing1_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.rx"
		;
connectAttr "Character1_LeftHandRing1_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.ry"
		;
connectAttr "Character1_LeftHandRing1_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.rz"
		;
connectAttr "Character1_LeftHandRing1_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.v"
		;
connectAttr "Character1_LeftHandRing1_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.tx"
		;
connectAttr "Character1_LeftHandRing1_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.ty"
		;
connectAttr "Character1_LeftHandRing1_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.is"
		;
connectAttr "Character1_LeftHandRing2_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.sx"
		;
connectAttr "Character1_LeftHandRing2_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.sy"
		;
connectAttr "Character1_LeftHandRing2_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.sz"
		;
connectAttr "Character1_LeftHandRing2_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.rx"
		;
connectAttr "Character1_LeftHandRing2_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.ry"
		;
connectAttr "Character1_LeftHandRing2_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.rz"
		;
connectAttr "Character1_LeftHandRing2_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.v"
		;
connectAttr "Character1_LeftHandRing2_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.tx"
		;
connectAttr "Character1_LeftHandRing2_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.ty"
		;
connectAttr "Character1_LeftHandRing2_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.is"
		;
connectAttr "Character1_LeftHandRing3_rotateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.rx"
		;
connectAttr "Character1_LeftHandRing3_rotateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.ry"
		;
connectAttr "Character1_LeftHandRing3_rotateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.rz"
		;
connectAttr "Character1_LeftHandRing3_visibility1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.v"
		;
connectAttr "Character1_LeftHandRing3_translateX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.tx"
		;
connectAttr "Character1_LeftHandRing3_translateY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.ty"
		;
connectAttr "Character1_LeftHandRing3_translateZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.tz"
		;
connectAttr "Character1_LeftHandRing3_scaleX1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.sx"
		;
connectAttr "Character1_LeftHandRing3_scaleY1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.sy"
		;
connectAttr "Character1_LeftHandRing3_scaleZ1.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.sz"
		;
connectAttr "Character1_Spine1.s" "Character1_Neck.is";
connectAttr "Character1_Neck_scaleX.o" "Character1_Neck.sx";
connectAttr "Character1_Neck_scaleY.o" "Character1_Neck.sy";
connectAttr "Character1_Neck_scaleZ.o" "Character1_Neck.sz";
connectAttr "Character1_Neck_rotateX.o" "Character1_Neck.rx";
connectAttr "Character1_Neck_rotateY.o" "Character1_Neck.ry";
connectAttr "Character1_Neck_rotateZ.o" "Character1_Neck.rz";
connectAttr "Character1_Neck_visibility.o" "Character1_Neck.v";
connectAttr "Character1_Neck_translateX.o" "Character1_Neck.tx";
connectAttr "Character1_Neck_translateY.o" "Character1_Neck.ty";
connectAttr "Character1_Neck_translateZ.o" "Character1_Neck.tz";
connectAttr "Character1_Neck.s" "Character1_Head.is";
connectAttr "Character1_Head_rotateX.o" "Character1_Head.rx";
connectAttr "Character1_Head_rotateY.o" "Character1_Head.ry";
connectAttr "Character1_Head_rotateZ.o" "Character1_Head.rz";
connectAttr "Character1_Head_visibility.o" "Character1_Head.v";
connectAttr "Character1_Head_translateX.o" "Character1_Head.tx";
connectAttr "Character1_Head_translateY.o" "Character1_Head.ty";
connectAttr "Character1_Head_translateZ.o" "Character1_Head.tz";
connectAttr "Character1_Head_scaleX.o" "Character1_Head.sx";
connectAttr "Character1_Head_scaleY.o" "Character1_Head.sy";
connectAttr "Character1_Head_scaleZ.o" "Character1_Head.sz";
connectAttr "Character1_Spine1.s" "Character1_LeftShoulder1.is";
connectAttr "Character1_LeftShoulder1_scaleX.o" "Character1_LeftShoulder1.sx";
connectAttr "Character1_LeftShoulder1_scaleY.o" "Character1_LeftShoulder1.sy";
connectAttr "Character1_LeftShoulder1_scaleZ.o" "Character1_LeftShoulder1.sz";
connectAttr "Character1_LeftShoulder1_rotateX.o" "Character1_LeftShoulder1.rx";
connectAttr "Character1_LeftShoulder1_rotateY.o" "Character1_LeftShoulder1.ry";
connectAttr "Character1_LeftShoulder1_rotateZ.o" "Character1_LeftShoulder1.rz";
connectAttr "Character1_LeftShoulder1_visibility.o" "Character1_LeftShoulder1.v"
		;
connectAttr "Character1_LeftShoulder1_translateX.o" "Character1_LeftShoulder1.tx"
		;
connectAttr "Character1_LeftShoulder1_translateY.o" "Character1_LeftShoulder1.ty"
		;
connectAttr "Character1_LeftShoulder1_translateZ.o" "Character1_LeftShoulder1.tz"
		;
connectAttr "Character1_LeftShoulder1.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.is"
		;
connectAttr "Character1_LeftArm_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.sx"
		;
connectAttr "Character1_LeftArm_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.sy"
		;
connectAttr "Character1_LeftArm_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.sz"
		;
connectAttr "Character1_LeftArm_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.rx"
		;
connectAttr "Character1_LeftArm_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.ry"
		;
connectAttr "Character1_LeftArm_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.rz"
		;
connectAttr "Character1_LeftArm_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.v"
		;
connectAttr "Character1_LeftArm_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.tx"
		;
connectAttr "Character1_LeftArm_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.ty"
		;
connectAttr "Character1_LeftArm_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.is"
		;
connectAttr "Character1_LeftForeArm_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.sx"
		;
connectAttr "Character1_LeftForeArm_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.sy"
		;
connectAttr "Character1_LeftForeArm_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.sz"
		;
connectAttr "Character1_LeftForeArm_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.rx"
		;
connectAttr "Character1_LeftForeArm_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.ry"
		;
connectAttr "Character1_LeftForeArm_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.rz"
		;
connectAttr "Character1_LeftForeArm_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.v"
		;
connectAttr "Character1_LeftForeArm_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.tx"
		;
connectAttr "Character1_LeftForeArm_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.ty"
		;
connectAttr "Character1_LeftForeArm_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.is"
		;
connectAttr "Character1_LeftHand_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.sx"
		;
connectAttr "Character1_LeftHand_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.sy"
		;
connectAttr "Character1_LeftHand_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.sz"
		;
connectAttr "Character1_LeftHand_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.rx"
		;
connectAttr "Character1_LeftHand_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.ry"
		;
connectAttr "Character1_LeftHand_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.rz"
		;
connectAttr "Character1_LeftHand_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.v"
		;
connectAttr "Character1_LeftHand_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.tx"
		;
connectAttr "Character1_LeftHand_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.ty"
		;
connectAttr "Character1_LeftHand_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.is"
		;
connectAttr "Character1_LeftHandThumb1_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.sx"
		;
connectAttr "Character1_LeftHandThumb1_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.sy"
		;
connectAttr "Character1_LeftHandThumb1_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.sz"
		;
connectAttr "Character1_LeftHandThumb1_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.rx"
		;
connectAttr "Character1_LeftHandThumb1_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.ry"
		;
connectAttr "Character1_LeftHandThumb1_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.rz"
		;
connectAttr "Character1_LeftHandThumb1_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.v"
		;
connectAttr "Character1_LeftHandThumb1_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.tx"
		;
connectAttr "Character1_LeftHandThumb1_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.ty"
		;
connectAttr "Character1_LeftHandThumb1_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.is"
		;
connectAttr "Character1_LeftHandThumb2_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.sx"
		;
connectAttr "Character1_LeftHandThumb2_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.sy"
		;
connectAttr "Character1_LeftHandThumb2_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.sz"
		;
connectAttr "Character1_LeftHandThumb2_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.rx"
		;
connectAttr "Character1_LeftHandThumb2_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.ry"
		;
connectAttr "Character1_LeftHandThumb2_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.rz"
		;
connectAttr "Character1_LeftHandThumb2_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.v"
		;
connectAttr "Character1_LeftHandThumb2_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.tx"
		;
connectAttr "Character1_LeftHandThumb2_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.ty"
		;
connectAttr "Character1_LeftHandThumb2_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.is"
		;
connectAttr "Character1_LeftHandThumb3_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.rx"
		;
connectAttr "Character1_LeftHandThumb3_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.ry"
		;
connectAttr "Character1_LeftHandThumb3_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.rz"
		;
connectAttr "Character1_LeftHandThumb3_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.v"
		;
connectAttr "Character1_LeftHandThumb3_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.tx"
		;
connectAttr "Character1_LeftHandThumb3_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.ty"
		;
connectAttr "Character1_LeftHandThumb3_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.tz"
		;
connectAttr "Character1_LeftHandThumb3_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.sx"
		;
connectAttr "Character1_LeftHandThumb3_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.sy"
		;
connectAttr "Character1_LeftHandThumb3_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.sz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.is"
		;
connectAttr "Character1_LeftHandIndex1_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.sx"
		;
connectAttr "Character1_LeftHandIndex1_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.sy"
		;
connectAttr "Character1_LeftHandIndex1_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.sz"
		;
connectAttr "Character1_LeftHandIndex1_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.rx"
		;
connectAttr "Character1_LeftHandIndex1_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.ry"
		;
connectAttr "Character1_LeftHandIndex1_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.rz"
		;
connectAttr "Character1_LeftHandIndex1_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.v"
		;
connectAttr "Character1_LeftHandIndex1_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.tx"
		;
connectAttr "Character1_LeftHandIndex1_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.ty"
		;
connectAttr "Character1_LeftHandIndex1_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.is"
		;
connectAttr "Character1_LeftHandIndex2_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.sx"
		;
connectAttr "Character1_LeftHandIndex2_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.sy"
		;
connectAttr "Character1_LeftHandIndex2_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.sz"
		;
connectAttr "Character1_LeftHandIndex2_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.rx"
		;
connectAttr "Character1_LeftHandIndex2_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.ry"
		;
connectAttr "Character1_LeftHandIndex2_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.rz"
		;
connectAttr "Character1_LeftHandIndex2_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.v"
		;
connectAttr "Character1_LeftHandIndex2_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.tx"
		;
connectAttr "Character1_LeftHandIndex2_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.ty"
		;
connectAttr "Character1_LeftHandIndex2_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.is"
		;
connectAttr "Character1_LeftHandIndex3_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.rx"
		;
connectAttr "Character1_LeftHandIndex3_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.ry"
		;
connectAttr "Character1_LeftHandIndex3_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.rz"
		;
connectAttr "Character1_LeftHandIndex3_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.v"
		;
connectAttr "Character1_LeftHandIndex3_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.tx"
		;
connectAttr "Character1_LeftHandIndex3_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.ty"
		;
connectAttr "Character1_LeftHandIndex3_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.tz"
		;
connectAttr "Character1_LeftHandIndex3_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.sx"
		;
connectAttr "Character1_LeftHandIndex3_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.sy"
		;
connectAttr "Character1_LeftHandIndex3_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.sz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.is"
		;
connectAttr "Character1_LeftHandMiddle1_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.sx"
		;
connectAttr "Character1_LeftHandMiddle1_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.sy"
		;
connectAttr "Character1_LeftHandMiddle1_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.sz"
		;
connectAttr "Character1_LeftHandMiddle1_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.rx"
		;
connectAttr "Character1_LeftHandMiddle1_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.ry"
		;
connectAttr "Character1_LeftHandMiddle1_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.rz"
		;
connectAttr "Character1_LeftHandMiddle1_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.v"
		;
connectAttr "Character1_LeftHandMiddle1_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.tx"
		;
connectAttr "Character1_LeftHandMiddle1_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.ty"
		;
connectAttr "Character1_LeftHandMiddle1_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.is"
		;
connectAttr "Character1_LeftHandMiddle2_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.sx"
		;
connectAttr "Character1_LeftHandMiddle2_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.sy"
		;
connectAttr "Character1_LeftHandMiddle2_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.sz"
		;
connectAttr "Character1_LeftHandMiddle2_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.rx"
		;
connectAttr "Character1_LeftHandMiddle2_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.ry"
		;
connectAttr "Character1_LeftHandMiddle2_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.rz"
		;
connectAttr "Character1_LeftHandMiddle2_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.v"
		;
connectAttr "Character1_LeftHandMiddle2_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.tx"
		;
connectAttr "Character1_LeftHandMiddle2_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.ty"
		;
connectAttr "Character1_LeftHandMiddle2_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.is"
		;
connectAttr "Character1_LeftHandMiddle3_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.rx"
		;
connectAttr "Character1_LeftHandMiddle3_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.ry"
		;
connectAttr "Character1_LeftHandMiddle3_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.rz"
		;
connectAttr "Character1_LeftHandMiddle3_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.v"
		;
connectAttr "Character1_LeftHandMiddle3_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.tx"
		;
connectAttr "Character1_LeftHandMiddle3_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.ty"
		;
connectAttr "Character1_LeftHandMiddle3_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.tz"
		;
connectAttr "Character1_LeftHandMiddle3_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.sx"
		;
connectAttr "Character1_LeftHandMiddle3_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.sy"
		;
connectAttr "Character1_LeftHandMiddle3_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.sz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.is"
		;
connectAttr "Character1_LeftHandRing1_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.sx"
		;
connectAttr "Character1_LeftHandRing1_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.sy"
		;
connectAttr "Character1_LeftHandRing1_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.sz"
		;
connectAttr "Character1_LeftHandRing1_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.rx"
		;
connectAttr "Character1_LeftHandRing1_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.ry"
		;
connectAttr "Character1_LeftHandRing1_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.rz"
		;
connectAttr "Character1_LeftHandRing1_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.v"
		;
connectAttr "Character1_LeftHandRing1_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.tx"
		;
connectAttr "Character1_LeftHandRing1_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.ty"
		;
connectAttr "Character1_LeftHandRing1_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.is"
		;
connectAttr "Character1_LeftHandRing2_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.sx"
		;
connectAttr "Character1_LeftHandRing2_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.sy"
		;
connectAttr "Character1_LeftHandRing2_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.sz"
		;
connectAttr "Character1_LeftHandRing2_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.rx"
		;
connectAttr "Character1_LeftHandRing2_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.ry"
		;
connectAttr "Character1_LeftHandRing2_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.rz"
		;
connectAttr "Character1_LeftHandRing2_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.v"
		;
connectAttr "Character1_LeftHandRing2_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.tx"
		;
connectAttr "Character1_LeftHandRing2_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.ty"
		;
connectAttr "Character1_LeftHandRing2_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.tz"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.s" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.is"
		;
connectAttr "Character1_LeftHandRing3_rotateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.rx"
		;
connectAttr "Character1_LeftHandRing3_rotateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.ry"
		;
connectAttr "Character1_LeftHandRing3_rotateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.rz"
		;
connectAttr "Character1_LeftHandRing3_visibility.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.v"
		;
connectAttr "Character1_LeftHandRing3_translateX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.tx"
		;
connectAttr "Character1_LeftHandRing3_translateY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.ty"
		;
connectAttr "Character1_LeftHandRing3_translateZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.tz"
		;
connectAttr "Character1_LeftHandRing3_scaleX.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.sx"
		;
connectAttr "Character1_LeftHandRing3_scaleY.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.sy"
		;
connectAttr "Character1_LeftHandRing3_scaleZ.o" "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.sz"
		;
connectAttr "groupId136.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupId137.id" "polySurfaceShape45.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape45.iog.og[3].gco";
connectAttr "skinCluster1.og[0]" "polySurfaceShape46.i";
connectAttr "groupId138.id" "polySurfaceShape46.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape46.iog.og[1].gco";
connectAttr "skinCluster1GroupId.id" "polySurfaceShape46.iog.og[20].gid";
connectAttr "skinCluster1Set.mwc" "polySurfaceShape46.iog.og[20].gco";
connectAttr "groupId140.id" "polySurfaceShape46.iog.og[21].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape46.iog.og[21].gco";
connectAttr "tweak1.vl[0].vt[0]" "polySurfaceShape46.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "polySurface3.msg" "hyperLayout1.hyp[2].dn";
connectAttr "|group1|polySurface3|polySurfaceShape6.msg" "hyperLayout1.hyp[3].dn"
		;
connectAttr "HIKproperties1.msg" "Character1.propertyState";
connectAttr "HIKSkeletonGeneratorNode1.CharacterNode" "Character1.SkeletonGenerator"
		;
connectAttr "Character1_Reference.ch" "Character1.Reference";
connectAttr "Character1_Hips.ch" "Character1.Hips";
connectAttr "Character1_LeftUpLeg.ch" "Character1.LeftUpLeg";
connectAttr "Character1_LeftLeg.ch" "Character1.LeftLeg";
connectAttr "Character1_LeftFoot.ch" "Character1.LeftFoot";
connectAttr "Character1_RightUpLeg.ch" "Character1.RightUpLeg";
connectAttr "Character1_RightLeg.ch" "Character1.RightLeg";
connectAttr "Character1_RightFoot.ch" "Character1.RightFoot";
connectAttr "Character1_Spine.ch" "Character1.Spine";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.ch" "Character1.LeftArm"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.ch" "Character1.LeftForeArm"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.ch" "Character1.LeftHand"
		;
connectAttr "Character1_Head.ch" "Character1.Head";
connectAttr "Character1_LeftToeBase.ch" "Character1.LeftToeBase";
connectAttr "Character1_RightToeBase.ch" "Character1.RightToeBase";
connectAttr "Character1_LeftShoulder.ch" "Character1.LeftShoulder";
connectAttr "Character1_Neck.ch" "Character1.Neck";
connectAttr "Character1_Spine1.ch" "Character1.Spine1";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.ch" "Character1.LeftHandThumb1"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.ch" "Character1.LeftHandThumb2"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.ch" "Character1.LeftHandThumb3"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.ch" "Character1.LeftHandIndex1"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.ch" "Character1.LeftHandIndex2"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.ch" "Character1.LeftHandIndex3"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.ch" "Character1.LeftHandMiddle1"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.ch" "Character1.LeftHandMiddle2"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.ch" "Character1.LeftHandMiddle3"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.ch" "Character1.LeftHandRing1"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.ch" "Character1.LeftHandRing2"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.ch" "Character1.LeftHandRing3"
		;
connectAttr "checker1.oc" "blinn1.c";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "polySurfaceShape45.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "groupId136.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "checker1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "psdFileTex1.oc" "blinn2.c";
connectAttr "psdFileTex1.ot" "blinn2.it";
connectAttr "blinn2.oc" "blinn2SG.ss";
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "blinn2.msg" "materialInfo2.m";
connectAttr "psdFileTex1.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture2.c" "psdFileTex1.c";
connectAttr "place2dTexture2.tf" "psdFileTex1.tf";
connectAttr "place2dTexture2.rf" "psdFileTex1.rf";
connectAttr "place2dTexture2.mu" "psdFileTex1.mu";
connectAttr "place2dTexture2.mv" "psdFileTex1.mv";
connectAttr "place2dTexture2.s" "psdFileTex1.s";
connectAttr "place2dTexture2.wu" "psdFileTex1.wu";
connectAttr "place2dTexture2.wv" "psdFileTex1.wv";
connectAttr "place2dTexture2.re" "psdFileTex1.re";
connectAttr "place2dTexture2.of" "psdFileTex1.of";
connectAttr "place2dTexture2.r" "psdFileTex1.ro";
connectAttr "place2dTexture2.n" "psdFileTex1.n";
connectAttr "place2dTexture2.vt1" "psdFileTex1.vt1";
connectAttr "place2dTexture2.vt2" "psdFileTex1.vt2";
connectAttr "place2dTexture2.vt3" "psdFileTex1.vt3";
connectAttr "place2dTexture2.vc1" "psdFileTex1.vc1";
connectAttr "place2dTexture2.o" "psdFileTex1.uv";
connectAttr "place2dTexture2.ofs" "psdFileTex1.fs";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "polySurfaceShape45.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "groupId137.msg" "lambert2SG.gn" -na;
connectAttr "groupId138.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "file1.msg" "materialInfo3.t" -na;
connectAttr "place2dTexture3.c" "file1.c";
connectAttr "place2dTexture3.tf" "file1.tf";
connectAttr "place2dTexture3.rf" "file1.rf";
connectAttr "place2dTexture3.mu" "file1.mu";
connectAttr "place2dTexture3.mv" "file1.mv";
connectAttr "place2dTexture3.s" "file1.s";
connectAttr "place2dTexture3.wu" "file1.wu";
connectAttr "place2dTexture3.wv" "file1.wv";
connectAttr "place2dTexture3.re" "file1.re";
connectAttr "place2dTexture3.of" "file1.of";
connectAttr "place2dTexture3.r" "file1.ro";
connectAttr "place2dTexture3.n" "file1.n";
connectAttr "place2dTexture3.vt1" "file1.vt1";
connectAttr "place2dTexture3.vt2" "file1.vt2";
connectAttr "place2dTexture3.vt3" "file1.vt3";
connectAttr "place2dTexture3.vc1" "file1.vc1";
connectAttr "place2dTexture3.o" "file1.uv";
connectAttr "place2dTexture3.ofs" "file1.fs";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Character1_Hips.wm" "skinCluster1.ma[0]";
connectAttr "Character1_LeftUpLeg.wm" "skinCluster1.ma[1]";
connectAttr "Character1_LeftLeg.wm" "skinCluster1.ma[2]";
connectAttr "Character1_LeftFoot.wm" "skinCluster1.ma[3]";
connectAttr "Character1_LeftToeBase.wm" "skinCluster1.ma[4]";
connectAttr "Character1_RightUpLeg.wm" "skinCluster1.ma[5]";
connectAttr "Character1_RightLeg.wm" "skinCluster1.ma[6]";
connectAttr "Character1_RightFoot.wm" "skinCluster1.ma[7]";
connectAttr "Character1_RightToeBase.wm" "skinCluster1.ma[8]";
connectAttr "Character1_Spine.wm" "skinCluster1.ma[9]";
connectAttr "Character1_Spine1.wm" "skinCluster1.ma[10]";
connectAttr "Character1_LeftShoulder.wm" "skinCluster1.ma[11]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.wm" "skinCluster1.ma[12]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.wm" "skinCluster1.ma[13]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.wm" "skinCluster1.ma[14]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.wm" "skinCluster1.ma[15]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.wm" "skinCluster1.ma[16]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.wm" "skinCluster1.ma[17]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.wm" "skinCluster1.ma[18]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.wm" "skinCluster1.ma[19]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.wm" "skinCluster1.ma[20]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.wm" "skinCluster1.ma[21]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.wm" "skinCluster1.ma[22]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.wm" "skinCluster1.ma[23]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.wm" "skinCluster1.ma[24]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.wm" "skinCluster1.ma[25]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.wm" "skinCluster1.ma[26]"
		;
connectAttr "Character1_Neck.wm" "skinCluster1.ma[27]";
connectAttr "Character1_Head.wm" "skinCluster1.ma[28]";
connectAttr "Character1_LeftShoulder1.wm" "skinCluster1.ma[29]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.wm" "skinCluster1.ma[30]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.wm" "skinCluster1.ma[31]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.wm" "skinCluster1.ma[32]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.wm" "skinCluster1.ma[33]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.wm" "skinCluster1.ma[34]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.wm" "skinCluster1.ma[35]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.wm" "skinCluster1.ma[36]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.wm" "skinCluster1.ma[37]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.wm" "skinCluster1.ma[38]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.wm" "skinCluster1.ma[39]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.wm" "skinCluster1.ma[40]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.wm" "skinCluster1.ma[41]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.wm" "skinCluster1.ma[42]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.wm" "skinCluster1.ma[43]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.wm" "skinCluster1.ma[44]"
		;
connectAttr "Character1_Hips.liw" "skinCluster1.lw[0]";
connectAttr "Character1_LeftUpLeg.liw" "skinCluster1.lw[1]";
connectAttr "Character1_LeftLeg.liw" "skinCluster1.lw[2]";
connectAttr "Character1_LeftFoot.liw" "skinCluster1.lw[3]";
connectAttr "Character1_LeftToeBase.liw" "skinCluster1.lw[4]";
connectAttr "Character1_RightUpLeg.liw" "skinCluster1.lw[5]";
connectAttr "Character1_RightLeg.liw" "skinCluster1.lw[6]";
connectAttr "Character1_RightFoot.liw" "skinCluster1.lw[7]";
connectAttr "Character1_RightToeBase.liw" "skinCluster1.lw[8]";
connectAttr "Character1_Spine.liw" "skinCluster1.lw[9]";
connectAttr "Character1_Spine1.liw" "skinCluster1.lw[10]";
connectAttr "Character1_LeftShoulder.liw" "skinCluster1.lw[11]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.liw" "skinCluster1.lw[12]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.liw" "skinCluster1.lw[13]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.liw" "skinCluster1.lw[14]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.liw" "skinCluster1.lw[15]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.liw" "skinCluster1.lw[16]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.liw" "skinCluster1.lw[17]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.liw" "skinCluster1.lw[18]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.liw" "skinCluster1.lw[19]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.liw" "skinCluster1.lw[20]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.liw" "skinCluster1.lw[21]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.liw" "skinCluster1.lw[22]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.liw" "skinCluster1.lw[23]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.liw" "skinCluster1.lw[24]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.liw" "skinCluster1.lw[25]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.liw" "skinCluster1.lw[26]"
		;
connectAttr "Character1_Neck.liw" "skinCluster1.lw[27]";
connectAttr "Character1_Head.liw" "skinCluster1.lw[28]";
connectAttr "Character1_LeftShoulder1.liw" "skinCluster1.lw[29]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.liw" "skinCluster1.lw[30]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.liw" "skinCluster1.lw[31]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.liw" "skinCluster1.lw[32]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.liw" "skinCluster1.lw[33]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.liw" "skinCluster1.lw[34]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.liw" "skinCluster1.lw[35]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.liw" "skinCluster1.lw[36]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.liw" "skinCluster1.lw[37]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.liw" "skinCluster1.lw[38]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.liw" "skinCluster1.lw[39]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.liw" "skinCluster1.lw[40]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.liw" "skinCluster1.lw[41]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.liw" "skinCluster1.lw[42]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.liw" "skinCluster1.lw[43]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.liw" "skinCluster1.lw[44]"
		;
connectAttr "Character1_Hips.obcc" "skinCluster1.ifcl[0]";
connectAttr "Character1_LeftUpLeg.obcc" "skinCluster1.ifcl[1]";
connectAttr "Character1_LeftLeg.obcc" "skinCluster1.ifcl[2]";
connectAttr "Character1_LeftFoot.obcc" "skinCluster1.ifcl[3]";
connectAttr "Character1_LeftToeBase.obcc" "skinCluster1.ifcl[4]";
connectAttr "Character1_RightUpLeg.obcc" "skinCluster1.ifcl[5]";
connectAttr "Character1_RightLeg.obcc" "skinCluster1.ifcl[6]";
connectAttr "Character1_RightFoot.obcc" "skinCluster1.ifcl[7]";
connectAttr "Character1_RightToeBase.obcc" "skinCluster1.ifcl[8]";
connectAttr "Character1_Spine.obcc" "skinCluster1.ifcl[9]";
connectAttr "Character1_Spine1.obcc" "skinCluster1.ifcl[10]";
connectAttr "Character1_LeftShoulder.obcc" "skinCluster1.ifcl[11]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.obcc" "skinCluster1.ifcl[12]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.obcc" "skinCluster1.ifcl[13]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.obcc" "skinCluster1.ifcl[14]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.obcc" "skinCluster1.ifcl[15]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.obcc" "skinCluster1.ifcl[16]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.obcc" "skinCluster1.ifcl[17]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.obcc" "skinCluster1.ifcl[18]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.obcc" "skinCluster1.ifcl[19]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.obcc" "skinCluster1.ifcl[20]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.obcc" "skinCluster1.ifcl[21]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.obcc" "skinCluster1.ifcl[22]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.obcc" "skinCluster1.ifcl[23]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.obcc" "skinCluster1.ifcl[24]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.obcc" "skinCluster1.ifcl[25]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.obcc" "skinCluster1.ifcl[26]"
		;
connectAttr "Character1_Neck.obcc" "skinCluster1.ifcl[27]";
connectAttr "Character1_Head.obcc" "skinCluster1.ifcl[28]";
connectAttr "Character1_LeftShoulder1.obcc" "skinCluster1.ifcl[29]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.obcc" "skinCluster1.ifcl[30]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.obcc" "skinCluster1.ifcl[31]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.obcc" "skinCluster1.ifcl[32]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.obcc" "skinCluster1.ifcl[33]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.obcc" "skinCluster1.ifcl[34]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.obcc" "skinCluster1.ifcl[35]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.obcc" "skinCluster1.ifcl[36]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.obcc" "skinCluster1.ifcl[37]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.obcc" "skinCluster1.ifcl[38]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.obcc" "skinCluster1.ifcl[39]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.obcc" "skinCluster1.ifcl[40]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.obcc" "skinCluster1.ifcl[41]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.obcc" "skinCluster1.ifcl[42]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.obcc" "skinCluster1.ifcl[43]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.obcc" "skinCluster1.ifcl[44]"
		;
connectAttr "skinBinding1.uw" "skinCluster1.bc";
connectAttr "polySurfaceShape46Orig.w" "groupParts1.ig";
connectAttr "groupId138.id" "groupParts1.gi";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId140.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "polySurfaceShape46.iog.og[20]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId140.msg" "tweakSet1.gn" -na;
connectAttr "polySurfaceShape46.iog.og[21]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts1.og" "groupParts3.ig";
connectAttr "groupId140.id" "groupParts3.gi";
connectAttr "Character1_Reference.msg" "bindPose1.m[0]";
connectAttr "Character1_Hips.msg" "bindPose1.m[1]";
connectAttr "Character1_LeftUpLeg.msg" "bindPose1.m[2]";
connectAttr "Character1_LeftLeg.msg" "bindPose1.m[3]";
connectAttr "Character1_LeftFoot.msg" "bindPose1.m[4]";
connectAttr "Character1_LeftToeBase.msg" "bindPose1.m[5]";
connectAttr "Character1_RightUpLeg.msg" "bindPose1.m[6]";
connectAttr "Character1_RightLeg.msg" "bindPose1.m[7]";
connectAttr "Character1_RightFoot.msg" "bindPose1.m[8]";
connectAttr "Character1_RightToeBase.msg" "bindPose1.m[9]";
connectAttr "Character1_Spine.msg" "bindPose1.m[10]";
connectAttr "Character1_Spine1.msg" "bindPose1.m[11]";
connectAttr "Character1_LeftShoulder.msg" "bindPose1.m[12]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.msg" "bindPose1.m[13]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.msg" "bindPose1.m[14]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.msg" "bindPose1.m[15]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.msg" "bindPose1.m[16]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.msg" "bindPose1.m[17]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.msg" "bindPose1.m[18]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.msg" "bindPose1.m[19]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.msg" "bindPose1.m[20]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.msg" "bindPose1.m[21]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.msg" "bindPose1.m[22]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.msg" "bindPose1.m[23]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.msg" "bindPose1.m[24]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.msg" "bindPose1.m[25]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.msg" "bindPose1.m[26]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.msg" "bindPose1.m[27]"
		;
connectAttr "Character1_Neck.msg" "bindPose1.m[28]";
connectAttr "Character1_Head.msg" "bindPose1.m[29]";
connectAttr "Character1_LeftShoulder1.msg" "bindPose1.m[30]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.msg" "bindPose1.m[31]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.msg" "bindPose1.m[32]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.msg" "bindPose1.m[33]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.msg" "bindPose1.m[34]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.msg" "bindPose1.m[35]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.msg" "bindPose1.m[36]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.msg" "bindPose1.m[37]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.msg" "bindPose1.m[38]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.msg" "bindPose1.m[39]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.msg" "bindPose1.m[40]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.msg" "bindPose1.m[41]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.msg" "bindPose1.m[42]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.msg" "bindPose1.m[43]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.msg" "bindPose1.m[44]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.msg" "bindPose1.m[45]"
		;
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[1]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[15]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[15]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[15]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[11]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[11]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[33]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[33]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[33]" "bindPose1.p[43]";
connectAttr "bindPose1.m[43]" "bindPose1.p[44]";
connectAttr "bindPose1.m[44]" "bindPose1.p[45]";
connectAttr "Character1_Hips.bps" "bindPose1.wm[1]";
connectAttr "Character1_LeftUpLeg.bps" "bindPose1.wm[2]";
connectAttr "Character1_LeftLeg.bps" "bindPose1.wm[3]";
connectAttr "Character1_LeftFoot.bps" "bindPose1.wm[4]";
connectAttr "Character1_LeftToeBase.bps" "bindPose1.wm[5]";
connectAttr "Character1_RightUpLeg.bps" "bindPose1.wm[6]";
connectAttr "Character1_RightLeg.bps" "bindPose1.wm[7]";
connectAttr "Character1_RightFoot.bps" "bindPose1.wm[8]";
connectAttr "Character1_RightToeBase.bps" "bindPose1.wm[9]";
connectAttr "Character1_Spine.bps" "bindPose1.wm[10]";
connectAttr "Character1_Spine1.bps" "bindPose1.wm[11]";
connectAttr "Character1_LeftShoulder.bps" "bindPose1.wm[12]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.bps" "bindPose1.wm[13]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.bps" "bindPose1.wm[14]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.bps" "bindPose1.wm[15]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.bps" "bindPose1.wm[16]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.bps" "bindPose1.wm[17]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.bps" "bindPose1.wm[18]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.bps" "bindPose1.wm[19]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.bps" "bindPose1.wm[20]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.bps" "bindPose1.wm[21]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.bps" "bindPose1.wm[22]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.bps" "bindPose1.wm[23]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.bps" "bindPose1.wm[24]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.bps" "bindPose1.wm[25]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.bps" "bindPose1.wm[26]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.bps" "bindPose1.wm[27]"
		;
connectAttr "Character1_Neck.bps" "bindPose1.wm[28]";
connectAttr "Character1_Head.bps" "bindPose1.wm[29]";
connectAttr "Character1_LeftShoulder1.bps" "bindPose1.wm[30]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.bps" "bindPose1.wm[31]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.bps" "bindPose1.wm[32]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.bps" "bindPose1.wm[33]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.bps" "bindPose1.wm[34]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.bps" "bindPose1.wm[35]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.bps" "bindPose1.wm[36]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.bps" "bindPose1.wm[37]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.bps" "bindPose1.wm[38]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.bps" "bindPose1.wm[39]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.bps" "bindPose1.wm[40]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.bps" "bindPose1.wm[41]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.bps" "bindPose1.wm[42]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.bps" "bindPose1.wm[43]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.bps" "bindPose1.wm[44]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.bps" "bindPose1.wm[45]"
		;
connectAttr "skinCluster1GroupParts.og" "skinBinding1.ig";
connectAttr "Character1_Hips.wm" "skinBinding1.pm[0]";
connectAttr "Character1_LeftUpLeg.wm" "skinBinding1.pm[1]";
connectAttr "Character1_LeftLeg.wm" "skinBinding1.pm[2]";
connectAttr "Character1_LeftFoot.wm" "skinBinding1.pm[3]";
connectAttr "Character1_LeftToeBase.wm" "skinBinding1.pm[4]";
connectAttr "Character1_RightUpLeg.wm" "skinBinding1.pm[5]";
connectAttr "Character1_RightLeg.wm" "skinBinding1.pm[6]";
connectAttr "Character1_RightFoot.wm" "skinBinding1.pm[7]";
connectAttr "Character1_RightToeBase.wm" "skinBinding1.pm[8]";
connectAttr "Character1_Spine.wm" "skinBinding1.pm[9]";
connectAttr "Character1_Spine1.wm" "skinBinding1.pm[10]";
connectAttr "Character1_LeftShoulder.wm" "skinBinding1.pm[11]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm.wm" "skinBinding1.pm[12]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm.wm" "skinBinding1.pm[13]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.wm" "skinBinding1.pm[14]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.wm" "skinBinding1.pm[15]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.wm" "skinBinding1.pm[16]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.wm" "skinBinding1.pm[17]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.wm" "skinBinding1.pm[18]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.wm" "skinBinding1.pm[19]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.wm" "skinBinding1.pm[20]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.wm" "skinBinding1.pm[21]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.wm" "skinBinding1.pm[22]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.wm" "skinBinding1.pm[23]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.wm" "skinBinding1.pm[24]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.wm" "skinBinding1.pm[25]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.wm" "skinBinding1.pm[26]"
		;
connectAttr "Character1_Neck.wm" "skinBinding1.pm[27]";
connectAttr "Character1_Head.wm" "skinBinding1.pm[28]";
connectAttr "Character1_LeftShoulder1.wm" "skinBinding1.pm[29]";
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm.wm" "skinBinding1.pm[30]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm.wm" "skinBinding1.pm[31]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand.wm" "skinBinding1.pm[32]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1.wm" "skinBinding1.pm[33]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2.wm" "skinBinding1.pm[34]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandThumb1|Character1_LeftHandThumb2|Character1_LeftHandThumb3.wm" "skinBinding1.pm[35]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1.wm" "skinBinding1.pm[36]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2.wm" "skinBinding1.pm[37]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandIndex1|Character1_LeftHandIndex2|Character1_LeftHandIndex3.wm" "skinBinding1.pm[38]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1.wm" "skinBinding1.pm[39]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2.wm" "skinBinding1.pm[40]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandMiddle1|Character1_LeftHandMiddle2|Character1_LeftHandMiddle3.wm" "skinBinding1.pm[41]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1.wm" "skinBinding1.pm[42]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2.wm" "skinBinding1.pm[43]"
		;
connectAttr "|Character1_Reference|Character1_Hips|Character1_Spine|Character1_Spine1|Character1_LeftShoulder1|Character1_LeftArm|Character1_LeftForeArm|Character1_LeftHand|Character1_LeftHandRing1|Character1_LeftHandRing2|Character1_LeftHandRing3.wm" "skinBinding1.pm[44]"
		;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "|group1|polySurface3|polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|polySurface10|polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "psdFileTex1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape3.ltd" ":lightList1.l" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight3.iog" ":defaultLightSet.dsm" -na;
// End of teniroiseau.ma
