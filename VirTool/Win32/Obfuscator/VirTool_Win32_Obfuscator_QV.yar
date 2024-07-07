
rule VirTool_Win32_Obfuscator_QV{
	meta:
		description = "VirTool:Win32/Obfuscator.QV,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 08 00 00 "
		
	strings :
		$a_01_0 = {eb 09 0f be c9 c1 c0 07 33 c1 42 8a 0a 84 c9 75 f1 } //10
		$a_01_1 = {8a 01 3c 61 7c 15 3c 7a 7f 11 0f be c0 83 e8 54 6a 1a 99 5f f7 ff 80 c2 61 eb 17 3c 41 7c 15 3c 5a 7f 11 0f be c0 83 e8 34 6a 1a 99 5f f7 ff 80 c2 41 88 11 41 80 39 00 75 c6 } //10
		$a_00_2 = {68 66 72 65 33 32 2e 71 79 79 } //1 hfre32.qyy
		$a_00_3 = {6a 66 32 5f 33 32 2e 71 79 79 } //1 jf2_32.qyy
		$a_00_4 = {6a 76 61 76 61 72 67 2e 71 79 79 } //1 jvavarg.qyy
		$a_00_5 = {6e 71 69 6e 63 76 33 32 2e 71 79 79 } //1 nqincv32.qyy
		$a_00_6 = {66 75 72 79 79 33 32 2e 71 79 79 } //1 furyy32.qyy
		$a_00_7 = {61 67 71 79 79 2e 71 79 79 } //1 agqyy.qyy
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=23
 
}
rule VirTool_Win32_Obfuscator_QV_2{
	meta:
		description = "VirTool:Win32/Obfuscator.QV,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 43 00 00 "
		
	strings :
		$a_01_0 = {8e fe 1f 4b 74 } //5
		$a_01_1 = {3d 03 40 00 80 74 14 68 19 2b 90 95 } //5
		$a_01_2 = {68 01 3d 1e d2 } //1
		$a_01_3 = {68 02 f1 f8 08 } //1
		$a_01_4 = {68 05 ad 89 0d } //1
		$a_01_5 = {68 07 be db 80 } //1
		$a_01_6 = {68 09 dc 1b 1e } //1
		$a_01_7 = {68 0c fb 14 73 } //1
		$a_01_8 = {68 13 11 74 02 } //1
		$a_01_9 = {68 19 2b 90 95 } //1
		$a_01_10 = {68 25 f5 10 5e } //1
		$a_01_11 = {68 26 ef 02 98 } //1
		$a_01_12 = {68 28 de 73 75 } //1
		$a_01_13 = {68 2c 01 95 12 } //1
		$a_01_14 = {68 2f 00 10 15 } //1
		$a_01_15 = {68 32 0e 48 9c } //1
		$a_01_16 = {68 34 55 35 db } //1
		$a_01_17 = {68 3a e0 48 ef } //1
		$a_01_18 = {68 3e 8d 61 be } //1
		$a_01_19 = {68 42 a8 6f 9e } //1
		$a_01_20 = {68 46 85 5d c9 } //1
		$a_01_21 = {68 49 7d 99 28 } //1
		$a_01_22 = {68 52 24 43 32 } //1 hR$C2
		$a_01_23 = {68 57 95 aa de } //1
		$a_01_24 = {68 59 c7 ec d4 } //1
		$a_01_25 = {68 60 a2 8a 76 } //1
		$a_01_26 = {68 62 29 21 1a } //1
		$a_01_27 = {68 6a 85 13 9f } //1
		$a_01_28 = {68 6b e1 7f 48 } //1
		$a_01_29 = {68 6d d1 b2 4c } //1
		$a_01_30 = {68 71 a1 5e 72 } //1
		$a_01_31 = {68 78 9c d0 1a } //1
		$a_01_32 = {68 7c 01 f0 5a } //1
		$a_01_33 = {68 81 de ec 67 } //1
		$a_01_34 = {68 86 67 41 6b } //1
		$a_01_35 = {68 8a 96 78 bf } //1
		$a_01_36 = {68 8f c8 0b 57 } //1
		$a_01_37 = {68 95 23 26 bc } //1
		$a_01_38 = {68 95 69 27 f2 } //1
		$a_01_39 = {68 9b 90 c4 8a } //1
		$a_01_40 = {68 9d 29 a4 99 } //1
		$a_01_41 = {68 a1 87 55 4d } //1
		$a_01_42 = {68 a1 b0 5c 72 } //1
		$a_01_43 = {68 af 12 3d 1b } //1
		$a_01_44 = {68 c0 0f 40 3e } //1
		$a_01_45 = {68 c1 ea 9d 27 } //1
		$a_01_46 = {68 c3 d1 3f 0f } //1
		$a_01_47 = {68 c8 39 03 24 } //1
		$a_01_48 = {68 c9 f0 f0 81 } //1
		$a_01_49 = {68 d1 8a 31 46 } //1
		$a_01_50 = {68 d5 70 34 6b } //1
		$a_01_51 = {68 d5 b0 3e 72 } //1
		$a_01_52 = {68 d7 3d 59 08 } //1
		$a_01_53 = {68 d9 38 45 17 } //1
		$a_01_54 = {68 dc 67 21 7a } //1
		$a_01_55 = {68 e4 55 9f da } //1
		$a_01_56 = {68 eb 3d 03 84 } //1
		$a_01_57 = {68 ee ea c0 1f } //1
		$a_01_58 = {68 f0 97 a0 90 } //1
		$a_01_59 = {68 f0 9a b8 6f } //1
		$a_01_60 = {68 f3 74 43 c5 } //1
		$a_01_61 = {68 f5 72 99 3d } //1
		$a_01_62 = {68 f6 35 3d d6 } //1
		$a_01_63 = {68 fb 96 32 22 } //1
		$a_01_64 = {68 fc 7e b8 48 } //1
		$a_01_65 = {68 fc da 94 48 } //1
		$a_01_66 = {68 fe 93 43 77 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_01_27  & 1)*1+(#a_01_28  & 1)*1+(#a_01_29  & 1)*1+(#a_01_30  & 1)*1+(#a_01_31  & 1)*1+(#a_01_32  & 1)*1+(#a_01_33  & 1)*1+(#a_01_34  & 1)*1+(#a_01_35  & 1)*1+(#a_01_36  & 1)*1+(#a_01_37  & 1)*1+(#a_01_38  & 1)*1+(#a_01_39  & 1)*1+(#a_01_40  & 1)*1+(#a_01_41  & 1)*1+(#a_01_42  & 1)*1+(#a_01_43  & 1)*1+(#a_01_44  & 1)*1+(#a_01_45  & 1)*1+(#a_01_46  & 1)*1+(#a_01_47  & 1)*1+(#a_01_48  & 1)*1+(#a_01_49  & 1)*1+(#a_01_50  & 1)*1+(#a_01_51  & 1)*1+(#a_01_52  & 1)*1+(#a_01_53  & 1)*1+(#a_01_54  & 1)*1+(#a_01_55  & 1)*1+(#a_01_56  & 1)*1+(#a_01_57  & 1)*1+(#a_01_58  & 1)*1+(#a_01_59  & 1)*1+(#a_01_60  & 1)*1+(#a_01_61  & 1)*1+(#a_01_62  & 1)*1+(#a_01_63  & 1)*1+(#a_01_64  & 1)*1+(#a_01_65  & 1)*1+(#a_01_66  & 1)*1) >=20
 
}