bzcat ipmi_chan_auth_replies.crd.bz2 | ../bin/dap lines + field_split_tab line +  rename line.f2=ip line.f6=data + select ip data + transform data=hexdecode + decode_ipmi_chan_auth_reply data + remove data +  json