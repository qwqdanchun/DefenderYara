
rule Misleading_Linux_FRP_E_MTB{
	meta:
		description = "Misleading:Linux/FRP.E!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 61 74 65 64 69 65 72 2f 66 72 70 2f 63 6d 64 2f 66 72 70 63 2f 73 75 62 2e 72 75 6e 43 6c 69 65 6e 74 } //1 fatedier/frp/cmd/frpc/sub.runClient
		$a_01_1 = {66 72 70 2f 63 6d 64 2f 66 72 70 63 2f 73 75 62 2f 78 74 63 70 2e 67 6f } //1 frp/cmd/frpc/sub/xtcp.go
		$a_01_2 = {66 72 70 2f 63 6c 69 65 6e 74 2f 70 72 6f 78 79 2f 70 72 6f 78 79 5f 6d 61 6e 61 67 65 72 2e 67 6f } //1 frp/client/proxy/proxy_manager.go
		$a_01_3 = {66 61 74 65 64 69 65 72 2f 66 72 70 2f 63 6c 69 65 6e 74 2f 70 72 6f 78 79 2e 4e 65 77 50 72 6f 78 79 } //1 fatedier/frp/client/proxy.NewProxy
		$a_01_4 = {72 65 6d 6f 74 65 5f 70 6f 72 74 } //1 remote_port
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}