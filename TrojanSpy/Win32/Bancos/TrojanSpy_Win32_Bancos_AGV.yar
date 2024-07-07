
rule TrojanSpy_Win32_Bancos_AGV{
	meta:
		description = "TrojanSpy:Win32/Bancos.AGV,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d } //1 netsh firewall add allowedprogram
		$a_01_1 = {37 35 43 31 30 35 36 34 44 41 35 46 43 36 33 38 42 41 33 30 39 43 46 39 37 33 43 36 32 39 38 38 45 42 34 42 41 31 30 36 37 32 41 42 30 41 36 45 43 33 32 36 38 34 46 39 37 45 38 45 44 46 35 33 41 36 30 36 36 42 43 39 32 45 35 45 42 42 30 44 36 42 44 43 35 34 41 39 30 43 37 38 41 39 31 44 39 30 31 30 39 35 31 34 39 38 31 43 } //1 75C10564DA5FC638BA309CF973C62988EB4BA10672AB0A6EC32684F97E8EDF53A6066BC92E5EBB0D6BDC54A90C78A91D90109514981C
		$a_01_2 = {30 42 35 43 41 46 30 33 36 32 43 37 32 36 38 41 42 41 31 39 36 41 43 37 33 44 } //1 0B5CAF0362C7268ABA196AC73D
		$a_01_3 = {33 44 38 30 46 35 37 34 43 43 33 45 34 45 36 43 38 41 41 38 43 36 45 34 30 46 33 46 } //1 3D80F574CC3E4E6C8AA8C6E40F3F
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}