
rule Trojan_BAT_AsyncRAT_SP_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.SP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {2b 00 6a 00 6f 00 59 00 6f 00 63 00 71 00 67 00 56 00 6b 00 59 00 61 00 4e 00 52 00 6a 00 4b 00 56 00 61 00 6d 00 74 00 53 00 51 00 3d 00 3d 00 } //1 +joYocqgVkYaNRjKVamtSQ==
		$a_01_1 = {31 00 4e 00 5a 00 39 00 67 00 6f 00 73 00 55 00 37 00 41 00 79 00 45 00 6f 00 58 00 37 00 65 00 59 00 49 00 70 00 46 00 4f 00 79 00 36 00 56 00 74 00 41 00 78 00 63 00 65 00 33 00 4e 00 72 00 53 00 50 00 30 00 79 00 35 00 69 00 78 00 77 00 46 00 34 00 34 00 3d 00 } //1 1NZ9gosU7AyEoX7eYIpFOy6VtAxce3NrSP0y5ixwF44=
		$a_01_2 = {35 00 36 00 4f 00 57 00 66 00 6f 00 4d 00 73 00 57 00 6c 00 46 00 45 00 47 00 4c 00 79 00 6a 00 74 00 4e 00 71 00 48 00 65 00 41 00 3d 00 3d 00 } //1 56OWfoMsWlFEGLyjtNqHeA==
		$a_01_3 = {33 00 56 00 6a 00 44 00 7a 00 48 00 31 00 45 00 4d 00 52 00 42 00 33 00 63 00 2b 00 31 00 78 00 34 00 4a 00 63 00 74 00 39 00 51 00 3d 00 3d 00 } //1 3VjDzH1EMRB3c+1x4Jct9Q==
		$a_01_4 = {31 00 42 00 32 00 64 00 76 00 4f 00 72 00 77 00 34 00 36 00 52 00 62 00 63 00 52 00 71 00 56 00 73 00 4b 00 68 00 42 00 6e 00 67 00 3d 00 3d 00 } //1 1B2dvOrw46RbcRqVsKhBng==
		$a_01_5 = {73 00 76 00 75 00 71 00 7a 00 72 00 47 00 4b 00 62 00 76 00 6f 00 31 00 53 00 33 00 33 00 65 00 2f 00 79 00 43 00 4e 00 32 00 51 00 3d 00 3d 00 } //1 svuqzrGKbvo1S33e/yCN2Q==
		$a_01_6 = {50 00 37 00 75 00 30 00 76 00 7a 00 47 00 78 00 71 00 55 00 35 00 44 00 6d 00 48 00 44 00 72 00 6f 00 4f 00 78 00 54 00 48 00 51 00 3d 00 3d 00 } //1 P7u0vzGxqU5DmHDroOxTHQ==
		$a_01_7 = {6e 00 55 00 54 00 66 00 6f 00 78 00 42 00 54 00 38 00 4b 00 71 00 6a 00 6c 00 51 00 68 00 66 00 59 00 6a 00 54 00 62 00 4f 00 41 00 3d 00 3d 00 } //1 nUTfoxBT8KqjlQhfYjTbOA==
		$a_01_8 = {78 00 65 00 36 00 78 00 7a 00 76 00 72 00 58 00 73 00 4d 00 55 00 66 00 35 00 54 00 6c 00 6a 00 48 00 67 00 46 00 63 00 4e 00 77 00 3d 00 3d 00 } //1 xe6xzvrXsMUf5TljHgFcNw==
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}