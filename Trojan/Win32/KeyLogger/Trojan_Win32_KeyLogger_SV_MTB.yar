
rule Trojan_Win32_KeyLogger_SV_MTB{
	meta:
		description = "Trojan:Win32/KeyLogger.SV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 00 41 00 44 00 3a 00 5c 00 4b 00 45 00 59 00 5c 00 54 00 45 00 53 00 54 00 4f 00 5c 00 63 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 76 00 62 00 70 00 } //1 \AD:\KEY\TESTO\configuration.vbp
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 72 00 33 00 64 00 69 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 32 00 70 00 64 00 61 00 74 00 65 00 2e 00 70 00 68 00 70 00 } //1 http://r3dir.com/2pdate.php
		$a_01_2 = {41 00 50 00 4f 00 53 00 54 00 52 00 4f 00 46 00 45 00 } //1 APOSTROFE
		$a_01_3 = {3c 00 68 00 72 00 3e 00 5b 00 5f 00 43 00 2e 00 6f 00 2e 00 70 00 2e 00 79 00 5f 00 5d 00 3c 00 70 00 3e 00 } //1 <hr>[_C.o.p.y_]<p>
		$a_01_4 = {3c 00 70 00 3e 00 5b 00 5f 00 50 00 2e 00 61 00 2e 00 73 00 2e 00 74 00 2e 00 65 00 5f 00 5d 00 3c 00 68 00 72 00 3e 00 } //1 <p>[_P.a.s.t.e_]<hr>
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}