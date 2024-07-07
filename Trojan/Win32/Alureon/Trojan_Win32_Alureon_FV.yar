
rule Trojan_Win32_Alureon_FV{
	meta:
		description = "Trojan:Win32/Alureon.FV,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 30 00 00 "
		
	strings :
		$a_01_0 = {81 ec 88 00 00 00 c7 45 b2 40 00 00 00 c7 45 9a 04 00 00 00 c7 45 c6 00 30 00 00 c7 45 e6 df 28 2d 63 } //1
		$a_01_1 = {81 ec 88 00 00 00 c7 45 b0 40 00 00 00 c7 45 8e 00 00 01 00 c7 85 7e ff ff ff 00 00 00 00 c7 45 e8 c3 04 2f 97 } //1
		$a_01_2 = {81 ec 88 00 00 00 c7 45 f6 01 00 00 00 c7 45 be 14 00 00 00 c7 45 82 00 80 00 00 c7 45 d0 00 00 01 00 c7 45 e2 00 30 00 00 c7 45 8e 5f 27 29 d2 } //1
		$a_03_3 = {81 ec 88 00 00 00 c7 45 c8 18 00 00 00 c7 45 b4 04 00 00 00 c7 45 e4 06 1c c8 16 c7 45 a2 40 00 00 00 c7 45 90 90 00 30 00 00 c7 45 e0 00 80 00 00 90 00 } //1
		$a_01_4 = {81 ec 8c 00 00 00 c7 45 d2 00 30 00 00 c7 85 7a ff ff ff 14 00 00 00 c7 45 90 00 00 00 00 c7 45 c2 18 00 00 00 c7 45 88 40 00 00 00 c7 45 f2 00 00 00 00 c7 45 a4 90 20 70 45 } //1
		$a_01_5 = {81 ec 8c 00 00 00 c7 45 8e 04 00 00 00 c7 45 b4 00 30 00 00 c7 45 de 18 00 00 00 c7 45 a2 00 80 00 00 c7 45 ce 00 00 01 00 c7 45 ec 00 00 00 00 c7 45 ac 01 00 00 00 c7 45 c6 00 00 00 00 c7 45 92 40 00 00 00 c7 45 b0 87 57 45 0f } //1
		$a_01_6 = {81 ec 8c 00 00 00 c7 45 98 40 00 00 00 c7 45 fc 00 00 00 00 c7 45 8e c7 ce a0 78 } //1
		$a_01_7 = {81 ec 8c 00 00 00 c7 45 f8 14 00 00 00 c7 45 b4 00 00 01 00 c7 45 8e 00 00 00 00 c7 45 bc 40 00 00 00 c7 45 aa 00 00 00 00 c7 45 c0 00 80 00 00 c7 85 7e ff ff ff d0 67 32 b3 } //1
		$a_01_8 = {81 ec 8c 00 00 00 c7 45 da 00 00 00 00 c7 45 92 01 00 00 00 c7 45 c8 40 00 00 00 c7 45 e8 00 30 00 00 c7 45 82 14 00 00 00 c7 45 ec 00 80 00 00 c7 45 ac 04 00 00 00 c7 45 96 00 00 01 00 c7 45 fc c6 a6 09 fa } //1
		$a_01_9 = {81 ec 8c 00 00 00 c7 45 9a 00 80 00 00 c7 45 cc 01 00 00 00 c7 45 fc 40 00 00 00 c7 45 bc 04 00 00 00 c7 45 8a 00 30 00 00 c7 45 d0 52 87 f8 88 } //1
		$a_01_10 = {81 ec 8c 00 00 00 c7 45 d0 00 30 00 00 c7 45 cc 18 00 00 00 c7 45 90 00 80 00 00 c7 45 80 40 00 00 00 c7 45 f8 00 00 01 00 c7 45 ec 00 00 00 00 c7 45 f4 04 00 00 00 c7 45 fc 5c 77 2c b2 } //1
		$a_01_11 = {c7 45 f0 00 80 00 00 c7 45 d0 01 00 00 00 c7 45 c4 14 00 00 00 c7 45 e0 3c f2 43 b3 } //1
		$a_01_12 = {c7 45 9a 18 00 00 00 c7 45 ce 04 00 00 00 c7 45 fc 00 30 00 00 c7 45 c0 00 00 00 00 c7 45 a2 bd a5 b2 8f } //1
		$a_01_13 = {81 ec 8c 00 00 00 c7 45 8a 00 00 00 00 c7 45 b2 6f 61 ee df c7 45 ea 40 00 00 00 } //1
		$a_01_14 = {c7 45 b0 14 00 00 00 c7 45 96 00 30 00 00 c7 45 e4 16 71 22 9b c7 45 b8 00 80 00 00 } //1
		$a_01_15 = {81 ec 8c 00 00 00 c7 45 f2 00 30 00 00 c7 45 84 18 00 00 00 c7 45 f6 1e 27 05 43 } //1
		$a_01_16 = {81 ec 8c 00 00 00 c7 45 d2 99 9a f7 6d c7 45 e8 01 00 00 00 c7 45 f0 00 00 00 00 c7 45 ec 00 00 00 00 c7 45 c0 18 00 00 00 } //1
		$a_01_17 = {81 ec 8c 00 00 00 c7 45 80 00 80 00 00 c7 45 e4 25 7b 0e b7 c7 45 c8 00 30 00 00 } //1
		$a_01_18 = {c7 45 c8 18 00 00 00 c7 45 a8 00 00 01 00 c7 45 e4 ba 56 c2 88 c7 45 ac 40 00 00 00 c7 45 94 00 30 00 00 } //1
		$a_01_19 = {c7 45 c4 00 80 00 00 c7 45 e8 00 00 00 00 c7 45 f0 00 00 00 00 c7 45 c8 6a 5b 59 22 } //1
		$a_01_20 = {c7 45 aa ab 9a 73 6e c7 45 8e 01 00 00 00 c7 45 f8 04 00 00 00 } //1
		$a_01_21 = {81 ec 8c 00 00 00 c7 45 e0 14 00 00 00 c7 45 c8 18 00 00 00 c7 45 90 04 00 00 00 c7 45 9e 00 30 00 00 c7 85 7a ff ff ff 85 3f 36 77 } //1
		$a_01_22 = {81 ec 8c 00 00 00 c7 45 9e 04 00 00 00 c7 45 d6 00 30 00 00 c7 45 a6 00 80 00 00 c7 45 e4 25 ce 1b 64 } //1
		$a_01_23 = {c7 45 a8 46 89 bb d9 c7 45 96 00 00 01 00 c7 45 fc 00 80 00 00 } //1
		$a_01_24 = {c7 45 e0 14 00 00 00 c7 45 a4 04 00 00 00 c7 45 b0 00 00 00 00 c7 45 ac 3f b9 a3 62 } //1
		$a_01_25 = {81 ec 8c 00 00 00 c7 85 7e ff ff ff 40 00 00 00 c7 45 aa 52 62 88 90 } //1
		$a_01_26 = {81 ec 8c 00 00 00 c7 45 e2 7c 88 35 e9 c7 45 94 01 00 00 00 c7 45 9a 00 30 00 00 } //1
		$a_01_27 = {81 ec 8c 00 00 00 c7 45 9a 04 00 00 00 c7 45 aa 18 00 00 00 c7 45 8a c8 a2 9b 74 } //1
		$a_01_28 = {c7 45 ec 00 00 01 00 c7 45 aa 00 30 00 00 c7 45 be 61 af 96 5e } //1
		$a_01_29 = {c7 45 8a 00 30 00 00 c7 45 ae 01 00 00 00 c7 45 a2 0b 12 cf b2 } //1
		$a_01_30 = {c7 45 a4 14 00 00 00 c7 45 8a 18 00 00 00 c7 45 86 5f 50 8a b7 } //1
		$a_01_31 = {c7 45 8e ee 70 44 18 c7 45 8a 00 30 00 00 c7 45 e4 01 00 00 00 } //1
		$a_01_32 = {c7 45 a8 dc 11 81 3d c7 45 96 00 30 00 00 c7 45 8e 18 00 00 00 } //1
		$a_01_33 = {c7 45 96 00 80 00 00 c7 45 cc 40 00 00 00 c7 45 92 d8 9b e1 1e } //1
		$a_01_34 = {81 ec 8c 00 00 00 c7 45 86 60 29 d0 1f c7 45 fc 04 00 00 00 } //1
		$a_01_35 = {c7 45 d8 04 00 00 00 c7 45 c4 40 00 00 00 c7 45 bc 0c 2a f0 70 } //1
		$a_01_36 = {c7 45 ac 04 00 00 00 c7 45 92 ae 59 f8 a3 c7 45 b4 18 00 00 00 } //1
		$a_01_37 = {c7 45 92 a9 c0 7f f0 c7 45 a2 00 30 00 00 c7 45 aa 40 00 00 00 } //1
		$a_01_38 = {81 ec 8c 00 00 00 c7 45 92 00 00 00 00 c7 45 b2 fd a7 ad 12 c7 45 fc 40 00 00 00 } //1
		$a_01_39 = {c7 45 98 14 00 00 00 c7 45 9c 00 00 00 00 c7 45 b2 d0 a3 87 2f } //1
		$a_01_40 = {c7 45 88 01 00 00 00 c7 45 b2 b0 52 a2 f0 c7 45 ec 00 30 00 00 } //1
		$a_01_41 = {81 ec 8c 00 00 00 c7 45 ca 18 00 00 00 c7 45 a2 18 07 26 72 } //1
		$a_01_42 = {c7 45 b2 00 80 00 00 c7 45 ca 14 00 00 00 c7 45 fc 58 28 d5 16 } //1
		$a_01_43 = {c7 45 f0 00 00 01 00 c7 45 f8 40 00 00 00 c7 45 8e 24 38 99 e3 } //1
		$a_01_44 = {81 ec 8c 00 00 00 c7 45 8a c9 78 dc 57 c7 45 ac 00 00 00 00 } //1
		$a_01_45 = {c7 45 86 0a 4f ef 92 c7 45 de 14 00 00 00 c7 45 8a 00 00 01 00 } //1
		$a_01_46 = {c7 45 f0 00 00 01 00 c7 45 ec 49 64 82 75 c7 45 d2 18 00 00 00 } //1
		$a_01_47 = {c7 45 8c 18 00 00 00 c7 45 ae 00 00 00 00 c7 45 9c 01 4e 65 63 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_01_27  & 1)*1+(#a_01_28  & 1)*1+(#a_01_29  & 1)*1+(#a_01_30  & 1)*1+(#a_01_31  & 1)*1+(#a_01_32  & 1)*1+(#a_01_33  & 1)*1+(#a_01_34  & 1)*1+(#a_01_35  & 1)*1+(#a_01_36  & 1)*1+(#a_01_37  & 1)*1+(#a_01_38  & 1)*1+(#a_01_39  & 1)*1+(#a_01_40  & 1)*1+(#a_01_41  & 1)*1+(#a_01_42  & 1)*1+(#a_01_43  & 1)*1+(#a_01_44  & 1)*1+(#a_01_45  & 1)*1+(#a_01_46  & 1)*1+(#a_01_47  & 1)*1) >=1
 
}