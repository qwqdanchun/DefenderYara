
rule Trojan_BAT_DuckTail_DB_MTB{
	meta:
		description = "Trojan:BAT/DuckTail.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 65 6c 65 67 72 61 6d 2e 42 6f 74 } //01 00  Telegram.Bot
		$a_01_1 = {63 00 68 00 72 00 6f 00 6d 00 65 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 20 00 } //01 00  chrome cookie 
		$a_01_2 = {66 00 69 00 72 00 65 00 66 00 6f 00 78 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 20 00 } //01 00  firefox cookie 
		$a_01_3 = {4f 00 70 00 65 00 72 00 61 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 } //01 00  Opera cookie
		$a_01_4 = {45 00 64 00 67 00 65 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 20 00 } //01 00  Edge cookie 
		$a_01_5 = {66 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 2e 00 63 00 6f 00 6d 00 } //01 00  facebook.com
		$a_01_6 = {73 00 65 00 6e 00 64 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 20 00 66 00 69 00 6c 00 65 00 } //01 00  send cookie file
		$a_01_7 = {53 00 65 00 6e 00 64 00 20 00 74 00 65 00 6c 00 65 00 67 00 72 00 61 00 6d 00 } //00 00  Send telegram
	condition:
		any of ($a_*)
 
}