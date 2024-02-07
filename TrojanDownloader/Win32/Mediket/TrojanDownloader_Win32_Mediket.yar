
rule TrojanDownloader_Win32_Mediket{
	meta:
		description = "TrojanDownloader:Win32/Mediket,SIGNATURE_TYPE_PEHSTR_EXT,09 00 07 00 0e 00 00 03 00 "
		
	strings :
		$a_01_0 = {5d 71 31 73 75 33 30 64 70 6e } //01 00  ]q1su30dpn
		$a_01_1 = {6a 66 79 71 6d 70 30 66 30 66 79 66 } //01 00  jfyqmp0f0fyf
		$a_01_2 = {64 3b 5d 64 70 6f 30 6a 68 30 74 7a 60 } //01 00  d;]dpo0jh0tz`
		$a_01_3 = {5d 6e 74 69 6d 71 30 30 66 79 66 } //03 00  ]ntimq00fyf
		$a_01_4 = {69 75 75 71 3b 30 30 78 78 78 30 78 78 30 33 30 71 31 73 75 30 30 64 70 6e 30 60 30 63 66 68 6a 6f 30 30 69 71 } //01 00  iuuq;00xxx0xx030q1su00dpn0`0cfhjo00iq
		$a_01_5 = {5b 70 30 66 4e 62 71 5d 45 30 6e 62 6a 6f 74 5d 30 31 73 75 33 30 64 30 6e } //01 00  [p0fNbq]E0nbjot]01su30d0n
		$a_01_6 = {5d 45 70 78 6f 6d 30 62 65 4a 6f 67 70 30 6e 62 75 6a 70 6f } //01 00  ]Epxom0beJogp0nbujpo
		$a_01_7 = {30 74 5d 4e 6a 64 30 70 74 70 67 75 30 30 6f 75 6a 54 71 7a 30 62 73 66 } //02 00  0t]Njd0ptpgu00oujTqz0bsf
		$a_01_8 = {6e 74 75 6e 71 30 30 75 6e 6d } //04 00  ntunq00unm
		$a_01_9 = {4e 6a 64 73 30 74 70 67 75 5d 58 30 6f 65 70 78 74 5d 30 76 73 73 66 6f 75 30 66 73 74 6a 70 6f } //01 00  Njds0tpgu]X0oepxt]0vssfou0fstjpo
		$a_01_10 = {30 74 5d 4e 64 42 30 66 66 5d 4e 64 42 30 66 66 30 57 6a 73 30 74 74 64 62 6f } //03 00  0t]NdB0ff]NdB0ff0Wjs0ttdbo
		$a_01_11 = {5d 73 66 6e 6e 66 30 63 62 75 } //02 00  ]sfnnf0cbu
		$a_01_12 = {62 63 70 76 75 3b 30 6d 62 6f 6c } //02 00  bcpvu;0mbol
		$a_01_13 = {50 43 4b 30 44 55 30 44 4d 42 30 54 4a 45 } //00 00  PCK0DU0DMB0TJE
	condition:
		any of ($a_*)
 
}