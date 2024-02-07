
rule Trojan_BAT_AgentTesla_CVV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CVV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 15 00 00 01 00 "
		
	strings :
		$a_81_0 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00  VirtualProtect
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_2 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_81_3 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //01 00  GetExecutingAssembly
		$a_81_4 = {53 74 72 65 61 6d 52 65 61 64 65 72 } //01 00  StreamReader
		$a_81_5 = {53 65 72 76 65 72 43 6f 6d 70 75 74 65 72 } //01 00  ServerComputer
		$a_81_6 = {57 65 62 43 6c 69 65 6e 74 } //01 00  WebClient
		$a_81_7 = {43 6f 70 79 46 72 6f 6d 53 63 72 65 65 6e } //01 00  CopyFromScreen
		$a_81_8 = {4e 65 74 77 6f 72 6b 53 74 72 65 61 6d } //01 00  NetworkStream
		$a_81_9 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  CheckRemoteDebuggerPresent
		$a_81_10 = {47 65 74 52 65 73 6f 75 72 63 65 53 74 72 69 6e 67 } //01 00  GetResourceString
		$a_81_11 = {24 35 63 30 32 35 33 62 31 2d 63 37 36 36 2d 34 31 31 31 2d 62 36 62 36 2d 64 33 66 34 36 66 36 66 35 33 32 64 } //01 00  $5c0253b1-c766-4111-b6b6-d3f46f6f532d
		$a_81_12 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_81_13 = {53 79 73 74 65 6d 2e 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e } //01 00  System.IO.Compression
		$a_81_14 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //01 00  CompressionMode
		$a_81_15 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  MD5CryptoServiceProvider
		$a_81_16 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_81_17 = {47 65 74 54 65 6d 70 46 69 6c 65 4e 61 6d 65 } //01 00  GetTempFileName
		$a_81_18 = {57 72 69 74 65 41 6c 6c 42 79 74 65 73 } //01 00  WriteAllBytes
		$a_81_19 = {67 65 74 5f 43 74 72 6c 4b 65 79 44 6f 77 6e } //01 00  get_CtrlKeyDown
		$a_81_20 = {42 69 74 43 6f 6e 76 65 72 74 65 72 } //00 00  BitConverter
	condition:
		any of ($a_*)
 
}