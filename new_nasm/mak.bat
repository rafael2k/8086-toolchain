%1 wmake -h -f Mkfiles\openwcom.mak clean

SET WCL=-"option quiet" -q -fm -c -0 -d0 -os -wx -ze -ml -fpi -bt=DOS -l=DOS -I. -DHAVE_SNPRINTF -DHAVE_VSNPRINTF
:: -zm -zdf -os -wx -ze -fpi -mh
wcl -nd=ISORTAB5 -fo=lib\strlcpy.obj lib\strlcpy.c

wcl -nd=ISORTAB4 -fo=tokhash.obj tokhash.c

wcl -nd=ISORTAB3 -fo=nasm.obj nasm.c

wcl -nd=ISORTAB2 -fo=insnsb.obj insnsb.c

wcl -nd=ISORTAB1 -fo=insnsa.obj insnsa.c
pause
SET WCL=

wmake -h -f Mkfiles\openwcom.mak dos
