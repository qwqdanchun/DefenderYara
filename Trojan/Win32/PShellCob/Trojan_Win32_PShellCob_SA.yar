
rule Trojan_Win32_PShellCob_SA{
	meta:
		description = "Trojan:Win32/PShellCob.SA,SIGNATURE_TYPE_CMDHSTR_EXT,1e 00 1e 00 03 00 00 0a 00 "
		
	strings :
		$a_00_0 = {4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 49 00 4f 00 2e 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 53 00 74 00 72 00 65 00 61 00 6d 00 28 00 2c 00 5b 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //0a 00  New-Object IO.MemoryStream(,[Convert]::FromBase64String
		$a_00_1 = {3b 00 49 00 45 00 58 00 20 00 28 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 49 00 4f 00 2e 00 53 00 74 00 72 00 65 00 61 00 6d 00 52 00 65 00 61 00 64 00 65 00 72 00 28 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 49 00 4f 00 2e 00 43 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 2e 00 47 00 7a 00 69 00 70 00 53 00 74 00 72 00 65 00 61 00 6d 00 } //0a 00  ;IEX (New-Object IO.StreamReader(New-Object IO.Compression.GzipStream
		$a_00_2 = {5b 00 49 00 4f 00 2e 00 43 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 2e 00 43 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 4d 00 6f 00 64 00 65 00 5d 00 3a 00 3a 00 44 00 65 00 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 29 00 29 00 29 00 2e 00 52 00 65 00 61 00 64 00 54 00 6f 00 45 00 6e 00 64 00 28 00 29 00 3b 00 } //00 00  [IO.Compression.CompressionMode]::Decompress))).ReadToEnd();
	condition:
		any of ($a_*)
 
}