
rule Rogue_Win32_InternetAntivirus{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {70 67 75 61 72 64 2e 69 6e 69 00 00 ff ff ff ff 08 00 00 00 45 78 74 65 72 6e 61 6c 00 00 00 00 ff ff ff ff 05 00 00 00 47 75 61 72 64 00 00 00 ff ff ff ff 07 00 00 00 50 48 61 6e 64 6c 65 00 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Rogue_Win32_InternetAntivirus_2{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {16 46 52 41 4d 45 5f 53 50 59 40 be ca 01 d4 5f 00 3f 14 80 cc c2 7e 56 49 52 55 53 3b 3f 17 58 } //1
		$a_01_1 = {cd 50 52 4f 20 43 e8 4c 52 27 16 0a 2c 5b a7 1e 52 52 56 bb 30 08 95 52 27 fe cb 02 e1 53 86 2d } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Rogue_Win32_InternetAntivirus_3{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 "
		
	strings :
		$a_00_0 = {67 65 6e 61 76 69 72 2e 65 78 65 00 6c 69 76 65 65 73 2e 65 78 65 00 } //10
		$a_00_1 = {69 61 76 69 72 2e 65 78 65 00 } //10
		$a_01_2 = {50 72 6f 63 42 6c 6f 63 6b 00 } //1 牐捯求捯k
		$a_01_3 = {50 72 6f 63 65 73 73 42 6c 6f 63 6b 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=21
 
}
rule Rogue_Win32_InternetAntivirus_4{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {73 74 6f 70 20 22 49 54 47 72 64 45 6e 67 69 6e 65 22 } //1 stop "ITGrdEngine"
		$a_01_1 = {2f 75 6e 69 6e 73 74 61 6c 6c 20 2f 73 69 6c 65 6e 74 00 } //1
		$a_01_2 = {44 65 6c 65 74 69 6e 67 20 73 65 74 74 69 6e 67 73 20 69 6e 69 20 66 69 6c 65 3a 20 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Rogue_Win32_InternetAntivirus_5{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {78 6f 6f 6d 65 72 2e 61 6c 69 63 65 2e 69 74 90 02 20 55 8b ec 33 c0 55 68 90 01 02 40 00 64 ff 30 64 89 20 90 00 } //1
		$a_00_1 = {49 6e 74 65 72 6e 65 74 20 41 6e 74 69 76 69 72 75 73 20 50 72 6f 22 20 2f 70 61 73 73 77 6f 72 64 3d 61 76 69 72 } //1 Internet Antivirus Pro" /password=avir
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}
rule Rogue_Win32_InternetAntivirus_6{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {c6 03 e9 47 89 2f 8d 44 24 04 50 8b 44 24 08 50 6a 05 53 } //1
		$a_03_1 = {50 6a 00 6a 2a e8 90 01 04 8b f0 85 f6 74 90 01 01 6a 00 e8 90 00 } //1
		$a_03_2 = {8b 03 50 8d 85 90 01 02 ff ff 50 e8 90 01 04 85 c0 75 14 ba 90 01 04 8b 85 90 01 02 ff ff e8 90 00 } //1
		$a_00_3 = {5f 52 6f 6f 74 6b 69 74 4d 75 74 65 78 00 } //1 剟潯歴瑩畍整x
		$a_00_4 = {72 65 67 65 64 69 74 2e 65 78 65 00 74 6f 74 61 6c 63 6d 64 2e 65 78 65 00 } //1
		$a_03_5 = {50 6a 00 6a 02 e8 90 01 04 8b f0 85 f6 74 90 01 01 56 e8 90 01 04 56 e8 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_03_5  & 1)*1) >=3
 
}
rule Rogue_Win32_InternetAntivirus_7{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 58 4d 56 0f 94 c0 } //1
		$a_00_1 = {2f 00 72 00 65 00 67 00 2e 00 70 00 68 00 70 00 3f 00 70 00 63 00 5f 00 69 00 64 00 3d 00 25 00 64 00 26 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 25 00 64 00 26 00 74 00 79 00 70 00 65 00 3d 00 25 00 73 00 26 00 6f 00 73 00 3d 00 25 00 73 00 26 00 61 00 62 00 62 00 72 00 3d 00 25 00 73 00 26 00 75 00 69 00 64 00 3d 00 25 00 64 00 26 00 73 00 69 00 64 00 3d 00 25 00 64 00 26 00 61 00 64 00 6d 00 69 00 6e 00 3d 00 25 00 64 00 } //1 /reg.php?pc_id=%d&action=%d&type=%s&os=%s&abbr=%s&uid=%d&sid=%d&admin=%d
		$a_00_2 = {25 00 73 00 5c 00 25 00 73 00 5f 00 25 00 30 00 32 00 64 00 5f 00 25 00 30 00 32 00 64 00 2e 00 65 00 78 00 65 00 } //1 %s\%s_%02d_%02d.exe
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}
rule Rogue_Win32_InternetAntivirus_8{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_02_0 = {2f 76 65 72 79 73 69 6c 65 6e 74 20 2f 6e 6f 72 65 73 74 61 72 74 20 2f 4e 4f 43 41 4e 43 45 4c 20 2f 44 49 52 3d 22 90 02 20 5c 49 6e 74 65 72 6e 65 74 20 41 6e 74 69 76 69 72 75 73 20 50 72 6f 22 20 2f 70 61 73 73 77 6f 72 64 3d 61 76 69 72 00 90 00 } //1
		$a_02_1 = {2f 64 6f 77 6e 6c 6f 61 64 2f 49 70 61 63 6b 90 02 08 2e 6a 70 67 00 90 00 } //1
		$a_00_2 = {2f 64 6f 77 6e 6c 6f 61 64 2f 66 69 6c 65 2e 6a 70 67 00 } //1
		$a_02_3 = {2f 76 65 72 79 73 69 6c 65 6e 74 20 2f 6e 6f 72 65 73 74 61 72 74 20 2f 4e 4f 43 41 4e 43 45 4c 20 2f 44 49 52 3d 22 90 02 20 5c 47 65 6e 65 72 61 6c 20 41 6e 74 69 76 69 72 75 73 22 20 2f 70 61 73 73 77 6f 72 64 3d 67 65 6e 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1) >=3
 
}
rule Rogue_Win32_InternetAntivirus_9{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {6a 04 51 52 6a 00 ff 15 90 01 04 83 f8 07 75 16 8d 4c 24 90 01 01 c6 84 24 90 01 02 00 00 00 e8 90 01 04 e9 90 01 02 00 00 68 90 01 04 b9 90 01 04 e8 90 01 04 8d 4c 24 90 01 01 c6 84 24 90 01 02 00 00 00 e8 90 00 } //1
		$a_00_1 = {41 70 70 6c 69 63 61 74 69 6f 6e 20 25 73 20 69 73 20 61 6c 72 65 61 64 79 20 69 6e 73 74 61 6c 6c 65 64 2e 20 54 6f 20 64 6f 77 6e 6c 6f 61 64 20 61 6e 64 20 69 6e 73 74 61 6c 6c 20 69 74 20 61 67 61 69 6e 3f } //1 Application %s is already installed. To download and install it again?
		$a_00_2 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 77 00 69 00 6c 00 6c 00 20 00 62 00 65 00 20 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 61 00 6e 00 64 00 } //1 Internet Antivirus will be downloaded and
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=2
 
}
rule Rogue_Win32_InternetAntivirus_10{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0b 00 00 "
		
	strings :
		$a_03_0 = {41 6a 30 8d 4d 90 01 01 33 d2 b8 90 01 04 e8 90 01 04 8b 45 90 01 01 e8 90 01 04 50 8d 4d 90 01 01 33 d2 b8 90 01 04 e8 90 01 04 8b 45 90 01 01 e8 90 01 04 50 6a 00 e8 90 09 03 00 3c 06 90 03 01 01 74 75 90 00 } //10
		$a_00_1 = {78 70 73 70 32 72 65 73 2e 64 6c 6c 0d 54 72 6f 6a 61 6e 2d 49 4d 2e 57 69 6e 33 32 2e 46 61 6b 65 72 2e 61 00 } //4
		$a_00_2 = {2f 64 00 00 ff ff ff ff 07 00 00 00 53 74 61 72 74 20 32 00 } //2
		$a_00_3 = {49 41 2a 2e 6c 6e 67 00 } //2 䅉⸪湬g
		$a_00_4 = {49 41 55 70 64 61 74 65 72 2e 65 78 65 20 2f 52 00 } //2
		$a_00_5 = {44 42 49 6e 66 6f 2e 76 65 72 00 } //2
		$a_00_6 = {69 61 30 38 30 36 31 38 78 2e 64 62 00 } //2
		$a_00_7 = {69 61 31 39 30 39 30 38 67 2e 64 62 00 } //2
		$a_00_8 = {47 75 61 72 64 20 69 6e 69 20 66 69 6c 65 20 61 6c 72 65 61 64 79 20 65 78 69 73 74 73 2e 00 } //2
		$a_00_9 = {67 61 30 39 30 32 32 35 78 2e 64 62 00 } //2
		$a_00_10 = {67 61 31 39 30 39 30 38 67 2e 64 62 00 } //2
	condition:
		((#a_03_0  & 1)*10+(#a_00_1  & 1)*4+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_00_9  & 1)*2+(#a_00_10  & 1)*2) >=12
 
}
rule Rogue_Win32_InternetAntivirus_11{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2f 00 4c 00 45 00 53 00 5f 00 } //2 /install/LES_
		$a_00_1 = {69 00 73 00 20 00 61 00 6c 00 72 00 65 00 61 00 64 00 79 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 64 00 2e 00 20 00 54 00 6f 00 20 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 61 00 6e 00 64 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 69 00 74 00 20 00 61 00 67 00 61 00 69 00 6e 00 3f 00 } //2 is already installed. To download and install it again?
		$a_02_2 = {25 00 73 00 5c 00 25 00 73 00 5f 00 25 00 90 02 06 64 5f 00 25 00 90 02 06 64 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_00_3 = {3d 00 25 00 64 00 26 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 25 00 64 00 26 00 74 00 79 00 70 00 65 00 3d 00 } //1 =%d&action=%d&type=
		$a_00_4 = {72 00 65 00 67 00 2e 00 70 00 68 00 70 00 } //1 reg.php
		$a_00_5 = {25 00 73 00 22 00 20 00 25 00 73 00 20 00 2f 00 44 00 49 00 50 00 3d 00 22 00 25 00 73 00 22 00 20 00 2f 00 44 00 49 00 44 00 3d 00 22 00 25 00 64 00 } //1 %s" %s /DIP="%s" /DID="%d
		$a_01_6 = {44 00 36 00 5f 00 49 00 50 00 53 00 45 00 43 00 } //1 D6_IPSEC
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule Rogue_Win32_InternetAntivirus_12{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 0f 00 00 "
		
	strings :
		$a_03_0 = {53 68 2e 70 6e 67 00 90 09 02 00 69 90 00 } //10
		$a_01_1 = {49 6e 73 65 63 75 72 65 20 42 72 6f 77 73 69 6e 67 20 45 72 72 6f 72 3a } //10 Insecure Browsing Error:
		$a_01_2 = {2f 67 69 76 65 6d 65 75 72 6c 2e 70 68 70 3f 6b 65 79 3d 25 6b 65 79 77 6f 72 64 25 26 73 75 62 69 64 3d 25 75 69 64 25 } //10 /givemeurl.php?key=%keyword%&subid=%uid%
		$a_01_3 = {61 76 70 61 79 6d 65 6e 74 70 72 6f 2e 63 6f 6d } //1 avpaymentpro.com
		$a_01_4 = {69 6e 74 65 72 6e 65 74 61 6e 74 69 76 69 72 75 73 70 72 6f 2e 63 6f 6d } //1 internetantiviruspro.com
		$a_01_5 = {69 61 2d 70 61 79 6d 65 6e 74 2d 70 72 6f 2e 63 6f 6d } //1 ia-payment-pro.com
		$a_01_6 = {69 6e 74 65 72 6e 65 74 2d 61 6e 74 69 76 69 72 75 73 2d 70 72 6f 2e 63 6f 6d } //1 internet-antivirus-pro.com
		$a_01_7 = {67 65 6e 65 72 61 6c 61 6e 74 69 76 69 72 75 73 2e 63 6f 6d } //1 generalantivirus.com
		$a_01_8 = {67 65 6e 70 61 79 6d 65 6e 74 2e 63 6f 6d } //1 genpayment.com
		$a_01_9 = {67 65 6e 70 61 79 6d 65 6e 74 73 2e 63 6f 6d } //1 genpayments.com
		$a_01_10 = {61 76 70 61 79 6d 65 6e 74 73 2e 63 6f 6d } //1 avpayments.com
		$a_01_11 = {61 76 2d 70 61 79 6d 65 6e 74 2e 63 6f 6d } //1 av-payment.com
		$a_01_12 = {69 61 2d 70 72 6f 2e 63 6f 6d } //1 ia-pro.com
		$a_01_13 = {69 61 6e 74 69 76 69 72 75 73 2d 70 72 6f 2e 63 6f 6d } //1 iantivirus-pro.com
		$a_01_14 = {69 61 6e 74 69 76 69 72 75 73 70 72 6f 2e 63 6f 6d } //1 iantiviruspro.com
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=30
 
}
rule Rogue_Win32_InternetAntivirus_13{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_02_0 = {46 00 69 00 6c 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 90 02 06 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 90 02 04 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 90 02 10 46 00 69 00 6c 00 65 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 90 02 30 49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 90 02 04 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 90 02 04 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 90 00 } //1
		$a_02_1 = {50 00 72 00 6f 00 64 00 75 00 63 00 74 00 4e 00 61 00 6d 00 65 00 90 02 08 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 90 00 } //1
		$a_01_2 = {3c 64 65 73 63 72 69 70 74 69 6f 6e 3e 49 6e 74 65 72 6e 65 74 20 41 6e 74 69 76 69 72 75 73 3c 2f 64 65 73 63 72 69 70 74 69 6f 6e 3e } //1 <description>Internet Antivirus</description>
		$a_02_3 = {49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 90 02 08 55 00 70 00 64 00 61 00 74 00 65 00 20 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_01_2  & 1)*1+(#a_02_3  & 1)*1) >=2
 
}
rule Rogue_Win32_InternetAntivirus_14{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,2e 01 2e 01 11 00 00 "
		
	strings :
		$a_01_0 = {c6 03 e9 47 89 2f 8d 44 24 04 50 8b 44 24 08 50 6a 05 53 } //100
		$a_03_1 = {53 68 2e 70 6e 67 00 90 09 02 00 69 90 00 } //100
		$a_01_2 = {49 6e 73 65 63 75 72 65 20 42 72 6f 77 73 69 6e 67 20 45 72 72 6f 72 3a } //100 Insecure Browsing Error:
		$a_01_3 = {61 76 70 61 79 6d 65 6e 74 70 72 6f 2e 63 6f 6d } //1 avpaymentpro.com
		$a_01_4 = {69 6e 74 65 72 6e 65 74 61 6e 74 69 76 69 72 75 73 70 72 6f 2e 63 6f 6d } //1 internetantiviruspro.com
		$a_01_5 = {69 61 2d 70 61 79 6d 65 6e 74 2d 70 72 6f 2e 63 6f 6d } //1 ia-payment-pro.com
		$a_01_6 = {69 6e 74 65 72 6e 65 74 2d 61 6e 74 69 76 69 72 75 73 2d 70 72 6f 2e 63 6f 6d } //1 internet-antivirus-pro.com
		$a_01_7 = {70 65 72 73 6f 6e 61 6c 2d 61 6e 74 69 76 69 72 75 73 2e 63 6f 6d } //1 personal-antivirus.com
		$a_01_8 = {67 65 6e 65 72 61 6c 61 6e 74 69 76 69 72 75 73 2e 63 6f 6d } //1 generalantivirus.com
		$a_01_9 = {67 65 6e 70 61 79 6d 65 6e 74 2e 63 6f 6d } //1 genpayment.com
		$a_01_10 = {67 65 6e 65 72 61 6c 2d 61 6e 74 69 76 69 72 75 73 2e 63 6f 6d } //1 general-antivirus.com
		$a_01_11 = {67 65 6e 70 61 79 6d 65 6e 74 73 2e 63 6f 6d } //1 genpayments.com
		$a_01_12 = {61 76 70 61 79 6d 65 6e 74 73 2e 63 6f 6d } //1 avpayments.com
		$a_01_13 = {61 76 2d 70 61 79 6d 65 6e 74 2e 63 6f 6d } //1 av-payment.com
		$a_01_14 = {69 61 2d 70 72 6f 2e 63 6f 6d } //1 ia-pro.com
		$a_01_15 = {69 61 6e 74 69 76 69 72 75 73 2d 70 72 6f 2e 63 6f 6d } //1 iantivirus-pro.com
		$a_01_16 = {69 61 6e 74 69 76 69 72 75 73 70 72 6f 2e 63 6f 6d } //1 iantiviruspro.com
	condition:
		((#a_01_0  & 1)*100+(#a_03_1  & 1)*100+(#a_01_2  & 1)*100+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1) >=302
 
}
rule Rogue_Win32_InternetAntivirus_15{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 "
		
	strings :
		$a_00_0 = {2f 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 3d 00 22 00 6c 00 65 00 73 00 22 00 } //3 /password="les"
		$a_01_1 = {2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2f 00 4c 00 45 00 53 00 5f 00 } //3 /install/LES_
		$a_00_2 = {2f 00 76 00 65 00 72 00 79 00 73 00 69 00 6c 00 65 00 6e 00 74 00 20 00 2f 00 6e 00 6f 00 72 00 65 00 73 00 74 00 61 00 72 00 74 00 20 00 2f 00 4e 00 4f 00 43 00 41 00 4e 00 43 00 45 00 4c 00 20 00 2f 00 44 00 49 00 52 00 3d 00 } //2 /verysilent /norestart /NOCANCEL /DIR=
		$a_01_3 = {44 00 36 00 5f 00 49 00 50 00 53 00 45 00 43 00 00 00 } //2
		$a_00_4 = {53 00 65 00 74 00 75 00 70 00 20 00 66 00 61 00 69 00 6c 00 65 00 64 00 2e 00 20 00 50 00 6c 00 65 00 61 00 73 00 65 00 2c 00 20 00 74 00 72 00 79 00 20 00 74 00 6f 00 20 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 6e 00 65 00 77 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 72 00 2e 00 } //1 Setup failed. Please, try to download new installer.
		$a_00_5 = {2f 00 44 00 49 00 50 00 3d 00 22 00 25 00 73 00 22 00 20 00 2f 00 44 00 49 00 44 00 3d 00 22 00 25 00 64 00 22 00 } //2 /DIP="%s" /DID="%d"
		$a_00_6 = {26 00 75 00 69 00 64 00 3d 00 25 00 64 00 26 00 73 00 69 00 64 00 3d 00 25 00 64 00 26 00 } //2 &uid=%d&sid=%d&
		$a_01_7 = {4d 00 49 00 43 00 52 00 4f 00 49 00 4e 00 53 00 54 00 41 00 4c 00 4c 00 45 00 52 00 00 00 } //1
	condition:
		((#a_00_0  & 1)*3+(#a_01_1  & 1)*3+(#a_00_2  & 1)*2+(#a_01_3  & 1)*2+(#a_00_4  & 1)*1+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_01_7  & 1)*1) >=4
 
}
rule Rogue_Win32_InternetAntivirus_16{
	meta:
		description = "Rogue:Win32/InternetAntivirus,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {56 90 66 8d 52 00 57 90 66 8d 52 00 89 34 24 90 66 8d 52 00 6a 30 e9 cc 02 00 00 54 e9 cc 02 00 00 57 90 66 8d 52 00 57 90 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}