
rule PWS_Win32_Zbot_gen_A{
	meta:
		description = "PWS:Win32/Zbot.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,52 01 20 01 52 00 00 14 00 "
		
	strings :
		$a_01_0 = {5f 5f 53 59 53 54 45 4d 5f 5f 37 46 34 35 32 33 45 35 5f 5f } //14 00  __SYSTEM__7F4523E5__
		$a_01_1 = {5f 5f 53 59 53 54 45 4d 5f 5f 39 31 43 33 38 39 30 35 5f 5f } //0a 00  __SYSTEM__91C38905__
		$a_01_2 = {41 42 4f 46 41 20 61 6e 73 77 65 72 73 3a } //0a 00  ABOFA answers:
		$a_01_3 = {41 47 72 61 62 62 65 64 20 64 61 74 61 20 66 72 6f 6d 3a 20 25 73 } //1e 00  AGrabbed data from: %s
		$a_01_4 = {73 63 72 65 65 6e 73 5c 25 73 5c 25 30 34 58 5f 25 30 38 58 2e 6a 70 67 } //1e 00  screens\%s\%04X_%08X.jpg
		$a_01_5 = {3d 2d 3d 2d 50 61 4e 64 41 21 24 32 2b 29 28 2a } //1e 00  =-=-PaNdA!$2+)(*
		$a_01_6 = {41 25 73 3a 2f 2f 25 73 3a 25 73 40 25 75 2e 25 75 2e 25 75 2e 25 75 3a 25 75 2f } //0a 00  A%s://%s:%s@%u.%u.%u.%u:%u/
		$a_01_7 = {25 73 44 61 74 61 3a } //1e 00  %sData:
		$a_01_8 = {63 65 72 74 73 5c 25 73 5f 25 30 32 75 5f 25 30 32 75 5f 25 30 34 75 2e 70 66 78 } //1e 00  certs\%s_%02u_%02u_%04u.pfx
		$a_01_9 = {66 69 6c 65 73 65 61 72 63 68 5c 25 30 36 58 5f 25 73 } //1e 00  filesearch\%06X_%s
		$a_01_10 = {41 68 74 74 70 73 3a 2f 2f 6f 6e 6c 69 6e 65 65 61 73 74 23 2e 62 61 6e 6b 6f 66 61 6d 65 72 69 63 61 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 69 61 73 2f 2a 2f 47 6f 74 6f 57 65 6c 63 6f 6d 65 } //1e 00  Ahttps://onlineeast#.bankofamerica.com/cgi-bin/ias/*/GotoWelcome
		$a_01_11 = {41 6b 62 6f 74 } //0a 00  Akbot
		$a_01_12 = {41 46 45 41 54 } //1e 00  AFEAT
		$a_01_13 = {2d 21 2d 40 68 6a 30 31 4e 2e 2f 31 40 7d 3b 7c } //1e 00  -!-@hj01N./1@};|
		$a_01_14 = {25 73 5c 25 30 34 58 41 67 64 69 70 6c 75 73 2e 64 6c 6c } //0a 00  %s\%04XAgdiplus.dll
		$a_01_15 = {41 50 53 20 64 61 74 61 3a } //1e 00  APS data:
		$a_01_16 = {41 43 75 73 74 6f 6d 65 72 53 65 72 76 69 63 65 4d 65 6e 75 45 6e 74 72 79 50 6f 69 6e 74 3f 63 75 73 74 41 63 74 69 6f 6e 3d 37 35 } //1e 00  ACustomerServiceMenuEntryPoint?custAction=75
		$a_01_17 = {77 73 6e 70 6f 65 6d } //1e 00  wsnpoem
		$a_01_18 = {41 72 65 6e 61 6d 65 5f 62 6f 74 } //1e 00  Arename_bot
		$a_01_19 = {2a 2e 73 6f 6c } //0a 00  *.sol
		$a_01_20 = {41 70 73 74 6f 72 65 63 2e 64 6c 6c } //02 00  Apstorec.dll
		$a_01_21 = {41 41 63 63 65 70 74 2d 45 6e 63 6f 64 69 6e 67 3a } //01 00  AAccept-Encoding:
		$a_01_22 = {50 72 6f 78 79 2d } //01 00  Proxy-
		$a_01_23 = {43 6f 6e 74 65 6e 74 2d 4c 65 6e 67 74 68 3a 20 } //01 00  Content-Length: 
		$a_01_24 = {41 43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 25 73 } //01 00  AContent-Type: %s
		$a_01_25 = {48 6f 73 74 3a 20 } //01 00  Host: 
		$a_00_26 = {48 54 54 50 2f 31 2e 30 20 32 30 30 20 43 6f 6e 6e 65 63 74 69 6f 6e 20 65 73 74 61 62 6c 69 73 68 65 64 } //01 00  HTTP/1.0 200 Connection established
		$a_01_27 = {50 72 6f 78 79 2d 43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 } //02 00  Proxy-Connection: 
		$a_01_28 = {41 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 36 2e 30 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 31 29 } //02 00  AMozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)
		$a_01_29 = {41 63 6f 6f 6b 69 65 3a } //01 00  Acookie:
		$a_01_30 = {43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 } //01 00  Connection: 
		$a_01_31 = {41 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //01 00  Aapplication/x-www-form-urlencoded
		$a_01_32 = {2a 3c 73 65 6c 65 63 74 20 } //02 00  *<select 
		$a_01_33 = {43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 63 6c 6f 73 65 } //02 00  Connection: close
		$a_01_34 = {2a 3c 69 6e 70 75 74 20 2a 76 61 6c 75 65 3d 22 } //01 00  *<input *value="
		$a_00_35 = {52 65 66 65 72 65 72 3a 20 25 73 } //02 00  Referer: %s
		$a_01_36 = {2a 3c 6f 70 74 69 6f 6e 20 20 73 65 6c 65 63 74 65 64 } //02 00  *<option  selected
		$a_01_37 = {2a 6b 65 65 70 2d 61 6c 69 76 65 2a } //01 00  *keep-alive*
		$a_01_38 = {43 4f 4e 4e 45 43 54 20 } //02 00  CONNECT 
		$a_01_39 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 20 6e 74 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 6e 65 74 77 6f 72 6b } //02 00  software\microsoft\windows nt\currentversion\network
		$a_00_40 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 72 75 6e } //02 00  software\microsoft\windows\currentversion\run
		$a_01_41 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 65 78 70 6c 6f 72 65 72 5c 63 6f 6d 64 6c 67 33 32 } //02 00  software\microsoft\windows\currentversion\explorer\comdlg32
		$a_00_42 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 20 6e 74 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 77 69 6e 6c 6f 67 6f 6e } //01 00  software\microsoft\windows nt\currentversion\winlogon
		$a_00_43 = {64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //02 00  drivers\etc\hosts
		$a_00_44 = {5c 5c 2e 5c 70 69 70 65 5c } //01 00  \\.\pipe\
		$a_01_45 = {4d 61 63 72 6f 6d 65 64 69 61 5c 46 6c 61 73 68 20 50 6c 61 79 65 72 } //01 00  Macromedia\Flash Player
		$a_01_46 = {63 72 79 70 74 33 32 2e 64 6c 6c } //05 00  crypt32.dll
		$a_01_47 = {41 72 65 78 65 63 69 } //01 00  Arexeci
		$a_01_48 = {41 47 64 69 70 6c 75 73 53 74 61 72 74 75 70 } //05 00  AGdiplusStartup
		$a_01_49 = {41 62 6c 6f 63 6b 5f 66 61 6b 65 } //01 00  Ablock_fake
		$a_01_50 = {41 53 4b 49 50 50 45 44 20 54 41 4e 3a 20 } //02 00  ASKIPPED TAN: 
		$a_01_51 = {41 75 6e 62 6c 6f 63 6b 5f 75 72 6c } //02 00  Aunblock_url
		$a_01_52 = {41 73 6f 66 74 77 61 72 65 } //01 00  Asoftware
		$a_01_53 = {41 47 52 41 42 42 45 44 20 54 41 4e 3a 20 } //02 00  AGRABBED TAN: 
		$a_01_54 = {41 48 61 6c 6c } //05 00  AHall
		$a_01_55 = {41 75 6e 62 6c 6f 63 6b 5f 66 61 6b 65 } //05 00  Aunblock_fake
		$a_01_56 = {41 61 6e 6f 6e 79 6d 6f 75 73 } //05 00  Aanonymous
		$a_01_57 = {41 62 6c 6f 63 6b 5f 75 72 6c } //05 00  Ablock_url
		$a_01_58 = {41 4b 65 79 73 3a 20 } //01 00  AKeys: 
		$a_01_59 = {41 53 54 41 54 } //05 00  ASTAT
		$a_01_60 = {39 20 3a 32 3a 38 3a 42 3a 4f 3a 54 3a 5a 3a 60 3a 67 3a } //02 00  9 :2:8:B:O:T:Z:`:g:
		$a_01_61 = {5a 43 49 44 3a 20 25 73 } //01 00  ZCID: %s
		$a_01_62 = {26 6c 63 70 3d } //01 00  &lcp=
		$a_01_63 = {3a 53 74 72 69 6e 67 44 61 74 61 } //01 00  :StringData
		$a_01_64 = {69 6d 61 67 65 2f 6a 70 65 67 } //04 00  image/jpeg
		$a_01_65 = {49 6b 7b 77 76 41 61 70 63 67 64 31 29 25 } //01 00  Ik{wvAapcgd1)%
		$a_01_66 = {25 25 30 25 75 75 } //05 00  %%0%uu
		$a_01_67 = {74 5c 77 69 6e 64 41 73 79 73 74 65 6d } //03 00  t\windAsystem
		$a_01_68 = {61 75 64 69 6f 2e 64 6c 6c } //03 00  audio.dll
		$a_00_69 = {6f 75 74 70 6f 73 74 2e 65 78 65 } //03 00  outpost.exe
		$a_01_70 = {76 69 64 65 6f 2e 64 6c 6c } //03 00  video.dll
		$a_01_71 = {6e 74 6f 73 2e 65 78 65 } //01 00  ntos.exe
		$a_00_72 = {63 73 72 73 73 2e 65 78 65 } //01 00  csrss.exe
		$a_00_73 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //03 00  explorer.exe
		$a_00_74 = {73 76 63 68 6f 73 74 2e 65 78 65 } //03 00  svchost.exe
		$a_00_75 = {7a 6c 63 6c 69 65 6e 74 2e 65 78 65 } //01 00  zlclient.exe
		$a_01_76 = {25 73 5f 25 30 38 58 } //01 00  %s_%08X
		$a_01_77 = {41 51 25 75 3a 20 25 73 } //02 00  AQ%u: %s
		$a_01_78 = {41 2a 25 75 2e 25 75 2e 25 75 2e 25 75 2a } //03 00  A*%u.%u.%u.%u*
		$a_01_79 = {25 30 38 58 2e 75 66 } //02 00  %08X.uf
		$a_01_80 = {25 30 38 58 25 30 38 58 25 30 38 58 25 58 } //01 00  %08X%08X%08X%X
		$a_01_81 = {41 25 75 3a 20 25 73 } //00 00  A%u: %s
	condition:
		any of ($a_*)
 
}