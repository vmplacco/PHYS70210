

CREATE TABLE inspect_rave (                 -- Create new table for inspection

 SEQUENCE     double precision PRIMARY KEY,  --   SEQUENCE
 SPSPEC1                       varchar(80),  --   Spectrum name
 COLOR                         varchar(80),  --   COLOR - BV, JK, NC
 SPSPEC2                       varchar(80),  --   Spectrum name                   -- original output starts here
 FEH_ADOP                 double precision,  --   Adopted [Fe/H]
 FEH_ADOP_N               double precision,  --   Number of estimators
 FEH_ADOP_UNC             double precision,  --   Error in the adopted [Fe/H]
 FEH_BIW                  double precision,  --   Biweighted [Fe/H]
 FEH_BIW_N                double precision,  --   Number of estimators
 FEH_BIW_UNC              double precision,  --   Error in the biweighted [Fe/H]
 FEH_NGS2                 double precision,  --   [Fe/H] estimate from NGS2
 FEH_NGS2_IND             double precision,  --   Indicator variable
 FEH_NGS2_UNC             double precision,  --   Error in [Fe/H] estimate from NGS2
 FEH_NGS2_FIX             double precision,  --   [Fe/H] estimate from NGS2 with fixed Teff
 FEH_NGS2_FIX_IND         double precision,  --   Indicator variable
 FEH_NGS2_FIX_UNC         double precision,  --   Error in [Fe/H] from NGS2 with fixed Teff
 FEH_NGS1                 double precision,  --   [Fe/H] estimate from NGS1
 FEH_NGS1_IND             double precision,  --   Indicator variable
 FEH_NGS1_UNC             double precision,  --   Error in [Fe/H] estimate from NGS1
 FEH_NGS1_FIX             double precision,  --   [Fe/H] estimate from NGS1 with fixed Teff
 FEH_NGS1_FIX_IND         double precision,  --   Indicator variable
 FEH_NGS1_FIX_UNC         double precision,  --   Error in [Fe/H] from NGS1 with fixed Teff
 FEH_CAHK1                double precision,  --   [Fe/H] estimate from CAHK1
 FEH_CAHK1_IND            double precision,  --   Indicator variable
 FEH_CAHK1_UNC            double precision,  --   Error in [Fe/H] estiimate from CAHK1
 FEH_CAHK1_FIX            double precision,  --   [Fe/H] estimate from CAHK1 with fixed Teff
 FEH_CAHK1_FIX_IND        double precision,  --   Indicator variable
 FEH_CAHK1_FIX_UNC        double precision,  --   Error in [Fe/H] from CAHK1 with fixed Teff
 FEH_CAHK2                double precision,  --   [Fe/H] estimate from CAHK2
 FEH_CAHK2_IND            double precision,  --   Indicator variable
 FEH_CAHK2_UNC            double precision,  --   Error in [Fe/H] estimate from CAHK2
 FEH_CAHK3                double precision,  --   [Fe/H] estimate from CAHK3
 FEH_CAHK3_IND            double precision,  --   Indicator variable
 FEH_CAHK3_UNC            double precision,  --   Error in [Fe/H] estimate from CAHK3
 TEFF_ADOP                double precision,  --   Adopted Teff
 TEFF_ADOP_N              double precision,  --   Number of estimators used
 TEFF_ADOP_UNC            double precision,  --   Error in the adopted temperature
 TEFF_HA24                double precision,  --   Teff estimate from HA24
 TEFF_HA24_IND            double precision,  --   Indicator variable
 TEFF_HA24_UNC            double precision,  --   Error in Teff estimate from HA24
 TEFF_HB24                double precision,  --   Teff estimate from HA24
 TEFF_HB24_IND            double precision,  --   Indicator variable
 TEFF_HB24_UNC            double precision,  --   Error in Teff estimate from HB24
 TEFF_HG24                double precision,  --   Teff estimate from HB24
 TEFF_HG24_IND            double precision,  --   Indicator variable
 TEFF_HG24_UNC            double precision,  --   Error in Teff estimate from HG24
 TEFF_HD24                double precision,  --   Teff estimate from HG24
 TEFF_HD24_IND            double precision,  --   Indicator variable
 TEFF_HD24_UNC            double precision,  --   Error in Teff estimate from HD24
 TEFF_TK                  double precision,  --   Teff estimate from T_Kurucz
 TEFF_TK_IND              double precision,  --   Indicator variable
 TEFF_TK_UNC              double precision,  --   Error in Teff estimate from T_Kurucz
 TEFF_TG                  double precision,  --   Teff estimate from T_Girardi
 TEFF_TG_IND              double precision,  --   Indicator variable
 TEFF_TG_UNC              double precision,  --   Error in Teff estimate from T_Girardi
 TEFF_TI                  double precision,  --   Teff estimate from T_Iveciz
 TEFF_TI_IND              double precision,  --   Indicator variable
 TEFF_TI_UNC              double precision,  --   Error in Teff estimate from T_Iveciz
 TEFF_NGS2                double precision,  --   Teff estimate from NGS2
 TEFF_NGS2_IND            double precision,  --   Indicator variable
 TEFF_NGS2_UNC            double precision,  --   Error in Teff estimate from NGS2
 TEFF_NGS2_FIX            double precision,  --   Teff estimate from color in NGS2
 TEFF_NGS2_FIX_IND        double precision,  --   Indicator variable
 TEFF_NGS2_FIX_UNC        double precision,  --   Error in Teff estimate from color in NGS2
 TEFF_NGS1                double precision,  --   Teff estimate from NGS1
 TEFF_NGS1_IND            double precision,  --   Indicator variable
 TEFF_NGS1_UNC            double precision,  --   Error in Teff estimate from NGS1
 TEFF_NGS1_FIX            double precision,  --   Teff estimate from color in NGS1
 TEFF_NGS1_FIX_IND        double precision,  --   Indicator variable
 TEFF_NGS1_FIX_UNC        double precision,  --   Error in Teff estimate from color in NGS1
 TEFF_CAHK1               double precision,  --   Teff estimate from CAHK1
 TEFF_CAHK1_IND           double precision,  --   Indicator variable
 TEFF_CAHK1_UNC           double precision,  --   Error in Teff estimate from CAHKK1
 TEFF_CAHK1_FIX           double precision,  --   Teff estimate from color in CAHK1
 TEFF_CAHK1_FIX_IND       double precision,  --   Indicator variable
 TEFF_CAHK1_FIX_UNC       double precision,  --   Error in Teff estimate from color inCAHKK1
 LOGG_ADOP                double precision,  --   Adopted log g 
 LOGG_ADOP_N              double precision,  --   Number of log g estimators used
 LOGG_ADOP_UNC            double precision,  --   Error in the adopted log g
 LOGG_NGS2                double precision,  --   log g estimate from NGS2
 LOGG_NGS2_IND            double precision,  --   Indicator variable
 LOGG_NGS2_UNC            double precision,  --   Error in log g estimate from NGS2
 LOGG_NGS2_FIX            double precision,  --   log g estimate from NGS2 with fixed Teff
 LOGG_NGS2_FIX_IND        double precision,  --   Indicator variable
 LOGG_NGS2_FIX_UNC        double precision,  --   Error in log g from NGS2 with fixed Teff
 LOGG_NGS1                double precision,  --   log g estimate from NGS1
 LOGG_NGS1_IND            double precision,  --   Indicator variable
 LOGG_NGS1_UNC            double precision,  --   Error in log g estimate from NGS1
 LOGG_NGS1_FIX            double precision,  --   log g estimate from NGS1 with fixed Teff
 LOGG_NGS1_FIX_IND        double precision,  --   Indicator variable
 LOGG_NGS1_FIX_UNC        double precision,  --   Error in log g from NGS1 with fixed Teff
 LOGG_CAHK1               double precision,  --   log g estimate from CAHK1
 LOGG_CAHK1_IND           double precision,  --   Indicator variable
 LOGG_CAHK1_UNC           double precision,  --   Error in log g estimate from CAHK1
 LOGG_CAHK1_FIX           double precision,  --   log g estimate from CAHK1 with fixed Teff
 LOGG_CAHK1_FIX_IND       double precision,  --   Indicator variable
 LOGG_CAHK1_FIX_UNC       double precision,  --   Error in log g from CAHK1 with fixed Teff
 LOGG_CAHK2               double precision,  --   log g estimate from CAHK2
 LOGG_CAHK2_IND           double precision,  --   Indicator variable
 LOGG_CAHK2_UNC           double precision,  --   Error in log g estimate from CAHK2
 LOGG_MGH                 double precision,  --   log g estimate from MgH
 LOGG_MGH_IND             double precision,  --   Indicator variable
 LOGG_MGH_UNC             double precision,  --   Error in log g estimate from MgH
 AFE                      double precision,  --   [alpha/Fe] estimate from NGS2
 AFE_UNC                  double precision,  --   Error in [alpha/Fe] estimate from NGS2
 AFE_LOGG                 double precision,  --   log g estimate while determining [alpha/Fe]
 AFE_LOGG_UNC             double precision,  --   Error in log g
 AFE_FEH                  double precision,  --   [Fe/H] estimate while determining [alpha/Fe]
 AFE_FEH_UNC              double precision,  --   Error in [Fe/H]
 AH                       double precision,  --   [alpha/H] estimate from NGS2
 AH_UNC                   double precision,  --   Error in [alpha/H]
 AFE_EQW_OBS              double precision,  --   Equivalent width over 5160-5190 A in SDSS
 AFE_EQW_SYN              double precision,  --   Equivalent width from synthetic spectrum
 AFE_CHI2                 double precision,  --   chi2 value over 5160-5190 A
 AFE_CC                   double precision,  --   correlation coefficent over 5160-5190A
 AFE_FLAG                      varchar(80),  --   Flag
 CFE                      double precision,  --   [C/Fe] estimate from Carbon grid
 CFE_UNC                  double precision,  --   Error in [C/Fe] estimate
 CFE_FEH                  double precision,  --   [Fe/H] estimate while determining [C/Fe]
 CFE_FEH_UNC              double precision,  --   Error in [Fe/H]
 CH                       double precision,  --   [C/H] estimate from Carbon grid
 CH_UNC                   double precision,  --   Error in [C/H]
 CFE_EQW_OBS              double precision,  --   Equivalent width over 4290-4318 A in SDSS
 CFE_EQW_SYN              double precision,  --   Equivalent width from synthetic spectrum
 CFE_CHI2                 double precision,  --   chi2 value over 4290-4318 A
 CFE_CC                   double precision,  --   correlation coefficent over 4290-4318 A
 CFE_FLAG                      varchar(80),  --   Flag
 SRFE                     double precision,  --   [Sr/Fe] estimate from s-process grid
 SRFE_UNC                 double precision,  --   Error in [Sr/Fe] estimate
 SRFE_EQW_OBS             double precision,  --   Equivalent width over 4075-4080 A in SDSS
 SRFE_EQW_SYN             double precision,  --   Equivalent width from synthetic spectrum
 SRFE_CHI2                double precision,  --   chi2 value over 4075-4080 A
 SRFE_CC                  double precision,  --   correlation coefficent over 4075-4080 A
 SRFE_FLAG                     varchar(80),  --   Flag
 BAFE                     double precision,  --   [Ba/Fe] estimate from s-process grid
 BAFE_UNC                 double precision,  --   Error in [Ba/Fe] estimate
 BAFE_EQW_OBS             double precision,  --   Equivalent width over 4551-4556 A in SDSS
 BAFE_EQW_SYN             double precision,  --   Equivalent width from synthetic spectrum
 BAFE_CHI2                double precision,  --   chi2 value over 4551-4556 A
 BAFE_CC                  double precision,  --   correlation coefficent over 4551-4556 A
 BAFE_FLAG                     varchar(80),  --   Flag
 DIST_ADOP                double precision,  --   Adopted distance from Beers et al. (2000)
 DIST_DWARF               double precision,  --   Dwarf distance in kpc by Beers et al. (2000)
 DIST_TO                  double precision,  --   Turnoff distance in kpc by Beers et al. (2000)
 DIST_GIANT               double precision,  --   Giant distance in kpc by Beers et al. (2000)
 DIST_AGB                 double precision,  --   AGB distance in kpc by Beers et al. (2000)
 DIST_FHB                 double precision,  --   FHB distance in kpc by Beers et al. (2000)
 L_CLASS                       varchar(80),  --   Adopted luminosity class
 DIST_AP                  double precision,  --   Distance in kpc by Allende Prieto et al. (2006)
 DIST_Z                   double precision,  --   Distance (z) from the Galactic plane 
 RV                       double precision,  --   Adopted heliocentric radial velocity
 RV_UNC                   double precision,  --   Error in the RV
 RV_CAL                   double precision,  --   Calculated heliocentric radial velocity
 RV_CAL_UNC               double precision,  --   Error in the calculated radial velocity
 RV_GSR                   double precision,  --   Galactocentric radial velocity
 RV_GSR_UNC               double precision,  --   Error in galactocentric radial velocity
 RV_HELIO                 double precision,  --   Heliocentric radial velocity
 G0                       double precision,  --   g magnitude
 GR0                      double precision,  --   g-r color
 GR0_BEST                 double precision,  --   Adopted g-r color prediction
 GR0_PRE                  double precision,  --   Adopted g-r color prediction
 GR0_HA24                 double precision,  --   g-r color prediction from HA24
 GR0_HB24                 double precision,  --   g-r color prediction from HB24
 GR0_HG24                 double precision,  --   g-r color prediction from HG24
 GR0_HD24                 double precision,  --   g-r color prediction from HD24
 GR0_HP                   double precision,  --   g-r color prediction from half power point 
 GR0_UNC                  double precision,  --   Error in g-r color 
 GR0_SYN                  double precision,  --   Synthetic g-r color 
 EBV                      double precision,  --   E(B-V) from Schlegel et al. (1998)
 SNR                      double precision,  --   Average S/N per pixel over 4000-8000 A
 CC_CAHK                  double precision,  --   Correlation coefficient over 3850-4250 A
 CC_MGH                   double precision,  --   Correlation coefficient over 4500-5500 A
 RA                       double precision,  --   RA in degree
 DEC                      double precision,  --   DEC in degree 
 L                        double precision,  --   Galactic longitude (l) in degree 
 B                        double precision,  --   Galactic latitude (b) in degree 
 FLAG                          varchar(80),  --   YN=obs. color used NY=predited color 
 GFLAG                         varchar(80),  --   G=strong. g=mild. n=normal 
 V0                       double precision,  --   V magnitude
 V0_UNC                   double precision,  --   Error in V mag
 UB0                      double precision,  --   U-B color
 UB0_UNC                  double precision,  --   Error in U-B
 BV0                      double precision,  --   B-V color
 BV0_BALMER               double precision,  --   B-V color predicted color from Balmer lines
 BV0_UNC                  double precision,  --   Error in B-V
 J0                       double precision,  --   J magnitude
 J0_UNC                   double precision,  --   Error in J mag
 JK0                      double precision,  --   J-K color
 JK0_UNC                  double precision,  --   Error in J-K
 WMAX                     double precision,  --   Upper end of wavelength in a spectrum
 WMIN                     double precision,  --   Lower end of wavelength in a spectrum
 RESOL                    double precision,  --   Adopted resolving power
 RV_BLUE                  double precision,  --   Radial velocity from blue spectral region (3800-6000 A)
 RV_BLUE_UNC              double precision,  --   Error in the BLUE RV
 RV_RED                   double precision,  --   Radial velocity from red spectral region (6000-9000 A)
 RV_RED_UNC               double precision,  --   Error in the RED RV
 RV_NGS1                  double precision,  --   Radial velocity by cross correlation from NGS1
 RV_NGS1_UNC              double precision,  --   Error in the NGS1 RV
 RV_CAHK1                 double precision,  --   Radial velocity by cross correlation from CAHK1
 RV_CAHK1_UNC             double precision,  --   Error in the CAHK1 RV
 DEL_CAHK1_NGS1           double precision   --   Difference between CAHK1 and NGS1

);

COPY inspect_rave FROM '/Users/vplacco/Desktop/mk_inspect/rave.insp' DELIMITERS ',' CSV;


