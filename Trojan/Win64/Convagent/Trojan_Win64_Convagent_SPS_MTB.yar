
rule Trojan_Win64_Convagent_SPS_MTB{
	meta:
		description = "Trojan:Win64/Convagent.SPS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 71 20 2f 63 20 73 63 2e 65 78 65 20 73 64 73 65 74 20 6d 73 64 74 63 20 22 44 3a 28 41 3b 3b 44 43 4c 43 57 50 44 54 53 44 43 43 3b 3b 3b 49 55 29 28 41 3b 3b 43 43 4c 43 53 57 4c 4f 43 52 52 43 3b 3b 3b 49 55 29 28 41 3b 3b 43 43 4c 43 53 57 4c 4f 43 52 52 43 3b 3b 3b 53 55 29 28 41 3b 3b 43 43 4c 43 53 57 52 50 57 50 44 54 4c 4f 43 52 52 43 3b 3b 3b 53 59 29 28 41 3b 3b 43 43 44 43 4c 43 53 57 52 50 57 50 44 54 4c 4f 43 52 53 44 52 43 57 44 57 4f 3b 3b 3b 42 41 29 53 3a 28 41 55 3b 46 41 3b 43 43 44 43 4c 43 53 57 52 50 57 50 44 54 4c 4f 43 52 53 44 52 43 57 44 57 4f 3b 3b 3b 57 44 29 22 20 26 20 73 63 20 73 74 6f 70 20 6d 73 64 74 63 20 26 20 74 61 6b 65 6f 77 6e 20 2f 46 20 43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 6f 63 69 2e 74 78 74 } //01 00  /q /c sc.exe sdset msdtc "D:(A;;DCLCWPDTSDCC;;;IU)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)S:(AU;FA;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;WD)" & sc stop msdtc & takeown /F C:\ProgramData\oci.txt
		$a_01_1 = {2f 71 20 2f 63 20 52 45 47 20 41 44 44 20 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 4d 53 44 54 43 5c 4d 54 78 4f 43 49 20 2f 76 20 22 4f 72 61 63 6c 65 4f 63 69 4c 69 62 22 20 2f 74 20 52 45 47 5f 53 5a 20 2f 64 20 22 2e 2e 2f 2e 2e 2f 50 72 6f 67 72 61 6d 44 61 74 61 2f 6f 63 69 2e 74 78 74 22 20 2f 66 } //01 00  /q /c REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSDTC\MTxOCI /v "OracleOciLib" /t REG_SZ /d "../../ProgramData/oci.txt" /f
		$a_01_2 = {63 6d 64 20 2f 63 20 73 63 68 74 61 73 6b 73 20 2f 63 72 65 61 74 65 20 2f 73 63 20 48 4f 55 52 4c 59 20 2f 54 4e 20 22 4d 69 63 72 6f 53 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 41 70 70 49 44 5c 4b 65 65 70 4d 73 64 74 63 22 20 2f 54 52 20 22 63 6d 64 20 2f 63 20 73 63 20 63 6f 6e 66 69 67 20 6d 73 64 74 63 20 73 74 61 72 74 3d 20 61 75 74 6f 20 26 26 20 73 63 20 73 74 61 72 74 20 6d 73 64 74 63 22 20 2f 72 75 20 73 79 73 74 65 6d 20 2f 66 } //00 00  cmd /c schtasks /create /sc HOURLY /TN "MicroSoft\Windows\AppID\KeepMsdtc" /TR "cmd /c sc config msdtc start= auto && sc start msdtc" /ru system /f
	condition:
		any of ($a_*)
 
}