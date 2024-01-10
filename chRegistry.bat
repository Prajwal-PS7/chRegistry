@echo off
 
SC STOP DiscAgent
 
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Hewlett-Packard\Universal Discovery\V1\Options" /f /v UD_UNIQUE_ID
 
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Hewlett-Packard\Universal Discovery\V1\Options" /f /v UD_UNIQUE_ID_HostName
 
SC START DiscAgent
 
@echo on
