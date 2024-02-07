
rule Trojan_Win32_Emotetcrypt_FU_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.FU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 0a 00 "
		
	strings :
		$a_81_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_81_1 = {66 63 76 6a 38 73 37 6a 30 79 2e 64 6c 6c } //01 00  fcvj8s7j0y.dll
		$a_81_2 = {62 39 77 66 69 7a 68 69 33 33 77 78 76 61 6a 37 73 6d 71 65 6c 66 30 35 6f 70 34 6c } //01 00  b9wfizhi33wxvaj7smqelf05op4l
		$a_81_3 = {62 6e 67 73 65 35 6e 74 6b 6d 39 73 33 69 34 38 6d 75 37 70 76 71 32 79 69 31 32 69 32 } //01 00  bngse5ntkm9s3i48mu7pvq2yi12i2
		$a_81_4 = {69 76 71 30 33 36 6a 76 63 34 67 69 67 61 6f 61 66 30 39 34 66 32 30 32 64 7a 66 6b 38 36 } //01 00  ivq036jvc4gigaoaf094f202dzfk86
		$a_81_5 = {6a 33 72 70 30 6c 65 32 35 66 6a 74 66 33 33 68 7a 6d 6d 34 77 76 36 34 6c 61 71 6f 76 } //01 00  j3rp0le25fjtf33hzmm4wv64laqov
		$a_81_6 = {6e 72 31 6e 76 32 31 70 63 32 2e 64 6c 6c } //01 00  nr1nv21pc2.dll
		$a_81_7 = {61 73 64 61 6f 7a 6a 6b 71 61 39 61 30 32 34 39 30 39 64 70 32 38 37 68 73 38 6a 30 72 71 } //01 00  asdaozjkqa9a024909dp287hs8j0rq
		$a_81_8 = {66 76 67 75 72 7a 6f 36 33 72 6d 78 74 65 7a 39 6d 6c 37 7a 33 7a 33 } //01 00  fvgurzo63rmxtez9ml7z3z3
		$a_81_9 = {67 31 62 39 67 63 30 64 38 6d 64 71 36 6d 35 31 6a 75 61 69 78 } //01 00  g1b9gc0d8mdq6m51juaix
		$a_81_10 = {67 77 6d 68 30 77 66 69 38 31 36 64 30 30 62 61 32 61 68 79 73 33 39 } //00 00  gwmh0wfi816d00ba2ahys39
	condition:
		any of ($a_*)
 
}