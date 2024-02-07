
rule TrojanDownloader_O97M_EncDoc_SS_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 66 6f 75 72 73 74 61 72 73 2e 63 79 6f 75 2f 31 2e 70 68 70 } //01 00  http://fourstars.cyou/1.php
		$a_01_1 = {5c 39 31 39 31 39 2e 64 6c 6c } //01 00  \91919.dll
		$a_01_2 = {55 52 4c 4d 6f 6e } //01 00  URLMon
		$a_01_3 = {6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //00 00  ownloadToFileA
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 72 6d 62 76 6d 64 71 2e 65 78 65 } //01 00  C:\ProgramData\rmbvmdq.exe
		$a_01_1 = {55 52 4c 4d 4f 4e } //01 00  URLMON
		$a_01_2 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_01_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //00 00  URLDownloadToFileA
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 73 74 61 67 69 6e 67 2e 67 61 69 61 66 61 63 74 75 72 61 63 69 6f 6e 2e 63 6f 6d 2f 70 72 6f 64 75 63 63 69 6f 6e 2f 76 34 2f 69 6e 63 6c 75 64 65 2f 6c 69 62 2f 70 68 70 71 72 63 6f 64 65 2f 63 61 63 68 65 2f 72 7a 6b 4e 75 71 70 36 6d 31 68 6f 59 2e 70 68 70 } //01 00  = Replace("https://staging.gaiafacturacion.com/produccion/v4/include/lib/phpqrcode/cache/rzkNuqp6m1hoY.php
		$a_01_1 = {3d 20 52 65 70 6c 61 63 65 28 22 57 73 63 72 69 70 74 2e 53 68 65 6c 6c } //00 00  = Replace("Wscript.Shell
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_4{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 71 44 77 49 66 44 42 71 59 20 3d 20 6c 63 43 72 4a 2e 4f 70 65 6e 54 65 78 74 46 69 6c 65 28 4f 54 44 5a 20 2b 20 22 5c 6e 52 53 64 72 2e 76 62 73 22 2c 20 38 2c 20 54 72 75 65 29 } //01 00  Set qDwIfDBqY = lcCrJ.OpenTextFile(OTDZ + "\nRSdr.vbs", 8, True)
		$a_01_1 = {45 6e 64 54 69 63 6b 20 3d 20 47 65 74 54 69 63 6b 43 6f 75 6e 74 20 2b 20 28 46 69 6e 69 73 68 20 2a 20 31 30 30 30 29 } //01 00  EndTick = GetTickCount + (Finish * 1000)
		$a_01_2 = {4f 54 44 5a 20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 41 70 70 44 61 74 61 22 29 } //00 00  OTDZ = Environ$("AppData")
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_5{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 50 69 71 70 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 6e 31 29 } //01 00  Set Piqp = CreateObject(n1)
		$a_01_1 = {50 69 71 70 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 22 50 22 20 2b 20 43 65 6c 6c 73 28 37 2c 20 31 29 2c 20 66 6a 64 66 6b 28 41 32 29 2c 20 22 22 2c 20 22 22 2c 20 30 } //01 00  Piqp.ShellExecute "P" + Cells(7, 1), fjdfk(A2), "", "", 0
		$a_01_2 = {50 4a 63 56 74 7a 20 3d 20 52 69 67 68 74 28 4c 65 66 74 28 67 6f 46 67 7a 63 45 2c 20 6b 6b 29 2c 20 32 20 2d 20 31 29 20 26 20 62 76 67 42 49 63 4a 75 67 } //00 00  PJcVtz = Right(Left(goFgzcE, kk), 2 - 1) & bvgBIcJug
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_6{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {4f 70 65 6e 20 62 61 79 34 65 67 74 6b 61 6a 73 79 75 67 69 2e 53 6a 73 35 72 65 53 64 72 74 79 64 28 22 65 67 61 73 77 22 2c 20 22 74 79 65 72 22 2c 20 37 36 29 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //01 00  Open bay4egtkajsyugi.Sjs5reSdrtyd("egasw", "tyer", 76) For Output As #1
		$a_01_1 = {2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 53 6a 73 35 72 65 53 64 72 74 79 64 28 22 64 66 65 57 45 74 61 72 61 73 64 22 2c 20 22 64 73 66 73 77 65 74 72 54 45 72 74 77 65 72 52 65 22 2c 20 38 32 29 2c 20 22 22 29 2e 52 75 6e } //00 00  .CreateObject(Sjs5reSdrtyd("dfeWEtarasd", "dsfswetrTErtwerRe", 82), "").Run
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_7{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 73 3a 2f 2f 63 6f 72 74 69 6e 61 73 74 65 6c 61 73 79 74 72 61 7a 6f 73 2e 63 6f 6d 2f 59 72 6f 36 41 74 76 6a 2f 73 65 63 2e 68 74 6d 6c } //01 00  https://cortinastelasytrazos.com/Yro6Atvj/sec.html
		$a_01_1 = {68 74 74 70 73 3a 2f 2f 6f 72 71 75 69 64 65 61 76 61 6c 6c 65 6e 61 74 61 2e 63 6f 6d 2f 34 6a 6d 44 62 30 73 39 73 67 2f 73 65 63 2e 68 74 6d 6c } //01 00  https://orquideavallenata.com/4jmDb0s9sg/sec.html
		$a_01_2 = {68 74 74 70 73 3a 2f 2f 66 75 6e 64 61 63 69 6f 6e 76 65 72 64 61 64 65 72 6f 73 68 65 72 6f 65 73 2e 63 6f 6d 2f 67 59 30 4f 70 35 4a 6b 68 74 2f 73 65 63 2e 68 74 6d 6c } //00 00  https://fundacionverdaderosheroes.com/gY0Op5Jkht/sec.html
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_8{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 56 64 31 41 55 52 32 65 57 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 68 47 46 79 73 47 46 29 } //01 00  Set Vd1AUR2eW = CreateObject(hGFysGF)
		$a_03_1 = {2e 50 61 74 74 65 72 6e 20 3d 20 22 6a 7c 71 7c 55 7c 76 7c 4d 7c 4f 7c 58 7c 7a 7c 44 7c 48 7c 5a 7c 56 7c 50 7c 51 7c 59 7c 49 7c 4e 7c 77 7c 4b 7c 4c 22 90 02 07 2e 47 6c 6f 62 61 6c 20 3d 20 54 72 75 65 90 02 07 45 6e 64 20 57 69 74 68 90 00 } //01 00 
		$a_01_2 = {59 59 49 6d 79 63 4d 67 20 3d 20 56 64 31 41 55 52 32 65 57 2e 52 65 70 6c 61 63 65 28 42 32 58 6b 4b 6b 55 70 68 28 30 29 2c 20 22 22 29 } //00 00  YYImycMg = Vd1AUR2eW.Replace(B2XkKkUph(0), "")
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_9{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 73 70 6f 72 74 62 65 74 74 69 6e 67 64 75 62 75 71 75 65 2e 63 6f 6d 2f 35 31 32 2e 64 6c 6c } //01 00  http://sportbettingdubuque.com/512.dll
		$a_01_1 = {55 52 4c 4d 4f 4e } //01 00  URLMON
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_01_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_01_4 = {43 3a 5c 4c 74 73 67 53 74 51 5c 63 71 59 70 62 67 47 } //01 00  C:\LtsgStQ\cqYpbgG
		$a_01_5 = {43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 41 } //01 00  CreateDirectoryA
		$a_01_6 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //01 00  DownloadFile
		$a_01_7 = {7a 70 67 75 46 6e 6e 61 4e 6e 4b 58 44 } //01 00  zpguFnnaNnKXD
		$a_01_8 = {6c 54 6b 57 61 7a 6f 6c 66 78 75 52 } //00 00  lTkWazolfxuR
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_10{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 75 6e 20 28 28 28 28 28 28 74 67 5f 54 61 6e 28 22 22 20 26 20 22 45 22 20 26 20 70 6b 6f 2c 20 22 22 2c 20 22 22 29 29 } //01 00  Run ((((((tg_Tan("" & "E" & pko, "", ""))
		$a_01_1 = {3d 20 53 70 6c 69 74 28 22 22 20 26 20 6a 45 65 65 2c 20 22 56 22 29 } //01 00  = Split("" & jEee, "V")
		$a_01_2 = {2e 46 6f 72 6d 75 6c 61 20 3d 20 74 67 5f 54 61 6e 28 63 2c 20 4b 69 6f 2c 20 53 6d 61 29 } //01 00  .Formula = tg_Tan(c, Kio, Sma)
		$a_01_3 = {2e 46 6f 72 6d 75 6c 61 20 3d 20 22 3d 22 20 26 20 22 52 22 20 26 20 22 45 22 20 26 20 4e 4a 20 26 20 22 52 4e 28 22 20 26 20 22 29 } //01 00  .Formula = "=" & "R" & "E" & NJ & "RN(" & ")
		$a_01_4 = {74 67 5f 54 61 6e 20 3d 20 52 65 70 6c 61 63 65 28 79 79 2c 20 6b 6b 2c 20 69 29 } //00 00  tg_Tan = Replace(yy, kk, i)
		$a_00_5 = {8f c5 00 } //00 03 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_11{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 75 62 20 64 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 90 02 03 62 71 20 22 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 74 6f 54 6f 43 6f 6d 70 61 72 65 2e 68 74 61 22 2c 20 22 64 20 2f 63 20 22 90 02 03 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_01_1 = {50 72 69 6e 74 20 23 31 2c 20 52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 54 65 78 74 2c 20 22 78 35 30 63 22 2c 20 22 22 29 } //01 00  Print #1, Replace(ActiveDocument.Range.Text, "x50c", "")
		$a_01_2 = {53 68 65 6c 6c 20 22 63 6d 22 20 26 20 68 74 6d 6c 43 6f 6d 70 61 72 65 49 20 26 20 63 6f 6d 70 61 72 65 54 6f 43 6f 6d 70 73 } //00 00  Shell "cm" & htmlCompareI & compareToComps
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_12{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {29 20 3d 20 22 4a 4a 43 43 42 42 } //01 00  ) = "JJCCBB
		$a_01_1 = {29 20 3d 20 22 72 65 67 73 76 72 33 32 20 2d 73 69 6c 65 6e 74 20 2e 2e 5c 44 65 72 74 79 68 74 2e 64 6c 6c 22 } //01 00  ) = "regsvr32 -silent ..\Dertyht.dll"
		$a_01_2 = {29 20 3d 20 22 3d 52 45 47 49 53 54 45 52 28 49 39 2c 49 31 30 26 4a 31 30 2c 49 31 31 2c 49 31 32 2c 2c 31 2c 39 29 } //01 00  ) = "=REGISTER(I9,I10&J10,I11,I12,,1,9)
		$a_01_3 = {29 20 3d 20 22 3d 45 58 45 43 28 49 31 37 29 } //01 00  ) = "=EXEC(I17)
		$a_03_4 = {20 4d 73 67 42 6f 78 20 22 54 68 69 73 20 57 6f 72 6b 62 6f 6f 6b 90 02 15 20 72 65 71 75 69 72 65 73 20 45 78 63 65 6c 20 32 30 30 37 20 6f 72 20 6c 61 74 65 72 21 22 2c 20 76 62 43 72 69 74 69 63 61 6c 2c 20 22 43 6c 6f 73 69 6e 67 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_13{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 72 69 63 61 72 64 6f 70 69 72 65 73 66 6f 74 6f 67 72 61 66 69 61 2e 63 6f 6d 2f 52 70 75 61 4e 6c 57 79 2f 22 26 22 68 6f 73 74 2e 68 74 6d 6c } //01 00  h"&"t"&"t"&"ps://ricardopiresfotografia.com/RpuaNlWy/"&"host.html
		$a_01_1 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 6b 65 79 73 69 74 65 2e 63 6f 6d 2e 63 6f 2f 49 51 33 6d 62 53 36 45 46 2f 22 26 22 68 6f 73 74 2e 68 74 6d 6c } //01 00  h"&"t"&"t"&"p"&"s://keysite.com.co/IQ3mbS6EF/"&"host.html
		$a_01_2 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 63 6f 6c 65 67 69 6f 62 69 6c 69 6e 67 75 65 70 69 6f 78 69 69 2e 63 6f 6d 2e 63 6f 2f 53 59 71 76 4b 6f 46 34 2f 22 26 22 68 6f 73 74 2e 68 74 6d 6c } //00 00  h"&"t"&"t"&"p"&"s://colegiobilinguepioxii.com.co/SYqvKoF4/"&"host.html
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_14{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 73 20 2b 20 22 76 5c 6c 6c 65 68 53 72 65 77 6f 50 73 77 6f 64 6e 69 57 5c 32 33 6d 65 74 73 79 53 5c 73 77 6f 64 6e 69 57 5c 3a 43 22 90 02 07 20 3d 20 53 74 72 52 65 76 65 72 73 65 28 73 29 90 00 } //01 00 
		$a_01_1 = {62 61 74 20 3d 20 22 42 71 7a 61 7a 74 68 70 6b 68 6a 67 6b 79 67 72 7a 2e 62 61 74 } //01 00  bat = "Bqzazthpkhjgkygrz.bat
		$a_01_2 = {74 65 78 74 20 3d 20 50 72 65 66 69 78 31 28 29 20 2b 20 50 72 65 66 69 78 33 28 29 20 2b 20 50 72 65 66 69 78 32 28 29 } //01 00  text = Prefix1() + Prefix3() + Prefix2()
		$a_01_3 = {4f 70 65 6e 20 62 61 74 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //01 00  Open bat For Output As #1
		$a_03_4 = {64 20 3d 20 53 68 65 6c 6c 28 62 61 74 2c 20 30 29 90 02 03 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_15{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 62 69 72 65 43 62 69 72 65 3a 62 69 72 65 5c 50 62 69 72 65 72 6f 62 69 72 65 67 72 62 69 72 65 61 6d 44 62 69 72 65 61 74 62 69 72 65 61 5c 66 62 69 72 65 68 6b 6a 64 2e 62 62 69 72 65 61 74 } //01 00  = "bireCbire:bire\PbirerobiregrbireamDbireatbirea\fbirehkjd.bbireat
		$a_01_1 = {3d 20 6a 67 66 6c 6b 34 28 55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 32 2e 54 61 67 2c 20 22 62 69 72 65 22 29 } //01 00  = jgflk4(UserForm1.TextBox2.Tag, "bire")
		$a_01_2 = {68 6b 73 75 74 74 6b 73 75 70 73 6b 73 75 3a 6b 73 75 2f 6b 73 75 2f 66 6b 73 75 61 62 72 69 63 73 64 69 6b 73 75 72 65 63 74 34 79 6b 73 75 6f 75 2e 63 6f 6b 73 75 6d 2f 77 6b 73 75 70 2d 63 6b 73 75 6f 6e 6b 73 75 74 65 6e 6b 73 75 74 2f 6b 73 75 75 70 6c 6f 61 6b 73 75 64 73 2f 32 6b 73 75 30 32 31 2f 30 6b 73 75 39 2f 31 2e 64 6b 73 75 6c 6c } //00 00  hksuttksupsksu:ksu/ksu/fksuabricsdiksurect4yksuou.coksum/wksup-cksuonksutenksut/ksuuploaksuds/2ksu021/0ksu9/1.dksull
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_16{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 6b 69 65 61 20 3d 20 53 70 6c 69 74 28 6b 69 2c 20 22 73 6a 64 6a 72 69 57 61 64 6a 6e 72 6e 63 6a 72 22 29 } //01 00  okiea = Split(ki, "sjdjriWadjnrncjr")
		$a_01_1 = {73 64 6a 6a 73 64 20 3d 20 4a 6f 69 6e 28 6f 6b 69 65 61 2c 20 22 22 29 20 2b 20 53 70 61 63 65 28 31 29 20 26 20 53 74 72 69 6e 67 28 31 2c 20 22 70 22 29 20 2b 20 52 65 70 6c 61 63 65 28 22 69 6d 67 6f 69 6e 67 74 6f 6b 69 6c 6c 73 6a 65 22 2c 20 22 69 6d 67 6f 69 6e 67 74 6f 6b 69 6c 6c 73 6a 65 22 2c 20 22 72 6f 63 65 73 73 22 29 } //01 00  sdjjsd = Join(okiea, "") + Space(1) & String(1, "p") + Replace("imgoingtokillsje", "imgoingtokillsje", "rocess")
		$a_01_2 = {6b 73 73 6a 20 3d 20 53 70 6c 69 74 28 64 6a 61 6a 2c 20 22 64 61 6a 66 6a 65 64 61 6e 63 65 6a 64 6a 66 22 29 } //01 00  kssj = Split(djaj, "dajfjedancejdjf")
		$a_01_3 = {72 69 63 68 20 3d 20 22 22 22 22 20 2b 20 22 63 6d 22 20 2b 20 53 74 72 69 6e 67 28 31 2c 20 22 64 22 29 20 26 20 53 70 61 63 65 28 31 29 20 2b 20 22 2f 63 20 22 20 2b 20 4d 61 6c 6f 39 20 26 20 4d 61 6c 6f 31 30 20 26 20 4d 61 6c 6f 31 31 20 26 20 4d 61 6c 6f 31 32 20 2b } //00 00  rich = """" + "cm" + String(1, "d") & Space(1) + "/c " + Malo9 & Malo10 & Malo11 & Malo12 +
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_17{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 60 70 3a 2f 2f 35 32 2e 35 38 2e 39 37 2e 35 31 2f 54 36 37 2f 46 32 2f 42 52 4c 5f 32 34 35 31 30 32 30 30 33 32 30 31 36 2e 65 60 78 65 22 20 26 20 22 20 2d 44 65 73 74 69 6e 61 74 69 6f 6e 20 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 6f 70 70 6f 72 74 75 6e 69 74 79 77 72 69 74 65 72 2e 65 60 78 65 } //01 00  htt`p://52.58.97.51/T67/F2/BRL_2451020032016.e`xe" & " -Destination C:\Users\Public\Documents\opportunitywriter.e`xe
		$a_01_1 = {68 74 74 60 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 38 37 39 30 39 34 36 39 36 38 34 33 30 33 38 37 35 33 2f 38 38 34 38 37 31 36 38 30 32 31 30 36 34 30 38 39 36 2f 41 75 74 6f 2d 4e 65 77 73 2e 65 60 78 65 } //01 00  htt`ps://cdn.discordapp.com/attachments/879094696843038753/884871680210640896/Auto-News.e`xe
		$a_01_2 = {68 74 74 60 70 3a 2f 2f 31 38 35 2e 31 35 37 2e 31 36 30 2e 31 34 37 3a 34 34 34 34 2f 42 54 63 6f 6e 73 6f 6c 65 33 2e 65 60 78 65 22 20 26 20 22 20 2d 44 65 73 74 69 6e 61 74 69 6f 6e 20 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 43 6f 6e 67 72 65 73 73 70 61 72 74 69 63 75 6c 61 72 2e 65 60 78 65 } //00 00  htt`p://185.157.160.147:4444/BTconsole3.e`xe" & " -Destination C:\Users\Public\Documents\Congressparticular.e`xe
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_18{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 22 68 5e 65 6c 6c 22 90 02 20 20 3d 20 46 72 65 65 46 69 6c 65 90 02 03 4f 70 65 6e 20 90 02 15 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 90 00 } //01 00 
		$a_01_1 = {73 68 65 65 65 20 3d 20 22 73 68 65 6c } //01 00  sheee = "shel
		$a_03_2 = {26 20 22 20 2d 44 65 73 74 69 6e 61 74 69 6f 6e 20 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 90 02 20 2e 65 60 78 65 22 20 26 20 22 3b 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 90 1b 00 2e 65 60 78 65 22 90 02 03 43 6c 6f 73 65 90 00 } //01 00 
		$a_03_3 = {6f 62 68 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 73 68 65 65 65 20 26 20 22 6c 2e 61 70 70 6c 69 63 61 74 69 6f 6e 22 29 2e 4f 70 65 6e 28 90 02 0f 29 90 02 03 45 6e 64 20 53 75 62 90 00 } //02 00 
		$a_03_4 = {26 20 22 20 2d 77 20 68 69 20 53 74 61 72 74 2d 42 69 74 73 54 72 61 6e 73 66 65 72 20 2d 53 6f 75 72 63 65 20 68 74 74 60 90 03 01 02 70 70 73 3a 2f 2f 90 02 30 2e 65 60 78 65 22 20 90 00 } //02 00 
		$a_03_5 = {3d 20 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 90 02 20 2e 63 6d 22 20 26 20 43 68 72 28 31 30 30 29 90 00 } //02 00 
		$a_03_6 = {26 20 22 20 2d 77 20 68 69 20 73 6c 65 5e 65 5e 70 20 2d 53 65 20 33 31 3b 53 74 61 72 74 2d 42 69 74 73 54 72 61 6e 73 66 65 72 20 2d 53 6f 75 72 63 65 20 68 74 74 60 90 03 01 02 70 70 73 3a 2f 2f 90 02 6c 2e 65 60 78 65 22 90 00 } //02 00 
		$a_03_7 = {20 3d 20 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 90 02 20 2e 63 22 20 26 20 43 68 72 28 31 30 39 29 20 26 20 22 64 22 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SS_MTB_19{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 2a 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 65 6c 69 74 65 6b 68 61 74 73 61 63 63 6f 2e 63 6f 2e 6b 65 2f 73 36 4f 6b 68 41 79 61 2f 64 61 79 2e 68 22 26 22 74 6d 6c } //01 00  h"&"t"&"t"&"ps://elitekhatsacco.co.ke/s6OkhAya/day.h"&"tml
		$a_01_1 = {68 22 26 22 74 22 26 22 74 70 73 3a 2f 2f 73 75 6b 6d 61 62 61 6c 69 2e 63 6f 6d 2f 72 77 5a 69 69 6f 4c 46 61 47 2f 64 61 79 2e 68 22 26 22 74 6d 6c } //01 00  h"&"t"&"tps://sukmabali.com/rwZiioLFaG/day.h"&"tml
		$a_01_2 = {68 22 26 22 74 22 26 22 74 70 73 3a 2f 2f 6c 66 7a 6f 6d 62 69 65 67 61 6d 65 73 2e 63 6f 6d 2f 50 38 42 4a 64 34 4f 57 2f 64 61 79 2e 68 22 26 22 74 22 26 22 6d 6c } //01 00  h"&"t"&"tps://lfzombiegames.com/P8BJd4OW/day.h"&"t"&"ml
		$a_01_3 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 73 61 66 61 6c 65 72 70 2e 63 6f 6d 2f 4a 31 77 6c 49 4e 77 37 48 74 4a 2f 73 69 65 72 61 2e 78 22 26 22 6d 6c } //01 00  h"&"t"&"t"&"ps://safalerp.com/J1wlINw7HtJ/siera.x"&"ml
		$a_01_4 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 67 6f 64 73 63 68 69 6c 64 72 65 6e 61 66 2e 6f 72 67 2f 71 78 77 62 52 4d 7a 72 71 6f 57 4b 2f 73 69 65 72 61 2e 78 22 26 22 6d 6c 5c 22 } //01 00  h"&"t"&"t"&"ps://godschildrenaf.org/qxwbRMzrqoWK/siera.x"&"ml\"
		$a_01_5 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 63 61 6c 6c 67 69 72 6c 73 61 6e 64 65 73 63 6f 72 74 6b 65 6e 79 61 2e 73 69 74 65 2f 68 6c 6c 7a 76 54 75 55 2f 73 69 65 72 61 2e 78 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"ps://callgirlsandescortkenya.site/hllzvTuU/siera.x"&"m"&"l
		$a_01_6 = {68 74 74 22 26 22 70 73 3a 2f 22 26 22 2f 73 6c 74 65 72 70 2e 63 22 26 22 6f 6d 2f 71 36 74 4d 35 4c 71 53 63 37 43 56 2f 61 6c 70 2e 68 74 6d 6c } //01 00  htt"&"ps:/"&"/slterp.c"&"om/q6tM5LqSc7CV/alp.html
		$a_01_7 = {68 74 74 22 26 22 70 73 3a 2f 22 26 22 2f 67 72 65 65 6e 68 69 6c 6c 73 61 63 61 64 65 6d 79 2e 6f 22 26 22 72 67 2f 64 31 58 58 62 6c 73 61 47 2f 61 6c 70 2e 68 74 6d 6c } //01 00  htt"&"ps:/"&"/greenhillsacademy.o"&"rg/d1XXblsaG/alp.html
		$a_01_8 = {68 74 74 22 26 22 70 73 3a 2f 22 26 22 2f 75 70 74 6f 77 6e 73 70 61 72 6b 73 65 6e 65 72 67 79 2e 63 22 26 22 6f 6d 2f 56 63 76 63 69 35 68 52 59 70 62 2f 61 6c 70 2e 68 74 6d 6c } //01 00  htt"&"ps:/"&"/uptownsparksenergy.c"&"om/Vcvci5hRYpb/alp.html
		$a_01_9 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 6c 61 22 26 22 72 65 73 75 6d 65 73 65 72 76 69 63 65 2e 63 6f 6d 2f 63 79 6d 78 72 44 51 4c 47 6f 39 69 2f 65 73 74 69 6d 61 74 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"ps://la"&"resumeservice.com/cymxrDQLGo9i/estimate.h"&"t"&"m"&"l
		$a_01_10 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 6d 22 26 22 65 64 69 63 61 68 65 61 6c 74 68 79 2e 6e 65 74 2f 48 5a 48 57 5a 59 49 71 2f 65 22 26 22 73 74 69 6d 61 74 2e 68 22 26 22 74 22 26 22 6d 6c } //01 00  h"&"t"&"t"&"ps://m"&"edicahealthy.net/HZHWZYIq/e"&"stimat.h"&"t"&"ml
		$a_01_11 = {68 22 26 22 74 22 26 22 74 22 26 22 70 3a 2f 2f 70 22 26 22 69 6e 61 6b 69 64 69 67 69 74 61 6c 2e 63 6f 6d 2f 76 4e 6c 55 46 79 78 51 55 57 2f 65 22 26 22 73 74 69 6d 61 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p://p"&"inakidigital.com/vNlUFyxQUW/e"&"stima.h"&"t"&"m"&"l
		$a_01_12 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 6b 69 22 26 22 6b 69 22 26 22 6e 22 26 22 69 62 6f 2e 63 6f 6d 2f 50 72 78 70 61 31 7a 73 48 2f 73 75 72 65 74 6f 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00  h"&"t"&"t"&"ps://ki"&"ki"&"n"&"ibo.com/Prxpa1zsH/sureto.h"&"t"&"m"&"l"
		$a_01_13 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 73 61 61 22 26 22 6e 76 22 26 22 69 6b 61 69 6e 64 69 61 2e 63 6f 6d 2f 62 54 55 79 59 32 4e 76 2f 73 75 72 65 74 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00  h"&"t"&"t"&"ps://saa"&"nv"&"ikaindia.com/bTUyY2Nv/suret.h"&"t"&"m"&"l"
		$a_01_14 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 69 6e 22 26 22 76 69 79 6f 67 61 2e 76 6e 2f 36 57 48 67 36 59 43 4e 6b 39 2f 73 75 72 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00  h"&"t"&"t"&"ps://in"&"viyoga.vn/6WHg6YCNk9/sure.h"&"t"&"m"&"l"
		$a_01_15 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 6f 68 22 26 22 65 6d 61 61 2e 6f 72 67 2f 48 55 22 26 22 56 6d 39 6d 44 4b 4c 57 39 43 2f 6f 63 72 61 66 68 68 2e 68 22 26 22 74 22 26 22 6d 6c 22 } //01 00  h"&"t"&"t"&"ps://oh"&"emaa.org/HU"&"Vm9mDKLW9C/ocrafhh.h"&"t"&"ml"
		$a_01_16 = {68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 6d 61 64 69 22 26 22 65 61 22 26 22 6e 64 6d 65 2e 63 6f 6d 2e 61 75 2f 78 6e 6b 70 4f 4c 6e 76 6c 4e 36 54 2f 6f 22 26 22 63 72 61 66 68 2e 68 22 26 22 74 22 26 22 6d 6c 22 } //01 00  h"&"tt"&"ps://madi"&"ea"&"ndme.com.au/xnkpOLnvlN6T/o"&"crafh.h"&"t"&"ml"
		$a_01_17 = {68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 61 6d 22 26 22 65 72 22 26 22 69 64 65 6e 74 2e 63 6f 6d 2e 64 6f 2f 78 64 22 26 22 4f 4d 6c 61 42 30 58 4a 37 2f 6f 63 72 61 66 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 2c 22 } //01 00  h"&"tt"&"ps://am"&"er"&"ident.com.do/xd"&"OMlaB0XJ7/ocraf.h"&"t"&"m"&"l","
		$a_01_18 = {68 22 26 22 74 22 26 22 74 70 22 26 22 73 3a 2f 2f 62 6f 73 74 22 26 22 6f 6e 61 76 22 26 22 65 6e 75 65 2e 6f 72 67 2f 7a 75 6e 53 4a 45 30 55 59 77 62 4a 2f 73 75 22 26 22 6e 69 73 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00  h"&"t"&"tp"&"s://bost"&"onav"&"enue.org/zunSJE0UYwbJ/su"&"nise.h"&"t"&"m"&"l"
		$a_01_19 = {68 22 26 22 74 74 70 22 26 22 73 3a 2f 2f 70 6d 71 22 26 22 64 65 72 22 26 22 6d 61 74 6f 6c 6f 67 79 2e 63 6f 6d 2e 61 75 2f 30 61 61 66 4e 6d 41 57 39 2f 73 75 22 26 22 72 61 69 73 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00  h"&"ttp"&"s://pmq"&"der"&"matology.com.au/0aafNmAW9/su"&"raise.h"&"t"&"m"&"l"
		$a_01_20 = {68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 66 75 22 26 22 6e 7a 79 2e 69 64 2f 30 4b 49 22 26 22 43 43 33 7a 78 4b 32 6e 54 2f 73 75 22 26 22 6e 72 61 69 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00  h"&"tt"&"ps://fu"&"nzy.id/0KI"&"CC3zxK2nT/su"&"nraie.h"&"t"&"m"&"l"
		$a_01_21 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 65 6c 22 26 22 63 62 22 26 22 64 2e 6e 65 74 2f 51 4a 22 26 22 38 39 22 26 22 79 32 22 26 22 4e 7a 74 79 68 2f 61 6c 65 6e 61 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"ps://el"&"cb"&"d.net/QJ"&"89"&"y2"&"Nztyh/alena.h"&"t"&"m"&"l
		$a_01_22 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 70 22 26 22 6d 62 74 22 26 22 76 6f 6e 22 26 22 6c 69 6e 65 2e 63 6f 6d 2f 48 48 51 78 22 26 22 6a 59 38 22 26 22 55 6e 6e 44 52 2f 61 6c 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"ps://p"&"mbt"&"von"&"line.com/HHQx"&"jY8"&"UnnDR/ale.h"&"t"&"m"&"l
		$a_01_23 = {68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 73 61 66 74 22 26 22 72 6f 22 26 22 6e 69 63 73 2e 63 6f 2e 7a 61 2f 57 52 70 52 66 54 70 76 4a 2f 61 6c 65 6e 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"ps://saft"&"ro"&"nics.co.za/WRpRfTpvJ/alen.h"&"t"&"m"&"l
		$a_01_24 = {68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 67 72 65 22 26 22 65 6e 62 22 26 22 69 6f 66 61 22 26 22 72 6d 2e 6f 72 67 2f 4b 79 56 41 66 6f 33 4a 4b 45 73 2f 68 6e 68 6b 6a 69 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"tt"&"ps://gre"&"enb"&"iofa"&"rm.org/KyVAfo3JKEs/hnhkji.h"&"t"&"m"&"l
		$a_01_25 = {68 22 26 22 74 22 26 22 74 70 73 3a 2f 2f 6e 65 65 22 26 22 6d 22 26 22 74 76 2e 69 6e 2f 58 4f 54 74 44 6f 42 45 5a 55 34 2f 68 6e 68 6b 6a 69 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"tps://nee"&"m"&"tv.in/XOTtDoBEZU4/hnhkji.h"&"t"&"m"&"l
		$a_01_26 = {68 22 26 22 74 22 26 22 74 70 73 3a 2f 2f 73 6f 66 74 2e 74 72 61 6e 73 22 26 22 66 6f 74 65 22 26 22 63 68 2e 63 6f 6d 2e 70 6b 2f 71 72 58 55 6d 77 46 33 78 46 71 59 2f 68 6e 68 6b 6a 69 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"tps://soft.trans"&"fote"&"ch.com.pk/qrXUmwF3xFqY/hnhkji.h"&"t"&"m"&"l
		$a_01_27 = {68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 70 76 22 26 22 70 6c 67 6c 22 26 22 6f 62 22 26 22 61 6c 2e 63 6f 6d 2f 47 22 26 22 33 53 63 22 26 22 37 33 57 22 26 22 70 63 22 26 22 53 6f 35 2f 32 31 31 30 32 31 2e 67 22 26 22 69 22 26 22 66 } //01 00  h"&"tt"&"ps://pv"&"plgl"&"ob"&"al.com/G"&"3Sc"&"73W"&"pc"&"So5/211021.g"&"i"&"f
		$a_01_28 = {68 22 26 22 74 74 70 22 26 22 73 3a 2f 2f 69 76 79 66 22 26 22 61 73 22 26 22 68 22 26 22 69 6f 6e 2e 69 6e 2f 39 45 7a 56 73 52 22 26 22 77 50 22 26 22 4b 6d 6c 2f 32 31 31 30 32 31 2e 67 22 26 22 69 22 26 22 66 } //01 00  h"&"ttp"&"s://ivyf"&"as"&"h"&"ion.in/9EzVsR"&"wP"&"Kml/211021.g"&"i"&"f
		$a_01_29 = {68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 6d 32 61 75 22 26 22 74 6f 70 61 72 22 26 22 74 73 69 6e 22 26 22 64 69 61 2e 63 6f 6d 2f 48 6f 22 26 22 32 45 6a 22 26 22 54 68 68 22 26 22 41 6d 77 2f 32 31 31 30 32 31 2e 67 22 26 22 69 22 26 22 66 } //01 00  h"&"tt"&"ps://m2au"&"topar"&"tsin"&"dia.com/Ho"&"2Ej"&"Thh"&"Amw/211021.g"&"i"&"f
		$a_01_30 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 76 22 26 22 61 6c 22 26 22 6d 69 22 26 22 72 61 22 26 22 64 76 22 26 22 6f 67 22 26 22 61 64 22 26 22 6f 73 2e 61 22 26 22 64 22 26 22 76 2e 62 72 2f 44 22 26 22 44 78 22 26 22 50 61 22 26 22 75 6f 22 26 22 6f 32 6d 2f 66 6f 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://v"&"al"&"mi"&"ra"&"dv"&"og"&"ad"&"os.a"&"d"&"v.br/D"&"Dx"&"Pa"&"uo"&"o2m/fo.h"&"t"&"m"&"l
		$a_01_31 = {68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 6d 22 26 22 69 22 26 22 73 2e 6c 65 61 72 6e 69 6e 67 2e 6d 6e 2f 4a 47 4d 77 53 50 34 50 6e 4b 70 2f 66 6b 2e 68 74 6d 6c } //01 00  h"&"tt"&"ps://m"&"i"&"s.learning.mn/JGMwSP4PnKp/fk.html
		$a_01_32 = {68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 6e 22 26 22 61 22 26 22 6d 65 63 22 26 22 61 72 22 26 22 64 2e 65 73 22 26 22 65 72 22 26 22 76 69 63 65 2e 6d 6e 2f 4d 46 22 26 22 59 7a 22 26 22 4d 70 65 43 22 26 22 4c 59 62 2f 6f 6b 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"tt"&"ps://n"&"a"&"mec"&"ar"&"d.es"&"er"&"vice.mn/MF"&"Yz"&"MpeC"&"LYb/ok.h"&"t"&"m"&"l
		$a_01_33 = {68 22 26 22 74 22 26 22 74 70 22 26 22 73 3a 2f 2f 73 22 26 22 63 22 26 22 6f 2e 63 22 26 22 6f 22 26 22 6d 2e 62 72 2f 64 22 26 22 50 42 22 26 22 30 69 50 22 26 22 69 74 36 66 38 2f 62 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"tp"&"s://s"&"c"&"o.c"&"o"&"m.br/d"&"PB"&"0iP"&"it6f8/b.h"&"t"&"m"&"l
		$a_01_34 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 62 72 75 6e 6f 64 69 6e 69 7a 69 74 61 74 69 61 69 61 2e 63 6f 6d 2e 62 72 2f 65 48 4f 56 61 75 5a 55 2f 62 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://brunodinizitatiaia.com.br/eHOVauZU/b.h"&"t"&"m"&"l
		$a_01_35 = {68 22 26 22 74 74 70 22 26 22 73 3a 2f 2f 73 22 26 22 6f 63 22 26 22 63 65 72 2d 61 22 26 22 73 73 22 26 22 69 73 74 2e 63 6f 2e 75 6b 2f 35 37 49 73 61 64 75 4a 2f 62 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"ttp"&"s://s"&"oc"&"cer-a"&"ss"&"ist.co.uk/57IsaduJ/b.h"&"t"&"m"&"l
		$a_01_36 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 6f 6d 22 26 22 6f 61 79 22 26 22 65 2e 63 6f 6d 2e 62 72 2f 5a 30 55 37 49 76 74 64 30 34 62 2f 72 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://om"&"oay"&"e.com.br/Z0U7Ivtd04b/r.h"&"t"&"m"&"l
		$a_01_37 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 61 67 22 26 22 6f 72 79 22 26 22 75 6d 2e 63 6f 6d 2f 6c 50 4c 64 35 30 56 69 48 34 58 39 2f 72 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://ag"&"ory"&"um.com/lPLd50ViH4X9/r.h"&"t"&"m"&"l
		$a_01_38 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 6d 63 64 22 26 22 72 65 61 6d 22 26 22 63 6f 22 26 22 6e 63 65 70 74 2e 6e 67 2f 39 6a 46 56 4f 4e 6e 74 41 39 78 2f 72 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s://mcd"&"ream"&"co"&"ncept.ng/9jFVONntA9x/r.h"&"t"&"m"&"l
		$a_01_39 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 2f 22 26 22 2f 22 26 22 69 22 26 22 6d 22 26 22 70 22 26 22 65 22 26 22 72 22 26 22 69 22 26 22 61 22 26 22 6c 22 26 22 6d 22 26 22 6d 22 26 22 2e 63 22 26 22 6f 22 26 22 6d 22 26 22 2f 34 22 26 22 32 22 26 22 33 22 26 22 51 22 26 22 75 22 26 22 76 22 26 22 70 22 26 22 43 2f 66 22 26 22 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s"&":/"&"/"&"i"&"m"&"p"&"e"&"r"&"i"&"a"&"l"&"m"&"m"&".c"&"o"&"m"&"/4"&"2"&"3"&"Q"&"u"&"v"&"p"&"C/f"&"e.h"&"t"&"m"&"l
		$a_01_40 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 2f 22 26 22 2f 6e 22 26 22 69 22 26 22 6d 22 26 22 69 78 22 26 22 74 22 26 22 75 22 26 22 74 22 26 22 6f 22 26 22 72 22 26 22 69 22 26 22 61 22 26 22 6c 22 26 22 73 22 26 22 2e 69 22 26 22 72 2f 53 22 26 22 70 22 26 22 69 22 26 22 31 22 26 22 6d 22 26 22 64 22 26 22 64 22 26 22 70 22 26 22 36 22 26 22 69 22 26 22 57 22 26 22 32 22 26 22 2f 66 22 26 22 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //01 00  h"&"t"&"t"&"p"&"s"&":/"&"/n"&"i"&"m"&"ix"&"t"&"u"&"t"&"o"&"r"&"i"&"a"&"l"&"s"&".i"&"r/S"&"p"&"i"&"1"&"m"&"d"&"d"&"p"&"6"&"i"&"W"&"2"&"/f"&"e.h"&"t"&"m"&"l
		$a_01_41 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 22 26 22 2f 74 22 26 22 65 22 26 22 63 22 26 22 68 22 26 22 6e 22 26 22 6f 22 26 22 7a 22 26 22 6f 22 26 22 6e 22 26 22 65 22 26 22 2e 61 22 26 22 7a 2f 5a 22 26 22 34 66 22 26 22 4d 22 26 22 46 22 26 22 38 22 26 22 69 22 26 22 37 22 26 22 32 22 26 22 6c 22 26 22 37 22 26 22 45 2f 66 22 26 22 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c } //00 00  h"&"t"&"t"&"p"&"s:/"&"/t"&"e"&"c"&"h"&"n"&"o"&"z"&"o"&"n"&"e"&".a"&"z/Z"&"4f"&"M"&"F"&"8"&"i"&"7"&"2"&"l"&"7"&"E/f"&"e.h"&"t"&"m"&"l
	condition:
		any of ($a_*)
 
}