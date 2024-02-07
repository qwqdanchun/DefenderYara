
rule Trojan_Win64_Fabookie_WY_MTB{
	meta:
		description = "Trojan:Win64/Fabookie.WY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 65 00 6e 00 64 00 69 00 6e 00 67 00 47 00 68 00 38 00 65 00 75 00 34 00 69 00 20 00 70 00 72 00 6f 00 78 00 79 00 50 00 6a 00 39 00 6b 00 34 00 65 00 68 00 20 00 63 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 73 00 4d 00 6e 00 37 00 6a 00 34 00 65 00 } //01 00  SendingGh8eu4i proxyPj9k4eh credentialsMn7j4e
		$a_01_1 = {53 00 65 00 6e 00 64 00 69 00 6e 00 67 00 47 00 66 00 65 00 35 00 67 00 20 00 72 00 65 00 71 00 75 00 65 00 73 00 74 00 52 00 67 00 72 00 65 00 68 00 34 00 65 00 } //01 00  SendingGfe5g requestRgreh4e
		$a_01_2 = {34 00 30 00 37 00 5f 00 6b 00 68 00 66 00 61 00 34 00 69 00 20 00 54 00 68 00 65 00 47 00 68 00 65 00 68 00 67 00 34 00 67 00 20 00 70 00 72 00 6f 00 78 00 79 00 49 00 6a 00 65 00 34 00 68 00 67 00 20 00 72 00 65 00 71 00 75 00 69 00 72 00 65 00 73 00 44 00 67 00 65 00 34 00 67 00 6a 00 38 00 39 00 20 00 61 00 75 00 74 00 68 00 65 00 6e 00 74 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 51 00 65 00 72 00 68 00 6a 00 34 00 67 00 68 00 } //01 00  407_khfa4i TheGhehg4g proxyIje4hg requiresDge4gj89 authenticationQerhj4gh
		$a_01_3 = {42 00 72 00 65 00 61 00 6b 00 48 00 67 00 68 00 65 00 6c 00 33 00 67 00 20 00 66 00 6f 00 72 00 50 00 65 00 34 00 6a 00 6a 00 68 00 67 00 20 00 6d 00 75 00 6c 00 74 00 69 00 70 00 6c 00 65 00 54 00 6a 00 65 00 37 00 69 00 34 00 68 00 67 00 20 00 34 00 30 00 37 00 5f 00 75 00 68 00 37 00 61 00 34 00 72 00 20 00 72 00 65 00 73 00 70 00 6f 00 6e 00 73 00 65 00 50 00 35 00 6f 00 72 00 6a 00 74 00 65 00 67 00 } //01 00  BreakHghel3g forPe4jjhg multipleTje7i4hg 407_uh7a4r responseP5orjteg
		$a_01_4 = {50 00 72 00 6f 00 78 00 79 00 42 00 68 00 67 00 34 00 65 00 67 00 20 00 69 00 73 00 4f 00 6a 00 34 00 65 00 68 00 3a 00 20 00 } //01 00  ProxyBhg4eg isOj4eh: 
		$a_01_5 = {6e 00 61 00 6d 00 65 00 64 00 5f 00 70 00 72 00 6f 00 78 00 79 00 5f 00 70 00 6f 00 6c 00 69 00 63 00 79 00 55 00 68 00 34 00 65 00 38 00 67 00 68 00 67 00 67 00 73 00 } //01 00  named_proxy_policyUh4e8ghggs
		$a_01_6 = {61 00 75 00 74 00 6f 00 5f 00 63 00 6f 00 6e 00 66 00 69 00 67 00 5f 00 75 00 72 00 6c 00 5f 00 70 00 6f 00 6c 00 69 00 63 00 79 00 56 00 37 00 68 00 65 00 33 00 34 00 34 00 67 00 37 00 } //01 00  auto_config_url_policyV7he344g7
		$a_01_7 = {61 00 75 00 74 00 6f 00 5f 00 64 00 65 00 74 00 65 00 63 00 74 00 5f 00 70 00 6f 00 6c 00 69 00 63 00 79 00 54 00 65 00 33 00 68 00 37 00 66 00 73 00 34 00 67 00 72 00 } //01 00  auto_detect_policyTe3h7fs4gr
		$a_01_8 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 69 00 70 00 2d 00 61 00 70 00 69 00 2e 00 63 00 6f 00 6d 00 2f 00 6a 00 73 00 6f 00 6e 00 } //00 00  http://ip-api.com/json
	condition:
		any of ($a_*)
 
}