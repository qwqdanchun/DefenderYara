
rule TrojanDownloader_O97M_Powdow_PBA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PBA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {3d 20 44 69 72 28 22 43 3a 5c 22 20 2b 20 22 5c 61 61 22 20 2b 20 22 61 5f 54 22 20 2b 20 22 6f 75 63 68 22 20 2b 20 22 4d 65 22 20 2b 20 22 4e 22 20 2b 20 22 6f 74 5f 2e 74 78 74 22 29 } //1 = Dir("C:\" + "\aa" + "a_T" + "ouch" + "Me" + "N" + "ot_.txt")
		$a_00_1 = {28 22 73 73 22 20 2b 20 22 65 63 22 20 2b 20 22 6f 22 20 2b 20 53 74 72 52 65 76 65 72 73 65 28 22 5f 50 72 22 29 20 2b 20 22 32 33 6e 69 57 22 20 2b 20 22 3a 32 22 20 2b 20 22 76 6d 69 22 20 2b 20 22 63 5c 74 22 20 2b 20 22 6f 6f 72 3a 22 20 2b 20 22 73 74 6d 22 20 2b 20 22 67 6d 22 20 2b 20 22 6e 22 20 2b 20 22 69 77 22 29 29 2e 20 5f } //1 ("ss" + "ec" + "o" + StrReverse("_Pr") + "23niW" + ":2" + "vmi" + "c\t" + "oor:" + "stm" + "gm" + "n" + "iw")). _
		$a_00_2 = {65 2d 20 6e 65 22 20 2b 20 22 64 64 69 22 20 2b 20 22 68 20 65 6c 79 22 20 2b 20 22 74 73 77 6f 64 6e 22 20 2b 20 22 69 77 2d 20 6c 22 20 2b 20 53 74 72 52 65 76 65 72 73 65 28 22 68 65 6c 22 29 20 2b 20 53 74 72 52 65 76 65 72 73 65 28 22 72 73 22 29 20 2b 20 22 65 22 20 2b 20 22 77 22 20 2b 20 22 6f 70 } //1 e- ne" + "ddi" + "h ely" + "tswodn" + "iw- l" + StrReverse("hel") + StrReverse("rs") + "e" + "w" + "op
		$a_00_3 = {6b 41 67 49 41 41 43 41 75 42 77 62 41 6b 47 41 30 42 22 20 2b 20 22 51 59 41 34 47 41 70 42 41 64 41 4d 48 41 6c 42 41 52 22 20 2b 20 22 41 30 43 41 67 41 51 62 41 38 47 41 6a 42 67 4c 41 67 47 41 55 42 67 64 22 20 2b 20 22 41 4d 47 41 47 42 67 64 41 45 47 41 56 42 77 52 41 38 43 41 79 22 20 2b 20 22 41 41 4f 41 45 44 41 75 41 67 4d 41 45 44 41 75 41 51 4f 41 67 44 41 78 41 67 4c 41 55 44 41 } //1 kAgIAACAuBwbAkGA0B" + "QYA4GApBAdAMHAlBAR" + "A0CAgAQbA8GAjBgLAgGAUBgd" + "AMGAGBgdAEGAVBwRA8CAy" + "AAOAEDAuAgMAEDAuAQOAgDAxAgLAUDA
		$a_00_4 = {41 51 4d 41 38 43 41 76 41 67 4f 41 41 48 41 30 42 41 64 41 67 47 41 73 41 51 22 20 2b 20 22 62 41 38 47 41 6a 42 67 4c 41 63 48 41 71 42 41 53 41 73 47 41 56 42 67 56 41 55 46 41 30 42 67 57 41 55 45 41 32 42 22 20 2b 20 22 67 5a 41 59 45 41 76 41 67 4d 41 67 44 41 78 41 67 4c 41 49 44 41 78 41 67 4c 41 6b 44 41 34 41 51 4d 41 34 43 41 31 } //1 AQMA8CAvAgOAAHA0BAdAgGAsAQ" + "bA8GAjBgLAcHAqBASAsGAVBgVAUFA0BgWAUEA2B" + "gZAYEAvAgMAgDAxAgLAIDAxAgLAkDA4AQMA4CA1
		$a_00_5 = {41 41 4f 41 45 44 41 76 41 77 4c 41 6f 44 41 77 42 41 64 41 51 48 41 6f 42 41 4c 41 30 47 41 76 42 77 59 41 34 43 41 4c 42 51 22 20 2b 20 22 5a 41 67 45 41 4d 42 67 63 41 38 45 41 44 42 41 54 41 49 46 41 76 41 67 4d 41 67 44 41 78 41 67 4c 41 49 44 41 78 41 67 4c 41 6b 44 41 34 41 51 4d } //1 AAOAEDAvAwLAoDAwBAdAQHAoBALA0GAvBwYA4CALBQ" + "ZAgEAMBgcA8EADBATAIFAvAgMAgDAxAgLAIDAxAgLAkDA4AQM
		$a_00_6 = {41 34 43 41 31 41 41 4f 41 45 44 41 76 41 77 4c 41 6f 44 41 77 42 41 64 41 51 48 41 6f 42 41 49 41 55 47 41 6a 42 67 63 41 55 48 41 76 42 77 55 41 30 43 41 67 41 67 63 41 55 47 41 6d 42 77 63 41 34 47 41 68 42 67 63 41 51 46 41 7a 42 41 64 41 6b 47 41 43 42 51 4c 41 51 48 41 79 42 51 59 41 51 48 41 54 42 41 49 41 73 44 41 79 42 51 5a 41 59 47 41 7a 42 67 62 41 45 47 41 79 42 41 56 41 4d 48 41 30 42 51 61 41 49 45 41 67 41 51 5a 41 77 47 41 31 } //1 A4CA1AAOAEDAvAwLAoDAwBAdAQHAoBAIAUGAjBgcAUHAvBwUA0CAgAgcAUGAmBwcA4GAhBgcAQFAzBAdAkGACBQLAQHAyBQYAQHATBAIAsDAyBQZAYGAzBgbAEGAyBAVAMHA0BQaAIEAgAQZAwGA1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}