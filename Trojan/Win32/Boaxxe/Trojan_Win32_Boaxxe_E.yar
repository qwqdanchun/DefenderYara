
rule Trojan_Win32_Boaxxe_E{
	meta:
		description = "Trojan:Win32/Boaxxe.E,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 10 00 00 02 00 "
		
	strings :
		$a_03_0 = {8a 18 30 1a 90 03 03 03 42 40 49 4a 48 41 75 f7 8d 55 90 01 01 8d 45 90 01 01 b9 90 00 } //02 00 
		$a_03_1 = {8b 45 e4 8a 80 90 01 04 8b 55 e4 30 44 15 90 01 01 ff 45 e4 83 7d e4 08 75 e7 90 00 } //02 00 
		$a_01_2 = {6a 08 53 6a 00 6a 00 68 44 00 22 00 } //02 00 
		$a_03_3 = {b9 00 4c 01 00 a1 90 01 04 e8 90 01 02 ff ff 84 c0 74 15 90 00 } //02 00 
		$a_03_4 = {05 a0 0d 00 00 50 53 e8 90 01 03 ff 90 00 } //02 00 
		$a_03_5 = {72 06 04 fa 2c 1a 73 19 8d 45 90 01 01 8b 17 8a 54 1a ff 90 00 } //01 00 
		$a_01_6 = {08 54 55 70 64 61 74 65 72 90 ff ff ff ff 09 00 00 00 54 69 6d 65 53 74 61 6d 70 00 } //01 00 
		$a_01_7 = {06 54 50 72 6f 74 52 90 ff ff ff ff 07 00 00 00 56 65 72 73 69 6f 6e 00 } //01 00 
		$a_01_8 = {6d 75 31 00 ff ff ff ff 03 00 00 00 6d 65 31 00 } //01 00 
		$a_01_9 = {73 69 6e 33 32 73 64 6c 2e 64 6c 6c } //01 00 
		$a_01_10 = {73 6d 6c 72 78 33 32 2e 64 6c 6c } //01 00 
		$a_03_11 = {0f b7 40 14 03 90 01 01 8b 45 90 01 01 0f b7 90 01 01 06 90 01 01 85 90 01 01 7c 90 00 } //01 00 
		$a_03_12 = {88 50 03 8d 45 f0 e8 90 01 04 8a 55 f9 88 50 06 8d 45 f0 e8 90 01 04 8a 55 fa 88 50 09 90 00 } //01 00 
		$a_01_13 = {ff b0 fc 11 00 00 8b 45 fc 05 84 00 00 00 ba 1d 00 00 00 } //01 00 
		$a_01_14 = {8b 43 6c 8b 90 84 04 00 00 52 05 a0 0d 00 00 50 } //01 00 
		$a_01_15 = {70 72 6f 78 31 00 00 00 55 8b ec 33 c0 55 68 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Boaxxe_E_2{
	meta:
		description = "Trojan:Win32/Boaxxe.E,SIGNATURE_TYPE_PEHSTR_EXT,ffffffc8 00 01 00 ffffff80 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 00 00 61 62 69 6f 72 6b 75 2e 64 6c 6c 00 } //01 00 
		$a_01_1 = {00 00 00 61 6d 67 73 77 6d 68 2e 64 6c 6c 00 } //01 00 
		$a_01_2 = {00 00 00 61 6f 79 71 75 6c 65 2e 64 6c 6c 00 } //01 00 
		$a_01_3 = {00 00 00 61 72 63 79 6d 62 61 2e 64 6c 6c 00 } //01 00 
		$a_01_4 = {00 00 00 61 74 69 79 6a 69 6f 2e 64 6c 6c 00 } //01 00 
		$a_01_5 = {00 00 00 41 58 53 4c 45 2e 64 6c 6c 00 } //01 00 
		$a_01_6 = {00 00 00 62 64 75 66 6e 63 6b 2e 64 6c 6c 00 } //01 00 
		$a_01_7 = {00 00 00 62 6d 67 69 74 73 66 2e 64 6c 6c 00 } //01 00 
		$a_01_8 = {00 00 00 62 79 66 6d 78 64 78 2e 64 6c 6c 00 } //01 00 
		$a_01_9 = {00 00 00 63 68 75 74 6f 73 65 2e 64 6c 6c 00 } //01 00 
		$a_01_10 = {00 00 00 63 6b 6e 66 65 62 69 2e 64 6c 6c 00 } //01 00 
		$a_01_11 = {00 00 00 63 78 79 65 77 65 72 2e 64 6c 6c 00 } //01 00 
		$a_01_12 = {00 00 00 64 61 68 76 61 72 6b 2e 64 6c 6c 00 } //01 00 
		$a_01_13 = {00 00 00 64 64 6c 77 75 62 78 70 2e 64 6c 6c 00 } //01 00 
		$a_01_14 = {00 00 00 64 67 74 67 75 78 68 2e 64 6c 6c 00 } //01 00 
		$a_01_15 = {00 00 00 64 68 67 71 79 68 7a 78 2e 64 6c 6c 00 } //01 00 
		$a_01_16 = {00 00 00 64 69 75 65 71 6f 73 2e 64 6c 6c 00 } //01 00 
		$a_01_17 = {00 00 00 64 69 79 77 70 6f 6f 2e 64 6c 6c 00 } //01 00 
		$a_01_18 = {00 00 00 64 6e 66 61 61 6a 77 2e 64 6c 6c 00 } //01 00 
		$a_01_19 = {00 00 00 64 72 74 66 74 67 65 2e 64 6c 6c 00 } //01 00 
		$a_01_20 = {00 00 00 65 61 62 6d 78 6a 75 2e 64 6c 6c 00 } //01 00 
		$a_01_21 = {00 00 00 65 78 68 72 71 76 65 2e 64 6c 6c 00 } //01 00 
		$a_01_22 = {00 00 00 65 79 78 78 63 70 77 2e 64 6c 6c 00 } //01 00 
		$a_01_23 = {00 00 00 66 70 62 72 65 68 65 2e 64 6c 6c 00 } //01 00 
		$a_01_24 = {00 00 00 66 71 74 6c 76 62 6d 2e 64 6c 6c 00 } //01 00 
		$a_01_25 = {00 00 00 66 73 77 63 75 78 71 7a 2e 64 6c 6c 00 } //01 00 
		$a_01_26 = {00 00 00 66 74 75 6d 6b 6c 6e 2e 64 6c 6c 00 } //01 00 
		$a_01_27 = {00 00 00 67 63 6c 78 79 69 65 2e 64 6c 6c 00 } //01 00 
		$a_01_28 = {00 00 00 67 6b 63 61 75 61 65 2e 64 6c 6c 00 } //01 00 
		$a_01_29 = {00 00 00 67 6d 69 67 77 6d 70 2e 64 6c 6c 00 } //01 00 
		$a_01_30 = {00 00 00 68 65 61 75 73 7a 6f 2e 64 6c 6c 00 } //01 00 
		$a_01_31 = {00 00 00 68 67 6f 61 6e 67 66 2e 64 6c 6c 00 } //01 00 
		$a_01_32 = {00 00 00 68 6a 77 63 71 6f 62 2e 64 6c 6c 00 } //01 00 
		$a_01_33 = {00 00 00 68 75 77 72 75 65 68 2e 64 6c 6c 00 } //01 00 
		$a_01_34 = {00 00 00 69 65 76 76 79 71 61 70 2e 64 6c 6c 00 } //01 00 
		$a_01_35 = {00 00 00 69 67 6d 61 79 78 7a 2e 64 6c 6c 00 } //01 00 
		$a_01_36 = {00 00 00 69 6b 6a 73 71 75 66 2e 64 6c 6c 00 } //01 00 
		$a_01_37 = {00 00 00 6a 66 70 78 6f 63 70 6a 2e 64 6c 6c 00 } //01 00 
		$a_01_38 = {00 00 00 6a 67 76 6a 65 6c 6f 2e 64 6c 6c 00 } //01 00 
		$a_01_39 = {00 00 00 6a 6b 71 6e 65 75 6a 2e 64 6c 6c 00 } //01 00 
		$a_01_40 = {00 00 00 6b 63 76 64 67 71 62 2e 64 6c 6c 00 } //01 00 
		$a_01_41 = {00 00 00 6b 66 78 70 61 6a 67 64 2e 64 6c 6c 00 } //01 00 
		$a_01_42 = {00 00 00 6b 77 65 63 61 65 64 2e 64 6c 6c 00 } //01 00 
		$a_01_43 = {00 00 00 6c 62 68 71 79 72 6c 7a 2e 64 6c 6c 00 } //01 00 
		$a_01_44 = {00 00 00 6c 63 77 76 6a 68 6f 2e 64 6c 6c 00 } //01 00 
		$a_01_45 = {00 00 00 6c 6b 6f 77 6f 66 77 2e 64 6c 6c 00 } //01 00 
		$a_01_46 = {00 00 00 6c 6f 6f 69 71 7a 6e 2e 64 6c 6c 00 } //01 00 
		$a_01_47 = {00 00 00 6c 75 6b 6f 77 6f 69 2e 64 6c 6c 00 } //01 00 
		$a_01_48 = {00 00 00 6d 62 78 75 68 66 7a 2e 64 6c 6c 00 } //01 00 
		$a_01_49 = {00 00 00 6d 63 6c 62 63 74 68 2e 64 6c 6c 00 } //01 00 
		$a_01_50 = {00 00 00 6d 66 74 6d 6d 78 6e 2e 64 6c 6c 00 } //01 00 
		$a_01_51 = {00 00 00 6d 6d 6a 76 77 65 69 2e 64 6c 6c 00 } //01 00 
		$a_01_52 = {00 00 00 6d 71 76 6b 6f 64 78 76 2e 64 6c 6c 00 } //01 00 
		$a_01_53 = {00 00 00 6d 75 6a 78 74 78 64 2e 64 6c 6c 00 } //01 00 
		$a_01_54 = {00 00 00 6e 66 76 6d 74 6d 77 2e 64 6c 6c 00 } //01 00 
		$a_01_55 = {00 00 00 6e 6d 69 74 66 63 6a 2e 64 6c 6c 00 } //01 00 
		$a_01_56 = {00 00 00 6f 66 70 69 62 62 74 2e 64 6c 6c 00 } //01 00 
		$a_01_57 = {00 00 00 6f 70 6e 6d 6b 67 69 2e 64 6c 6c 00 } //01 00 
		$a_01_58 = {00 00 00 6f 76 69 73 6e 6c 75 2e 64 6c 6c 00 } //01 00 
		$a_01_59 = {00 00 00 70 64 72 64 66 79 78 2e 64 6c 6c 00 } //01 00 
		$a_01_60 = {00 00 00 70 6c 74 65 65 77 78 2e 64 6c 6c 00 } //01 00 
		$a_01_61 = {00 00 00 70 6d 6c 72 75 71 71 70 2e 64 6c 6c 00 } //01 00 
		$a_01_62 = {00 00 00 70 71 72 66 65 70 71 2e 64 6c 6c 00 } //01 00 
		$a_01_63 = {00 00 00 71 61 65 6f 6b 6b 7a 2e 64 6c 6c 00 } //01 00 
		$a_01_64 = {00 00 00 71 61 6a 66 62 61 75 2e 64 6c 6c 00 } //01 00 
		$a_01_65 = {00 00 00 71 67 6f 6f 6a 6d 67 2e 64 6c 6c 00 } //01 00 
		$a_01_66 = {00 00 00 71 6b 69 6c 6f 67 72 62 2e 64 6c 6c 00 } //01 00 
		$a_01_67 = {00 00 00 71 6f 62 6e 68 73 76 2e 64 6c 6c 00 } //01 00 
		$a_01_68 = {00 00 00 71 70 7a 6e 70 79 6a 2e 64 6c 6c 00 } //01 00 
		$a_01_69 = {00 00 00 71 74 6e 77 63 72 64 2e 64 6c 6c 00 } //01 00 
		$a_01_70 = {00 00 00 71 75 68 75 68 68 66 2e 64 6c 6c 00 } //01 00 
		$a_01_71 = {00 00 00 71 76 70 6d 77 69 76 2e 64 6c 6c 00 } //01 00 
		$a_01_72 = {00 00 00 71 78 72 6a 79 78 64 68 2e 64 6c 6c 00 } //01 00 
		$a_01_73 = {00 00 00 71 79 6c 6e 74 72 6b 2e 64 6c 6c 00 } //01 00 
		$a_01_74 = {00 00 00 72 69 6f 6d 62 66 61 2e 64 6c 6c 00 } //01 00 
		$a_01_75 = {00 00 00 72 6d 65 73 6d 75 78 2e 64 6c 6c 00 } //01 00 
		$a_01_76 = {00 00 00 72 76 64 6b 6f 74 6b 2e 64 6c 6c 00 } //01 00 
		$a_01_77 = {00 00 00 72 78 6f 71 75 6f 62 2e 64 6c 6c 00 } //01 00 
		$a_01_78 = {00 00 00 73 62 6c 69 68 65 72 2e 64 6c 6c 00 } //01 00 
		$a_01_79 = {00 00 00 73 66 7a 63 6c 69 78 2e 64 6c 6c 00 } //01 00 
		$a_01_80 = {00 00 00 73 6d 6c 72 78 33 32 2e 64 6c 6c 00 } //01 00 
		$a_01_81 = {00 00 00 73 74 64 65 65 6e 67 2e 64 6c 6c 00 } //01 00 
		$a_01_82 = {00 00 00 73 78 65 6b 65 6e 7a 2e 64 6c 6c 00 } //01 00 
		$a_01_83 = {00 00 00 73 7a 66 6d 73 73 6e 2e 64 6c 6c 00 } //01 00 
		$a_01_84 = {00 00 00 74 64 64 6d 73 6e 76 2e 64 6c 6c 00 } //01 00 
		$a_01_85 = {00 00 00 74 68 6c 6c 78 69 73 2e 64 6c 6c 00 } //01 00 
		$a_01_86 = {00 00 00 74 66 78 78 63 6c 6e 78 2e 64 6c 6c 00 } //01 00 
		$a_01_87 = {00 00 00 74 71 73 6d 75 76 61 2e 64 6c 6c 00 } //01 00 
		$a_01_88 = {00 00 00 75 68 69 63 62 72 6e 2e 64 6c 6c 00 } //01 00 
		$a_01_89 = {00 00 00 75 6b 69 6b 62 6c 71 2e 64 6c 6c 00 } //01 00 
		$a_01_90 = {00 00 00 75 6d 78 61 76 68 62 2e 64 6c 6c 00 } //01 00 
		$a_01_91 = {00 00 00 75 77 6b 69 6e 63 63 2e 64 6c 6c 00 } //01 00 
		$a_01_92 = {00 00 00 76 67 64 61 6e 68 68 2e 64 6c 6c 00 } //01 00 
		$a_01_93 = {00 00 00 76 67 66 6c 77 74 6e 2e 64 6c 6c 00 } //01 00 
		$a_01_94 = {00 00 00 76 68 69 78 76 6c 64 2e 64 6c 6c 00 } //01 00 
		$a_01_95 = {00 00 00 76 6a 62 70 6f 77 6b 68 2e 64 6c 6c 00 } //01 00 
		$a_01_96 = {00 00 00 76 70 64 66 72 6b 63 2e 64 6c 6c 00 } //01 00 
		$a_01_97 = {00 00 00 76 76 62 64 73 6e 77 2e 64 6c 6c 00 } //01 00 
		$a_01_98 = {00 00 00 76 7a 67 78 75 65 79 2e 64 6c 6c 00 } //01 00 
		$a_01_99 = {00 00 00 77 6b 6e 64 67 77 69 2e 64 6c 6c 00 } //01 00 
		$a_01_100 = {00 00 00 77 6e 66 61 73 77 68 2e 64 6c 6c 00 } //01 00 
		$a_01_101 = {00 00 00 77 6f 62 67 6a 7a 65 2e 64 6c 6c 00 } //01 00 
		$a_01_102 = {00 00 00 77 77 71 62 69 66 6e 78 2e 64 6c 6c 00 } //01 00 
		$a_01_103 = {00 00 00 77 79 71 72 76 6f 74 2e 64 6c 6c 00 } //01 00 
		$a_01_104 = {00 00 00 78 62 79 70 7a 71 73 2e 64 6c 6c 00 } //01 00 
		$a_01_105 = {00 00 00 78 6a 67 62 63 65 66 2e 64 6c 6c 00 } //01 00 
		$a_01_106 = {00 00 00 78 6a 6b 6c 68 72 6f 2e 64 6c 6c 00 } //01 00 
		$a_01_107 = {00 00 00 78 6d 63 70 76 6e 64 2e 64 6c 6c 00 } //01 00 
		$a_01_108 = {00 00 00 78 75 69 6d 68 69 76 62 2e 64 6c 6c 00 } //01 00 
		$a_01_109 = {00 00 00 78 7a 72 78 65 63 69 2e 64 6c 6c 00 } //01 00 
		$a_01_110 = {00 00 00 79 63 64 68 73 7a 69 2e 64 6c 6c 00 } //01 00 
		$a_01_111 = {00 00 00 79 64 7a 6b 77 7a 6b 2e 64 6c 6c 00 } //01 00 
		$a_01_112 = {00 00 00 79 70 6a 79 74 6c 6f 2e 64 6c 6c 00 } //01 00 
		$a_01_113 = {00 00 00 79 72 68 70 63 68 76 2e 64 6c 6c 00 } //01 00 
		$a_01_114 = {00 00 00 79 76 77 73 79 61 74 2e 64 6c 6c 00 } //01 00 
		$a_01_115 = {00 00 00 7a 6d 76 6f 72 74 76 2e 64 6c 6c 00 } //01 00 
		$a_01_116 = {00 00 00 7a 70 67 68 67 6b 62 2e 64 6c 6c 00 } //01 00 
		$a_01_117 = {00 00 00 6d 6c 6e 74 7a 6f 7a 66 2e 64 6c 6c 00 } //01 00 
		$a_01_118 = {00 00 00 72 72 62 6e 72 65 72 6b 2e 64 6c 6c 00 } //01 00 
		$a_01_119 = {00 00 00 78 72 78 6e 75 69 2e 64 6c 6c 00 } //01 00 
		$a_01_120 = {00 00 00 71 64 64 71 69 78 74 77 67 2e 64 6c 6c 00 } //01 00 
		$a_01_121 = {00 00 00 6e 64 6a 64 6f 71 70 70 2e 64 6c 6c 00 } //01 00 
		$a_01_122 = {00 00 00 41 56 46 6f 75 6e 64 61 74 69 6f 6e 43 46 2e 64 6c 6c 00 } //01 00 
		$a_01_123 = {00 00 00 53 44 50 50 4c 49 4e 2e 44 4c 4c 00 } //01 00 
		$a_01_124 = {00 00 00 64 65 6c 65 67 61 74 65 5f 65 78 65 63 75 74 65 2e 64 6c 6c 00 } //01 00 
		$a_01_125 = {00 00 00 45 50 37 55 49 50 30 30 2e 44 4c 4c 00 } //01 00 
		$a_01_126 = {00 00 00 41 53 4d 69 6d 70 6f 72 74 32 31 36 41 2e 64 6c 6c 00 } //01 00 
		$a_01_127 = {00 00 00 68 70 6f 63 35 33 30 33 2e 44 4c 4c 00 } //00 00 
	condition:
		any of ($a_*)
 
}