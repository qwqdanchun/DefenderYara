
rule Trojan_WinNT_Killfiles_R{
	meta:
		description = "Trojan:WinNT/Killfiles.R,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {eb e1 8b 45 08 c7 40 34 d0 02 01 00 68 e0 02 01 00 8d 4d 90 01 01 51 e8 90 01 02 ff ff 68 58 03 01 00 8d 90 03 02 05 55 c4 95 64 ff ff ff 52 e8 90 01 02 ff ff 68 d0 03 01 00 90 00 } //01 00 
		$a_00_1 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 48 00 61 00 72 00 64 00 64 00 69 00 73 00 6b 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 31 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 } //01 00  \Device\HarddiskVolume1\Program Files\GbPlugin\
		$a_00_2 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 48 00 61 00 72 00 64 00 64 00 69 00 73 00 6b 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 31 00 5c 00 41 00 72 00 71 00 75 00 69 00 76 00 6f 00 73 00 20 00 64 00 65 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 61 00 73 00 5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 } //00 00  \Device\HarddiskVolume1\Arquivos de Programas\GbPlugin\
	condition:
		any of ($a_*)
 
}