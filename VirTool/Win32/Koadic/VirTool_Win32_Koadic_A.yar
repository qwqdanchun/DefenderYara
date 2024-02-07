
rule VirTool_Win32_Koadic_A{
	meta:
		description = "VirTool:Win32/Koadic.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 09 00 00 01 00 "
		
	strings :
		$a_81_0 = {3d 6e 65 77 20 41 63 74 69 76 65 58 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 3b } //02 00  =new ActiveXObject("WScript.Shell");
		$a_81_1 = {3d 22 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 22 3b } //01 00  ="999999999999999";
		$a_81_2 = {28 22 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 2d 6e 20 32 22 2c 66 61 6c 73 65 29 3b 7d 7d 7d } //01 00  ("ping 127.0.0.1 -n 2",false);}}}
		$a_81_3 = {3d 22 53 65 6c 65 63 74 20 2a 20 46 72 6f 6d 20 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 } //01 00  ="Select * From Win32_Process"
		$a_81_4 = {28 29 2b 22 2e 74 78 74 22 3b } //01 00  ()+".txt";
		$a_81_5 = {2e 72 75 6e 28 22 63 65 72 74 75 74 69 6c 20 2d 65 6e 63 6f 64 65 68 65 78 20 22 } //01 00  .run("certutil -encodehex "
		$a_81_6 = {2e 47 65 74 28 22 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 } //01 00  .Get("Win32_Process")
		$a_81_7 = {32 30 31 2c 73 74 72 65 61 6d 2e 53 69 7a 65 29 3b } //01 00  201,stream.Size);
		$a_81_8 = {2e 6f 70 65 6e 28 27 27 2c 27 5f 73 65 6c 66 27 2c 27 27 29 } //00 00  .open('','_self','')
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Koadic_A_2{
	meta:
		description = "VirTool:Win32/Koadic.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0e 00 00 01 00 "
		
	strings :
		$a_81_0 = {3d 6e 65 77 20 41 63 74 69 76 65 58 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 3b } //01 00  =new ActiveXObject("WScript.Shell");
		$a_81_1 = {3d 22 73 74 61 67 65 22 } //01 00  ="stage"
		$a_81_2 = {3f 73 69 64 3d } //01 00  ?sid=
		$a_81_3 = {3b 63 73 72 66 3d } //01 00  ;csrf=
		$a_81_4 = {2b 6e 65 74 2e 43 6f 6d 70 75 74 65 72 4e 61 6d 65 3b } //01 00  +net.ComputerName;
		$a_81_5 = {28 22 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 2d 6e 20 32 22 2c 66 61 6c 73 65 29 3b 7d 7d 7d } //01 00  ("ping 127.0.0.1 -n 2",false);}}}
		$a_81_6 = {2e 52 75 6e 28 63 6d 64 2c 30 2c 21 66 6f 72 6b 29 3b 7d } //01 00  .Run(cmd,0,!fork);}
		$a_81_7 = {28 29 2b 22 2e 74 78 74 22 29 } //01 00  ()+".txt")
		$a_81_8 = {2b 6f 73 62 75 69 6c 64 3b 7d } //01 00  +osbuild;}
		$a_81_9 = {5c 5c 2e 2e 5c 5c 2e 2e 5c 5c 2e 2e 5c 5c 6d 73 68 74 6d 6c 2c 52 75 6e 48 54 4d 4c 41 70 70 6c 69 63 61 74 69 6f 6e 22 } //01 00  \\..\\..\\..\\mshtml,RunHTMLApplication"
		$a_81_10 = {73 63 72 6f 62 6a 2e 64 6c 6c 22 3b 69 66 28 66 6f 72 6b 33 32 42 69 74 29 } //01 00  scrobj.dll";if(fork32Bit)
		$a_81_11 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 6a 61 76 61 73 63 72 69 70 74 3a 5c 22 5c 5c 2e 2e 5c 5c 6d 73 68 74 6d 6c 2c } //01 00  rundll32.exe javascript:\"\\..\\mshtml,
		$a_81_12 = {22 77 6d 69 63 20 6f 73 20 67 65 74 20 2f 46 4f 52 4d 41 54 3a 5c } //02 00  "wmic os get /FORMAT:\
		$a_81_13 = {3d 22 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 22 3b } //00 00  ="999999999999999";
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Koadic_A_3{
	meta:
		description = "VirTool:Win32/Koadic.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0d 00 00 01 00 "
		
	strings :
		$a_81_0 = {3d 6e 65 77 20 41 63 74 69 76 65 58 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 } //01 00  =new ActiveXObject("WScrip
		$a_03_1 = {28 00 22 00 70 00 69 00 6e 00 67 00 20 00 90 02 20 20 00 2d 00 6e 00 20 00 32 00 22 00 2c 00 66 00 61 00 6c 00 73 00 65 00 29 00 3b 00 7d 00 7d 00 7d 00 90 00 } //01 00 
		$a_03_2 = {28 22 70 69 6e 67 20 90 02 20 20 2d 6e 20 32 22 2c 66 61 6c 73 65 29 3b 7d 7d 7d 90 00 } //01 00 
		$a_03_3 = {22 00 63 00 65 00 72 00 74 00 90 02 20 20 00 2d 00 65 00 6e 00 63 00 6f 00 64 00 65 00 90 00 } //01 00 
		$a_03_4 = {22 63 65 72 74 90 02 20 20 2d 65 6e 63 6f 64 65 90 00 } //01 00 
		$a_03_5 = {2e 00 52 00 75 00 6e 00 28 00 63 00 6d 00 64 00 2c 00 90 02 10 2c 00 21 00 66 00 6f 00 72 00 6b 00 29 00 3b 00 7d 00 90 00 } //01 00 
		$a_03_6 = {2e 52 75 6e 28 63 6d 64 2c 90 02 10 2c 21 66 6f 72 6b 29 3b 7d 90 00 } //01 00 
		$a_81_7 = {6d 73 68 74 6d 6c 2c } //01 00  mshtml,
		$a_81_8 = {2e 55 73 65 72 44 6f 6d 61 69 6e 2e 6c 65 6e 67 74 68 21 3d 30 } //01 00  .UserDomain.length!=0
		$a_81_9 = {3d 22 73 74 61 67 65 22 } //01 00  ="stage"
		$a_81_10 = {28 29 2b 22 2e 74 78 74 22 } //01 00  ()+".txt"
		$a_81_11 = {2e 47 65 74 28 22 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 } //01 00  .Get("Win32_Process")
		$a_81_12 = {6a 6f 62 6b 65 79 2c 77 6f 72 6b 2e 73 74 61 74 75 73 3d 3d } //00 00  jobkey,work.status==
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Koadic_A_4{
	meta:
		description = "VirTool:Win32/Koadic.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0d 00 00 01 00 "
		
	strings :
		$a_81_0 = {41 63 74 69 76 65 58 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2c 53 54 41 47 45 52 3a 22 68 74 74 70 } //01 00  ActiveXObject("WScript.Shell"),STAGER:"http
		$a_81_1 = {3f 73 69 64 3d } //01 00  ?sid=
		$a_81_2 = {3b 63 73 72 66 3d } //01 00  ;csrf=
		$a_81_3 = {2e 69 73 48 54 41 3d 66 75 6e 63 74 69 6f 6e 28 29 } //01 00  .isHTA=function()
		$a_81_4 = {2e 75 75 69 64 28 29 2b 22 2e 74 78 74 22 29 } //01 00  .uuid()+".txt")
		$a_81_5 = {2b 6e 65 74 2e 43 6f 6d 70 75 74 65 72 4e 61 6d 65 3b } //01 00  +net.ComputerName;
		$a_81_6 = {2e 75 73 65 72 2e 73 68 65 6c 6c 63 68 63 70 28 29 3b } //01 00  .user.shellchcp();
		$a_81_7 = {5c 5c 2e 2e 5c 5c 2e 2e 5c 5c 2e 2e 5c 5c 6d 73 68 74 6d 6c 2c 52 75 6e 48 54 4d 4c 41 70 70 6c 69 63 61 74 69 6f 6e 22 } //01 00  \\..\\..\\..\\mshtml,RunHTMLApplication"
		$a_81_8 = {2e 73 68 65 6c 6c 2e 72 75 6e 28 22 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 2d 6e 20 32 } //01 00  .shell.run("ping 127.0.0.1 -n 2
		$a_81_9 = {2e 57 53 2e 52 75 6e 28 63 6d 64 2c 30 2c 21 66 6f 72 6b 29 3b 7d } //01 00  .WS.Run(cmd,0,!fork);}
		$a_81_10 = {73 63 72 6f 62 6a 2e 64 6c 6c 22 3b 69 66 28 66 6f 72 6b 33 32 42 69 74 29 } //01 00  scrobj.dll";if(fork32Bit)
		$a_81_11 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 6a 61 76 61 73 63 72 69 70 74 3a 5c 22 5c 5c 2e 2e 5c 5c 6d 73 68 74 6d 6c 2c } //01 00  rundll32.exe javascript:\"\\..\\mshtml,
		$a_81_12 = {22 77 6d 69 63 20 6f 73 20 67 65 74 20 2f 46 4f 52 4d 41 54 3a 5c } //00 00  "wmic os get /FORMAT:\
	condition:
		any of ($a_*)
 
}