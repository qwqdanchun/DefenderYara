
rule Backdoor_BAT_Omaneat_B{
	meta:
		description = "Backdoor:BAT/Omaneat.B,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 18 00 00 01 00 "
		
	strings :
		$a_80_0 = {28 53 74 61 72 74 20 41 74 74 61 63 6b 29 } //(Start Attack)  01 00 
		$a_80_1 = {73 74 61 72 74 69 6e 67 20 66 6c 6f 6f 64 } //starting flood  01 00 
		$a_80_2 = {53 59 4e 20 41 74 74 61 63 6b 20 53 74 61 72 74 65 64 } //SYN Attack Started  01 00 
		$a_80_3 = {54 43 50 20 41 74 74 61 63 6b 20 53 74 61 72 74 65 64 } //TCP Attack Started  01 00 
		$a_80_4 = {00 64 64 6f 73 } //  01 00 
		$a_80_5 = {00 6d 69 6e 65 72 } //  01 00 
		$a_80_6 = {73 74 61 72 74 75 70 5f 70 65 72 73 69 73 74 65 6e 63 65 3d } //startup_persistence=  01 00 
		$a_80_7 = {66 69 6c 65 5f 70 65 72 73 69 73 74 65 6e 63 65 3d } //file_persistence=  01 00 
		$a_80_8 = {6d 75 74 65 78 5f 70 65 72 73 69 73 74 65 6e 63 65 5f 6d 6f 64 75 6c 65 3d } //mutex_persistence_module=  01 00 
		$a_80_9 = {53 4f 43 4b 53 5f 55 53 45 52 4e 41 4d 45 3d } //SOCKS_USERNAME=  01 00 
		$a_80_10 = {53 4f 43 4b 53 5f 50 41 53 53 57 4f 52 44 3d } //SOCKS_PASSWORD=  01 00 
		$a_80_11 = {3c 42 72 6f 77 73 65 72 42 61 63 6b 3e } //<BrowserBack>  01 00 
		$a_80_12 = {3c 56 6f 6c 75 6d 65 2d 3e } //<Volume->  01 00 
		$a_80_13 = {3c 50 61 75 73 65 2f 42 72 65 61 6b 3e } //<Pause/Break>  01 00 
		$a_80_14 = {4d 69 6e 65 72 20 54 68 72 65 61 64 } //Miner Thread  01 00 
		$a_80_15 = {44 44 6f 53 20 54 68 72 65 61 64 } //DDoS Thread  01 00 
		$a_80_16 = {52 65 76 65 72 73 65 20 53 6f 63 6b 73 35 } //Reverse Socks5  01 00 
		$a_80_17 = {6b 65 79 6c 6f 67 5f 66 69 6c 74 65 72 } //keylog_filter  01 00 
		$a_80_18 = {47 65 74 4b 65 79 6c 6f 67 67 65 72 46 69 6c 74 65 72 } //GetKeyloggerFilter  01 00 
		$a_80_19 = {42 4b 5f 52 55 4e 5f 4f 4e 43 45 3d } //BK_RUN_ONCE=  01 00 
		$a_80_20 = {50 65 72 73 69 73 74 65 6e 63 65 4d 6f 64 75 6c 65 49 6e 6a 65 63 74 6f 72 } //PersistenceModuleInjector  02 00 
		$a_80_21 = {72 65 73 6f 70 6e 73 65 20 77 61 73 20 6e 6f 74 68 69 6e 67 20 61 6e 64 20 74 68 65 72 65 20 69 73 20 6e 6f 74 68 69 6e 67 20 74 6f 20 64 65 63 72 79 70 74 21 } //resopnse was nothing and there is nothing to decrypt!  02 00 
		$a_80_22 = {52 65 73 65 74 69 6e 67 20 63 6f 6e 6e 65 63 74 6f 72 21 } //Reseting connector!  02 00 
		$a_80_23 = {48 61 68 73 68 65 73 20 64 6f 20 6e 6f 74 20 68 61 76 65 20 74 68 65 20 73 61 6d 65 20 6c 65 6e 67 68 74 2e } //Hahshes do not have the same lenght.  00 00 
	condition:
		any of ($a_*)
 
}