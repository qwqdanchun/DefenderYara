
rule Ransom_Win32_LockerGoga_D{
	meta:
		description = "Ransom:Win32/LockerGoga.D,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 16 00 00 "
		
	strings :
		$a_00_0 = {2e 6c 6e 6b 00 00 00 00 2e 64 6f 63 00 00 00 00 2e 64 6f 74 00 00 00 00 2e 64 6f 63 78 00 00 00 2e 64 6f 63 62 00 00 00 2e 64 6f 74 78 00 00 00 64 6f 74 62 00 00 00 00 2e 77 6b 62 00 00 00 00 2e 78 6d 6c 00 } //10
		$a_00_1 = {64 00 6f 00 63 00 7c 00 64 00 6f 00 74 00 7c 00 77 00 62 00 6b 00 7c 00 64 00 6f 00 63 00 78 00 7c 00 64 00 6f 00 74 00 78 00 7c 00 64 00 6f 00 63 00 62 00 7c 00 78 00 6c 00 6d 00 7c 00 78 00 6c 00 73 00 78 00 7c 00 78 00 6c 00 74 00 78 00 7c 00 78 00 6c 00 73 00 62 00 7c 00 78 00 6c 00 77 00 7c 00 70 00 70 00 74 00 7c 00 70 00 6f 00 74 00 7c 00 70 00 70 00 73 00 7c 00 70 00 70 00 74 00 78 00 7c 00 70 00 6f 00 74 00 78 00 7c 00 70 00 70 00 73 00 78 00 7c 00 73 00 6c 00 64 00 78 00 7c 00 70 00 64 00 66 00 } //10 doc|dot|wbk|docx|dotx|docb|xlm|xlsx|xltx|xlsb|xlw|ppt|pot|pps|pptx|potx|ppsx|sldx|pdf
		$a_00_2 = {28 00 64 00 6f 00 5b 00 63 00 74 00 5d 00 5b 00 78 00 62 00 5d 00 3f 00 7c 00 77 00 62 00 6b 00 7c 00 78 00 6c 00 6d 00 7c 00 78 00 6c 00 73 00 78 00 7c 00 78 00 6c 00 74 00 78 00 7c 00 78 00 6c 00 73 00 62 00 7c 00 78 00 6c 00 77 00 7c 00 70 00 70 00 5b 00 74 00 73 00 5d 00 7c 00 70 00 6f 00 74 00 7c 00 70 00 5b 00 6f 00 70 00 5d 00 5b 00 73 00 74 00 5d 00 78 00 7c 00 73 00 6c 00 64 00 78 00 7c 00 70 00 64 00 66 00 7c 00 64 00 62 00 7c 00 73 00 71 00 6c 00 29 00 } //10 (do[ct][xb]?|wbk|xlm|xlsx|xltx|xlsb|xlw|pp[ts]|pot|p[op][st]x|sldx|pdf|db|sql)
		$a_00_3 = {28 00 5c 00 28 00 78 00 38 00 36 00 5c 00 29 00 29 00 3f 00 7c 00 5b 00 41 00 2d 00 5a 00 61 00 2d 00 7a 00 5d 00 3a 00 5c 00 5c 00 28 00 70 00 61 00 67 00 65 00 66 00 69 00 6c 00 65 00 5c 00 2e 00 73 00 79 00 73 00 7c 00 68 00 69 00 62 00 65 00 72 00 66 00 69 00 6c 00 5c 00 2e 00 73 00 79 00 73 00 7c 00 70 00 65 00 72 00 66 00 6c 00 6f 00 67 00 73 00 7c 00 62 00 6f 00 6f 00 74 00 2e 00 2a 00 7c 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 64 00 61 00 74 00 61 00 7c 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 76 00 6f 00 6c 00 75 00 6d 00 65 00 20 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 } //10 (\(x86\))?|[A-Za-z]:\\(pagefile\.sys|hiberfil\.sys|perflogs|boot.*|programdata|system volume information
		$a_00_4 = {6a 6d 43 46 49 62 55 53 4c 47 2b 58 4e 63 54 31 56 33 72 69 48 6c 70 4e 41 65 68 6f 6a 31 73 37 59 35 30 66 49 46 66 52 5a 47 2f 35 4d 77 41 79 68 77 6e 49 53 78 58 6b 6a 55 57 68 55 47 62 45 } //10 jmCFIbUSLG+XNcT1V3riHlpNAehoj1s7Y50fIFfRZG/5MwAyhwnISxXkjUWhUGbE
		$a_00_5 = {5c 63 72 79 70 74 6f 2d 6c 6f 63 6b 65 72 5c 74 70 6c 73 5f 4d 53 56 43 } //10 \crypto-locker\tpls_MSVC
		$a_00_6 = {5c 63 72 79 70 74 6f 2d 6c 6f 63 6b 65 72 5c 63 72 79 70 74 6f 70 70 5c 73 72 63 } //10 \crypto-locker\cryptopp\src
		$a_00_7 = {69 6e 74 65 72 66 61 63 65 00 00 00 73 65 74 00 6e 65 74 73 68 2e 65 78 65 00 } //10
		$a_00_8 = {74 00 78 00 74 00 7c 00 28 00 6e 00 74 00 75 00 73 00 65 00 72 00 7c 00 75 00 73 00 72 00 63 00 6c 00 61 00 73 00 73 00 29 00 5c 00 } //5 txt|(ntuser|usrclass)\
		$a_00_9 = {28 00 64 00 61 00 74 00 7c 00 69 00 6e 00 69 00 29 00 7c 00 64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 2e 00 69 00 6e 00 69 00 7c 00 2e 00 2b 00 5c 00 2e 00 28 00 6c 00 6e 00 6b 00 7c 00 73 00 79 00 73 00 7c 00 64 00 6c 00 6c 00 7c 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 29 00 } //5 (dat|ini)|desktop\.ini|.+\.(lnk|sys|dll|locked)
		$a_00_10 = {28 00 64 00 61 00 74 00 7c 00 69 00 6e 00 69 00 29 00 7c 00 64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 69 00 6e 00 69 00 7c 00 2b 00 5c 00 28 00 6c 00 6e 00 6b 00 7c 00 73 00 79 00 73 00 7c 00 64 00 6c 00 6c 00 7c 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 29 00 } //5 (dat|ini)|desktop\ini|+\(lnk|sys|dll|locked)
		$a_00_11 = {6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 5c 00 62 00 75 00 72 00 6e 00 7c 00 67 00 64 00 69 00 70 00 66 00 6f 00 6e 00 74 00 63 00 61 00 63 00 68 00 65 00 76 00 31 00 5c 00 2e 00 64 00 61 00 74 00 } //5 microsoft\\windows\\burn|gdipfontcachev1\.dat
		$a_03_12 = {73 76 63 68 30 73 74 2e [0-05] 2e 65 78 65 } //5
		$a_00_13 = {c7 85 5c fe ff ff 47 4f 47 41 6a 00 50 } //5
		$a_00_14 = {c7 85 90 fe ff ff 67 6f 67 61 6a 00 50 } //5
		$a_00_15 = {44 68 61 72 6d 61 50 61 72 72 61 63 6b 40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 6f 6d } //5 DharmaParrack@protonmail.com
		$a_00_16 = {77 79 61 74 74 70 65 74 74 69 67 72 65 77 38 39 32 32 35 35 35 40 6d 61 69 6c 2e 63 6f 6d } //5 wyattpettigrew8922555@mail.com
		$a_00_17 = {4d 49 47 64 4d 41 30 47 43 53 71 47 53 49 62 33 44 51 45 42 41 51 55 41 41 34 47 4c 41 44 43 42 } //2 MIGdMA0GCSqGSIb3DQEBAQUAA4GLADCB
		$a_00_18 = {63 3a 2f 63 6c 2e 6c 6f 67 00 } //2
		$a_00_19 = {6c 00 6f 00 63 00 6b 00 65 00 64 00 00 00 } //2
		$a_00_20 = {52 45 41 44 4d 45 5f 4c 4f 43 4b 45 44 2e 74 78 74 00 } //2 䕒䑁䕍䱟䍏䕋⹄硴t
		$a_00_21 = {52 45 41 44 4d 45 2d 4e 4f 57 2e 74 78 74 00 } //2
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*5+(#a_00_9  & 1)*5+(#a_00_10  & 1)*5+(#a_00_11  & 1)*5+(#a_03_12  & 1)*5+(#a_00_13  & 1)*5+(#a_00_14  & 1)*5+(#a_00_15  & 1)*5+(#a_00_16  & 1)*5+(#a_00_17  & 1)*2+(#a_00_18  & 1)*2+(#a_00_19  & 1)*2+(#a_00_20  & 1)*2+(#a_00_21  & 1)*2) >=12
 
}