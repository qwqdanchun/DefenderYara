
rule Worm_Win32_Combra_F{
	meta:
		description = "Worm:Win32/Combra.F,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 09 00 00 05 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //01 00  SOFTWARE\Borland\Delphi
		$a_01_1 = {74 65 72 72 61 2e 63 6f 6d 2e 62 72 } //01 00  terra.com.br
		$a_01_2 = {2e 70 68 70 3f 64 65 73 74 3d } //01 00  .php?dest=
		$a_01_3 = {26 72 61 64 69 6f 75 73 65 72 3d } //01 00  &radiouser=
		$a_01_4 = {26 61 6d 69 67 6f 3d } //01 00  &amigo=
		$a_01_5 = {26 6d 65 75 6e 6f 6d 65 3d } //01 00  &meunome=
		$a_01_6 = {3c 2f 74 72 3e 3c 2f 74 61 62 6c 65 3e } //01 00  </tr></table>
		$a_01_7 = {57 41 42 5c 57 41 42 34 5c 57 61 62 20 46 69 6c 65 20 4e 61 6d 65 } //01 00  WAB\WAB4\Wab File Name
		$a_01_8 = {26 65 6d 61 69 6c 3d } //00 00  &email=
	condition:
		any of ($a_*)
 
}