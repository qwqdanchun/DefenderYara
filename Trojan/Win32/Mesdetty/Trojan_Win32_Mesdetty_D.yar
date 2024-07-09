
rule Trojan_Win32_Mesdetty_D{
	meta:
		description = "Trojan:Win32/Mesdetty.D,SIGNATURE_TYPE_CMDHSTR_EXT,65 00 65 00 1f 00 00 "
		
	strings :
		$a_02_0 = {5c 00 6d 00 73 00 64 00 74 00 [0-f0] 70 00 63 00 77 00 64 00 69 00 61 00 67 00 6e 00 6f 00 73 00 74 00 69 00 63 00 } //100
		$a_00_1 = {69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 65 00 78 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 } //1 invoke-expression
		$a_00_2 = {69 00 65 00 78 00 20 00 } //1 iex 
		$a_00_3 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //1 FromBase64String
		$a_00_4 = {6d 00 70 00 73 00 69 00 67 00 73 00 74 00 75 00 62 00 2e 00 65 00 78 00 65 00 } //1 mpsigstub.exe
		$a_00_5 = {63 00 61 00 6c 00 3f 00 63 00 } //1 cal?c
		$a_00_6 = {63 00 61 00 6c 00 63 00 } //1 calc
		$a_00_7 = {6e 00 6f 00 74 00 65 00 70 00 61 00 64 00 } //1 notepad
		$a_00_8 = {62 00 72 00 6f 00 77 00 73 00 65 00 66 00 6f 00 72 00 66 00 69 00 6c 00 65 00 } //1 browseforfile
		$a_00_9 = {53 00 74 00 61 00 72 00 74 00 2d 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //1 Start-Process
		$a_00_10 = {49 00 54 00 5f 00 52 00 65 00 62 00 72 00 6f 00 77 00 73 00 65 00 46 00 6f 00 72 00 46 00 69 00 6c 00 65 00 3d 00 3f 00 } //1 IT_RebrowseForFile=?
		$a_00_11 = {5c 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 5c 00 } //1 \localhost\
		$a_00_12 = {25 00 35 00 43 00 25 00 35 00 43 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 } //1 %5C%5Clocalhost
		$a_00_13 = {2b 00 5b 00 63 00 68 00 61 00 72 00 5d 00 35 00 38 00 2b 00 } //1 +[char]58+
		$a_00_14 = {2f 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 } //1 /../../
		$a_00_15 = {5c 00 2e 00 2e 00 5c 00 2e 00 2e 00 5c 00 } //1 \..\..\
		$a_00_16 = {25 00 32 00 30 00 49 00 54 00 5f 00 } //1 %20IT_
		$a_02_17 = {72 00 6f 00 77 00 73 00 65 00 46 00 6f 00 72 00 46 00 69 00 6c 00 65 00 3d 00 [0-50] 3f 00 } //1
		$a_00_18 = {66 00 69 00 6c 00 65 00 3d 00 68 00 27 00 } //1 file=h'
		$a_00_19 = {66 00 69 00 6c 00 65 00 3d 00 68 00 60 00 } //1 file=h`
		$a_00_20 = {66 00 69 00 6c 00 65 00 3d 00 68 00 22 00 } //1 file=h"
		$a_00_21 = {66 00 69 00 6c 00 65 00 3d 00 68 00 24 00 } //1 file=h$
		$a_00_22 = {2f 00 68 00 69 00 27 00 } //1 /hi'
		$a_00_23 = {2f 00 68 00 69 00 22 00 } //1 /hi"
		$a_00_24 = {2f 00 68 00 69 00 60 00 } //1 /hi`
		$a_00_25 = {72 65 67 20 64 65 6c 65 74 65 } //-200 reg delete
		$a_00_26 = {6e 65 74 73 68 } //-200 netsh
		$a_00_27 = {6d 73 64 74 20 2d 20 50 68 61 73 65 } //-200 msdt - Phase
		$a_00_28 = {43 61 64 65 6e 63 65 20 4c 69 63 65 6e 73 65 20 4d 61 6e 61 67 65 72 } //-200 Cadence License Manager
		$a_00_29 = {61 70 70 65 6e 64 74 6f 6f 6c 2e 65 78 65 20 2d 66 69 6c 65 } //-200 appendtool.exe -file
		$a_00_30 = {53 58 53 5f 41 53 53 45 4d 42 4c 59 5f 4e 41 4d 45 3d 4d 69 63 72 6f 73 6f 66 74 2e 57 69 6e 64 6f 77 73 2e 4d 53 44 54 } //-200 SXS_ASSEMBLY_NAME=Microsoft.Windows.MSDT
	condition:
		((#a_02_0  & 1)*100+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_02_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1+(#a_00_21  & 1)*1+(#a_00_22  & 1)*1+(#a_00_23  & 1)*1+(#a_00_24  & 1)*1+(#a_00_25  & 1)*-200+(#a_00_26  & 1)*-200+(#a_00_27  & 1)*-200+(#a_00_28  & 1)*-200+(#a_00_29  & 1)*-200+(#a_00_30  & 1)*-200) >=101
 
}