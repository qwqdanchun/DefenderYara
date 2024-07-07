
rule VirTool_Win32_FireJoiner_A_dr{
	meta:
		description = "VirTool:Win32/FireJoiner.A!dr,SIGNATURE_TYPE_PEHSTR_EXT,ffffff96 00 ffffff96 00 19 00 00 "
		
	strings :
		$a_02_0 = {6a 22 8d 4d 94 51 ff d7 c7 85 7c ff ff ff 90 01 04 bb 08 00 00 00 89 9d 74 ff ff ff 90 00 } //100
		$a_00_1 = {5c 00 6e 00 75 00 52 00 5c 00 6e 00 6f 00 69 00 73 00 72 00 65 00 56 00 74 00 6e 00 65 00 72 00 72 00 75 00 43 00 5c 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 5c 00 74 00 66 00 6f 00 73 00 6f 00 72 00 63 00 69 00 4d 00 5c 00 45 00 52 00 41 00 57 00 54 00 46 00 4f 00 53 00 5c 00 } //10 \nuR\noisreVtnerruC\swodniW\tfosorciM\ERAWTFOS\
		$a_00_2 = {6d 00 65 00 74 00 73 00 79 00 53 00 5c 00 73 00 65 00 69 00 63 00 69 00 6c 00 6f 00 50 00 5c 00 6e 00 6f 00 69 00 73 00 72 00 65 00 56 00 74 00 6e 00 65 00 72 00 72 00 75 00 43 00 5c 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 5c 00 74 00 66 00 6f 00 73 00 6f 00 72 00 63 00 69 00 4d 00 5c 00 65 00 72 00 61 00 77 00 74 00 66 00 6f 00 53 00 5c 00 } //10 metsyS\seiciloP\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\
		$a_00_3 = {65 00 72 00 6f 00 74 00 73 00 65 00 52 00 6d 00 65 00 74 00 73 00 79 00 53 00 5c 00 6e 00 6f 00 69 00 73 00 72 00 65 00 56 00 74 00 6e 00 65 00 72 00 72 00 75 00 43 00 5c 00 54 00 4e 00 20 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 5c 00 74 00 66 00 6f 00 73 00 6f 00 72 00 63 00 69 00 4d 00 5c 00 45 00 52 00 41 00 57 00 54 00 46 00 4f 00 53 00 5c 00 } //10 erotseRmetsyS\noisreVtnerruC\TN swodniW\tfosorciM\ERAWTFOS\
		$a_00_4 = {72 00 67 00 4d 00 77 00 46 00 2e 00 67 00 66 00 43 00 74 00 65 00 4e 00 48 00 } //10 rgMwF.gfCteNH
		$a_00_5 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 41 00 70 00 56 00 78 00 64 00 57 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im ApVxdWin.exe
		$a_00_6 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 41 00 56 00 45 00 4e 00 47 00 49 00 4e 00 45 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im AVENGINE.exe
		$a_00_7 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 70 00 61 00 76 00 73 00 72 00 76 00 35 00 31 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im pavsrv51.exe
		$a_00_8 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 70 00 73 00 69 00 6d 00 72 00 65 00 61 00 6c 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im psimreal.exe
		$a_00_9 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 50 00 73 00 49 00 6d 00 53 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im PsImSvc.exe
		$a_00_10 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 57 00 65 00 62 00 50 00 72 00 6f 00 78 00 79 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im WebProxy.exe
		$a_00_11 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 6d 00 63 00 61 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im mcagent.exe
		$a_00_12 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 6d 00 63 00 64 00 61 00 73 00 68 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im mcdash.exe
		$a_00_13 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 6d 00 67 00 68 00 74 00 6d 00 6c 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im mghtml.exe
		$a_00_14 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 6d 00 63 00 6d 00 6e 00 68 00 64 00 6c 00 72 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im mcmnhdlr.exe
		$a_00_15 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 6d 00 63 00 76 00 73 00 73 00 68 00 6c 00 64 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im mcvsshld.exe
		$a_00_16 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 4d 00 63 00 56 00 53 00 45 00 73 00 63 00 6e 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im McVSEscn.exe
		$a_00_17 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 6d 00 63 00 76 00 73 00 66 00 74 00 73 00 6e 00 2e 00 65 00 78 00 65 00 } //1 taskkill /f /im mcvsftsn.exe
		$a_00_18 = {2f 00 76 00 20 00 65 00 67 00 75 00 69 00 20 00 2f 00 66 00 } //1 /v egui /f
		$a_00_19 = {2f 00 76 00 20 00 41 00 50 00 56 00 58 00 44 00 57 00 49 00 4e 00 20 00 2f 00 66 00 } //1 /v APVXDWIN /f
		$a_00_20 = {2f 00 76 00 20 00 4d 00 43 00 41 00 67 00 65 00 6e 00 74 00 45 00 78 00 65 00 20 00 2f 00 66 00 } //1 /v MCAgentExe /f
		$a_00_21 = {2f 00 76 00 20 00 4d 00 63 00 52 00 65 00 67 00 57 00 69 00 7a 00 20 00 2f 00 66 00 } //1 /v McRegWiz /f
		$a_00_22 = {2f 00 76 00 20 00 4d 00 43 00 55 00 70 00 64 00 61 00 74 00 65 00 45 00 78 00 65 00 20 00 2f 00 66 00 } //1 /v MCUpdateExe /f
		$a_00_23 = {2f 00 76 00 20 00 43 00 6c 00 65 00 61 00 6e 00 55 00 70 00 20 00 2f 00 66 00 } //1 /v CleanUp /f
		$a_00_24 = {2f 00 76 00 20 00 56 00 69 00 72 00 75 00 73 00 53 00 63 00 61 00 6e 00 20 00 4f 00 6e 00 6c 00 69 00 6e 00 65 00 20 00 2f 00 66 00 } //1 /v VirusScan Online /f
	condition:
		((#a_02_0  & 1)*100+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1+(#a_00_21  & 1)*1+(#a_00_22  & 1)*1+(#a_00_23  & 1)*1+(#a_00_24  & 1)*1) >=150
 
}