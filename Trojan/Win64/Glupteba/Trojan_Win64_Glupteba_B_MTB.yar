
rule Trojan_Win64_Glupteba_B_MTB{
	meta:
		description = "Trojan:Win64/Glupteba.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_81_0 = {41 41 45 47 48 77 4d 4c 41 42 77 4b 41 52 77 43 41 41 59 4a 42 67 59 4b 41 67 3d 3d } //1 AAEGHwMLABwKARwCAAYJBgYKAg==
		$a_81_1 = {53 65 74 2d 45 78 65 63 75 74 69 6f 6e 50 6f 6c 69 63 79 20 52 65 6d 6f 74 65 53 69 67 6e 65 64 20 2d 53 63 6f 70 65 20 50 72 6f 63 65 73 73 20 2d 46 6f 72 63 65 20 2d 43 6f 6e 66 69 72 6d 3a 24 66 61 6c 73 65 3b 24 50 53 44 65 66 61 75 6c 74 50 61 72 61 6d 65 74 65 72 56 61 6c 75 65 73 } //1 Set-ExecutionPolicy RemoteSigned -Scope Process -Force -Confirm:$false;$PSDefaultParameterValues
		$a_81_2 = {59 6c 64 48 48 48 64 4c 56 46 46 47 52 56 74 63 58 32 4a 63 58 56 74 51 53 42 4a 68 56 46 39 63 52 56 64 67 57 46 56 64 56 46 59 54 48 47 46 51 58 6b 4a 57 45 57 4a 42 58 6c 46 57 51 6b 45 54 48 48 52 63 51 31 46 57 45 52 39 77 58 6c 78 56 57 45 42 65 43 78 5a 56 55 } //1 YldHHHdLVFFGRVtcX2JcXVtQSBJhVF9cRVdgWFVdVFYTHGFQXkJWEWJBXlFWQkETHHRcQ1FWER9wXlxVWEBeCxZVU
		$a_81_3 = {45 52 31 48 51 31 4e 64 51 6c 52 57 51 78 49 52 65 33 67 52 45 51 3d 3d } //1 ER1HQ1NdQlRWQxIRe3gREQ==
		$a_81_4 = {57 55 5a 48 51 55 45 4a 48 68 31 45 52 6b 55 64 56 31 4e 51 56 46 42 63 58 6c 6b 64 55 6c 31 65 48 6b 46 48 51 31 64 66 57 6c 31 46 48 30 52 63 58 56 5a 57 58 46 4e 42 48 6b 4a 63 51 6b 5a 41 48 67 6f 45 41 77 6f 43 41 41 45 43 42 77 55 4c 42 77 6f 4b 41 45 35 62 52 55 5a 44 51 67 67 63 48 6b 56 } //1 WUZHQUEJHh1ERkUdV1NQVFBcXlkdUl1eHkFHQ1dfWl1FH0RcXVZWXFNBHkJcQkZAHgoEAwoCAAECBwULBwoKAE5bRUZDQggcHkV
		$a_81_5 = {59 6e 46 37 5a 58 4e 67 65 6d 45 54 48 6e 46 42 56 46 4e 48 56 42 49 63 59 6e 45 54 66 6e 78 2f 66 6e 56 38 66 78 49 63 5a 58 77 54 } //1 YnF7ZXNgemETHnFBVFNHVBIcYnETfnx/fnV8fxIcZXwT
		$a_81_6 = {48 6c 45 54 51 56 74 64 56 68 4a 66 58 6c 46 53 58 56 70 63 51 6b 59 54 48 46 77 54 41 68 49 4e 45 56 78 47 58 52 49 56 45 56 5a 57 58 52 49 3d } //1 HlETQVtdVhJfXlFSXVpcQkYTHFwTAhINEVxGXRIVEVZWXRI=
		$a_81_7 = {5a 33 78 77 45 56 52 61 58 56 63 54 58 31 31 48 45 58 5a 63 52 6c 78 66 58 6c 4e 58 56 46 59 54 58 6b 41 54 5a 46 78 4a 57 45 4a 57 56 51 3d 3d } //1 Z3xwEVRaXVcTX11HEXZcRlxfXlNXVFYTXkATZFxJWEJWVQ==
		$a_81_8 = {64 45 42 42 58 6b 41 54 51 6b 5a 53 51 30 5a 61 58 31 55 54 51 55 42 63 55 6c 46 57 51 6b 45 54 47 51 3d 3d } //1 dEBBXkATQkZSQ0ZaX1UTQUBcUlFWQkETGQ==
		$a_81_9 = {64 45 42 42 58 6b 41 54 56 56 31 45 58 31 35 63 55 46 5a 61 58 31 55 54 47 51 3d 3d } //1 dEBBXkATVV1EX15cUFZaX1UTGQ==
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=10
 
}