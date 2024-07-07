
rule Backdoor_Win32_Vawtrak_gen_D{
	meta:
		description = "Backdoor:Win32/Vawtrak.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 07 00 00 "
		
	strings :
		$a_80_0 = {2f 62 76 70 6d 61 67 69 63 00 } ///bvpmagic  10
		$a_00_1 = {75 73 65 72 5f 69 64 25 00 00 00 00 76 65 72 73 69 6f 6e 5f 69 64 25 00 66 72 61 6d 65 77 6f 72 6b 5f 6b 65 79 25 00 } //10
		$a_00_2 = {73 79 6e 63 7c 53 63 72 65 65 6e 53 68 6f 74 7c 65 6e 63 6f 64 65 55 52 49 43 6f 6d 70 6f 6e 65 6e 74 7c 4c 6f 67 41 64 64 7c 55 70 64 61 74 65 43 6f 6e 66 69 67 7c 53 74 61 72 74 53 6f 63 6b 73 } //10 sync|ScreenShot|encodeURIComponent|LogAdd|UpdateConfig|StartSocks
		$a_00_3 = {00 5b 42 43 5d 20 43 6d 64 20 } //1
		$a_00_4 = {49 6e 69 74 20 69 6e 20 53 68 65 6c 6c 20 3d 20 25 75 00 } //1
		$a_00_5 = {49 6e 69 74 20 69 6e 20 42 72 6f 77 73 65 72 20 3d 20 25 75 00 } //1
		$a_00_6 = {5b 50 6f 6e 79 5d 20 46 61 69 6c 20 47 65 74 20 50 61 73 73 0d 0a 00 } //1
	condition:
		((#a_80_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=11
 
}
rule Backdoor_Win32_Vawtrak_gen_D_2{
	meta:
		description = "Backdoor:Win32/Vawtrak.gen!D!!Vawtrak.gen!D,SIGNATURE_TYPE_ARHSTR_EXT,0b 00 0b 00 07 00 00 "
		
	strings :
		$a_80_0 = {2f 62 76 70 6d 61 67 69 63 00 } ///bvpmagic  10
		$a_00_1 = {75 73 65 72 5f 69 64 25 00 00 00 00 76 65 72 73 69 6f 6e 5f 69 64 25 00 66 72 61 6d 65 77 6f 72 6b 5f 6b 65 79 25 00 } //10
		$a_00_2 = {73 79 6e 63 7c 53 63 72 65 65 6e 53 68 6f 74 7c 65 6e 63 6f 64 65 55 52 49 43 6f 6d 70 6f 6e 65 6e 74 7c 4c 6f 67 41 64 64 7c 55 70 64 61 74 65 43 6f 6e 66 69 67 7c 53 74 61 72 74 53 6f 63 6b 73 } //10 sync|ScreenShot|encodeURIComponent|LogAdd|UpdateConfig|StartSocks
		$a_00_3 = {00 5b 42 43 5d 20 43 6d 64 20 } //1
		$a_00_4 = {49 6e 69 74 20 69 6e 20 53 68 65 6c 6c 20 3d 20 25 75 00 } //1
		$a_00_5 = {49 6e 69 74 20 69 6e 20 42 72 6f 77 73 65 72 20 3d 20 25 75 00 } //1
		$a_00_6 = {5b 50 6f 6e 79 5d 20 46 61 69 6c 20 47 65 74 20 50 61 73 73 0d 0a 00 } //1
	condition:
		((#a_80_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=11
 
}
rule Backdoor_Win32_Vawtrak_gen_D_3{
	meta:
		description = "Backdoor:Win32/Vawtrak.gen!D!!Vawtrak.gen!D,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 15 00 00 "
		
	strings :
		$a_00_0 = {2f 62 70 6d 61 67 69 63 } //1 /bpmagic
		$a_00_1 = {76 65 72 73 69 6f 6e 5f 69 64 25 00 72 61 6e 64 6f 6d 25 00 66 72 61 6d 65 77 6f 72 6b 5f 6b 65 79 25 } //1 敶獲潩彮摩%慲摮浯%牦浡睥牯彫敫╹
		$a_00_2 = {7c 47 65 74 53 65 72 76 65 72 7c 72 61 6e 64 6f 6d 7c 6e 65 77 7c 50 6f 73 74 53 65 72 76 65 72 7c } //1 |GetServer|random|new|PostServer|
		$a_00_3 = {7c 53 74 61 72 74 53 6f 63 6b 73 7c 53 74 61 72 74 56 6e 63 7c 53 65 6e 64 46 6f 72 6d 7c 53 74 61 72 74 56 69 64 65 6f 7c } //1 |StartSocks|StartVnc|SendForm|StartVideo|
		$a_00_4 = {7c 64 6f 63 75 6d 65 6e 74 7c 6c 6f 63 61 74 69 6f 6e 7c 68 72 65 66 7c 53 74 6f 70 56 69 64 65 6f 7c 45 78 65 63 56 42 53 7c } //1 |document|location|href|StopVideo|ExecVBS|
		$a_00_5 = {25 73 2e 48 69 64 65 28 27 25 30 2e 38 58 25 30 2e 38 58 27 29 } //1 %s.Hide('%0.8X%0.8X')
		$a_00_6 = {69 6e 66 6f 3d 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 32 58 25 30 2e 34 58 25 30 2e 32 58 25 30 2e 34 58 26 70 72 6f 78 79 3d 25 73 26 6e 61 6d 65 3d 25 77 73 26 64 6f 6d 61 69 6e 3d 25 77 73 } //2 info=%0.2X%0.2X%0.2X%0.2X%0.2X%0.2X%0.2X%0.4X%0.2X%0.4X&proxy=%s&name=%ws&domain=%ws
		$a_00_7 = {69 64 3d 25 30 2e 38 58 25 30 2e 38 58 25 30 2e 38 58 25 30 2e 34 58 25 30 2e 34 58 25 30 2e 34 58 26 69 76 3d 25 30 2e 38 58 26 61 76 3d 25 30 2e 38 58 26 75 70 74 69 6d 65 3d 25 75 } //2 id=%0.8X%0.8X%0.8X%0.4X%0.4X%0.4X&iv=%0.8X&av=%0.8X&uptime=%u
		$a_00_8 = {5b 50 6f 6e 79 5d 20 46 61 69 6c 20 47 65 74 20 50 61 73 73 0d 0a 00 } //1
		$a_00_9 = {44 4c 5f 45 58 45 43 20 53 74 61 74 75 73 20 5b 50 69 70 65 5d 3a 20 25 75 2d 25 75 2d 25 75 2d 25 75 } //1 DL_EXEC Status [Pipe]: %u-%u-%u-%u
		$a_00_10 = {53 74 61 72 74 20 53 6f 63 6b 73 20 53 74 61 74 75 73 5b 50 69 70 65 5d 3a 20 25 75 2d 25 75 2d 25 75 } //1 Start Socks Status[Pipe]: %u-%u-%u
		$a_00_11 = {53 74 61 72 74 20 56 4e 43 20 53 74 61 74 75 73 5b 50 69 70 65 5d 3a 20 25 75 2d 25 75 2d 25 75 } //1 Start VNC Status[Pipe]: %u-%u-%u
		$a_00_12 = {42 4f 54 5f 49 44 3a 00 50 52 4f 4a 45 43 54 5f 49 44 3a 00 42 55 49 4c 44 3a } //1 佂彔䑉:剐䩏䍅彔䑉:啂䱉㩄
		$a_00_13 = {5b 42 43 5d 20 57 61 69 74 20 50 69 6e 67 20 65 72 72 6f 72 20 25 75 5b 25 75 5d } //1 [BC] Wait Ping error %u[%u]
		$a_00_14 = {5b 42 43 5d 20 43 6d 64 20 6e 65 65 64 20 72 65 61 75 74 68 } //1 [BC] Cmd need reauth
		$a_00_15 = {5b 56 44 45 53 4b 5d 20 52 65 61 64 20 43 4d 44 20 25 75 5b 25 75 5d } //1 [VDESK] Read CMD %u[%u]
		$a_00_16 = {5b 56 44 45 53 4b 5d 20 4e 4f 54 20 41 55 54 48 20 43 4d 44 20 25 75 } //1 [VDESK] NOT AUTH CMD %u
		$a_00_17 = {5b 56 4e 43 5d 20 43 6d 64 4c 69 6e 65 20 3d 20 25 73 } //1 [VNC] CmdLine = %s
		$a_00_18 = {5b 56 4e 43 5d 20 43 72 65 61 74 65 50 72 6f 63 65 73 73 20 53 74 61 74 75 73 20 3d 20 25 75 20 28 25 75 29 } //1 [VNC] CreateProcess Status = %u (%u)
		$a_00_19 = {50 49 44 3a 20 25 75 20 5b 25 30 2e 32 75 3a 25 30 2e 32 75 3a 25 30 2e 32 75 5d } //1 PID: %u [%0.2u:%0.2u:%0.2u]
		$a_03_20 = {c7 06 41 50 33 32 50 8d 45 fc 50 53 56 e8 90 01 04 83 c4 10 85 c0 74 12 8b 45 fc 81 38 45 43 46 47 90 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_03_20  & 1)*2) >=5
 
}