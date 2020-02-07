:: Script to automatically create a directory structure and move radar images into the appropriate folders.
:: Written by: Laura Tomkins
:: Graduate Research Assistant at Environment Analytics
:: February 2020

@ECHO OFF

:: Standard keys for CSU-CHILL

IF EXIST *.rhi_cw.* (
	mkdir cw
	move *.rhi_cw.* cw
) ELSE (
	set cw_presence=False
)

IF EXIST *.rhi_aw.* (
	mkdir aw
	move *.rhi_aw.* aw
) ELSE (
	set aw_presence=False
)

IF EXIST *.rhi_okx.* (
	mkdir okx
	move *.rhi_okx.* okx
) ELSE (
	set okx_presence=False
)

IF EXIST *.rhicomp.* (
	mkdir comp
	move *.rhicomp.* comp
) ELSE (
	set comp_presence=False
)


ECHO.Completed!
ECHO ON
