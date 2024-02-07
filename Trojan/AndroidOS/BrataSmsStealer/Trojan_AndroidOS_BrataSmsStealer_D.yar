
rule Trojan_AndroidOS_BrataSmsStealer_D{
	meta:
		description = "Trojan:AndroidOS/BrataSmsStealer.D,SIGNATURE_TYPE_DEXHSTR_EXT,0b 00 0b 00 0b 00 00 02 00 "
		
	strings :
		$a_00_0 = {5f 73 65 6e 64 5f 62 6c 6f 63 6b 69 6e 63 6f 6d 69 6e 67 6d 73 67 73 } //02 00  _send_blockincomingmsgs
		$a_00_1 = {5f 77 73 68 5f 63 6f 6e 6e 65 63 74 74 6f 79 6f 75 } //02 00  _wsh_connecttoyou
		$a_00_2 = {5f 77 73 68 5f 73 65 6e 64 6d 73 67 74 6f 70 68 6f 6e 65 } //01 00  _wsh_sendmsgtophone
		$a_00_3 = {5f 73 65 6e 64 5f 6e 65 77 73 6d 73 74 6f 61 64 6d 69 6e } //01 00  _send_newsmstoadmin
		$a_00_4 = {5f 73 65 6e 64 5f 73 6f 63 6b 65 74 5f 64 61 74 61 } //01 00  _send_socket_data
		$a_00_5 = {5f 63 6f 6e 6e 65 63 74 74 6f 73 65 72 76 65 72 } //01 00  _connecttoserver
		$a_00_6 = {5f 69 6e 74 77 68 6f 69 73 63 6f 6e 6e 65 63 74 65 64 74 6f 6d 65 20 } //01 00  _intwhoisconnectedtome 
		$a_00_7 = {5f 61 64 64 5f 63 6f 6e 5f 74 6f 64 62 } //01 00  _add_con_todb
		$a_00_8 = {5f 67 65 74 65 6d 61 69 6c 73 } //01 00  _getemails
		$a_00_9 = {5f 66 69 6e 64 63 6f 6e 74 61 63 74 73 62 79 6d 61 69 6c } //01 00  _findcontactsbymail
		$a_00_10 = {5f 66 69 6e 64 61 6c 6c 63 6f 6e 74 61 63 74 73 } //00 00  _findallcontacts
		$a_00_11 = {5d 04 00 00 c6 2c } //05 80 
	condition:
		any of ($a_*)
 
}