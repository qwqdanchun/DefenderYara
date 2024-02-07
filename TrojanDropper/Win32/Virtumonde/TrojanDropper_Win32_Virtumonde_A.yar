
rule TrojanDropper_Win32_Virtumonde_A{
	meta:
		description = "TrojanDropper:Win32/Virtumonde.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0a 00 09 00 00 02 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 32 30 33 2e 31 39 39 2e 32 30 30 2e 36 31 } //02 00  http://203.199.200.61
		$a_01_1 = {65 78 70 69 72 65 73 20 3d 20 53 61 74 2c 20 30 34 2d 4a 75 6e 2d 32 30 30 35 20 30 30 3a 30 30 3a 30 30 20 47 4d 54 } //02 00  expires = Sat, 04-Jun-2005 00:00:00 GMT
		$a_01_2 = {41 73 79 6e 63 68 72 6f 6e 6f 75 73 00 00 00 00 44 6c 6c 4e 61 6d 65 00 49 6d 70 65 72 73 6f 6e 61 74 65 00 4c 6f 67 6f 66 66 00 00 4c 6f 67 6f 6e 00 00 00 53 79 73 4c 6f 67 6f 6e } //02 00 
		$a_01_3 = {28 43 41 4d 50 41 49 47 4e 53 45 4c 45 43 54 49 4f 4e } //02 00  (CAMPAIGNSELECTION
		$a_01_4 = {50 6f 70 75 70 73 50 65 72 44 61 79 20 66 69 65 6c 64 20 69 73 20 6d 69 73 73 69 6e 67 } //02 00  PopupsPerDay field is missing
		$a_01_5 = {4c 61 73 74 50 6f 70 75 70 53 68 6f 77 6e 3d 25 73 3b 50 6f 70 75 70 73 53 68 6f 77 6e 3d 25 69 3b 4d 61 78 50 6f 70 75 70 50 65 72 44 61 79 3d 25 69 } //01 00  LastPopupShown=%s;PopupsShown=%i;MaxPopupPerDay=%i
		$a_00_6 = {53 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 00 5c 68 6f 73 74 73 } //01 00 
		$a_00_7 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5c 4e 6f 74 69 66 79 5c 00 00 00 } //01 00 
		$a_01_8 = {2e 62 61 6b 00 00 00 00 2e 62 61 6b 32 00 00 00 2e 62 61 6b 31 00 00 00 2e 69 6e 69 32 00 00 00 2e 74 6d 70 32 00 00 00 2e 74 6d 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_Win32_Virtumonde_A_2{
	meta:
		description = "TrojanDropper:Win32/Virtumonde.A,SIGNATURE_TYPE_PEHSTR,5d 00 5d 00 19 00 00 32 00 "
		
	strings :
		$a_01_0 = {62 69 6e 3b 62 61 73 3b 62 61 6b 3b 63 61 62 3b 63 61 74 3b 63 6d 64 3b 63 6f 6d 3b 63 72 3b 63 3b 64 72 76 3b 64 62 3b 64 69 73 6b 3b 64 6c 6c 3b 64 6e 73 3b 64 6f 73 3b 64 6f 63 3b 64 76 64 3b 65 75 6c 61 3b 65 78 70 3b 66 61 78 3b 66 6f 6e 74 3b 66 74 70 } //02 00  bin;bas;bak;cab;cat;cmd;com;cr;c;drv;db;disk;dll;dns;dos;doc;dvd;eula;exp;fax;font;ftp
		$a_01_1 = {5c 61 64 64 69 6e 73 5c 2a 2e 2a } //02 00  \addins\*.*
		$a_01_2 = {5c 41 70 70 50 61 74 63 68 5c 2a 2e 2a } //02 00  \AppPatch\*.*
		$a_01_3 = {5c 43 6f 6e 66 69 67 5c 2a 2e 2a } //02 00  \Config\*.*
		$a_01_4 = {5c 43 75 72 73 6f 72 73 5c 2a 2e 2a } //02 00  \Cursors\*.*
		$a_01_5 = {5c 44 72 69 76 65 72 20 43 61 63 68 65 5c 2a 2e 2a } //02 00  \Driver Cache\*.*
		$a_01_6 = {5c 44 72 69 76 65 72 73 5c 2a 2e 2a } //02 00  \Drivers\*.*
		$a_01_7 = {5c 46 6f 6e 74 73 5c 2a 2e 2a } //02 00  \Fonts\*.*
		$a_01_8 = {5c 48 65 6c 70 5c 2a 2e 2a } //02 00  \Help\*.*
		$a_01_9 = {5c 69 6e 66 5c 2a 2e 2a 20 } //02 00  \inf\*.* 
		$a_01_10 = {5c 6a 61 76 61 5c 2a 2e 2a } //02 00  \java\*.*
		$a_01_11 = {5c 4d 69 63 72 6f 73 6f 66 74 2e 4e 45 54 5c 2a 2e 2a } //02 00  \Microsoft.NET\*.*
		$a_01_12 = {5c 6d 73 61 67 65 6e 74 5c 2a 2e 2a } //02 00  \msagent\*.*
		$a_01_13 = {5c 52 65 67 69 73 74 72 61 74 69 6f 6e 5c 2a 2e 2a } //02 00  \Registration\*.*
		$a_01_14 = {5c 73 65 63 75 72 69 74 79 5c 2a 2e 2a } //02 00  \security\*.*
		$a_01_15 = {5c 53 65 72 76 69 63 65 50 61 63 6b 46 69 6c 65 73 5c 2a 2e 2a } //02 00  \ServicePackFiles\*.*
		$a_01_16 = {5c 53 70 65 65 63 68 5c 2a 2e 2a } //02 00  \Speech\*.*
		$a_01_17 = {5c 73 79 73 74 65 6d 5c 2a 2e 2a } //02 00  \system\*.*
		$a_01_18 = {5c 73 79 73 74 65 6d 33 32 5c 2a 2e 2a } //02 00  \system32\*.*
		$a_01_19 = {5c 57 65 62 5c 2a 2e 2a } //02 00  \Web\*.*
		$a_01_20 = {5c 57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 20 53 65 74 75 70 20 46 69 6c 65 73 5c 2a 2e 2a } //02 00  \Windows Update Setup Files\*.*
		$a_01_21 = {5c 4d 69 63 72 6f 73 6f 66 74 5c 2a 2e 2a } //01 00  \Microsoft\*.*
		$a_01_22 = {62 75 73 68 5f 73 73 65 76 65 6e 74 } //01 00  bush_ssevent
		$a_01_23 = {6b 6c 69 6e 74 6f 6e 5f 73 73 6d 6d 66 } //01 00  klinton_ssmmf
		$a_01_24 = {73 61 6c 61 6e 5f 73 73 6d 75 74 61 6e 74 } //00 00  salan_ssmutant
	condition:
		any of ($a_*)
 
}