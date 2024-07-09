
rule VirTool_Win64_Alanzoh_F{
	meta:
		description = "VirTool:Win64/Alanzoh.F,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {6f 72 69 67 69 6e 61 6c 5f 73 65 73 73 69 6f 6e 5f 6b 65 79 } //1 original_session_key
		$a_81_1 = {6b 65 79 5f 69 74 65 72 61 74 69 6f 6e } //1 key_iteration
		$a_81_2 = {61 63 74 69 76 65 5f 73 65 72 76 65 72 } //1 active_server
		$a_81_3 = {73 65 73 73 69 6f 6e 5f 69 64 } //1 session_id
		$a_02_4 = {41 89 c4 41 01 dc 0f 28 05 ?? ?? ?? ?? 0f 29 84 24 60 04 00 00 0f 28 05 ?? ?? ?? ?? 0f 29 84 24 50 04 00 00 0f 28 05 ?? ?? ?? ?? 0f 29 84 24 40 04 00 00 0f 28 05 ?? ?? ?? ?? 0f 29 84 24 30 04 00 00 48 8d ?? ?? ?? ?? ?? ?? 48 89 d9 e8 ?? ?? ?? ?? 4c 8d ?? ?? 49 81 c0 30 04 00 00 ba 20 00 00 00 44 89 e1 e8 ?? ?? ?? ?? 48 89 d9 ba 00 40 00 00 e8 ?? ?? ?? ?? 84 c0 0f 84 ?? ?? ?? ?? 48 8d ?? ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 85 c0 0f 84 ?? ?? ?? ?? 48 89 c3 b9 00 10 00 00 ba 01 00 00 00 } //1
		$a_02_5 = {41 b8 00 10 00 00 48 89 e9 31 d2 e8 ?? ?? ?? ?? 48 89 e9 e8 ?? ?? ?? ?? 48 89 bc 04 40 08 00 00 48 89 e9 e8 ?? ?? ?? ?? 4c 8d ?? ?? 49 81 c0 40 08 00 00 41 83 c4 05 ba 1e 00 00 00 44 89 e1 e8 ?? ?? ?? ?? 48 89 e9 e8 } //1
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1) >=6
 
}