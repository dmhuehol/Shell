:: Script to automatically create a directory structure and move radar images into the appropriate folders.
:: Written by: Daniel Hueholt
:: Undergraduate Research Assistant at Environment Analytics
:: October 2018

@ECHO OFF

:: Standard keys for CSU-CHILL

IF EXIST *.reflectivity.* (
	mkdir Z
	move *.reflectivity.* Z
) ELSE (
	set Z_presence=False
)

IF EXIST *corrected_velocity* (
	mkdir V_folded
	move *corrected_velocity* V_folded
) ELSE (
	set V_folded_presence=False
)

IF EXIST *dealiased_velocity* (
	mkdir V_dealiased
	move *dealiased_velocity* V_dealiased
) ELSE (
	set V_dealiased_presence=False
)


IF EXIST *differential_reflectivity* (
	mkdir Zdr
	move *differential_reflectivity* Zdr
) ELSE (
	set Zdr_presence=False
)

IF EXIST *spectrum_width* (
	mkdir SW
	move *spectrum_width* SW
) ELSE (
	set SW_presence=False
)

IF EXIST *cross_correlation* (
	mkdir rhoHV
	move *cross_correlation* rhoHV
) ELSE (
	set rhoHV_presence=False
)

IF EXIST *correlation_coefficient* (
	mkdir rhoHV
	move *correlation_coefficient* rhoHV
) ELSE (
	set rhoHV_presence=False
)

IF EXIST *normalized_coherent* (
	mkdir NCP
	move *normalized_coherent* NCP
) ELSE (
	set NCP_presence=False
)

IF EXIST *one_way_differential_phase* (
	mkdir PhiDP
	move *one_way_differential_phase* PhiDP
) ELSE (
	set PhiDP_presence=False
)

IF EXIST *two_way_differential_phase* (
	mkdir Kdp
	move *two_way_differential_phase* Kdp
) ELSE (
	set Kdp_presence=False
)


:: Additional possible keys from KASPR

IF EXIST *linear_depolarization* (
	mkdir LDR
	move *linear_depolarization* LDR
) ELSE (
	set LDR_presence=False
)

IF EXIST *snr* (
	mkdir SNR
	move *snr* SNR
) ELSE (
	set SNR_presence=False
)

IF EXIST *mean_doppler_velocity_folded* (
	mkdir V_folded
	move *mean_doppler_velocity_folded*
) ELSE (
	set V_folded_presence=False
)

IF EXIST *PyART_dealiased_velocity* (
	mkdir PyART_dealiased
	move *PyART_dealiased_velocity* PyART_dealiased
) ELSE (
	set PyART_dealiased_presence=False
)

IF EXIST *snow_rate* (
	mkdir snow_rate
	move *snow_rate* snow_rate
) ELSE (
	set snow_rate_presence=False
)

IF EXIST *vdiv* (
	mkdir vdiv
	move *vdiv* vdiv
) ELSE (
	set vdiv_presence=False
)

IF EXIST *kdp* (
	mkdir kdp
	move *kdp* kdp
) ELSE (
	set kdp_presence=False
)

IF EXIST *differential_phase* (
	mkdir phidp
	move *differential_phase* phidp
) ELSE (
	set phidp_presence=False
)

ECHO.Completed!
ECHO ON
