
rule VirTool_BAT_Lore_AD_MTB{
	meta:
		description = "VirTool:BAT/Lore.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 16 00 00 "
		
	strings :
		$a_01_0 = {47 00 65 00 74 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 56 00 61 00 72 00 69 00 61 00 62 00 6c 00 65 00 } //1 GetEnvironmentVariable
		$a_01_1 = {5f 00 45 00 4e 00 41 00 42 00 4c 00 45 00 5f 00 50 00 52 00 4f 00 46 00 49 00 4c 00 49 00 4e 00 47 00 } //1 _ENABLE_PROFILING
		$a_01_2 = {44 00 65 00 73 00 65 00 72 00 69 00 61 00 6c 00 69 00 7a 00 65 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 Deserialize.Resources
		$a_01_3 = {52 00 75 00 6e 00 50 00 65 00 34 00 } //1 RunPe4
		$a_01_4 = {56 00 4d 00 44 00 65 00 74 00 65 00 63 00 74 00 6f 00 72 00 } //1 VMDetector
		$a_01_5 = {41 00 70 00 70 00 4c 00 61 00 75 00 6e 00 63 00 68 00 2e 00 65 00 78 00 65 00 } //1 AppLaunch.exe
		$a_01_6 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 svchost.exe
		$a_01_7 = {52 00 65 00 67 00 41 00 73 00 6d 00 2e 00 65 00 78 00 65 00 } //1 RegAsm.exe
		$a_01_8 = {49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 55 00 74 00 69 00 6c 00 2e 00 65 00 78 00 65 00 } //1 InstallUtil.exe
		$a_01_9 = {25 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 46 00 6f 00 6c 00 64 00 65 00 72 00 25 00 } //1 %StartupFolder%
		$a_01_10 = {25 00 48 00 69 00 64 00 64 00 65 00 6e 00 52 00 65 00 67 00 25 00 } //1 %HiddenReg%
		$a_01_11 = {25 00 48 00 69 00 64 00 64 00 65 00 6e 00 4b 00 65 00 79 00 25 00 } //1 %HiddenKey%
		$a_01_12 = {25 00 56 00 4d 00 25 00 } //1 %VM%
		$a_01_13 = {25 00 53 00 42 00 25 00 } //1 %SB%
		$a_01_14 = {25 00 44 00 65 00 6c 00 61 00 79 00 25 00 } //1 %Delay%
		$a_01_15 = {25 00 49 00 6e 00 6a 00 65 00 63 00 74 00 69 00 6f 00 6e 00 50 00 65 00 72 00 73 00 69 00 73 00 74 00 25 00 } //1 %InjectionPersist%
		$a_01_16 = {25 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 50 00 65 00 72 00 73 00 69 00 73 00 74 00 25 00 } //1 %StartupPersist%
		$a_01_17 = {25 00 48 00 6f 00 73 00 74 00 49 00 6e 00 64 00 65 00 78 00 25 00 } //1 %HostIndex%
		$a_01_18 = {25 00 4d 00 61 00 69 00 6e 00 46 00 69 00 6c 00 65 00 25 00 } //1 %MainFile%
		$a_01_19 = {25 00 46 00 69 00 6c 00 65 00 73 00 4e 00 75 00 6d 00 25 00 } //1 %FilesNum%
		$a_01_20 = {25 00 4d 00 65 00 6c 00 74 00 25 00 } //1 %Melt%
		$a_01_21 = {25 00 4d 00 65 00 6c 00 74 00 4e 00 61 00 6d 00 65 00 25 00 } //1 %MeltName%
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1) >=22
 
}
rule VirTool_BAT_Lore_AD_MTB_2{
	meta:
		description = "VirTool:BAT/Lore.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,ffffffd2 02 ffffffd2 02 24 00 00 "
		
	strings :
		$a_01_0 = {3c 50 72 69 76 61 74 65 49 6d 70 6c 65 6d 65 6e 74 61 74 69 6f 6e 44 65 74 61 69 6c 73 3e } //1 <PrivateImplementationDetails>
		$a_01_1 = {53 79 73 74 65 6d 2e 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e } //1 System.IO.Compression
		$a_01_2 = {53 79 73 74 65 6d 2e 44 72 61 77 69 6e 67 } //1 System.Drawing
		$a_01_3 = {67 65 74 5f 52 } //1 get_R
		$a_01_4 = {67 65 74 5f 47 } //1 get_G
		$a_01_5 = {67 65 74 5f 42 } //1 get_B
		$a_01_6 = {67 65 74 5f 4c 65 6e 67 74 68 } //1 get_Length
		$a_01_7 = {67 65 74 5f 57 69 64 74 68 } //1 get_Width
		$a_01_8 = {67 65 74 5f 48 65 69 67 68 74 } //1 get_Height
		$a_01_9 = {47 65 74 50 69 78 65 6c } //1 GetPixel
		$a_01_10 = {72 65 73 6f 75 72 63 65 5f 6e 61 6d 65 } //1 resource_name
		$a_01_11 = {70 72 6f 6a 65 63 74 5f 6e 61 6d 65 } //1 project_name
		$a_01_12 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //1 System.Threading
		$a_01_13 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 } //1 System.Security.Cryptography
		$a_01_14 = {73 65 74 5f 55 73 65 4d 61 63 68 69 6e 65 4b 65 79 53 74 6f 72 65 } //1 set_UseMachineKeyStore
		$a_01_15 = {53 79 73 74 65 6d 2e 52 75 6e 74 69 6d 65 2e 52 65 6d 6f 74 69 6e 67 } //1 System.Runtime.Remoting
		$a_01_16 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_17 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
		$a_01_18 = {73 65 74 5f 4b 65 79 } //1 set_Key
		$a_01_19 = {73 65 74 5f 49 56 } //1 set_IV
		$a_01_20 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_21 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //1 CreateEncryptor
		$a_01_22 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2e 00 43 00 72 00 79 00 70 00 74 00 6f 00 67 00 72 00 61 00 70 00 68 00 79 00 2e 00 41 00 65 00 73 00 43 00 72 00 79 00 70 00 74 00 6f 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 } //50 System.Security.Cryptography.AesCryptoServiceProvider
		$a_01_23 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 31 00 30 00 30 00 30 00 39 00 2d 00 31 00 31 00 31 00 31 00 32 00 7d 00 } //50 {11111-22222-10009-11112}
		$a_01_24 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //50 {11111-22222-50001-00000}
		$a_01_25 = {47 00 65 00 74 00 44 00 65 00 6c 00 65 00 67 00 61 00 74 00 65 00 46 00 6f 00 72 00 46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 69 00 6e 00 74 00 65 00 72 00 } //50 GetDelegateForFunctionPointer
		$a_01_26 = {66 00 69 00 6c 00 65 00 3a 00 2f 00 2f 00 2f 00 } //50 file:///
		$a_01_27 = {4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //50 Location
		$a_01_28 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //50 {11111-22222-20001-00001}
		$a_01_29 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //50 {11111-22222-20001-00002}
		$a_01_30 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //50 {11111-22222-30001-00001}
		$a_01_31 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //50 {11111-22222-30001-00002}
		$a_01_32 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //50 {11111-22222-40001-00001}
		$a_01_33 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //50 {11111-22222-40001-00002}
		$a_01_34 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //50 {11111-22222-50001-00001}
		$a_01_35 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //50 {11111-22222-50001-00002}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*50+(#a_01_23  & 1)*50+(#a_01_24  & 1)*50+(#a_01_25  & 1)*50+(#a_01_26  & 1)*50+(#a_01_27  & 1)*50+(#a_01_28  & 1)*50+(#a_01_29  & 1)*50+(#a_01_30  & 1)*50+(#a_01_31  & 1)*50+(#a_01_32  & 1)*50+(#a_01_33  & 1)*50+(#a_01_34  & 1)*50+(#a_01_35  & 1)*50) >=722
 
}