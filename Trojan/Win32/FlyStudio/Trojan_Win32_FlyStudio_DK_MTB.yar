
rule Trojan_Win32_FlyStudio_DK_MTB{
	meta:
		description = "Trojan:Win32/FlyStudio.DK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 68 75 74 64 6f 77 6e 2e 65 78 65 20 2d 73 20 2d 74 20 36 30 } //1 Shutdown.exe -s -t 60
		$a_01_1 = {30 42 33 41 41 30 37 35 45 33 30 44 31 38 44 32 44 31 42 37 39 38 30 44 37 36 30 46 42 36 33 42 37 34 38 39 41 36 42 43 31 36 44 34 36 43 42 32 36 38 35 33 33 45 41 32 42 39 43 43 44 30 34 42 34 37 36 32 39 34 36 33 31 44 37 42 44 41 32 39 38 31 45 32 38 42 37 41 46 34 46 38 46 44 36 38 32 36 34 42 37 36 } //1 0B3AA075E30D18D2D1B7980D760FB63B7489A6BC16D46CB268533EA2B9CCD04B476294631D7BDA2981E28B7AF4F8FD68264B76
		$a_01_2 = {78 69 61 6f 73 69 63 70 2e 74 61 6f 62 61 6f 2e 63 6f 6d } //1 xiaosicp.taobao.com
		$a_01_3 = {45 39 33 32 36 46 33 45 2d 41 32 33 43 2d 34 36 44 33 2d 39 43 32 30 2d 33 41 45 38 32 35 45 46 41 30 41 37 } //1 E9326F3E-A23C-46D3-9C20-3AE825EFA0A7
		$a_01_4 = {7b 39 44 41 39 36 42 46 39 43 45 42 44 34 35 63 35 42 46 43 46 39 34 43 42 45 36 31 36 37 31 46 35 7d } //1 {9DA96BF9CEBD45c5BFCF94CBE61671F5}
		$a_01_5 = {75 69 6e 3d 35 37 33 35 31 38 39 31 35 } //1 uin=573518915
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}