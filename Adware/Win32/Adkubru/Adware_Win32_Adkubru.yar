
rule Adware_Win32_Adkubru{
	meta:
		description = "Adware:Win32/Adkubru,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 2b 00 05 00 00 "
		
	strings :
		$a_00_0 = {62 68 6f 5f 70 72 6f 6a 65 63 74 2e 64 6c 6c } //1 bho_project.dll
		$a_01_1 = {4e 6f 52 65 6d 6f 76 65 20 27 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 27 } //1 NoRemove 'Browser Helper Objects'
		$a_00_2 = {7b 36 32 35 46 34 32 30 45 2d 41 34 41 39 2d 34 42 34 30 2d 42 43 32 33 2d 37 31 36 43 31 43 34 33 38 39 33 41 7d } //1 {625F420E-A4A9-4B40-BC23-716C1C43893A}
		$a_01_3 = {73 00 65 00 63 00 75 00 72 00 65 00 2e 00 6c 00 6f 00 61 00 64 00 61 00 73 00 73 00 65 00 74 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 72 00 75 00 6e 00 2e 00 6a 00 73 00 } //20 secure.loadasset.info/run.js
		$a_01_4 = {7b 00 31 00 38 00 36 00 45 00 31 00 39 00 41 00 33 00 2d 00 42 00 39 00 30 00 39 00 2d 00 34 00 46 00 34 00 38 00 2d 00 42 00 36 00 38 00 37 00 2d 00 42 00 42 00 38 00 31 00 45 00 42 00 38 00 42 00 43 00 37 00 43 00 45 00 7d 00 } //20 {186E19A3-B909-4F48-B687-BB81EB8BC7CE}
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*20+(#a_01_4  & 1)*20) >=43
 
}
rule Adware_Win32_Adkubru_2{
	meta:
		description = "Adware:Win32/Adkubru,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 2b 00 18 00 00 "
		
	strings :
		$a_00_0 = {62 68 6f 5f 70 72 6f 6a 65 63 74 2e 64 6c 6c } //1 bho_project.dll
		$a_01_1 = {4e 6f 52 65 6d 6f 76 65 20 27 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 27 } //1 NoRemove 'Browser Helper Objects'
		$a_00_2 = {7b 34 37 43 45 45 45 39 43 2d 33 42 39 42 2d 34 39 32 43 2d 39 35 43 41 2d 31 41 43 33 41 39 39 44 31 35 34 43 7d } //1 {47CEEE9C-3B9B-492C-95CA-1AC3A99D154C}
		$a_00_3 = {7b 42 41 30 34 35 34 43 35 2d 46 44 33 30 2d 34 32 38 45 2d 38 44 42 39 2d 33 46 46 38 37 41 36 31 32 46 36 34 7d } //1 {BA0454C5-FD30-428E-8DB9-3FF87A612F64}
		$a_00_4 = {7b 36 38 44 44 39 38 42 46 2d 39 44 45 38 2d 34 31 38 43 2d 38 39 46 30 2d 45 33 37 41 43 36 31 43 43 32 44 39 7d } //1 {68DD98BF-9DE8-418C-89F0-E37AC61CC2D9}
		$a_00_5 = {7b 35 43 32 45 38 45 32 34 2d 32 46 34 31 2d 34 39 35 38 2d 39 32 31 45 2d 35 41 34 31 44 41 31 39 43 46 44 36 7d } //1 {5C2E8E24-2F41-4958-921E-5A41DA19CFD6}
		$a_00_6 = {7b 33 42 30 30 32 44 36 43 2d 42 36 37 38 2d 34 45 43 30 2d 42 32 45 30 2d 31 46 37 46 33 36 46 30 36 35 45 38 7d } //1 {3B002D6C-B678-4EC0-B2E0-1F7F36F065E8}
		$a_00_7 = {7b 62 38 63 34 66 37 66 30 2d 61 65 65 33 2d 34 36 36 63 2d 39 62 66 65 2d 61 30 36 32 36 63 30 33 39 35 66 65 7d } //1 {b8c4f7f0-aee3-466c-9bfe-a0626c0395fe}
		$a_00_8 = {7b 38 32 45 41 33 45 37 37 2d 37 42 44 32 2d 34 37 34 34 2d 41 38 46 32 2d 36 37 30 37 37 30 37 36 37 45 43 35 7d } //1 {82EA3E77-7BD2-4744-A8F2-670770767EC5}
		$a_00_9 = {7b 35 33 30 42 41 30 42 42 2d 42 41 32 39 2d 34 32 44 41 2d 42 33 34 30 2d 32 37 37 33 36 37 37 45 32 31 44 34 7d } //1 {530BA0BB-BA29-42DA-B340-2773677E21D4}
		$a_00_10 = {7b 44 30 44 42 41 37 31 35 2d 44 34 30 32 2d 34 38 30 31 2d 39 46 30 41 2d 34 41 33 31 31 36 35 46 36 43 41 41 7d } //1 {D0DBA715-D402-4801-9F0A-4A31165F6CAA}
		$a_00_11 = {7b 44 42 32 36 44 45 43 37 2d 35 44 33 32 2d 34 36 30 38 2d 42 42 32 38 2d 45 44 32 32 66 41 45 37 36 34 37 41 7d } //1 {DB26DEC7-5D32-4608-BB28-ED22fAE7647A}
		$a_00_12 = {7b 38 46 30 34 44 33 39 31 2d 43 43 32 30 2d 34 42 41 45 2d 38 35 31 37 2d 35 30 33 37 31 43 37 33 34 39 44 32 7d } //1 {8F04D391-CC20-4BAE-8517-50371C7349D2}
		$a_00_13 = {7b 46 37 34 45 31 30 42 42 2d 41 31 36 39 2d 34 33 39 39 2d 42 31 32 31 2d 31 38 33 39 33 35 39 36 32 46 36 37 7d } //1 {F74E10BB-A169-4399-B121-183935962F67}
		$a_00_14 = {7b 37 43 37 34 46 46 38 38 2d 31 41 37 44 2d 34 30 36 45 2d 42 39 34 42 2d 37 44 44 38 41 42 43 43 39 44 43 43 7d } //1 {7C74FF88-1A7D-406E-B94B-7DD8ABCC9DCC}
		$a_00_15 = {7b 46 39 30 41 35 41 30 44 2d 43 44 39 38 2d 34 39 43 43 2d 39 41 41 37 2d 39 43 44 31 31 43 37 34 37 38 42 46 7d } //1 {F90A5A0D-CD98-49CC-9AA7-9CD11C7478BF}
		$a_00_16 = {7b 39 31 39 34 36 34 39 46 2d 37 31 34 33 2d 34 33 30 38 2d 39 30 43 31 2d 44 36 41 33 35 42 30 45 33 35 34 45 7d } //1 {9194649F-7143-4308-90C1-D6A35B0E354E}
		$a_00_17 = {7b 38 37 44 44 31 31 44 43 2d 44 44 30 39 2d 34 39 36 43 2d 42 41 45 42 2d 46 44 30 39 35 34 32 30 36 39 37 33 7d } //1 {87DD11DC-DD09-496C-BAEB-FD0954206973}
		$a_00_18 = {7b 32 43 34 35 43 33 30 34 2d 34 46 43 34 2d 34 32 41 45 2d 42 46 30 32 2d 32 30 39 30 30 38 30 30 35 41 44 32 7d } //1 {2C45C304-4FC4-42AE-BF02-209008005AD2}
		$a_01_19 = {73 00 65 00 63 00 75 00 72 00 65 00 2e 00 73 00 65 00 63 00 75 00 72 00 65 00 61 00 73 00 73 00 65 00 74 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 72 00 75 00 6e 00 2e 00 6a 00 73 00 } //20 secure.secureasset.info/run.js
		$a_01_20 = {73 00 65 00 63 00 75 00 72 00 65 00 2e 00 6e 00 65 00 74 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2e 00 63 00 63 00 2f 00 72 00 75 00 6e 00 2e 00 6a 00 73 00 } //20 secure.netloader.cc/run.js
		$a_01_21 = {73 00 65 00 63 00 75 00 72 00 65 00 2e 00 6c 00 6f 00 61 00 64 00 61 00 73 00 73 00 65 00 74 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 72 00 75 00 6e 00 2e 00 6a 00 73 00 } //20 secure.loadasset.info/run.js
		$a_01_22 = {7b 00 31 00 38 00 36 00 45 00 31 00 39 00 41 00 33 00 2d 00 42 00 39 00 30 00 39 00 2d 00 34 00 46 00 34 00 38 00 2d 00 42 00 36 00 38 00 37 00 2d 00 42 00 42 00 38 00 31 00 45 00 42 00 38 00 42 00 43 00 37 00 43 00 45 00 7d 00 } //20 {186E19A3-B909-4F48-B687-BB81EB8BC7CE}
		$a_01_23 = {7b 00 32 00 43 00 46 00 43 00 46 00 45 00 36 00 34 00 2d 00 32 00 33 00 44 00 33 00 2d 00 34 00 44 00 41 00 42 00 2d 00 39 00 35 00 41 00 36 00 2d 00 37 00 34 00 34 00 31 00 45 00 30 00 36 00 35 00 30 00 44 00 44 00 30 00 7d 00 } //20 {2CFCFE64-23D3-4DAB-95A6-7441E0650DD0}
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_01_19  & 1)*20+(#a_01_20  & 1)*20+(#a_01_21  & 1)*20+(#a_01_22  & 1)*20+(#a_01_23  & 1)*20) >=43
 
}