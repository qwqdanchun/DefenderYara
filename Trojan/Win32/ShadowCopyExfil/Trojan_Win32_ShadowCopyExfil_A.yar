
rule Trojan_Win32_ShadowCopyExfil_A{
	meta:
		description = "Trojan:Win32/ShadowCopyExfil.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 10 00 00 "
		
	strings :
		$a_00_0 = {64 00 69 00 73 00 6b 00 73 00 68 00 61 00 64 00 6f 00 77 00 } //1 diskshadow
		$a_00_1 = {6e 00 74 00 64 00 73 00 75 00 74 00 69 00 6c 00 } //1 ntdsutil
		$a_00_2 = {64 00 73 00 64 00 62 00 75 00 74 00 69 00 6c 00 } //1 dsdbutil
		$a_00_3 = {20 00 2d 00 3f 00 00 00 } //-5
		$a_00_4 = {20 00 2f 00 3f 00 00 00 } //-5
		$a_00_5 = {5c 00 6f 00 6e 00 65 00 74 00 6f 00 75 00 63 00 68 00 5c 00 } //-5 \onetouch\
		$a_00_6 = {5c 00 63 00 6f 00 6d 00 6d 00 76 00 61 00 75 00 6c 00 74 00 5c 00 } //-5 \commvault\
		$a_00_7 = {68 00 64 00 73 00 5c 00 62 00 61 00 63 00 6b 00 75 00 70 00 } //-5 hds\backup
		$a_00_8 = {5c 00 52 00 61 00 63 00 6b 00 77 00 61 00 72 00 65 00 2d 00 77 00 69 00 6e 00 75 00 74 00 69 00 6c 00 } //-5 \Rackware-winutil
		$a_00_9 = {77 00 6f 00 72 00 6b 00 5c 00 70 00 6f 00 6c 00 2d 00 } //-5 work\pol-
		$a_00_10 = {73 00 65 00 74 00 20 00 64 00 73 00 72 00 6d 00 } //-5 set dsrm
		$a_00_11 = {63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 20 00 74 00 6f 00 } //-5 connect to
		$a_02_12 = {73 00 6e 00 61 00 70 00 73 00 68 00 6f 00 74 00 [0-f0] 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 31 00 } //-5
		$a_00_13 = {73 00 65 00 74 00 20 00 64 00 73 00 72 00 6d 00 20 00 70 00 61 00 73 00 73 00 } //-5 set dsrm pass
		$a_00_14 = {5c 00 61 00 76 00 65 00 70 00 6f 00 69 00 6e 00 74 00 } //-5 \avepoint
		$a_00_15 = {6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 65 00 72 00 } //-5 networker
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*-5+(#a_00_4  & 1)*-5+(#a_00_5  & 1)*-5+(#a_00_6  & 1)*-5+(#a_00_7  & 1)*-5+(#a_00_8  & 1)*-5+(#a_00_9  & 1)*-5+(#a_00_10  & 1)*-5+(#a_00_11  & 1)*-5+(#a_02_12  & 1)*-5+(#a_00_13  & 1)*-5+(#a_00_14  & 1)*-5+(#a_00_15  & 1)*-5) >=1
 
}