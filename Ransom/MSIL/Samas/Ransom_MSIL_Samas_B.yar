
rule Ransom_MSIL_Samas_B{
	meta:
		description = "Ransom:MSIL/Samas.B,SIGNATURE_TYPE_PEHSTR,05 00 05 00 0f 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 4d 00 4d 00 74 00 74 00 5f 00 41 00 65 00 53 00 5f 00 4b 00 65 00 59 00 5f 00 46 00 6f 00 72 00 5f 00 46 00 69 00 6c 00 65 00 3e 00 } //01 00  <MMtt_AeS_KeY_For_File>
		$a_01_1 = {32 00 45 00 30 00 30 00 37 00 36 00 30 00 30 00 36 00 32 00 30 00 30 00 32 00 43 00 30 00 30 00 32 00 45 00 30 00 30 00 36 00 31 00 30 00 30 00 37 00 33 00 30 00 30 00 36 00 44 00 30 00 30 00 37 00 38 00 30 00 30 00 32 00 43 00 30 00 30 00 32 00 45 00 30 00 30 00 36 00 33 00 30 00 30 00 36 00 46 00 30 00 30 00 36 00 45 00 30 00 30 00 36 00 36 00 30 00 30 00 36 00 39 00 30 00 30 00 36 00 37 00 30 00 30 00 32 00 43 00 30 00 30 00 32 00 45 00 } //01 00  2E00760062002C002E00610073006D0078002C002E0063006F006E006600690067002C002E
		$a_01_2 = {34 00 38 00 30 00 30 00 34 00 35 00 30 00 30 00 34 00 43 00 30 00 30 00 35 00 30 00 30 00 30 00 35 00 46 00 30 00 30 00 34 00 34 00 30 00 30 00 34 00 35 00 30 00 30 00 34 00 33 00 30 00 30 00 35 00 32 00 30 00 30 00 35 00 39 00 30 00 30 00 35 00 30 00 30 00 30 00 35 00 34 00 30 00 30 00 35 00 46 00 30 00 30 00 35 00 39 00 30 00 30 00 34 00 46 00 30 00 30 00 35 00 35 00 30 00 30 00 35 00 32 00 30 00 30 00 35 00 46 00 30 00 30 00 34 00 36 00 30 00 30 00 34 00 39 00 30 00 30 00 34 00 43 00 30 00 30 00 34 00 35 00 30 00 30 00 35 00 33 00 30 00 30 00 } //01 00  480045004C0050005F0044004500430052005900500054005F0059004F00550052005F00460049004C0045005300
		$a_01_3 = {34 00 38 00 30 00 30 00 34 00 46 00 30 00 30 00 35 00 37 00 30 00 30 00 35 00 46 00 30 00 30 00 35 00 34 00 30 00 30 00 34 00 46 00 30 00 30 00 35 00 46 00 30 00 30 00 34 00 34 00 30 00 30 00 34 00 35 00 30 00 30 00 34 00 33 00 30 00 30 00 35 00 32 00 30 00 30 00 35 00 39 00 30 00 30 00 35 00 30 00 30 00 30 00 35 00 34 00 30 00 30 00 35 00 46 00 30 00 30 00 34 00 36 00 30 00 30 00 34 00 39 00 30 00 30 00 34 00 43 00 30 00 30 00 34 00 35 00 30 00 30 00 35 00 33 00 30 00 30 00 } //02 00  48004F0057005F0054004F005F0044004500430052005900500054005F00460049004C0045005300
		$a_01_4 = {32 00 45 00 30 00 30 00 36 00 35 00 30 00 30 00 36 00 45 00 30 00 30 00 36 00 33 00 30 00 30 00 37 00 32 00 30 00 30 00 37 00 39 00 30 00 30 00 37 00 30 00 30 00 30 00 37 00 34 00 30 00 30 00 36 00 35 00 30 00 30 00 36 00 34 00 30 00 30 00 35 00 32 00 30 00 30 00 35 00 33 00 30 00 30 00 34 00 31 00 30 00 30 00 } //01 00  2E0065006E006300720079007000740065006400520053004100
		$a_01_5 = {5c 00 41 00 64 00 6f 00 62 00 65 00 52 00 65 00 64 00 65 00 72 00 } //01 00  \AdobeReder
		$a_01_6 = {74 00 61 00 73 00 6b 00 6c 00 69 00 73 00 74 00 22 00 2c 00 20 00 22 00 2f 00 76 00 20 00 2f 00 66 00 6f 00 20 00 63 00 73 00 76 00 } //01 00  tasklist", "/v /fo csv
		$a_01_7 = {3c 72 65 5f 63 75 5f 72 73 69 5f 76 65 67 65 5f 74 66 69 5f 6c 65 73 3e } //02 00  <re_cu_rsi_vege_tfi_les>
		$a_01_8 = {6c 6f 6f 70 66 5f 6f 72 63 68 5f 65 63 6b 61 6e 5f 64 64 65 6c 73 61 61 61 61 6d } //01 00  loopf_orch_eckan_ddelsaaaam
		$a_01_9 = {66 69 6c 5f 65 63 5f 72 65 61 74 69 5f 6f 6e 69 6e 64 5f 65 73 6b 74 5f 6f 70 5f 75 73 5f 65 72 73 5f } //01 00  fil_ec_reati_onind_eskt_op_us_ers_
		$a_01_10 = {65 6e 5f 63 72 5f 79 70 74 66 75 6e 5f 63 6d 5f 61 67 69 63 5f } //01 00  en_cr_yptfun_cm_agic_
		$a_01_11 = {64 69 72 65 5f 63 5f 74 6f 72 79 79 5f 6f 66 64 65 6c 6c 6c } //01 00  dire_c_toryy_ofdelll
		$a_01_12 = {63 68 65 5f 63 6b 69 5f 66 5f 6c 6f 63 6b 5f 66 69 5f 6c 65 } //01 00  che_cki_f_lock_fi_le
		$a_01_13 = {66 69 6c 5f 65 63 5f 72 65 61 74 69 5f 6f 6e 69 6e 64 5f 65 73 6b 74 5f 6f 70 5f 75 73 5f 65 72 73 } //01 00  fil_ec_reati_onind_eskt_op_us_ers
		$a_01_14 = {5c 00 42 00 61 00 63 00 6b 00 75 00 70 00 48 00 6f 00 6d 00 65 00 44 00 69 00 72 00 } //00 00  \BackupHomeDir
		$a_01_15 = {00 67 16 00 } //00 da 
	condition:
		any of ($a_*)
 
}