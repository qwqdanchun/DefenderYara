
rule TrojanSpy_Win32_Delf{
	meta:
		description = "TrojanSpy:Win32/Delf,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {5c 52 5f 4f 5f 4f 5f 54 5c } //1 \R_O_O_T\
		$a_01_2 = {2f 67 61 74 65 31 2e 70 68 70 } //1 /gate1.php
		$a_01_3 = {50 4f 53 54 00 00 00 00 43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 00 } //1
		$a_01_4 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 51 49 50 5c 00 00 00 ff ff ff ff 0b 00 00 00 5f 73 72 76 6c 6f 67 2e 74 78 74 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanSpy_Win32_Delf_2{
	meta:
		description = "TrojanSpy:Win32/Delf,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 1c 00 00 "
		
	strings :
		$a_00_0 = {53 68 65 6c 6c 45 78 65 63 75 74 65 48 6f 6f 6b 73 } //1 ShellExecuteHooks
		$a_00_1 = {4c 4f 47 49 4e 5f 42 54 4e 5f 50 41 53 53 57 4f 52 44 2e 42 4d 50 } //1 LOGIN_BTN_PASSWORD.BMP
		$a_01_2 = {59 42 5f 4f 6e 6c 69 6e 65 43 6c 69 65 6e 74 } //1 YB_OnlineClient
		$a_00_3 = {45 48 53 6e 69 66 66 65 72 2e 65 78 65 } //1 EHSniffer.exe
		$a_00_4 = {77 69 6e 64 38 38 77 73 32 30 6f 38 } //1 wind88ws20o8
		$a_00_5 = {77 71 72 6e 64 72 77 73 34 30 64 61 } //1 wqrndrws40da
		$a_00_6 = {77 71 71 6e 64 32 77 73 33 30 6f 38 } //1 wqqnd2ws30o8
		$a_00_7 = {6d 79 77 69 6e 64 6f 77 73 64 6c 6c } //1 mywindowsdll
		$a_00_8 = {77 6c 6e 64 30 77 73 33 30 6f 37 } //1 wlnd0ws30o7
		$a_00_9 = {64 6c 6c 66 69 6c 65 } //1 dllfile
		$a_00_10 = {52 58 4a 48 34 32 33 4e 4f 54 45 58 45 43 55 54 45 } //1 RXJH423NOTEXECUTE
		$a_00_11 = {4d 69 6e 72 6f 73 6f 66 74 20 32 30 30 31 } //1 Minrosoft 2001
		$a_00_12 = {46 55 43 4b 52 55 49 58 49 4e 47 4e 49 4d 41 } //1 FUCKRUIXINGNIMA
		$a_00_13 = {57 4f 48 45 4e 48 41 4f 5f 47 4f 4f 44 5f 4c 75 34 6b } //1 WOHENHAO_GOOD_Lu4k
		$a_00_14 = {56 65 72 63 6c 73 69 64 2e 65 58 45 } //1 Verclsid.eXE
		$a_00_15 = {46 75 63 6b 52 49 4e 47 4b 41 4f 44 4b 46 44 53 4b 34 34 } //1 FuckRINGKAODKFDSK44
		$a_00_16 = {66 75 63 6b 6b 76 31 35 39 } //1 fuckkv159
		$a_00_17 = {66 75 63 6b 6e 6f 64 33 32 6e 69 } //1 fucknod32ni
		$a_00_18 = {73 64 66 63 33 34 6b 6b 61 6f 7a 74 2e 62 61 54 } //1 sdfc34kkaozt.baT
		$a_00_19 = {7a 68 65 6e 67 74 75 5f 63 6c 69 65 6e 74 } //1 zhengtu_client
		$a_00_20 = {7a 68 65 6e 67 74 75 2e 64 61 74 } //1 zhengtu.dat
		$a_02_21 = {ff ff 8d 45 fc ba 90 01 02 40 00 e8 90 01 02 ff ff 90 02 16 8d 45 fc e8 90 01 02 ff ff 8b d0 b9 90 01 02 40 00 b8 00 00 00 80 e8 90 01 02 ff ff 68 90 01 02 40 00 8d 45 fc e8 90 01 02 ff ff 8b d0 b9 90 01 02 40 00 b8 00 00 00 80 e8 90 01 02 ff ff 68 90 01 02 40 00 90 01 03 40 00 90 02 05 b8 02 00 00 80 e8 90 01 02 ff ff 33 c0 5a 59 59 64 89 90 00 } //5
		$a_02_22 = {e8 7f ff ff ff 8d 55 f4 52 50 e8 90 01 02 ff ff 8b 45 f4 50 6a 00 68 18 04 00 00 e8 90 01 02 ff ff 8b d8 85 db 74 42 be 90 01 01 00 00 00 8d 45 f0 8b d6 e8 90 01 02 ff ff 8d 45 f8 50 56 8b 45 f0 e8 90 01 02 ff ff 50 8b 45 fc 50 53 e8 90 01 02 ff ff 85 c0 74 11 8b 45 f0 90 00 } //8
		$a_00_23 = {e8 da f8 ff ff 8b f0 8d 44 24 0c 50 53 e8 b1 f5 ff ff 8b 44 24 0c 50 6a 00 6a 10 e8 3b f5 ff ff 8b d8 85 db 74 69 8d 44 24 08 50 6a 04 56 55 53 e8 2e f5 ff ff 85 c0 74 56 8d 44 24 08 50 6a 04 56 } //8
		$a_02_24 = {ff ff 8d 45 d8 50 68 80 00 00 00 6a 04 53 e8 90 01 02 ff ff 8d 45 e4 50 6a 04 8d 45 08 50 53 e8 90 01 01 fa ff ff 50 e8 90 01 01 fa ff ff 8d 45 e0 50 8b 45 d8 50 6a 04 53 e8 90 01 01 fa ff ff 90 00 } //8
		$a_00_25 = {e8 fb f5 ff ff 66 85 c0 75 64 8d 55 ec 33 c0 e8 08 dc ff ff 8b 45 ec ba 68 66 40 00 e8 27 f7 ff ff 84 c0 74 49 b8 44 6a 40 00 ba 74 4b 40 00 e8 5c fe ff ff a1 44 6a 40 00 e8 f2 fd ff ff 84 c0 74 22 a1 44 6a 40 00 e8 e4 fd ff ff 84 c0 74 1e a1 44 6a 40 00 e8 1a f0 ff ff 50 e8 60 f5 ff ff } //8
		$a_02_26 = {ff ff 8b f0 57 a1 50 90 01 01 40 00 50 e8 90 01 02 ff ff 90 01 26 50 56 e8 90 01 01 ed ff ff 56 e8 90 01 02 ff ff 90 01 1a 56 e8 90 01 02 ff ff 8b c3 e8 90 01 02 ff ff 53 e8 90 01 02 ff ff 90 00 } //8
		$a_00_27 = {e8 e4 fc ff ff 8b f0 83 fe ff 75 0f 8b c3 e8 56 fd ff ff 53 e8 10 fd ff ff eb 4a 57 a1 50 66 40 00 50 e8 32 fd ff ff 8b f8 6a 00 8d 44 24 04 50 57 55 56 e8 29 fd ff ff 3b 3c 24 74 0f 8b c3 e8 25 fd ff ff 53 e8 df fc ff ff } //8
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1+(#a_02_21  & 1)*5+(#a_02_22  & 1)*8+(#a_00_23  & 1)*8+(#a_02_24  & 1)*8+(#a_00_25  & 1)*8+(#a_02_26  & 1)*8+(#a_00_27  & 1)*8) >=10
 
}