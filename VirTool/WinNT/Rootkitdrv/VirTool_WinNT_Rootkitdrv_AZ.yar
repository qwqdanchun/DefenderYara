
rule VirTool_WinNT_Rootkitdrv_AZ{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.AZ,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 78 00 70 00 72 00 74 00 65 00 63 00 74 00 } //10 \Device\xprtect
		$a_02_1 = {fa 0f 20 c0 25 ff ff fe ff 0f 22 c0 8b 42 01 8b 15 ?? ?? ?? 00 8b 12 c7 04 82 10 10 01 00 } //10
		$a_00_2 = {7b 41 41 45 44 31 38 42 45 36 30 36 39 2d 34 45 39 37 2d 38 34 46 36 2d 44 36 35 41 38 43 34 42 43 44 39 39 7d } //1 {AAED18BE6069-4E97-84F6-D65A8C4BCD99}
		$a_00_3 = {7b 42 42 30 44 36 32 41 36 33 44 43 46 2d 34 44 45 37 2d 38 39 35 32 2d 34 34 44 31 42 32 44 33 41 41 38 46 7d } //1 {BB0D62A63DCF-4DE7-8952-44D1B2D3AA8F}
		$a_00_4 = {7b 41 33 46 32 33 45 46 32 44 39 34 36 2d 34 44 34 46 2d 39 37 38 41 2d 39 46 46 35 41 30 30 32 36 45 41 34 7d } //1 {A3F23EF2D946-4D4F-978A-9FF5A0026EA4}
		$a_00_5 = {7b 41 41 46 32 33 45 46 32 44 39 34 36 2d 34 44 34 46 2d 39 37 38 41 2d 39 46 46 35 41 30 30 32 36 45 41 34 7d } //1 {AAF23EF2D946-4D4F-978A-9FF5A0026EA4}
		$a_00_6 = {7b 33 33 36 36 45 46 39 36 2d 32 38 45 35 2d 34 39 45 45 2d 39 39 42 46 2d 37 46 32 30 43 39 39 43 43 35 45 45 7d } //1 {3366EF96-28E5-49EE-99BF-7F20C99CC5EE}
	condition:
		((#a_00_0  & 1)*10+(#a_02_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=21
 
}