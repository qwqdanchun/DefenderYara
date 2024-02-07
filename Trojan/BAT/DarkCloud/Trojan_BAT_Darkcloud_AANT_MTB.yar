
rule Trojan_BAT_Darkcloud_AANT_MTB{
	meta:
		description = "Trojan:BAT/Darkcloud.AANT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {30 00 33 00 7a 00 37 00 32 00 4e 00 31 00 6e 00 50 00 63 00 6c 00 39 00 4d 00 64 00 45 00 6a 00 73 00 51 00 6f 00 38 00 62 00 38 00 32 00 66 00 4a 00 32 00 5a 00 41 00 4d 00 41 00 55 00 32 00 31 00 6e 00 41 00 39 00 79 00 5a 00 73 00 50 00 47 00 74 00 34 00 3d 00 } //01 00  03z72N1nPcl9MdEjsQo8b82fJ2ZAMAU21nA9yZsPGt4=
		$a_01_1 = {30 00 59 00 54 00 44 00 4c 00 44 00 36 00 78 00 2f 00 43 00 79 00 63 00 57 00 34 00 43 00 47 00 36 00 62 00 64 00 68 00 66 00 77 00 3d 00 3d 00 } //01 00  0YTDLD6x/CycW4CG6bdhfw==
		$a_01_2 = {24 00 24 00 24 00 61 00 24 00 6d 00 24 00 73 00 24 00 69 00 24 00 2e 00 24 00 64 00 24 00 6c 00 24 00 6c 00 24 00 24 00 24 00 } //01 00  $$$a$m$s$i$.$d$l$l$$$
		$a_01_3 = {24 00 24 00 24 00 41 00 24 00 6d 00 73 00 24 00 69 00 53 00 63 00 24 00 61 00 24 00 6e 00 42 00 75 00 24 00 66 00 24 00 66 00 65 00 72 00 24 00 24 00 24 00 } //00 00  $$$A$ms$iSc$a$nBu$f$fer$$$
	condition:
		any of ($a_*)
 
}