
rule Worm_Win32_Cubspewt_A{
	meta:
		description = "Worm:Win32/Cubspewt.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 08 00 00 "
		
	strings :
		$a_03_0 = {6a 6f 8d 95 ?? ?? ?? ?? 52 ff 15 ?? ?? ?? ?? 6a 70 8d 85 ?? ?? ?? ?? 50 ff 15 ?? ?? ?? ?? 6a 75 8d 8d ?? ?? ?? ?? 51 ff 15 ?? ?? ?? ?? 6a 73 } //2
		$a_00_1 = {5b 00 55 00 50 00 44 00 41 00 54 00 45 00 44 00 5d 00 3a 00 20 00 49 00 20 00 61 00 6d 00 20 00 75 00 70 00 32 00 64 00 61 00 74 00 65 00 21 00 } //2 [UPDATED]: I am up2date!
		$a_00_2 = {5b 00 49 00 4e 00 53 00 54 00 41 00 4c 00 4c 00 45 00 44 00 5d 00 3a 00 20 00 49 00 20 00 61 00 6d 00 20 00 6e 00 65 00 77 00 21 00 } //2 [INSTALLED]: I am new!
		$a_00_3 = {5b 00 4a 00 4f 00 49 00 4e 00 45 00 44 00 5d 00 3a 00 20 00 49 00 20 00 61 00 6d 00 20 00 68 00 65 00 72 00 65 00 20 00 3b 00 29 00 } //2 [JOINED]: I am here ;)
		$a_00_4 = {25 00 62 00 6f 00 74 00 64 00 69 00 72 00 25 00 } //1 %botdir%
		$a_00_5 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 autorun.inf
		$a_00_6 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 41 00 75 00 74 00 6f 00 70 00 6c 00 61 00 79 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 } //1 shell\Autoplay\command=
		$a_00_7 = {70 00 69 00 6e 00 67 00 20 00 31 00 2e 00 32 00 2e 00 33 00 2e 00 34 00 20 00 2d 00 6c 00 20 00 36 00 35 00 35 00 30 00 30 00 20 00 2d 00 6e 00 20 00 31 00 20 00 2d 00 77 00 20 00 32 00 35 00 30 00 30 00 3e 00 6e 00 75 00 6c 00 } //1 ping 1.2.3.4 -l 65500 -n 1 -w 2500>nul
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=6
 
}