
rule Trojan_Win32_Multsarch_M{
	meta:
		description = "Trojan:Win32/Multsarch.M,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0c 00 00 14 00 "
		
	strings :
		$a_01_0 = {74 63 72 79 70 74 5f 63 6c 32 5c 74 63 72 79 70 74 5f 63 6c 32 5c 52 65 6c 65 61 73 65 5c 73 5f 68 69 67 68 2e 70 64 62 } //14 00  tcrypt_cl2\tcrypt_cl2\Release\s_high.pdb
		$a_01_1 = {74 63 72 79 70 74 5f 63 6c 32 5c 74 63 72 79 70 74 5f 63 6c 32 5c 52 65 6c 65 61 73 65 5c 73 5f 6c 6f 77 2e 70 64 62 } //14 00  tcrypt_cl2\tcrypt_cl2\Release\s_low.pdb
		$a_01_2 = {5c 74 63 72 79 70 74 5c 52 65 6c 65 61 73 65 5c 73 5f 68 69 67 68 2e 70 64 62 } //14 00  \tcrypt\Release\s_high.pdb
		$a_01_3 = {5c 74 63 72 79 70 74 5c 52 65 6c 65 61 73 65 5c 73 5f 6c 6f 77 2e 70 64 62 } //01 00  \tcrypt\Release\s_low.pdb
		$a_00_4 = {ba 20 37 ef c6 89 74 24 0c bf 20 00 00 00 8b f1 c1 ee 05 03 74 24 0c 8b d9 c1 e3 04 } //01 00 
		$a_00_5 = {2b ce 81 c2 47 86 c8 61 83 ef 01 75 bf } //01 00 
		$a_00_6 = {0f b7 11 c1 ea 02 2b fa 83 c1 02 3b f8 74 6e 81 ef 00 40 00 00 } //01 00 
		$a_00_7 = {c1 ee 02 8b f8 2b fe 03 d2 2b fa 0f b6 97 ff f7 ff ff 81 ef 01 08 00 00 88 10 40 } //01 00 
		$a_00_8 = {6e 1c ff 0d 6f 1e ff 0d 6f 1e ff 0d 6f 1e ff 0d 70 1e ff 0d 71 1c ff 0c 74 19 ff 0c 79 13 ff 02 } //01 00 
		$a_00_9 = {37 37 27 23 1d 13 24 39 6e 6f 70 71 72 72 72 72 72 72 73 74 5e 67 75 5e 24 75 68 65 74 72 72 72 72 72 } //01 00  㜷⌧ጝ㤤潮煰牲牲牲瑳杞幵甤敨牴牲牲
		$a_00_10 = {62 68 61 24 55 5b 53 ea 3a 39 43 ff 32 28 45 ff 3e 31 53 ff 40 32 50 ff 44 2f 4c ff 31 3d 52 ff 20 53 5f ff } //01 00 
		$a_00_11 = {00 24 37 46 37 27 23 1d 24 6f 73 77 73 78 73 73 73 73 73 73 73 74 5e 79 7a 66 66 7a 68 65 74 73 73 73 73 73 73 73 } //00 00  ␀䘷✷ᴣ漤睳硳獳獳獳瑳神智穦敨獴獳獳獳
	condition:
		any of ($a_*)
 
}