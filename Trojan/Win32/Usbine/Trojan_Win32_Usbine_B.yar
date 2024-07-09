
rule Trojan_Win32_Usbine_B{
	meta:
		description = "Trojan:Win32/Usbine.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {6c 6f 61 64 00 2e 65 78 65 00 22 25 31 22 20 25 2a 00 5c 3f 3f 5c 00 6e 74 64 6c 6c 2e 64 6c 6c 00 5c 57 69 6e 6c 6f 67 6f 6e } //1 潬摡⸀硥e┢∱┠*㽜尿渀摴汬搮汬尀楗汮杯湯
		$a_02_1 = {80 38 2c 75 03 c6 00 00 68 00 01 00 00 68 ?? ?? 41 00 e8 ?? ?? ff ff 68 00 01 00 00 68 ?? ?? 41 00 e8 ?? ?? 00 00 c6 80 ?? ?? 41 00 5c c7 80 ?? ?? 41 00 55 73 65 72 c7 80 ?? ?? 41 00 69 6e 69 74 c7 80 ?? ?? 41 00 2e 65 78 65 68 ?? ?? 41 00 68 ?? ?? 41 00 e8 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}