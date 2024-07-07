
rule Adware_Win32_HostSecure{
	meta:
		description = "Adware:Win32/HostSecure,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {32 00 42 00 30 00 31 00 38 00 33 00 44 00 36 00 2d 00 33 00 43 00 32 00 32 00 2d 00 34 00 46 00 30 00 42 00 2d 00 46 00 36 00 32 00 46 00 2d 00 35 00 38 00 41 00 46 00 35 00 32 00 46 00 36 00 36 00 36 00 30 00 36 00 } //1 2B0183D6-3C22-4F0B-F62F-58AF52F66606
		$a_01_1 = {68 6f 73 74 73 65 63 75 72 65 70 6c 75 67 69 6e 2e 63 6f 6d } //1 hostsecureplugin.com
		$a_00_2 = {2d 00 2d 00 65 00 6e 00 61 00 62 00 6c 00 65 00 2d 00 65 00 61 00 73 00 79 00 2d 00 6f 00 66 00 66 00 2d 00 73 00 74 00 6f 00 72 00 65 00 2d 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 2d 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 2d 00 2d 00 6c 00 6f 00 61 00 64 00 2d 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 } //1 --enable-easy-off-store-extension-install --load-extension
		$a_00_3 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 74 00 6e 00 20 00 22 00 53 00 65 00 63 00 75 00 72 00 65 00 48 00 6f 00 73 00 74 00 22 00 20 00 2f 00 74 00 72 00 } //1 schtasks /create /tn "SecureHost" /tr
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}