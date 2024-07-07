
rule HackTool_Win32_Mimikatz_I{
	meta:
		description = "HackTool:Win32/Mimikatz.I,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 1e 00 00 "
		
	strings :
		$a_00_0 = {70 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 3a 00 3a 00 64 00 65 00 62 00 75 00 67 00 } //1 privilege::debug
		$a_00_1 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 63 00 72 00 65 00 64 00 6d 00 61 00 6e 00 } //2 sekurlsa::credman
		$a_00_2 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 64 00 70 00 61 00 70 00 69 00 } //2 sekurlsa::dpapi
		$a_00_3 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 64 00 70 00 61 00 70 00 69 00 73 00 79 00 73 00 74 00 65 00 6d 00 } //2 sekurlsa::dpapisystem
		$a_00_4 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6d 00 69 00 6e 00 69 00 64 00 75 00 6d 00 70 00 } //2 sekurlsa::minidump
		$a_00_5 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //2 sekurlsa::process
		$a_00_6 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 73 00 73 00 70 00 } //2 sekurlsa::ssp
		$a_00_7 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6c 00 69 00 76 00 65 00 73 00 73 00 70 00 } //2 sekurlsa::livessp
		$a_00_8 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 74 00 73 00 70 00 6b 00 67 00 } //2 sekurlsa::tspkg
		$a_00_9 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 74 00 69 00 63 00 6b 00 65 00 74 00 73 00 } //2 sekurlsa::tickets
		$a_00_10 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 70 00 74 00 68 00 } //2 sekurlsa::pth
		$a_00_11 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6c 00 6f 00 67 00 6f 00 6e 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //2 sekurlsa::logonpasswords
		$a_00_12 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 } //2 sekurlsa::kerberos
		$a_00_13 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 65 00 6b 00 65 00 79 00 73 00 } //2 sekurlsa::ekeys
		$a_00_14 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 77 00 64 00 69 00 67 00 65 00 73 00 74 00 } //2 sekurlsa::wdigest
		$a_00_15 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6d 00 73 00 76 00 } //2 sekurlsa::msv
		$a_00_16 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 63 00 61 00 63 00 68 00 65 00 } //2 lsadump::cache
		$a_00_17 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 73 00 65 00 63 00 72 00 65 00 74 00 73 00 } //2 lsadump::secrets
		$a_00_18 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 74 00 72 00 75 00 73 00 74 00 } //2 lsadump::trust
		$a_00_19 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 73 00 61 00 6d 00 } //2 lsadump::sam
		$a_00_20 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 6c 00 73 00 61 00 } //2 lsadump::lsa
		$a_00_21 = {6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 3a 00 3a 00 64 00 63 00 73 00 79 00 6e 00 63 00 } //2 lsadump::dcsync
		$a_00_22 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 63 00 6c 00 69 00 73 00 74 00 } //2 kerberos::clist
		$a_00_23 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 70 00 74 00 63 00 } //2 kerberos::ptc
		$a_00_24 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 68 00 61 00 73 00 68 00 } //2 kerberos::hash
		$a_00_25 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 70 00 75 00 72 00 67 00 65 00 } //2 kerberos::purge
		$a_00_26 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 74 00 67 00 74 00 } //2 kerberos::tgt
		$a_00_27 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 70 00 74 00 74 00 } //2 kerberos::ptt
		$a_00_28 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 6c 00 69 00 73 00 74 00 } //2 kerberos::list
		$a_00_29 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 3a 00 3a 00 67 00 6f 00 6c 00 64 00 65 00 6e 00 } //2 kerberos::golden
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_00_9  & 1)*2+(#a_00_10  & 1)*2+(#a_00_11  & 1)*2+(#a_00_12  & 1)*2+(#a_00_13  & 1)*2+(#a_00_14  & 1)*2+(#a_00_15  & 1)*2+(#a_00_16  & 1)*2+(#a_00_17  & 1)*2+(#a_00_18  & 1)*2+(#a_00_19  & 1)*2+(#a_00_20  & 1)*2+(#a_00_21  & 1)*2+(#a_00_22  & 1)*2+(#a_00_23  & 1)*2+(#a_00_24  & 1)*2+(#a_00_25  & 1)*2+(#a_00_26  & 1)*2+(#a_00_27  & 1)*2+(#a_00_28  & 1)*2+(#a_00_29  & 1)*2) >=2
 
}