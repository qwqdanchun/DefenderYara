
rule Worm_Win32_Phorpiex_SKC{
	meta:
		description = "Worm:Win32/Phorpiex.SKC,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 49 00 6e 00 74 00 65 00 72 00 6f 00 70 00 2e 00 53 00 4b 00 59 00 50 00 45 00 34 00 43 00 4f 00 4d 00 4c 00 69 00 62 00 2e 00 64 00 6c 00 6c 00 } //1 \Interop.SKYPE4COMLib.dll
		$a_01_1 = {36 00 38 00 37 00 34 00 37 00 34 00 37 00 30 00 37 00 33 00 33 00 41 00 32 00 46 00 32 00 46 00 36 00 39 00 36 00 45 00 36 00 36 00 36 00 46 00 37 00 32 00 36 00 44 00 36 00 31 00 36 00 33 00 36 00 39 00 36 00 46 00 36 00 45 00 33 00 37 00 33 00 36 00 33 00 37 00 33 00 36 00 32 00 45 00 37 00 37 00 36 00 46 00 37 00 32 00 36 00 34 00 37 00 30 00 37 00 32 00 36 00 35 00 37 00 33 00 37 00 33 00 32 00 45 00 36 00 33 00 36 00 46 00 36 00 44 00 } //1 68747470733A2F2F696E666F726D6163696F6E373637362E776F726470726573732E636F6D
		$a_02_2 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 65 00 78 00 65 00 90 01 02 5c 00 4a 00 61 00 76 00 61 00 2e 00 65 00 78 00 65 00 90 01 02 5c 00 41 00 64 00 6f 00 62 00 65 00 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_01_3 = {5c 4e 74 65 5c 4e 74 65 5c 62 69 6e 5c 52 65 6c 65 61 73 65 5c 68 6f 6c 61 2e 70 64 62 } //10 \Nte\Nte\bin\Release\hola.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_02_2  & 1)*1+(#a_01_3  & 1)*10) >=13
 
}