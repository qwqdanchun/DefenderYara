
rule Rogue_Win32_FakeSecSen{
	meta:
		description = "Rogue:Win32/FakeSecSen,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {55 6e 6b 6e 6f 77 6e 20 46 69 6c 65 20 46 6f 75 6e 64 00 00 ff ff ff ff 0d 00 00 00 4d 61 6c 77 61 72 65 20 46 6f 75 6e 64 00 00 00 ff ff ff ff 0d 00 00 00 53 70 79 77 61 72 65 20 46 6f 75 6e 64 00 00 00 ff ff ff ff 0c 00 00 00 41 64 77 61 72 65 20 46 6f 75 6e 64 00 00 00 00 ff ff ff ff 0f 00 00 00 53 61 66 65 20 46 69 6c 65 20 46 6f 75 6e 64 00 ff ff ff ff 15 00 00 00 53 75 73 70 69 63 69 6f 75 73 20 46 69 6c 65 20 46 6f 75 6e 64 } //1
		$a_01_1 = {49 45 20 41 6e 74 69 76 69 72 } //1 IE Antivir
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Rogue_Win32_FakeSecSen_2{
	meta:
		description = "Rogue:Win32/FakeSecSen,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_02_0 = {50 6c 61 73 6d 61 5c 41 6e 74 69 76 69 72 75 73 2e 65 78 65 90 02 20 61 76 70 6c 90 02 20 53 6f 66 74 77 61 72 65 5c 41 6e 74 69 76 69 72 75 73 90 02 02 50 6c 61 73 6d 61 90 02 30 41 75 74 6f 72 75 6e 90 00 } //4
		$a_00_1 = {5c 41 6e 74 69 76 69 72 75 73 20 50 6c 61 73 6d 61 5c 41 6e 74 69 76 69 72 75 73 2e 65 78 65 } //1 \Antivirus Plasma\Antivirus.exe
		$a_00_2 = {5c 41 6e 74 69 76 69 72 75 73 20 50 6c 61 73 6d 61 5c 41 6e 74 69 76 69 72 75 73 20 50 6c 61 73 6d 61 2e 6c 6e 6b } //1 \Antivirus Plasma\Antivirus Plasma.lnk
		$a_00_3 = {4c 6f 61 64 69 6e 67 2e 2e 2e } //1 Loading...
	condition:
		((#a_02_0  & 1)*4+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=7
 
}
rule Rogue_Win32_FakeSecSen_3{
	meta:
		description = "Rogue:Win32/FakeSecSen,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 "
		
	strings :
		$a_01_0 = {43 6f 6e 66 69 67 50 61 6e 65 6c 2e 63 70 6c 00 43 50 6c 41 70 70 6c 65 74 00 } //3
		$a_03_1 = {aa 8d 41 ff 83 f8 07 0f 87 90 01 02 00 00 ff 24 85 90 01 01 90 03 01 01 12 13 00 10 be 01 00 00 00 e9 90 01 02 00 00 90 00 } //3
		$a_03_2 = {a8 0e 00 00 90 01 0c a8 08 00 00 90 01 0c 68 05 00 00 90 01 0c a8 25 00 00 90 01 0c a8 10 00 00 90 01 0c 68 04 00 00 90 00 } //1
		$a_01_3 = {35 25 73 25 73 25 73 00 34 00 00 00 35 } //1
		$a_01_4 = {25 73 25 73 25 73 25 73 00 } //1
		$a_01_5 = {35 34 35 00 53 4f 46 54 57 41 52 45 5c } //1
	condition:
		((#a_01_0  & 1)*3+(#a_03_1  & 1)*3+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=7
 
}
rule Rogue_Win32_FakeSecSen_4{
	meta:
		description = "Rogue:Win32/FakeSecSen,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_03_0 = {87 04 00 00 00 90 01 0b 55 00 00 00 90 01 0c 1f 01 00 00 90 01 48 05 00 4c 00 2e 00 47 00 49 00 46 00 90 00 } //1
		$a_03_1 = {07 04 00 00 00 90 01 0b 4f 00 00 00 90 01 0c b6 01 00 00 90 01 0c c5 07 00 00 90 01 48 05 00 4c 00 2e 00 47 00 49 00 46 00 90 00 } //1
		$a_03_2 = {d3 04 00 00 00 90 01 0b 4f 00 00 00 90 01 0c e0 00 00 00 90 01 48 90 03 04 06 05 00 4c 00 06 00 4c 00 31 00 2e 00 47 00 49 00 46 00 90 00 } //1
		$a_03_3 = {07 04 00 00 00 90 01 0b eb 00 00 00 90 01 0c 4f 00 00 00 90 01 0c ea 00 00 00 90 01 48 06 00 4c 00 31 00 2e 00 47 00 49 00 46 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=1
 
}
rule Rogue_Win32_FakeSecSen_5{
	meta:
		description = "Rogue:Win32/FakeSecSen,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {2e 44 41 54 00 } //1
		$a_01_1 = {2e 43 50 4c 00 } //1
		$a_01_2 = {2e 4f 4f 4f 00 } //1
		$a_00_3 = {41 6e 74 69 56 69 72 75 73 00 } //1 湁楴楖畲s
		$a_02_4 = {74 61 73 6b 90 02 04 6b 69 6c 6c 20 2f 46 20 2f 49 4d 90 00 } //3
		$a_03_5 = {83 f8 06 0f 85 90 01 02 00 00 56 6a 00 68 90 01 04 ff 15 90 01 04 68 e8 03 00 00 ff 15 90 01 04 8b 35 90 01 04 68 90 01 04 ff d6 90 00 } //5
		$a_03_6 = {6a 00 52 6a 00 6a 02 6a 00 68 90 01 04 6a 00 50 68 01 00 00 80 ff 15 90 01 04 68 90 01 04 8b 4c 24 90 01 01 51 ff 15 90 00 } //4
		$a_03_7 = {83 f8 06 0f 85 90 01 02 00 00 90 09 14 00 6a 04 68 90 01 04 68 90 01 04 6a 00 ff 15 90 00 } //4
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*3+(#a_03_5  & 1)*5+(#a_03_6  & 1)*4+(#a_03_7  & 1)*4) >=8
 
}
rule Rogue_Win32_FakeSecSen_6{
	meta:
		description = "Rogue:Win32/FakeSecSen,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {41 75 74 6f 6d 61 74 69 63 20 55 70 64 61 74 65 73 20 66 65 74 75 72 65 20 69 73 20 65 6e 61 62 6c 65 64 2e } //2 Automatic Updates feture is enabled.
		$a_01_1 = {6f 6e 63 6c 69 63 6b 3d 22 6d 79 4e 61 76 28 33 30 30 31 29 3b 22 20 74 79 70 65 3d 62 75 74 74 6f 6e 20 76 61 6c 75 65 3d 22 41 63 74 69 76 61 74 65 20 4e 6f 77 21 } //2 onclick="myNav(3001);" type=button value="Activate Now!
		$a_01_2 = {6f 6e 63 6c 69 63 6b 3d 22 6e 61 76 69 67 61 74 65 74 6f 74 68 65 76 63 61 74 69 6f 6e 28 33 30 30 31 29 3b 22 20 74 79 70 65 3d 62 75 74 74 6f 6e 20 76 61 6c 75 65 3d 22 41 63 74 69 76 61 74 65 20 4e 6f 77 21 } //2 onclick="navigatetothevcation(3001);" type=button value="Activate Now!
		$a_01_3 = {2e 69 6e 6e 65 72 48 54 4d 4c 3d 27 53 70 79 77 61 72 65 20 70 72 6f 74 65 63 74 69 6f 6e } //2 .innerHTML='Spyware protection
		$a_01_4 = {2e 69 6e 6e 65 72 48 54 4d 4c 20 3d 20 27 55 70 64 61 74 65 73 20 61 72 65 } //2 .innerHTML = 'Updates are
		$a_01_5 = {2f 62 75 79 2e 70 68 70 3f 66 72 61 6d } //1 /buy.php?fram
		$a_01_6 = {2e 70 68 70 3f 66 72 61 6d 65 3d 31 } //1 .php?frame=1
		$a_01_7 = {26 61 64 76 69 64 3d 25 73 } //1 &advid=%s
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule Rogue_Win32_FakeSecSen_7{
	meta:
		description = "Rogue:Win32/FakeSecSen,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 1e 00 00 "
		
	strings :
		$a_00_0 = {4c 65 6f 73 74 72 65 61 6d 43 6f 6e 6e 65 63 74 } //65436 LeostreamConnect
		$a_01_1 = {49 6e 66 65 63 74 65 64 21 00 } //1 湉敦瑣摥!
		$a_01_2 = {46 69 6c 65 73 79 73 74 65 6d 3a 20 25 73 00 } //1
		$a_01_3 = {52 65 67 69 73 74 72 79 3a 20 25 73 00 } //1
		$a_01_4 = {46 69 6c 65 3a 20 25 64 2c 20 53 69 67 6e 61 74 75 72 65 3a 20 25 73 00 } //1
		$a_01_5 = {52 65 67 69 73 74 72 79 20 73 63 61 6e 2e 2e 2e 00 } //1
		$a_01_6 = {46 69 6c 65 20 73 79 73 74 65 6d 20 73 63 61 6e 2e 2e 2e 00 } //1
		$a_01_7 = {45 78 70 72 65 73 73 20 73 63 61 6e 2e 2e 2e 00 } //1
		$a_01_8 = {44 61 74 61 62 61 73 65 73 20 6e 6f 74 20 66 6f 75 6e 64 2e 00 } //1
		$a_02_9 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 90 02 04 41 4e 54 49 56 49 52 55 53 00 90 00 } //1
		$a_01_10 = {2f 62 75 79 2e 70 68 70 3f 66 72 61 6d } //2 /buy.php?fram
		$a_01_11 = {25 73 2e 71 75 61 72 61 6e 74 69 6e 65 00 } //2 猥焮慵慲瑮湩e
		$a_01_12 = {44 61 74 61 20 6c 6f 73 73 20 72 69 73 6b 3a 20 25 73 0d 0a 50 72 69 76 61 63 79 20 72 69 73 6b 3a 20 25 73 00 } //2
		$a_01_13 = {25 64 20 74 68 72 65 61 74 73 20 72 65 6d 6f 76 65 64 00 } //2
		$a_01_14 = {59 6f 75 72 20 6c 69 63 65 6e 73 65 20 68 61 73 20 65 78 70 69 72 65 64 2e 20 50 6c 65 61 73 65 20 72 65 67 69 73 74 65 72 20 61 67 61 69 6e 20 74 6f 20 6f 62 74 61 69 6e 20 6e 65 77 20 6c 69 63 65 6e 73 65 21 00 } //2
		$a_01_15 = {26 61 64 76 69 64 3d 25 73 00 } //2 愦癤摩┽s
		$a_01_16 = {59 6f 75 20 68 61 76 65 20 74 6f 20 61 67 72 65 65 20 74 68 61 74 20 79 6f 75 20 75 6e 64 65 72 73 74 61 6e 64 20 74 68 61 74 20 79 6f 75 72 20 73 79 73 74 65 6d 20 70 72 6f 74 65 63 74 69 6f 6e 20 69 73 20 64 69 73 61 62 6c 65 64 00 } //2
		$a_01_17 = {41 70 70 6c 69 63 61 69 6f 6e 20 73 63 72 69 70 74 20 65 72 72 6f 72 3a } //2 Applicaion script error:
		$a_01_18 = {53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 20 69 73 20 6d 69 6e 69 6d 69 7a 65 64 2c 20 62 75 74 20 69 73 20 73 74 69 6c 6c 20 61 63 74 69 76 65 20 74 6f 20 70 72 6f 74 65 63 74 20 79 6f 75 72 20 73 79 73 74 65 6d 2e 00 } //2
		$a_00_19 = {50 00 6c 00 65 00 61 00 73 00 65 00 20 00 65 00 6e 00 74 00 65 00 72 00 20 00 79 00 6f 00 75 00 72 00 20 00 61 00 63 00 74 00 69 00 76 00 61 00 74 00 69 00 6f 00 6e 00 20 00 63 00 6f 00 64 00 65 00 } //2 Please enter your activation code
		$a_01_20 = {48 69 67 68 00 00 00 00 56 65 72 79 20 48 69 67 68 00 00 00 53 65 76 65 72 65 00 } //4
		$a_01_21 = {25 73 25 73 25 73 25 73 25 73 00 } //1
		$a_01_22 = {b8 68 58 4d 56 bb 00 00 00 00 b9 0a 00 00 00 ba 58 56 00 00 ed 81 fb 68 58 4d 56 } //3
		$a_01_23 = {bb 00 00 00 00 b8 01 00 00 00 0f 3f 07 0b } //3
		$a_03_24 = {84 c0 0f 85 90 01 02 00 00 e8 90 01 04 84 c0 0f 85 90 01 02 00 00 6a 00 e8 90 01 04 83 c4 04 8b ce e8 90 01 04 68 90 01 04 6a 00 6a 01 6a 00 90 01 06 85 c0 74 90 01 07 3d b7 00 00 00 90 00 } //10
		$a_03_25 = {6a 00 6a 01 6a 00 90 01 06 85 c0 74 15 90 01 06 3d b7 00 00 00 75 08 6a 00 90 01 06 6a 00 8d 4c 24 90 01 01 e8 90 01 04 8d 44 24 90 01 01 8d 4c 24 90 01 01 c7 84 24 90 01 02 00 00 00 00 00 00 89 46 1c e8 90 00 } //10
		$a_03_26 = {33 d2 b9 03 00 00 00 90 01 01 f7 f1 90 01 01 c6 47 10 01 bd 90 01 04 83 ea 00 74 1a 4a 74 0d 4a 75 18 c7 44 24 90 01 05 eb 0e c7 44 24 90 01 05 eb 90 00 } //8
		$a_03_27 = {33 d2 b9 03 00 00 00 c6 90 01 01 10 01 f7 f1 83 ea 00 74 20 4a 74 10 4a 75 25 8d 94 24 90 01 02 00 00 89 54 24 90 01 01 eb 18 8d 84 24 90 01 02 00 00 89 44 24 90 01 01 eb 90 00 } //8
		$a_01_28 = {11 47 3c 31 0c 85 b7 38 70 3c 38 08 d1 44 07 0e 00 68 49 ab 99 c0 1a ab 3e 94 a7 a2 0a 0a 68 a2 20 19 93 15 30 48 40 05 5b 13 10 b8 0f b7 ca c2 } //8
		$a_01_29 = {78 e6 a9 e7 9e 7c 82 91 47 3d 80 06 5a a5 2c 0d ac 12 cd 39 9d 74 32 09 2a a0 00 f3 48 25 60 5a 62 8e 2c be f4 a2 8a 22 c1 04 5a 8f 0e 07 e8 a0 } //8
	condition:
		((#a_00_0  & 1)*65436+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_02_9  & 1)*1+(#a_01_10  & 1)*2+(#a_01_11  & 1)*2+(#a_01_12  & 1)*2+(#a_01_13  & 1)*2+(#a_01_14  & 1)*2+(#a_01_15  & 1)*2+(#a_01_16  & 1)*2+(#a_01_17  & 1)*2+(#a_01_18  & 1)*2+(#a_00_19  & 1)*2+(#a_01_20  & 1)*4+(#a_01_21  & 1)*1+(#a_01_22  & 1)*3+(#a_01_23  & 1)*3+(#a_03_24  & 1)*10+(#a_03_25  & 1)*10+(#a_03_26  & 1)*8+(#a_03_27  & 1)*8+(#a_01_28  & 1)*8+(#a_01_29  & 1)*8) >=10
 
}
rule Rogue_Win32_FakeSecSen_8{
	meta:
		description = "Rogue:Win32/FakeSecSen,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {36 39 2e 35 30 2e 31 36 38 2e 35 30 } //1 69.50.168.50
		$a_01_1 = {48 6f 73 74 3a 20 64 6f 77 6e 6c 6f 61 64 2e 25 73 2e 63 6f 6d } //1 Host: download.%s.com
		$a_01_2 = {64 6f 77 6e 6c 6f 61 64 2e 70 68 70 3f 26 61 64 76 69 64 3d 30 30 30 30 30 30 30 30 26 75 3d 25 75 26 70 3d 25 75 20 48 54 54 50 2f 31 2e 30 } //1 download.php?&advid=00000000&u=%u&p=%u HTTP/1.0
		$a_01_3 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 25 73 5c 25 73 2e 6c 69 63 } //1 C:\Program Files\%s\%s.lic
		$a_01_4 = {53 70 79 57 61 74 63 68 45 } //1 SpyWatchE
		$a_01_5 = {54 68 65 53 70 79 42 6f 74 } //1 TheSpyBot
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}
rule Rogue_Win32_FakeSecSen_9{
	meta:
		description = "Rogue:Win32/FakeSecSen,SIGNATURE_TYPE_PEHSTR,06 00 05 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 44 72 41 6e 74 69 73 70 79 53 65 74 75 70 } //1 SOFTWARE\DrAntispySetup
		$a_01_1 = {2f 64 72 64 6f 77 6e 6c 6f 61 64 2e 70 68 70 3f 26 } //1 /drdownload.php?&
		$a_01_2 = {36 39 2e 35 30 2e 31 36 35 2e 31 38 } //2 69.50.165.18
		$a_01_3 = {47 45 54 20 68 74 74 70 3a 2f 2f 64 6f 77 6e 6c 6f 61 64 2e 25 73 2e 63 6f 6d 25 73 26 75 3d 25 75 26 61 64 76 69 64 3d 30 30 30 30 30 30 30 30 26 70 3d 25 75 20 48 54 54 50 2f 31 2e 30 } //1 GET http://download.%s.com%s&u=%u&advid=00000000&p=%u HTTP/1.0
		$a_01_4 = {45 73 42 6f 75 6a 74 71 7a } //1 EsBoujtqz
		$a_01_5 = {44 72 41 6e 74 69 73 70 79 20 33 2e 35 20 53 65 74 75 70 } //1 DrAntispy 3.5 Setup
		$a_01_6 = {41 72 65 20 79 6f 75 20 73 75 72 65 20 79 6f 75 20 77 69 73 68 20 74 6f 20 63 61 6e 63 65 6c 20 73 65 74 75 70 3f } //1 Are you sure you wish to cancel setup?
		$a_01_7 = {49 6e 74 65 72 6e 65 74 20 63 6f 6e 6e 65 63 74 69 6f 6e 20 69 73 20 75 6e 61 76 61 69 6c 61 62 6c 65 2e } //1 Internet connection is unavailable.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=5
 
}