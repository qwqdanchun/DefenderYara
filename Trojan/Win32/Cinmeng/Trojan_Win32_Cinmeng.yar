
rule Trojan_Win32_Cinmeng{
	meta:
		description = "Trojan:Win32/Cinmeng,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_02_0 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 61 00 63 00 70 00 69 00 64 00 69 00 73 00 6b 00 00 00 00 00 49 00 6d 00 61 00 67 00 65 00 50 00 61 00 74 00 68 00 00 00 90 01 02 01 00 90 01 02 01 00 90 01 02 01 00 90 01 02 01 00 5c 00 77 00 69 00 6e 00 6c 00 69 00 62 00 20 00 2e 00 64 00 6c 00 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Cinmeng_2{
	meta:
		description = "Trojan:Win32/Cinmeng,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {61 63 70 69 64 69 73 6b 2e 73 79 73 } //01 00  acpidisk.sys
		$a_01_1 = {46 69 72 73 74 49 6e 73 74 61 6c 6c } //02 00  FirstInstall
		$a_01_2 = {42 44 43 34 44 33 45 38 44 42 39 41 32 39 38 } //02 00  BDC4D3E8DB9A298
		$a_01_3 = {6d 73 63 70 78 33 32 72 2e 64 65 74 } //02 00  mscpx32r.det
		$a_01_4 = {5c 5c 2e 5c 70 69 70 65 5c 41 30 39 43 37 43 32 36 45 44 38 35 37 43 33 36 } //01 00  \\.\pipe\A09C7C26ED857C36
		$a_01_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 44 53 43 4e 50 } //00 00  SOFTWARE\Microsoft\IDSCNP
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Cinmeng_3{
	meta:
		description = "Trojan:Win32/Cinmeng,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_02_0 = {42 49 00 6d 00 61 00 67 00 65 00 50 00 61 00 74 00 68 00 00 00 5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 61 00 63 00 70 00 69 00 64 00 69 00 73 00 6b 00 00 00 00 00 5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 61 00 63 00 70 00 69 00 64 00 69 00 73 00 6b 00 00 00 55 8b ec 83 ec 1c 53 56 57 90 02 05 00 00 00 90 00 } //02 00 
		$a_00_1 = {5c 00 77 00 69 00 6e 00 6c 00 69 00 62 00 20 00 2e 00 64 00 6c 00 6c 00 } //00 00  \winlib .dll
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Cinmeng_4{
	meta:
		description = "Trojan:Win32/Cinmeng,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0d 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 73 53 65 74 43 72 65 61 74 65 50 72 6f 63 65 73 73 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //01 00  PsSetCreateProcessNotifyRoutine
		$a_01_1 = {45 78 46 72 65 65 50 6f 6f 6c } //01 00  ExFreePool
		$a_01_2 = {4d 6d 4d 61 70 4c 6f 63 6b 65 64 50 61 67 65 73 53 70 65 63 69 66 79 43 61 63 68 65 } //0a 00  MmMapLockedPagesSpecifyCache
		$a_02_3 = {5f 5e 5b c9 c2 08 00 90 02 01 5c 00 42 00 61 00 73 00 65 00 4e 00 61 00 6d 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 55 00 49 00 44 00 5f 00 31 00 33 00 32 00 39 00 31 00 34 00 37 00 36 00 30 00 32 00 5f 00 4d 00 49 00 45 00 45 00 76 00 65 00 6e 00 74 00 00 00 55 8b ec 83 ec 0c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Cinmeng_5{
	meta:
		description = "Trojan:Win32/Cinmeng,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 06 00 00 03 00 "
		
	strings :
		$a_01_0 = {70 5f 73 74 61 72 5f 31 2e 6a 70 67 00 00 00 00 78 5f 37 31 33 33 2e 64 6c 6c } //02 00 
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 74 5c 53 65 74 74 69 6e 67 73 5c 7b 45 35 41 37 41 31 35 46 2d 32 31 33 46 2d 34 46 43 46 2d 38 44 45 37 2d 44 33 38 38 46 39 46 42 30 39 45 42 7d } //03 00  Software\Microsoft\Windows\CurrentVersion\Ext\Settings\{E5A7A15F-213F-4FCF-8DE7-D388F9FB09EB}
		$a_01_2 = {42 49 4e 00 25 73 5c 63 6e 77 69 6e 2e 64 6c 6c } //01 00  䥂N猥捜睮湩搮汬
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 44 53 43 4e 50 } //02 00  SOFTWARE\Microsoft\IDSCNP
		$a_00_4 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 33 00 32 00 5c 00 63 00 6e 00 77 00 69 00 6e 00 2e 00 64 00 6c 00 6c 00 } //01 00  C:\WINDOWS\SYSTEM32\cnwin.dll
		$a_00_5 = {49 00 45 00 48 00 65 00 6c 00 70 00 65 00 72 00 31 00 53 00 65 00 74 00 75 00 70 00 20 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 31 00 2e 00 30 00 } //00 00  IEHelper1Setup Version 1.0
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Cinmeng_6{
	meta:
		description = "Trojan:Win32/Cinmeng,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0c 00 00 05 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 75 70 64 61 74 65 2e 63 6e 6e 65 77 6d 75 73 69 63 2e 63 6f 6d 2f 67 65 74 5f 67 69 66 2e 70 68 70 3f } //05 00  http://update.cnnewmusic.com/get_gif.php?
		$a_01_1 = {43 4c 53 49 44 5c 7b 45 35 41 37 41 31 35 46 2d 32 31 33 46 2d 34 46 43 46 2d 38 44 45 37 2d 44 33 38 38 46 39 46 42 30 39 45 42 7d } //05 00  CLSID\{E5A7A15F-213F-4FCF-8DE7-D388F9FB09EB}
		$a_01_2 = {43 4c 53 49 44 5c 7b 33 38 35 41 42 38 43 36 2d 46 42 32 32 2d 34 44 31 37 2d 38 38 33 34 2d 30 36 34 45 32 42 41 30 41 36 46 30 7d } //05 00  CLSID\{385AB8C6-FB22-4D17-8834-064E2BA0A6F0}
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 44 53 43 4e 50 } //02 00  SOFTWARE\Microsoft\IDSCNP
		$a_01_4 = {6d 75 73 69 63 2e 67 69 66 } //05 00  music.gif
		$a_01_5 = {63 6e 77 69 6e 20 64 6f 77 6e 6c 6f 61 64 65 64 20 63 6f 6d 70 6c 65 74 65 64 21 } //05 00  cnwin downloaded completed!
		$a_01_6 = {6c 6f 67 69 6e 2e 79 69 71 69 6c 61 69 2e 63 6f 6d } //02 00  login.yiqilai.com
		$a_01_7 = {35 31 6d 70 33 2e 63 6f 6d } //02 00  51mp3.com
		$a_01_8 = {4d 69 72 63 72 47 46 58 2e 64 61 74 } //02 00  MircrGFX.dat
		$a_01_9 = {64 33 64 31 63 61 70 73 2e 53 52 47 } //03 00  d3d1caps.SRG
		$a_01_10 = {2f 67 65 74 5f 61 2e 70 68 70 3f 66 69 64 3d 25 64 26 6b 69 64 3d 25 64 26 63 6e 74 3d 25 64 26 6d 61 63 3d 25 73 26 6b 77 3d 25 73 26 76 65 72 73 69 6f 6e 3d 25 73 26 75 75 69 64 3d 25 73 } //05 00  /get_a.php?fid=%d&kid=%d&cnt=%d&mac=%s&kw=%s&version=%s&uuid=%s
		$a_01_11 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c 7b 31 36 42 37 37 30 41 30 2d 30 45 38 37 2d 34 32 37 38 2d 42 37 34 38 2d 32 34 36 30 44 36 34 41 38 33 38 36 7d } //00 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{16B770A0-0E87-4278-B748-2460D64A8386}
	condition:
		any of ($a_*)
 
}