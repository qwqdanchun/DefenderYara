
rule Trojan_BAT_AsyncRAT_AU_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.AU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 "
		
	strings :
		$a_01_0 = {41 00 46 00 6b 00 41 00 64 00 77 00 42 00 43 00 41 00 48 00 51 00 41 00 51 00 51 00 42 00 48 00 41 00 46 00 45 00 41 00 51 00 51 00 42 00 4d 00 41 00 47 00 63 00 41 00 51 00 67 00 42 00 73 00 41 00 45 00 45 00 41 00 53 00 41 00 42 00 6e 00 41 00 45 00 45 00 41 00 57 00 67 00 42 00 52 00 41 00 45 00 45 00 41 00 50 00 51 00 3d 00 3d 00 } //2 AFkAdwBCAHQAQQBHAFEAQQBMAGcAQgBsAEEASABnAEEAWgBRAEEAPQ==
		$a_01_1 = {41 00 45 00 77 00 41 00 64 00 77 00 42 00 43 00 41 00 47 00 6f 00 41 00 51 00 51 00 42 00 44 00 41 00 45 00 45 00 41 00 51 00 51 00 42 00 5a 00 41 00 48 00 63 00 41 00 51 00 67 00 42 00 32 00 41 00 45 00 45 00 41 00 53 00 41 00 42 00 42 00 41 00 45 00 45 00 41 00 5a 00 51 00 42 00 52 00 41 00 45 00 45 00 41 00 5a 00 77 00 42 00 42 00 41 00 } //2 AEwAdwBCAGoAQQBDAEEAQQBZAHcAQgB2AEEASABBAEEAZQBRAEEAZwBBA
		$a_01_2 = {67 00 42 00 6e 00 41 00 45 00 45 00 41 00 5a 00 77 00 42 00 42 00 41 00 45 00 67 00 41 00 51 00 51 00 42 00 42 00 41 00 47 00 45 00 41 00 55 00 51 00 42 00 43 00 41 00 48 00 55 00 41 00 51 00 51 00 42 00 48 00 41 00 47 00 4d 00 41 00 51 00 51 00 42 00 4a 00 41 00 45 00 45 00 41 00 51 00 51 00 42 00 34 00 41 00 45 00 45 00 41 00 51 00 77 00 41 00 30 00 41 00 45 00 45 00 41 00 54 00 51 00 42 00 52 00 41 00 45 00 45 00 41 00 64 00 51 00 42 00 42 00 41 00 45 00 51 00 41 00 52 00 51 00 42 00 42 00 41 00 45 00 77 00 41 00 5a 00 77 00 42 00 42 00 41 00 48 00 67 00 41 00 51 00 51 00 42 00 42 00 41 00 44 00 30 00 41 00 50 00 51 00 3d 00 3d 00 } //2 gBnAEEAZwBBAEgAQQBBAGEAUQBCAHUAQQBHAGMAQQBJAEEAQQB4AEEAQwA0AEEATQBRAEEAdQBBAEQARQBBAEwAZwBBAHgAQQBBAD0APQ==
		$a_01_3 = {41 00 46 00 45 00 41 00 64 00 77 00 42 00 42 00 41 00 44 00 59 00 41 00 51 00 51 00 42 00 47 00 41 00 48 00 63 00 41 00 51 00 51 00 42 00 57 00 41 00 48 00 63 00 41 00 51 00 67 00 42 00 77 00 41 00 45 00 45 00 41 00 52 00 77 00 41 00 30 00 41 00 45 00 45 00 41 00 57 00 67 00 42 00 42 00 41 00 45 00 49 00 41 00 64 00 67 00 42 00 42 00 41 00 45 00 67 00 41 00 59 00 77 00 42 00 42 00 41 00 47 00 4d 00 41 00 64 00 77 00 42 00 43 00 41 00 47 00 4d 00 41 00 51 00 51 00 42 00 46 00 41 00 44 00 41 00 41 00 51 00 51 00 42 00 68 00 41 00 46 00 45 00 41 00 51 00 67 00 42 00 71 00 41 00 45 00 45 00 41 00 53 00 41 00 42 00 4a 00 41 00 45 00 45 00 41 00 59 00 67 00 42 00 33 00 } //2 AFEAdwBBADYAQQBGAHcAQQBWAHcAQgBwAEEARwA0AEEAWgBBAEIAdgBBAEgAYwBBAGMAdwBCAGMAQQBFADAAQQBhAFEAQgBqAEEASABJAEEAYgB3
		$a_01_4 = {41 00 45 00 49 00 41 00 65 00 67 00 42 00 42 00 41 00 45 00 63 00 41 00 4f 00 41 00 42 00 42 00 41 00 46 00 6f 00 41 00 5a 00 77 00 42 00 43 00 41 00 44 00 41 00 41 00 51 00 51 00 42 00 44 00 41 00 44 00 51 00 41 00 51 00 51 00 42 00 55 00 41 00 47 00 63 00 41 00 51 00 67 00 42 00 47 00 41 00 45 00 45 00 41 00 52 00 67 00 42 00 52 00 41 00 45 00 45 00 41 00 57 00 41 00 42 00 42 00 41 00 45 00 49 00 41 00 52 00 77 00 42 00 42 00 41 00 45 00 67 00 41 00 53 00 51 00 42 00 42 00 41 00 46 00 6b 00 41 00 55 00 51 00 42 00 43 00 41 00 48 00 51 00 41 00 51 00 51 00 42 00 48 00 41 00 46 00 55 00 41 00 51 00 51 00 42 00 6b 00 41 00 48 00 63 00 41 00 51 00 67 00 42 00 32 00 41 00 45 00 45 00 } //2 AEIAegBBAEcAOABBAFoAZwBCADAAQQBDADQAQQBUAGcAQgBGAEEARgBRAEEAWABBAEIARwBBAEgASQBBAFkAUQBCAHQAQQBHAFUAQQBkAHcAQgB2AEE
		$a_01_5 = {41 00 53 00 41 00 42 00 4a 00 41 00 45 00 45 00 41 00 59 00 51 00 42 00 33 00 41 00 45 00 49 00 41 00 59 00 77 00 42 00 } //2 ASABJAEEAYQB3AEIAYwB
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=12
 
}