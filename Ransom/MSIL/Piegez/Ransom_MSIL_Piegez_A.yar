
rule Ransom_MSIL_Piegez_A{
	meta:
		description = "Ransom:MSIL/Piegez.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 15 00 00 04 00 "
		
	strings :
		$a_80_0 = {44 3a 5c 5b 21 5d 44 6e 31 33 5c 52 61 6e 73 6f 6d 77 61 72 65 5c 50 72 6f 6a 65 63 74 20 46 69 6e 61 6c 5c 42 61 63 6b 75 70 20 48 33 34 72 74 42 6c 33 33 64 5c 61 6e 75 5c 31 5c 4b 4e 54 4c 43 72 79 70 74 5c 6f 62 6a 5c 78 38 36 5c 44 65 62 75 67 5c 44 6e 54 68 69 72 54 65 65 6e 2e 70 64 62 } //D:\[!]Dn13\Ransomware\Project Final\Backup H34rtBl33d\anu\1\KNTLCrypt\obj\x86\Debug\DnThirTeen.pdb  02 00 
		$a_80_1 = {44 33 67 31 64 35 2e 7a 69 70 } //D3g1d5.zip  02 00 
		$a_80_2 = {64 33 67 31 64 35 2e 65 78 65 } //d3g1d5.exe  02 00 
		$a_80_3 = {48 33 34 72 74 42 6c 33 33 64 2e 62 6d 70 } //H34rtBl33d.bmp  02 00 
		$a_80_4 = {48 33 34 72 74 42 6c 33 33 64 2e 68 74 6d 6c } //H34rtBl33d.html  02 00 
		$a_80_5 = {48 33 34 72 74 42 6c 33 33 64 2e 74 78 74 } //H34rtBl33d.txt  02 00 
		$a_80_6 = {48 33 34 72 74 42 6c 33 33 64 2e 65 78 65 } //H34rtBl33d.exe  02 00 
		$a_80_7 = {48 33 34 72 74 42 6c 33 33 64 20 44 65 62 75 67 } //H34rtBl33d Debug  02 00 
		$a_80_8 = {48 33 34 72 74 42 6c 33 33 64 20 52 61 6e 73 6f 6d 77 61 72 65 } //H34rtBl33d Ransomware  02 00 
		$a_80_9 = {47 6f 20 48 6f 6d 65 20 4b 69 64 7a 2c 20 5a 75 61 68 61 68 61 68 61 21 } //Go Home Kidz, Zuahahaha!  02 00 
		$a_80_10 = {50 61 79 20 53 6f 6d 65 20 4d 6f 6e 65 79 20 54 6f 20 52 65 63 6f 76 65 72 20 59 6f 75 72 20 44 61 74 61 2c 20 5a 75 61 68 61 68 61 68 61 68 61 21 } //Pay Some Money To Recover Your Data, Zuahahahaha!  02 00 
		$a_80_11 = {5b 21 5d 48 33 34 72 74 42 6c 33 33 64 } //[!]H34rtBl33d  02 00 
		$a_80_12 = {5b 21 5d 44 6e 54 68 69 72 74 65 65 6e } //[!]DnThirteen  02 00 
		$a_80_13 = {44 33 47 31 44 35 43 72 79 70 74 } //D3G1D5Crypt  02 00 
		$a_80_14 = {44 33 47 31 44 35 43 59 42 45 52 43 52 45 57 } //D3G1D5CYBERCREW  02 00 
		$a_80_15 = {44 33 47 31 44 35 20 43 79 62 65 72 20 43 72 65 77 } //D3G1D5 Cyber Crew  02 00 
		$a_80_16 = {4e 65 74 20 75 73 65 72 20 44 33 67 31 64 35 20 44 77 69 78 74 6b 6a 33 37 20 2f 61 64 64 } //Net user D3g1d5 Dwixtkj37 /add  02 00 
		$a_80_17 = {4e 65 74 20 6c 6f 63 61 6c 67 72 6f 75 70 20 41 64 6d 69 6e 69 73 74 72 61 74 6f 72 73 20 44 33 67 31 64 35 20 2f 61 64 64 } //Net localgroup Administrators D3g1d5 /add  01 00 
		$a_80_18 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 66 6f 72 3d 63 3a 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //vssadmin delete shadows /for=c: /all /quiet  01 00 
		$a_80_19 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 66 6f 72 3d 64 3a 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //vssadmin delete shadows /for=d: /all /quiet  01 00 
		$a_80_20 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 62 6f 6f 74 6d 67 72 7d 20 64 69 73 70 6c 61 79 62 6f 6f 74 6d 65 6e 75 20 6e 6f } //bcdedit /set {bootmgr} displaybootmenu no  00 00 
		$a_00_21 = {5d 04 00 00 82 b5 03 80 } //5c 21 
	condition:
		any of ($a_*)
 
}