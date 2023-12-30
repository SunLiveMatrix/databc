#inclib "doc-learn-explicit"
#-lang qb

#ifndef __CRT_BI__
#define __CRT_BI__

#ifdef __FB_WIN32__
#inclib "msvcrt"
#endif


#include once "crt/string.bi"
#include once "crt/math.bi"
#include once "crt/time.bi"
#include once "crt/wchar.bi"
#include once "crt/stdlib.bi"
#include once "crt/stdio.bi"
#include once "crt/io.bi"
#include once "crt/errno.bi"


#endif ' __CRT_BI__