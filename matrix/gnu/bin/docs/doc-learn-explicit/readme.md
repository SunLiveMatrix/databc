# welcome doc-learn-explicit
software doc learn explicit microsoft FreeBasic language

```freebasic

/'
.
├── doc-learn-explicit.bas
├── doc-learn-explicit.bi
├── doc-learn-explicit.dll
├── doc-learn-explicit.wfbe
├── libdoc-learn-explicit.dll.a
├── license
├── manifest.xml
├── matrix
│   └── gnu
│       ├── bin
│       │   ├── doc-learn-explicit.bas
│       │   ├── doc-learn-explicit.bi
│       │   ├── doc-learn-explicit.dll
│       │   ├── stxCode.bas
│       │   ├── stxDouble.bas
│       │   └── stxHeader.bas
│       ├── lib
│       │   └── libdoc-learn-explicit.dll.a
│       └── test
│           └── resource.rc
├── readme.md
├── resource.rc
├── stxCode.bas
├── stxDouble.bas
└── stxHeader.bas
'/
```

## The Include Directive

The syntax for the #Include directive is #Include [Once] “filename.ext”.
Remember that a compiler directive instructs the compiler to do something, and in his
case, it instructs the compiler to include the file “filename.ext” when compiling. When the
compiler reads this directive, it stops reading the current file and starts reading the
included file. If the included file also has an #Include directive, then that file is read in as
well. You can have up to 16 nested includes per program. To use the runtime conversion
functions in your own program you would add #Include Once “crt.bi” at the top of
your program.
The file extension bi stands for “basic include” and is usually declaration
statements and/or subroutines and functions. The crt.bi file is located in the inc folder of
your FreeBasic installation. If a bi file is not located in the folder where the program is
being compiled, the compiler will look in the inc folder for the file. If it can’t find the file, it
will issue an error. You can also include a path with the filename if you keep your include
files in a common folder besides the inc folder.
If you look at the contents of crt.bi you see that the file simply includes other files
and references the library that contains the actual function code.

```freebasic
#ifndef __CRT_BI__
#define __CRT_BI__

#ifdef __FB_WIN32__
# inclib "msvcrt"
#endif
```

#include once "crt/string.bi"

