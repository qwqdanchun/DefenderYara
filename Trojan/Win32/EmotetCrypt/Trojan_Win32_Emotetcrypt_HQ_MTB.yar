
rule Trojan_Win32_Emotetcrypt_HQ_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.HQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {45 21 72 33 23 44 55 47 56 4d 29 44 74 37 72 61 69 26 43 49 40 47 45 74 50 23 30 6c 48 44 74 45 39 5f 70 3f 5f 45 24 39 61 2a 46 35 76 4b 36 34 74 33 24 5f 28 64 5a 4a 4f 30 65 58 48 3f 5e 76 62 59 4b 74 5a 39 4d 44 4e 59 64 68 45 3c 4d 4e 4c 56 75 56 35 48 42 44 4f 59 29 43 38 45 40 5f 56 25 } //01 00  E!r3#DUGVM)Dt7rai&CI@GEtP#0lHDtE9_p?_E$9a*F5vK64t3$_(dZJO0eXH?^vbYKtZ9MDNYdhE<MNLVuV5HBDOY)C8E@_V%
		$a_81_1 = {51 72 70 5a 51 53 47 2a 3f 56 5a 6c 35 40 49 6e 5e 48 30 66 57 40 73 39 33 39 72 4d 78 66 53 32 68 64 68 5a 25 56 2a 43 54 5a 64 31 4f 29 55 5f 65 66 29 57 37 6f 55 5f 32 66 79 72 3c 31 53 49 66 47 48 30 45 21 64 4b 7a 58 26 6e } //01 00  QrpZQSG*?VZl5@In^H0fW@s939rMxfS2hdhZ%V*CTZd1O)U_ef)W7oU_2fyr<1SIfGH0E!dKzX&n
		$a_81_2 = {63 45 5e 44 71 64 39 67 37 6c 48 4b 30 4c 41 37 54 70 49 28 6a 58 4f 25 7a 77 25 72 40 62 52 78 79 71 23 4c 61 63 51 4a 58 55 6c 58 6b 72 45 4d 36 39 6e 40 4d 49 43 65 36 41 55 55 74 33 69 34 5f 58 47 79 70 3c } //01 00  cE^Dqd9g7lHK0LA7TpI(jXO%zw%r@bRxyq#LacQJXUlXkrEM69n@MICe6AUUt3i4_XGyp<
		$a_81_3 = {6e 38 63 4e 76 50 42 68 53 73 3e 73 57 40 70 71 77 4a 57 66 3f 3c 48 25 38 69 21 25 3e 28 5e 56 54 39 21 5e 29 42 44 69 4d 4d 30 35 66 21 54 71 32 75 48 46 48 52 62 62 46 59 4b 62 36 56 24 6f 66 66 6d 73 52 32 5a 5a 6e 64 38 53 66 64 4e 53 77 39 59 78 25 7a 61 6c 6e 3f 2a 23 4a 76 69 55 71 71 2a 4e 6c 3c 34 79 31 5e 77 79 25 } //00 00  n8cNvPBhSs>sW@pqwJWf?<H%8i!%>(^VT9!^)BDiMM05f!Tq2uHFHRbbFYKb6V$offmsR2ZZnd8SfdNSw9Yx%zaln?*#JviUqq*Nl<4y1^wy%
	condition:
		any of ($a_*)
 
}