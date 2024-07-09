
rule VirTool_Win32_VBInject_gen_JD{
	meta:
		description = "VirTool:Win32/VBInject.gen!JD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {89 04 f2 89 4c f2 04 b8 ?? ?? ?? ?? f7 d8 b9 ?? ?? ?? ?? 83 d1 00 f7 d9 8b 15 ?? ?? ?? ?? 6a ?? 5e 2b 72 14 8b 15 ?? ?? ?? ?? 8b 52 0c 89 04 f2 89 4c f2 04 } //1
		$a_03_1 = {2b 48 14 a1 ?? ?? ?? ?? 8b 40 0c c7 04 c8 ?? ?? ?? ?? c7 44 c8 04 } //1
		$a_03_2 = {b8 04 07 00 00 8b 3c 24 [0-40] 83 e8 04 0f 6e 07 0f 6e ce 0f ef c1 0f 7e 07 83 c7 04 85 c0 75 ea c3 } //2
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*2) >=2
 
}
rule VirTool_Win32_VBInject_gen_JD_2{
	meta:
		description = "VirTool:Win32/VBInject.gen!JD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 0d 00 00 "
		
	strings :
		$a_03_0 = {c7 04 d8 42 e8 bb 03 a1 ?? ?? ?? ?? c7 44 d8 04 00 00 8b 54 } //1
		$a_03_1 = {c7 04 d8 e8 5c 03 00 a1 ?? ?? ?? ?? c7 44 d8 04 00 8b 09 c7 } //1
		$a_01_2 = {8b 40 0c c7 04 88 eb f2 c3 00 8b 45 } //1
		$a_01_3 = {8b 40 0c c7 04 88 02 eb 07 29 8b 45 } //1
		$a_03_4 = {b8 00 77 ba 0f f7 d8 b9 44 6c ca 20 83 d1 00 f7 d9 8b 95 ?? ?? ff ff 8b b5 ?? ?? ff ff 89 04 d6 89 4c d6 04 } //2
		$a_03_5 = {6a 04 58 6b c0 03 8b (4d ?? 0d ??|?? ?? ?? c7) 04 01 02 eb 07 29 } //1
		$a_03_6 = {6a 04 58 6b c0 05 8b (4d ?? 0d ??|?? ?? ?? c7) 04 01 eb f2 c3 00 } //1
		$a_03_7 = {c7 01 60 e8 4e 00 8b 55 ?? c7 42 04 00 00 6b 00 8b 45 90 1b 00 c7 40 08 65 00 72 00 8b 4d 90 1b 00 c7 41 0c 6e 00 65 00 } //2
		$a_03_8 = {6a 04 58 c1 e0 02 8b 0d ?? ?? ?? ?? c7 04 01 c2 04 eb f4 6a 04 58 (6b c0 03|d1 e0) 8b 0d ?? ?? ?? ?? c7 04 01 90 03 04 04 07 29 0a 83 83 3a 00 74 } //2
		$a_03_9 = {c7 04 81 c2 04 eb f4 c7 45 ?? ?? 00 00 00 83 7d ?? ?? 73 06 83 65 ?? 00 eb 08 e8 ?? ?? ?? ?? 89 45 ?? 8b 45 ?? 8b 0d ?? ?? ?? ?? c7 04 81 07 29 0a 83 } //2
		$a_03_10 = {f5 07 29 0a 83 f5 03 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_11 = {f5 c2 04 eb f4 f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_12 = {f5 8b 4c 24 08 f5 01 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*2+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*2+(#a_03_8  & 1)*2+(#a_03_9  & 1)*2+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1) >=2
 
}
rule VirTool_Win32_VBInject_gen_JD_3{
	meta:
		description = "VirTool:Win32/VBInject.gen!JD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 18 00 00 "
		
	strings :
		$a_03_0 = {f5 c9 74 02 eb f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_1 = {f5 8b 54 24 08 f5 01 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_2 = {f5 83 c0 04 eb f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_3 = {f5 04 eb f3 c3 f5 05 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_4 = {f5 29 10 83 c0 f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_5 = {f5 fc eb f1 c3 f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_6 = {f5 74 05 29 50 f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_7 = {f6 55 ec 64 a1 30 00 00 00 f5 2d 00 00 00 04 ?? ?? a4 } //1
		$a_03_8 = {f6 8b 40 0c 8b 40 14 8b 40 f5 2e 00 00 00 04 ?? ?? a4 } //1
		$a_03_9 = {f5 fc eb f1 c3 f5 05 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_10 = {f5 74 05 31 50 f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_11 = {f5 e0 f2 c3 00 f5 05 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_12 = {f5 8b 44 24 04 f5 00 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_13 = {f5 83 c0 04 e0 f5 05 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_14 = {f5 e0 f0 c3 00 f5 06 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_15 = {f5 74 08 31 10 f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_16 = {f5 00 74 07 31 f5 03 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_17 = {f5 e0 f2 c2 10 f5 05 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_18 = {f5 8b 5c 24 04 f5 00 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_19 = {f5 c3 04 e0 f1 f5 05 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_20 = {f5 08 31 13 83 f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_21 = {f5 f0 c2 10 00 f5 06 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_22 = {f5 31 18 83 c0 f5 04 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
		$a_03_23 = {f5 04 e0 f2 c9 f5 05 00 00 00 (07|94) 08 00 ?? 00 a3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_03_13  & 1)*1+(#a_03_14  & 1)*1+(#a_03_15  & 1)*1+(#a_03_16  & 1)*1+(#a_03_17  & 1)*1+(#a_03_18  & 1)*1+(#a_03_19  & 1)*1+(#a_03_20  & 1)*1+(#a_03_21  & 1)*1+(#a_03_22  & 1)*1+(#a_03_23  & 1)*1) >=2
 
}
rule VirTool_Win32_VBInject_gen_JD_4{
	meta:
		description = "VirTool:Win32/VBInject.gen!JD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 3b 00 00 "
		
	strings :
		$a_03_0 = {6a 04 59 2b 48 ?? a1 ?? ?? ?? ?? 8b 40 ?? c7 04 88 c2 04 eb f4 a1 ?? ?? ?? ?? 6a 03 59 2b 48 ?? a1 ?? ?? ?? ?? 8b 40 ?? c7 04 88 07 29 0a 83 } //2
		$a_03_1 = {c7 04 c2 24 28 89 11 8b 0d ?? ?? ?? ?? 8d 55 ?? c7 44 c1 04 8b 54 24 2c 8d 45 90 1b 01 52 8d 4d ?? 50 } //2
		$a_03_2 = {c7 80 30 02 00 00 64 a1 30 00 8b (85 ?? ?? ff ff 45|?? c7 80 34) 02 00 00 00 00 8b 40 } //2
		$a_01_3 = {30 00 30 00 30 00 31 00 32 00 43 00 44 00 35 00 43 00 45 00 39 00 38 00 42 00 35 00 45 00 35 00 46 00 35 00 30 00 43 00 31 00 33 00 35 00 45 00 35 00 37 00 31 00 30 00 31 00 43 00 33 00 38 00 41 00 30 00 34 00 30 00 39 00 38 00 34 00 31 00 44 00 35 00 42 00 38 00 33 00 30 00 35 00 37 00 31 00 30 00 33 00 43 00 33 00 38 00 30 00 31 00 44 00 } //2 00012CD5CE98B5E5F50C135E57101C38A0409841D5B83057103C3801D
		$a_01_4 = {c7 80 bc 01 00 00 68 00 30 00 c7 80 c0 01 00 00 00 ff 72 50 c7 80 c4 01 00 00 ff 77 34 ff } //2
		$a_03_5 = {c7 00 10 83 c0 04 6a 05 ff 35 ?? ?? ?? ?? e8 ?? ?? ?? ?? c7 00 e0 f2 c3 00 8b 45 08 } //2
		$a_01_6 = {c7 04 d8 00 ff 72 50 c7 44 d8 04 ff 77 34 ff } //1
		$a_01_7 = {c7 04 d8 31 ff d0 6a c7 44 d8 04 36 e8 47 02 } //1
		$a_01_8 = {8b 40 0c c7 04 88 e0 f0 c3 00 a1 } //1
		$a_01_9 = {8b 40 0c c7 04 88 74 08 31 13 a1 } //1
		$a_03_10 = {6b c0 05 8b 0d ?? ?? ?? ?? c7 04 01 (e0 f2 c2 10|90 90 83 c3 04) } //1
		$a_03_11 = {6b c0 03 8b 0d ?? ?? ?? ?? c7 04 01 (00 74 07 31|0b 83 f9 00) } //1
		$a_03_12 = {c7 04 81 18 83 c0 04 c7 45 ?? ?? 00 00 00 83 7d ?? 07 73 06 } //1
		$a_03_13 = {c7 04 81 e0 f0 c9 c3 c7 45 ?? ?? 00 00 00 83 7d ?? 07 73 06 } //1
		$a_01_14 = {c7 04 c1 00 00 00 83 c7 44 c1 04 c4 08 c3 55 } //1
		$a_01_15 = {c7 04 c1 01 00 00 6a c7 44 c1 04 28 52 ff 31 } //1
		$a_03_16 = {c7 04 01 04 83 38 00 a1 ?? ?? ?? ?? c7 40 04 8b 4c 24 08 } //1
		$a_03_17 = {c7 04 01 75 f6 c3 00 a1 ?? ?? ?? ?? c7 00 8b 44 24 04 } //1
		$a_01_18 = {8b 40 0c c7 04 88 8b 44 24 04 a1 } //1
		$a_01_19 = {8b 40 0c c7 04 88 31 08 83 c0 a1 } //1
		$a_03_20 = {6b c0 03 8b 0d ?? ?? ?? ?? c7 04 01 04 83 38 00 a1 ?? ?? ?? ?? c7 40 04 8b 4c 24 08 a1 ?? ?? ?? ?? c7 00 8b 44 24 04 } //2
		$a_03_21 = {c7 04 81 31 1a 83 c2 c7 45 ?? ?? 00 00 00 83 7d ?? 07 73 06 } //1
		$a_03_22 = {c7 04 81 75 f6 c3 00 c7 45 ?? ?? 00 00 00 83 7d ?? 07 73 06 } //1
		$a_03_23 = {c7 04 81 83 c2 04 31 c7 45 ?? ?? 00 00 00 83 7d ?? 07 73 06 } //1
		$a_03_24 = {c7 04 81 8b 54 24 04 c7 45 ?? ?? 00 00 00 83 7d ?? 07 73 06 } //1
		$a_01_25 = {c7 04 c8 30 83 78 28 c7 44 c8 04 00 74 0a 0f } //1
		$a_01_26 = {c7 04 c8 64 a1 18 00 c7 44 c8 04 00 00 8b 40 } //1
		$a_03_27 = {c7 04 81 85 db 74 07 c7 45 ?? ?? 00 00 00 83 7d ?? 06 73 06 } //1
		$a_03_28 = {c7 04 81 31 c0 8b 44 c7 45 ?? ?? 00 00 00 83 7d ?? 06 73 06 } //1
		$a_01_29 = {c7 04 c8 f3 a4 60 ff c7 44 c8 04 75 18 ff 75 } //1
		$a_01_30 = {c7 04 c8 10 50 6a 40 c7 44 c8 04 68 00 10 00 } //1
		$a_01_31 = {c7 04 c8 55 89 e5 8b c7 44 c8 04 5d 08 8b 43 } //1
		$a_01_32 = {c7 04 c8 08 80 3b 08 c7 44 c8 04 75 02 8b 00 } //1
		$a_01_33 = {c7 00 83 c3 04 eb c7 40 04 51 59 89 0b } //1
		$a_01_34 = {c7 00 f3 a4 60 ff c7 40 04 75 18 ff 75 } //1
		$a_03_35 = {c7 00 0c 31 37 83 90 09 0d 00 6a 03 ff 35 ?? ?? ?? ?? e8 } //1
		$a_03_36 = {c7 00 c7 04 83 3f 90 09 0d 00 6a 04 ff 35 ?? ?? ?? ?? e8 } //1
		$a_01_37 = {c7 04 c8 75 14 ff 75 c7 44 c8 04 10 ff 75 0c } //1
		$a_01_38 = {c7 04 c8 6a 00 ff d0 c7 44 c8 04 83 f8 00 74 } //1
		$a_01_39 = {c7 04 c8 75 0c ff d0 c7 44 c8 04 c9 c3 00 00 } //1
		$a_01_40 = {c7 04 c8 6a 40 68 00 c7 44 c8 04 10 00 00 68 } //1
		$a_01_41 = {c7 04 c8 0b 83 eb 0c c7 44 c8 04 53 ff 10 50 } //1
		$a_01_42 = {c7 00 6a 40 68 00 c7 40 04 10 00 00 68 } //1
		$a_01_43 = {c7 00 00 60 ff 75 c7 40 04 18 ff 75 14 } //1
		$a_01_44 = {c7 00 ff 75 14 ff c7 40 04 75 10 ff 75 } //1
		$a_01_45 = {c7 00 00 00 68 00 c7 40 04 08 00 00 6a } //1
		$a_01_46 = {c7 04 01 75 18 ff 75 c7 44 01 04 14 ff 75 10 } //1
		$a_01_47 = {c7 04 01 40 68 00 10 c7 44 01 04 00 00 68 00 } //1
		$a_01_48 = {c7 04 c1 00 6a 40 68 c7 44 c1 04 00 10 00 00 } //1
		$a_01_49 = {c7 04 c1 0f 0f 82 e0 c7 44 c1 04 00 00 00 0f } //1
		$a_01_50 = {c7 04 c1 55 8b ec 83 c7 44 c1 04 75 f7 81 78 } //1
		$a_01_51 = {c7 04 01 68 00 00 04 c7 44 01 04 00 52 51 54 } //1
		$a_01_52 = {c7 04 01 00 00 68 00 c7 44 01 04 08 00 00 6a } //1
		$a_03_53 = {c7 04 81 00 ff d0 85 (c7 45 f8 ?? 00 00 00 83 65|f8 00 83 7d) f8 } //1
		$a_03_54 = {c7 04 81 75 0c ff d0 c7 45 f8 ?? 00 00 00 83 7d f8 } //1
		$a_03_55 = {c7 04 81 10 ff 75 0c c7 45 ?? ?? 00 00 00 83 7d ?? 4c } //1
		$a_03_56 = {c7 04 81 ff 75 18 ff c7 45 ?? ?? 00 00 00 83 7d ?? 4c } //1
		$a_01_57 = {c7 04 01 8b 43 08 80 6a 04 } //1
		$a_01_58 = {c7 40 04 e5 8b 5d 08 6a 04 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_03_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_03_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_03_16  & 1)*1+(#a_03_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_03_20  & 1)*2+(#a_03_21  & 1)*1+(#a_03_22  & 1)*1+(#a_03_23  & 1)*1+(#a_03_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_03_27  & 1)*1+(#a_03_28  & 1)*1+(#a_01_29  & 1)*1+(#a_01_30  & 1)*1+(#a_01_31  & 1)*1+(#a_01_32  & 1)*1+(#a_01_33  & 1)*1+(#a_01_34  & 1)*1+(#a_03_35  & 1)*1+(#a_03_36  & 1)*1+(#a_01_37  & 1)*1+(#a_01_38  & 1)*1+(#a_01_39  & 1)*1+(#a_01_40  & 1)*1+(#a_01_41  & 1)*1+(#a_01_42  & 1)*1+(#a_01_43  & 1)*1+(#a_01_44  & 1)*1+(#a_01_45  & 1)*1+(#a_01_46  & 1)*1+(#a_01_47  & 1)*1+(#a_01_48  & 1)*1+(#a_01_49  & 1)*1+(#a_01_50  & 1)*1+(#a_01_51  & 1)*1+(#a_01_52  & 1)*1+(#a_03_53  & 1)*1+(#a_03_54  & 1)*1+(#a_03_55  & 1)*1+(#a_03_56  & 1)*1+(#a_01_57  & 1)*1+(#a_01_58  & 1)*1) >=2
 
}