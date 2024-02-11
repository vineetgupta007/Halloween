PS C:\Users\kpmg> $ADUser=Get-AdUser -LDAPFilter '(&(objectclass=user)(&(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=512)(!(userAccountControl:1.2.840.113556.1.4.803:=2))(|(samaccountname=E*)(samaccountname=C*)(samaccountname=B*))))' -Server adqa.local:3268 -Credential $cred
PS C:\Users\kpmg> $ADUser.count
76820
PS C:\Users\kpmg> $ADUser=Get-AdUser -LDAPFilter '(&(objectclass=user)(&(objectCategory=person)(objectClass=user)(userAccountControl:1.2.840.113556.1.4.803:=514)(|(samaccountname=E*)(samaccountname=C*)(samaccountname=B*))))' -Server adqa.local:3268 -Credential $cred
PS C:\Users\kpmg> $ADUser.count
63486
PS C:\Users\kpmg> $ADUser=Get-AdUser -LDAPFilter '(&(objectclass=user)(&(objectCategory=person)(objectClass=user)(|(samaccountname=E*)(samaccountname=C*)(samaccountname=B*))))' -Server adqa.local:3268 -Credential $cred
PS C:\Users\kpmg> $ADUser.count
140308
