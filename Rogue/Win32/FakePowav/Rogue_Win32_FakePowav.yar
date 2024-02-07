
rule Rogue_Win32_FakePowav{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 c0 5a 59 59 64 89 10 68 90 01 04 8d 45 90 01 01 ba 90 01 01 00 00 00 e8 90 01 04 c3 e9 90 01 04 eb eb 5b e8 90 02 20 55 6e 69 6e 73 74 61 6c 6c 00 90 00 } //01 00 
		$a_00_1 = {48 6f 77 54 6f 42 75 79 2e 74 78 74 } //00 00  HowToBuy.txt
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_2{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {7c c6 8b 41 50 8b 49 34 8b 15 } //01 00 
		$a_01_1 = {c6 04 29 68 8b 08 8d 14 2b 89 54 29 01 8b 10 6a 01 c6 44 2a 05 c3 } //02 00 
		$a_01_2 = {73 6f 66 74 77 61 72 65 73 20 72 65 71 75 69 72 65 64 20 66 6f 72 20 76 69 72 75 73 } //00 00  softwares required for virus
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_3{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {68 ff ff ff 00 52 ff 15 90 01 04 8b 06 68 00 00 aa 00 50 ff 15 90 00 } //01 00 
		$a_01_1 = {74 6f 20 64 65 6c 65 74 65 20 61 20 76 69 72 75 73 } //01 00  to delete a virus
		$a_01_2 = {57 41 52 4e 49 4e 47 5f 56 49 52 55 53 5f 44 45 54 45 43 54 45 44 0a } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_4{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {eb eb 5f 5e 5b e8 90 01 04 00 ff ff ff ff 20 00 00 00 38 33 32 31 37 32 41 30 41 43 39 45 46 32 37 35 35 44 41 46 44 30 35 45 37 37 45 33 35 41 32 34 00 00 00 00 ff ff ff ff 0a 00 00 00 2d 75 6e 69 6e 73 74 61 6c 6c 00 00 ff ff ff ff 0a 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_5{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 70 79 20 50 72 6f 74 65 63 74 6f 72 00 } //01 00  灓⁹牐瑯捥潴r
		$a_01_1 = {6c 73 61 73 63 73 2e 65 78 65 00 } //02 00 
		$a_03_2 = {8b f0 6a 00 6a 1a 56 6a 00 e8 90 01 02 ff ff 8d 45 f8 8b d6 e8 90 01 02 fe ff 8b 45 f8 8d 55 fc e8 90 01 02 fe ff 8b 55 fc 8b c3 b9 90 01 04 e8 90 01 02 fe ff 8b c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_6{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 69 6e 73 74 61 6c 6c 6f 6b 3f 72 65 66 5f 69 64 3d 00 } //02 00 
		$a_01_1 = {26 73 75 62 5f 69 64 3d 00 } //01 00 
		$a_01_2 = {2f 69 6e 73 74 61 6c 6c 2e 65 78 65 00 } //01 00 
		$a_00_3 = {45 72 72 6f 72 20 72 75 6e 6e 69 6e 67 20 65 78 65 63 75 74 61 62 6c 65 2e 20 50 6c 65 61 73 65 20 74 72 79 20 61 67 61 69 6e 00 } //01 00 
		$a_00_4 = {73 79 73 74 65 6d 5f 70 72 6f 74 65 63 74 6f 72 00 } //01 00 
		$a_00_5 = {49 6e 73 74 61 6c 6c 69 6e 67 20 53 79 73 74 65 6d 20 50 72 6f 74 65 63 74 6f 72 2e 2e 2e } //00 00  Installing System Protector...
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_7{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 06 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 79 73 74 65 6d 20 77 69 6c 6c 20 62 65 20 72 65 73 74 6f 72 65 64 20 69 6e 20 25 64 20 73 65 63 6f 6e 64 73 2e } //01 00  System will be restored in %d seconds.
		$a_00_1 = {2a 2a 2a 20 53 54 4f 50 3a 20 30 78 30 30 30 30 30 30 31 39 20 28 30 78 30 30 30 30 30 30 30 30 2c 30 78 63 30 30 45 30 46 46 30 2c 30 78 46 46 46 46 45 46 44 34 2c 30 78 43 30 30 30 30 30 30 30 29 } //02 00  *** STOP: 0x00000019 (0x00000000,0xc00E0FF0,0xFFFFEFD4,0xC0000000)
		$a_01_2 = {42 41 44 5f 46 4f 4f 4c 5f 48 45 41 44 45 52 00 } //02 00  䅂彄但䱏䡟䅅䕄R
		$a_01_3 = {44 6c 6c 20 42 61 73 65 20 44 41 74 65 53 74 6d 70 20 2d 20 4e 61 6d 65 } //04 00  Dll Base DAteStmp - Name
		$a_03_4 = {75 02 b3 01 84 db 75 90 01 01 6a 10 68 90 01 04 68 90 01 04 6a 00 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_8{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {b8 01 00 00 00 e8 90 01 04 8b 45 90 01 01 ba 90 01 04 e8 90 01 04 75 0a e8 90 01 04 e9 90 01 02 00 00 8d 55 90 01 01 b8 01 00 00 00 e8 90 01 04 8b 45 90 01 01 ba 90 01 04 e8 90 01 04 75 0a 90 00 } //01 00 
		$a_03_1 = {2d 75 6e 69 6e 73 74 61 6c 6c 00 00 ff ff ff ff 05 00 00 00 2d 68 65 6c 70 00 00 00 ff ff ff ff 04 00 00 00 2d 62 75 79 00 00 00 00 ff ff ff ff 90 02 20 5f 41 70 70 4d 61 6e 61 67 65 72 90 00 } //01 00 
		$a_01_2 = {2f 6f 72 64 65 72 2e 70 68 70 3f 6c 61 6e 67 3d 65 6e 26 61 69 64 3d } //01 00  /order.php?lang=en&aid=
		$a_01_3 = {2f 63 68 65 63 6b 75 70 64 61 74 65 2e 70 68 70 3f 78 3d 31 32 33 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_9{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 70 79 20 50 72 6f 74 65 63 74 6f 72 } //01 00  Spy Protector
		$a_00_1 = {53 79 73 74 65 6d 20 50 72 6f 74 65 63 74 6f 72 } //02 00  System Protector
		$a_00_2 = {61 73 00 00 ff ff ff ff 02 00 00 00 63 73 00 00 ff ff ff ff 04 00 00 00 2e 65 78 65 00 } //02 00 
		$a_00_3 = {61 73 00 00 ff ff ff ff 06 00 00 00 63 73 2e 65 78 65 00 } //03 00 
		$a_03_4 = {6a 00 6a 1a 90 03 01 01 53 56 6a 00 e8 90 01 04 8d 45 90 01 01 8b 90 03 01 01 d3 d6 e8 90 01 04 8b 45 90 01 01 8d 55 90 01 01 e8 90 01 04 ff 75 90 01 01 68 90 01 04 68 90 00 } //03 00 
		$a_03_5 = {6a 00 6a 00 68 00 0c 00 00 8d 46 02 50 53 e8 90 01 04 6a 00 8b 87 28 01 00 00 8b 10 ff 52 64 50 68 00 04 00 00 90 02 30 53 63 61 6e 20 77 69 74 68 20 90 00 } //02 00 
		$a_03_6 = {c7 06 f4 00 00 00 33 c0 89 46 08 33 c0 89 46 0c 6a 02 a1 90 01 04 50 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_10{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 70 79 20 50 72 6f 74 65 63 74 6f 72 } //01 00  Spy Protector
		$a_00_1 = {53 79 73 74 65 6d 20 50 72 6f 74 65 63 74 6f 72 } //04 00  System Protector
		$a_03_2 = {6a 00 6a 1a 56 6a 00 e8 90 01 04 8d 45 90 01 01 8b d6 e8 90 01 04 8b 45 90 01 01 8d 55 90 01 01 e8 90 01 04 8b 55 90 01 01 8b c3 b9 90 01 04 e8 90 01 04 8b c3 ba 90 01 04 e8 90 01 04 e9 90 01 02 00 00 b2 01 90 00 } //04 00 
		$a_03_3 = {6a 00 6a 1a 56 6a 00 e8 90 01 04 8d 45 90 01 01 8b d6 e8 90 01 04 8b 45 90 01 01 8d 55 90 01 01 e8 90 01 04 ff 75 90 01 01 68 90 01 04 68 90 01 04 8b c3 ba 03 00 00 00 e8 90 00 } //04 00 
		$a_03_4 = {6a 00 6a 1a 53 6a 00 e8 90 01 04 8d 45 90 01 01 8b d3 e8 90 01 04 8b 45 90 01 01 8d 55 90 01 01 e8 90 01 04 8b 55 90 01 01 8d 45 90 01 01 b9 90 01 04 e8 90 01 04 6a 01 8b 45 90 01 01 e8 90 01 04 50 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_11{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 08 00 0b 00 00 02 00 "
		
	strings :
		$a_00_0 = {4c 6f 77 00 ff ff ff ff 06 00 00 00 4d 65 64 69 75 6d 00 00 ff ff ff ff 04 00 00 00 48 69 67 68 00 00 00 00 ff ff ff ff 08 00 00 00 43 72 69 74 69 63 61 6c } //02 00 
		$a_00_1 = {57 49 4e 58 44 45 46 45 4e 44 45 52 5f 42 41 53 45 } //02 00  WINXDEFENDER_BASE
		$a_01_2 = {2f 6f 72 64 65 72 2e 70 68 70 3f 6c 61 6e 67 3d 65 6e 26 61 69 64 3d } //01 00  /order.php?lang=en&aid=
		$a_00_3 = {44 65 73 63 72 69 70 74 69 6f 6e 3a 20 57 33 32 2e 53 70 79 62 6f 74 2e 41 51 47 46 20 69 73 20 61 20 77 6f 72 6d 20 74 68 61 74 20 73 70 72 65 61 64 73 20 74 68 72 6f 75 67 68 20 6d 49 52 43 20 61 6e 64 20 74 6f 20 6e 65 74 77 6f 72 6b } //01 00  Description: W32.Spybot.AQGF is a worm that spreads through mIRC and to network
		$a_00_4 = {44 65 73 63 72 69 70 74 69 6f 6e 3a 20 54 72 6f 6a 61 6e 2e 47 6f 6c 64 75 6e 2e 47 20 69 73 20 61 20 54 72 6f 6a 61 6e 20 68 6f 72 73 65 20 70 72 6f 67 72 61 6d 20 74 68 61 74 20 73 74 65 61 6c 73 20 70 61 73 73 77 6f 72 64 73 } //02 00  Description: Trojan.Goldun.G is a Trojan horse program that steals passwords
		$a_00_5 = {53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 5f 41 70 70 4d 61 6e 61 67 65 72 5f 73 65 72 76 65 72 5f 6d 75 74 65 78 00 } //02 00  敓畣楲祴䌠湥整彲灁䵰湡条牥獟牥敶彲畭整x
		$a_00_6 = {53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 5f 41 70 70 4d 61 6e 61 67 65 72 5f 73 65 6e 64 5f 65 76 65 6e 74 00 } //01 00  敓畣楲祴䌠湥整彲灁䵰湡条牥獟湥彤癥湥t
		$a_00_7 = {65 78 74 72 61 61 6e 74 69 76 69 72 2e 63 6f 6d 00 } //01 00 
		$a_00_8 = {4d 61 6c 77 61 72 65 52 65 6d 6f 76 61 6c 00 } //06 00 
		$a_03_9 = {32 c2 50 8b c7 e8 90 01 04 5a 88 14 18 43 4e 75 90 09 06 00 8a 92 90 00 } //06 00 
		$a_03_10 = {8a 04 10 32 c8 51 8b c7 e8 90 01 04 5a 88 14 18 43 4e 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_12{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 09 00 00 02 00 "
		
	strings :
		$a_03_0 = {b8 01 00 00 00 e8 90 01 04 8b 45 90 01 01 ba 90 01 04 e8 90 01 04 84 c0 74 14 e8 90 01 04 e8 90 01 04 e8 90 01 04 e9 90 01 02 00 00 68 90 01 04 6a 00 68 01 00 1f 00 e8 90 00 } //02 00 
		$a_03_1 = {b8 01 00 00 00 e8 90 01 04 8b 45 90 01 01 ba 90 01 04 e8 90 01 04 84 c0 74 10 8d 45 90 01 01 e8 90 01 04 8b 45 90 01 01 e8 90 01 04 68 90 01 04 6a 00 68 01 00 1f 00 e8 90 00 } //02 00 
		$a_03_2 = {b8 01 00 00 00 e8 90 01 04 8b 45 90 01 01 ba 90 01 04 e8 90 01 04 84 c0 74 10 8d 45 90 01 01 e8 90 01 04 8b 45 90 01 01 e8 90 01 04 8d 45 90 01 01 e8 90 01 04 8b 45 90 01 01 e8 90 01 04 50 6a 00 68 01 00 1f 00 e8 90 00 } //01 00 
		$a_01_3 = {75 6e 69 6e 73 74 61 6c 6c 00 00 00 7b 43 34 41 43 37 34 32 33 2d 30 31 37 43 2d 34 37 45 41 2d } //01 00 
		$a_01_4 = {72 65 67 69 73 74 72 61 74 69 6f 6e 00 00 00 00 7b 43 34 41 43 37 34 32 33 2d 30 31 37 43 2d 34 37 45 41 2d } //01 00 
		$a_01_5 = {53 79 73 74 65 6d 20 73 6c 6f 77 64 6f 77 6e 20 6f 72 20 6e 6f 74 20 73 74 61 72 74 69 6e 67 20 75 70 00 } //01 00 
		$a_01_6 = {49 6e 66 65 63 74 69 6e 67 20 6f 74 68 65 72 20 63 6f 6d 70 75 74 65 72 73 20 69 6e 20 79 6f 75 72 20 6e 65 74 77 6f 72 6b 00 } //01 00 
		$a_01_7 = {73 65 63 75 72 69 74 79 73 74 61 74 75 73 32 00 ff ff ff ff 0f 00 00 00 73 65 63 75 72 69 74 79 73 74 61 74 75 73 33 00 } //01 00 
		$a_01_8 = {7b 43 34 41 43 37 34 32 33 2d 30 31 37 43 2d 34 37 45 41 2d 39 32 31 39 2d 30 30 44 34 31 39 32 43 37 44 37 36 7d 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_13{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 47 48 65 6c 70 65 72 2e 44 4c 4c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //01 00  䝙效灬牥䐮䱌䐀汬慃啮汮慯乤睯
		$a_01_1 = {59 47 48 65 6c 70 65 72 2e 53 65 61 72 63 68 48 65 6c 70 65 72 } //01 00  YGHelper.SearchHelper
		$a_01_2 = {31 46 32 44 39 43 34 37 2d 36 41 43 39 2d 34 38 37 32 2d 41 41 43 43 2d 45 31 43 44 34 39 34 46 30 34 30 43 } //00 00  1F2D9C47-6AC9-4872-AACC-E1CD494F040C
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_14{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {67 6f 6f 67 6c 69 6e 61 2e 44 4c 4c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  潧杯楬慮䐮䱌䐀汬慃啮汮慯乤睯䐀汬敇䍴慬獳扏敪瑣䐀汬敒楧瑳牥敓癲牥䐀汬湕敲楧瑳牥敓癲牥
		$a_01_1 = {34 34 64 36 38 39 37 62 2d 36 36 66 62 2d 34 64 31 39 2d 38 66 35 61 2d 35 63 61 66 33 36 36 35 63 31 33 66 } //01 00  44d6897b-66fb-4d19-8f5a-5caf3665c13f
		$a_01_2 = {62 36 36 38 31 63 34 39 2d 63 38 38 32 2d 34 34 38 34 2d 62 35 39 65 2d 33 32 39 66 36 66 63 35 61 33 62 37 } //00 00  b6681c49-c882-4484-b59e-329f6fc5a3b7
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_15{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 61 70 69 64 61 6e 74 69 76 69 72 75 73 2e 63 6f 6d } //01 00  rapidantivirus.com
		$a_01_1 = {5b 53 70 79 77 61 72 65 2e 43 79 62 65 72 41 6c 65 72 74 32 3b } //01 00  [Spyware.CyberAlert2;
		$a_01_2 = {50 72 6f 63 65 73 73 65 73 54 6f 4b 69 6c 6c 3d 31 } //01 00  ProcessesToKill=1
		$a_01_3 = {52 65 67 4b 65 79 73 56 61 6c 75 65 54 6f 44 65 6c 65 74 65 3d 31 } //01 00  RegKeysValueToDelete=1
		$a_01_4 = {44 65 73 63 72 69 70 74 69 6f 6e 3a } //01 00  Description:
		$a_01_5 = {41 64 76 69 63 65 3a } //01 00  Advice:
		$a_01_6 = {41 6c 65 72 74 20 6c 65 76 65 6c 3a } //01 00  Alert level:
		$a_01_7 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c 22 44 65 66 61 75 6c 74 22 } //01 00  Windows\CurrentVersion\Run\"Default"
		$a_01_8 = {73 75 70 70 6f 72 74 40 65 75 72 65 6b 61 6c 6f 67 2e 63 6f 6d } //00 00  support@eurekalog.com
	condition:
		any of ($a_*)
 
}
rule Rogue_Win32_FakePowav_16{
	meta:
		description = "Rogue:Win32/FakePowav,SIGNATURE_TYPE_PEHSTR,29 00 29 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //0a 00  CreateToolhelp32Snapshot
		$a_01_1 = {48 6f 77 54 6f 42 75 79 2e 74 78 74 } //0a 00  HowToBuy.txt
		$a_01_2 = {43 3a 5c 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 5c 4a 6f 68 6e 44 6f 65 5c 44 65 73 6b 74 6f } //0a 00  C:\Documents and Settings\JohnDoe\Deskto
		$a_01_3 = {41 72 65 20 79 6f 75 20 73 75 72 65 20 79 6f 75 20 77 61 6e 74 20 74 6f 20 75 6e 69 6e 73 74 61 6c 6c } //01 00  Are you sure you want to uninstall
		$a_01_4 = {5c 52 61 70 69 64 20 41 6e 74 69 76 69 72 75 73 } //01 00  \Rapid Antivirus
		$a_01_5 = {57 69 6e 58 20 53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 00 } //01 00 
		$a_01_6 = {5c 57 69 6e 20 41 6e 74 69 76 69 72 20 32 30 30 38 } //01 00  \Win Antivir 2008
		$a_01_7 = {57 69 6e 58 44 65 66 65 6e 64 65 72 } //01 00  WinXDefender
		$a_01_8 = {57 69 6e 58 50 72 6f 74 65 63 74 6f 72 } //01 00  WinXProtector
		$a_01_9 = {50 6f 77 65 72 2d 41 6e 74 69 76 69 72 75 73 2d 32 30 30 39 } //00 00  Power-Antivirus-2009
	condition:
		any of ($a_*)
 
}