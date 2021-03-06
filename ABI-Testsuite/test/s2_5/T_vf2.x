// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
// RUN: c_compiler -c -o %t1.o -I "common" "common/testsuite.c"
// RUN: cxx_compiler cxx_rtti -c %s -I "common" -o %t2.o
// RUN: c_compiler -c %s -I "common" -o %t3.o
// RUN: linker -o %t2%exeext  %t1.o %t2.o %t3.o
// RUN: runtool %t2%exeext | checker "TEST PASSED"
#include "testsuite.h"
#ifdef __cplusplus
namespace bbb { 
struct  AA0  {
  int pa;
  virtual void  foo(); // _ZN3bbb3AA03fooEv
  virtual void  bar(); // _ZN3bbb3AA03barEv
  ~AA0(); // tgen
  AA0(); // tgen
};
//SIG(-1 _ZN3bbb3AA0E) C1{ v1 v2 Fi}
}
namespace bbb { 
void  bbb::AA0 ::foo(){vfunc_called(this, "_ZN3bbb3AA03fooEv");}
void  bbb::AA0 ::bar(){vfunc_called(this, "_ZN3bbb3AA03barEv");}
bbb::AA0 ::~AA0(){ note_dtor("_ZN3bbb3AA0E", this);} // tgen
bbb::AA0 ::AA0(){ note_ctor("_ZN3bbb3AA0E", this);} // tgen
}
static void Test__ZN3bbb3AA0E()
{
  extern Class_Descriptor cd__ZN3bbb3AA0E;
  void *lvp;
  {
    ABISELECT(double,int) buf[3];
    init_test(&cd__ZN3bbb3AA0E, buf);
    ::bbb::AA0 *dp, &lv = *(dp=new (buf) ::bbb::AA0());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(16,8), "sizeof(_ZN3bbb3AA0E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb3AA0E)");
    check_field_offset(lv, pa, ABISELECT(8,4), "_ZN3bbb3AA0E.pa");
    test_class_info(&lv, &cd__ZN3bbb3AA0E);
    dp->::bbb::AA0::~AA0();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb3AA0E(Test__ZN3bbb3AA0E, "_ZN3bbb3AA0E", ABISELECT(16,8));

#else // __cplusplus

extern void _ZN3bbb3AA0C1Ev();
extern void _ZN3bbb3AA0D1Ev();
Name_Map name_map__ZN3bbb3AA0E[] = {
  NSPAIR(_ZN3bbb3AA0C1Ev),
  NSPAIR(_ZN3bbb3AA0D1Ev),
  {0,0}
};
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern void _ZN3bbb3AA03fooEv();
extern void _ZN3bbb3AA03barEv();
static  VTBL_ENTRY vtc__ZN3bbb3AA0E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb3AA0E[0]),
  (VTBL_ENTRY)&_ZN3bbb3AA03fooEv,
  (VTBL_ENTRY)&_ZN3bbb3AA03barEv,
};
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
Class_Descriptor cd__ZN3bbb3AA0E = {  "_ZN3bbb3AA0E", // class name
  0,0,//no base classes
  &(vtc__ZN3bbb3AA0E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(16,8), // object size
  NSPAIRA(_ZTIN3bbb3AA0E),ABISELECT(16,8), //typeinfo_var
  NSPAIRA(_ZTVN3bbb3AA0E),4, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  0, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  BB0  {
  int pa;
  virtual void  foo(); // _ZN3bbb3BB03fooEv
  virtual void  bar(); // _ZN3bbb3BB03barEv
  ~BB0(); // tgen
  BB0(); // tgen
};
//SIG(-1 _ZN3bbb3BB0E) C1{ v1 v2 Fi}
}
namespace bbb { 
void  bbb::BB0 ::foo(){vfunc_called(this, "_ZN3bbb3BB03fooEv");}
void  bbb::BB0 ::bar(){vfunc_called(this, "_ZN3bbb3BB03barEv");}
bbb::BB0 ::~BB0(){ note_dtor("_ZN3bbb3BB0E", this);} // tgen
bbb::BB0 ::BB0(){ note_ctor("_ZN3bbb3BB0E", this);} // tgen
}
static void Test__ZN3bbb3BB0E()
{
  extern Class_Descriptor cd__ZN3bbb3BB0E;
  void *lvp;
  {
    ABISELECT(double,int) buf[3];
    init_test(&cd__ZN3bbb3BB0E, buf);
    ::bbb::BB0 *dp, &lv = *(dp=new (buf) ::bbb::BB0());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(16,8), "sizeof(_ZN3bbb3BB0E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb3BB0E)");
    check_field_offset(lv, pa, ABISELECT(8,4), "_ZN3bbb3BB0E.pa");
    test_class_info(&lv, &cd__ZN3bbb3BB0E);
    dp->::bbb::BB0::~BB0();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb3BB0E(Test__ZN3bbb3BB0E, "_ZN3bbb3BB0E", ABISELECT(16,8));

#else // __cplusplus

extern void _ZN3bbb3BB0C1Ev();
extern void _ZN3bbb3BB0D1Ev();
Name_Map name_map__ZN3bbb3BB0E[] = {
  NSPAIR(_ZN3bbb3BB0C1Ev),
  NSPAIR(_ZN3bbb3BB0D1Ev),
  {0,0}
};
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern void _ZN3bbb3BB03fooEv();
extern void _ZN3bbb3BB03barEv();
static  VTBL_ENTRY vtc__ZN3bbb3BB0E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb3BB0E[0]),
  (VTBL_ENTRY)&_ZN3bbb3BB03fooEv,
  (VTBL_ENTRY)&_ZN3bbb3BB03barEv,
};
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
Class_Descriptor cd__ZN3bbb3BB0E = {  "_ZN3bbb3BB0E", // class name
  0,0,//no base classes
  &(vtc__ZN3bbb3BB0E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(16,8), // object size
  NSPAIRA(_ZTIN3bbb3BB0E),ABISELECT(16,8), //typeinfo_var
  NSPAIRA(_ZTVN3bbb3BB0E),4, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  0, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  CC0  {
  int pa;
  virtual void  foo(); // _ZN3bbb3CC03fooEv
  virtual void  bar(); // _ZN3bbb3CC03barEv
  ~CC0(); // tgen
  CC0(); // tgen
};
//SIG(1 _ZN3bbb3CC0E) C1{ v1 v2 Fi}
}
namespace bbb { 
void  bbb::CC0 ::foo(){vfunc_called(this, "_ZN3bbb3CC03fooEv");}
void  bbb::CC0 ::bar(){vfunc_called(this, "_ZN3bbb3CC03barEv");}
bbb::CC0 ::~CC0(){ note_dtor("_ZN3bbb3CC0E", this);} // tgen
bbb::CC0 ::CC0(){ note_ctor("_ZN3bbb3CC0E", this);} // tgen
}
static void Test__ZN3bbb3CC0E()
{
  extern Class_Descriptor cd__ZN3bbb3CC0E;
  void *lvp;
  {
    ABISELECT(double,int) buf[3];
    init_test(&cd__ZN3bbb3CC0E, buf);
    ::bbb::CC0 *dp, &lv = *(dp=new (buf) ::bbb::CC0());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(16,8), "sizeof(_ZN3bbb3CC0E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb3CC0E)");
    check_field_offset(lv, pa, ABISELECT(8,4), "_ZN3bbb3CC0E.pa");
    test_class_info(&lv, &cd__ZN3bbb3CC0E);
    dp->::bbb::CC0::~CC0();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb3CC0E(Test__ZN3bbb3CC0E, "_ZN3bbb3CC0E", ABISELECT(16,8));

#else // __cplusplus

extern void _ZN3bbb3CC0C1Ev();
extern void _ZN3bbb3CC0D1Ev();
Name_Map name_map__ZN3bbb3CC0E[] = {
  NSPAIR(_ZN3bbb3CC0C1Ev),
  NSPAIR(_ZN3bbb3CC0D1Ev),
  {0,0}
};
extern VTBL_ENTRY _ZTIN3bbb3CC0E[];
extern void _ZN3bbb3CC03fooEv();
extern void _ZN3bbb3CC03barEv();
static  VTBL_ENTRY vtc__ZN3bbb3CC0E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb3CC0E[0]),
  (VTBL_ENTRY)&_ZN3bbb3CC03fooEv,
  (VTBL_ENTRY)&_ZN3bbb3CC03barEv,
};
extern VTBL_ENTRY _ZTIN3bbb3CC0E[];
extern  VTBL_ENTRY _ZTVN3bbb3CC0E[];
Class_Descriptor cd__ZN3bbb3CC0E = {  "_ZN3bbb3CC0E", // class name
  0,0,//no base classes
  &(vtc__ZN3bbb3CC0E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(16,8), // object size
  NSPAIRA(_ZTIN3bbb3CC0E),ABISELECT(16,8), //typeinfo_var
  NSPAIRA(_ZTVN3bbb3CC0E),4, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  0, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  DD0  {
  int pa;
  virtual void  foo(); // _ZN3bbb3DD03fooEv
  virtual void  bar(); // _ZN3bbb3DD03barEv
  ~DD0(); // tgen
  DD0(); // tgen
};
//SIG(1 _ZN3bbb3DD0E) C1{ v1 v2 Fi}
}
namespace bbb { 
void  bbb::DD0 ::foo(){vfunc_called(this, "_ZN3bbb3DD03fooEv");}
void  bbb::DD0 ::bar(){vfunc_called(this, "_ZN3bbb3DD03barEv");}
bbb::DD0 ::~DD0(){ note_dtor("_ZN3bbb3DD0E", this);} // tgen
bbb::DD0 ::DD0(){ note_ctor("_ZN3bbb3DD0E", this);} // tgen
}
static void Test__ZN3bbb3DD0E()
{
  extern Class_Descriptor cd__ZN3bbb3DD0E;
  void *lvp;
  {
    ABISELECT(double,int) buf[3];
    init_test(&cd__ZN3bbb3DD0E, buf);
    ::bbb::DD0 *dp, &lv = *(dp=new (buf) ::bbb::DD0());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(16,8), "sizeof(_ZN3bbb3DD0E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb3DD0E)");
    check_field_offset(lv, pa, ABISELECT(8,4), "_ZN3bbb3DD0E.pa");
    test_class_info(&lv, &cd__ZN3bbb3DD0E);
    dp->::bbb::DD0::~DD0();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb3DD0E(Test__ZN3bbb3DD0E, "_ZN3bbb3DD0E", ABISELECT(16,8));

#else // __cplusplus

extern void _ZN3bbb3DD0C1Ev();
extern void _ZN3bbb3DD0D1Ev();
Name_Map name_map__ZN3bbb3DD0E[] = {
  NSPAIR(_ZN3bbb3DD0C1Ev),
  NSPAIR(_ZN3bbb3DD0D1Ev),
  {0,0}
};
extern VTBL_ENTRY _ZTIN3bbb3DD0E[];
extern void _ZN3bbb3DD03fooEv();
extern void _ZN3bbb3DD03barEv();
static  VTBL_ENTRY vtc__ZN3bbb3DD0E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb3DD0E[0]),
  (VTBL_ENTRY)&_ZN3bbb3DD03fooEv,
  (VTBL_ENTRY)&_ZN3bbb3DD03barEv,
};
extern VTBL_ENTRY _ZTIN3bbb3DD0E[];
extern  VTBL_ENTRY _ZTVN3bbb3DD0E[];
Class_Descriptor cd__ZN3bbb3DD0E = {  "_ZN3bbb3DD0E", // class name
  0,0,//no base classes
  &(vtc__ZN3bbb3DD0E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(16,8), // object size
  NSPAIRA(_ZTIN3bbb3DD0E),ABISELECT(16,8), //typeinfo_var
  NSPAIRA(_ZTVN3bbb3DD0E),4, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  0, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  AA1  {
  int pa;
  virtual void  bar(); // _ZN3bbb3AA13barEv
  virtual void  foo(); // _ZN3bbb3AA13fooEv
  ~AA1(); // tgen
  AA1(); // tgen
};
//SIG(-1 _ZN3bbb3AA1E) C1{ v1 v2 Fi}
}
namespace bbb { 
void  bbb::AA1 ::bar(){vfunc_called(this, "_ZN3bbb3AA13barEv");}
void  bbb::AA1 ::foo(){vfunc_called(this, "_ZN3bbb3AA13fooEv");}
bbb::AA1 ::~AA1(){ note_dtor("_ZN3bbb3AA1E", this);} // tgen
bbb::AA1 ::AA1(){ note_ctor("_ZN3bbb3AA1E", this);} // tgen
}
static void Test__ZN3bbb3AA1E()
{
  extern Class_Descriptor cd__ZN3bbb3AA1E;
  void *lvp;
  {
    ABISELECT(double,int) buf[3];
    init_test(&cd__ZN3bbb3AA1E, buf);
    ::bbb::AA1 *dp, &lv = *(dp=new (buf) ::bbb::AA1());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(16,8), "sizeof(_ZN3bbb3AA1E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb3AA1E)");
    check_field_offset(lv, pa, ABISELECT(8,4), "_ZN3bbb3AA1E.pa");
    test_class_info(&lv, &cd__ZN3bbb3AA1E);
    dp->::bbb::AA1::~AA1();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb3AA1E(Test__ZN3bbb3AA1E, "_ZN3bbb3AA1E", ABISELECT(16,8));

#else // __cplusplus

extern void _ZN3bbb3AA1C1Ev();
extern void _ZN3bbb3AA1D1Ev();
Name_Map name_map__ZN3bbb3AA1E[] = {
  NSPAIR(_ZN3bbb3AA1C1Ev),
  NSPAIR(_ZN3bbb3AA1D1Ev),
  {0,0}
};
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern void _ZN3bbb3AA13barEv();
extern void _ZN3bbb3AA13fooEv();
static  VTBL_ENTRY vtc__ZN3bbb3AA1E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb3AA1E[0]),
  (VTBL_ENTRY)&_ZN3bbb3AA13barEv,
  (VTBL_ENTRY)&_ZN3bbb3AA13fooEv,
};
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
Class_Descriptor cd__ZN3bbb3AA1E = {  "_ZN3bbb3AA1E", // class name
  0,0,//no base classes
  &(vtc__ZN3bbb3AA1E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(16,8), // object size
  NSPAIRA(_ZTIN3bbb3AA1E),ABISELECT(16,8), //typeinfo_var
  NSPAIRA(_ZTVN3bbb3AA1E),4, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  0, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  BB1  {
  int pa;
  virtual void  bar(); // _ZN3bbb3BB13barEv
  virtual void  foo(); // _ZN3bbb3BB13fooEv
  ~BB1(); // tgen
  BB1(); // tgen
};
//SIG(-1 _ZN3bbb3BB1E) C1{ v1 v2 Fi}
}
namespace bbb { 
void  bbb::BB1 ::bar(){vfunc_called(this, "_ZN3bbb3BB13barEv");}
void  bbb::BB1 ::foo(){vfunc_called(this, "_ZN3bbb3BB13fooEv");}
bbb::BB1 ::~BB1(){ note_dtor("_ZN3bbb3BB1E", this);} // tgen
bbb::BB1 ::BB1(){ note_ctor("_ZN3bbb3BB1E", this);} // tgen
}
static void Test__ZN3bbb3BB1E()
{
  extern Class_Descriptor cd__ZN3bbb3BB1E;
  void *lvp;
  {
    ABISELECT(double,int) buf[3];
    init_test(&cd__ZN3bbb3BB1E, buf);
    ::bbb::BB1 *dp, &lv = *(dp=new (buf) ::bbb::BB1());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(16,8), "sizeof(_ZN3bbb3BB1E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb3BB1E)");
    check_field_offset(lv, pa, ABISELECT(8,4), "_ZN3bbb3BB1E.pa");
    test_class_info(&lv, &cd__ZN3bbb3BB1E);
    dp->::bbb::BB1::~BB1();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb3BB1E(Test__ZN3bbb3BB1E, "_ZN3bbb3BB1E", ABISELECT(16,8));

#else // __cplusplus

extern void _ZN3bbb3BB1C1Ev();
extern void _ZN3bbb3BB1D1Ev();
Name_Map name_map__ZN3bbb3BB1E[] = {
  NSPAIR(_ZN3bbb3BB1C1Ev),
  NSPAIR(_ZN3bbb3BB1D1Ev),
  {0,0}
};
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern void _ZN3bbb3BB13barEv();
extern void _ZN3bbb3BB13fooEv();
static  VTBL_ENTRY vtc__ZN3bbb3BB1E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb3BB1E[0]),
  (VTBL_ENTRY)&_ZN3bbb3BB13barEv,
  (VTBL_ENTRY)&_ZN3bbb3BB13fooEv,
};
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
Class_Descriptor cd__ZN3bbb3BB1E = {  "_ZN3bbb3BB1E", // class name
  0,0,//no base classes
  &(vtc__ZN3bbb3BB1E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(16,8), // object size
  NSPAIRA(_ZTIN3bbb3BB1E),ABISELECT(16,8), //typeinfo_var
  NSPAIRA(_ZTVN3bbb3BB1E),4, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  0, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  CC1  {
  int pa;
  virtual void  bar(); // _ZN3bbb3CC13barEv
  virtual void  foo(); // _ZN3bbb3CC13fooEv
  ~CC1(); // tgen
  CC1(); // tgen
};
//SIG(1 _ZN3bbb3CC1E) C1{ v1 v2 Fi}
}
namespace bbb { 
void  bbb::CC1 ::bar(){vfunc_called(this, "_ZN3bbb3CC13barEv");}
void  bbb::CC1 ::foo(){vfunc_called(this, "_ZN3bbb3CC13fooEv");}
bbb::CC1 ::~CC1(){ note_dtor("_ZN3bbb3CC1E", this);} // tgen
bbb::CC1 ::CC1(){ note_ctor("_ZN3bbb3CC1E", this);} // tgen
}
static void Test__ZN3bbb3CC1E()
{
  extern Class_Descriptor cd__ZN3bbb3CC1E;
  void *lvp;
  {
    ABISELECT(double,int) buf[3];
    init_test(&cd__ZN3bbb3CC1E, buf);
    ::bbb::CC1 *dp, &lv = *(dp=new (buf) ::bbb::CC1());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(16,8), "sizeof(_ZN3bbb3CC1E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb3CC1E)");
    check_field_offset(lv, pa, ABISELECT(8,4), "_ZN3bbb3CC1E.pa");
    test_class_info(&lv, &cd__ZN3bbb3CC1E);
    dp->::bbb::CC1::~CC1();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb3CC1E(Test__ZN3bbb3CC1E, "_ZN3bbb3CC1E", ABISELECT(16,8));

#else // __cplusplus

extern void _ZN3bbb3CC1C1Ev();
extern void _ZN3bbb3CC1D1Ev();
Name_Map name_map__ZN3bbb3CC1E[] = {
  NSPAIR(_ZN3bbb3CC1C1Ev),
  NSPAIR(_ZN3bbb3CC1D1Ev),
  {0,0}
};
extern VTBL_ENTRY _ZTIN3bbb3CC1E[];
extern void _ZN3bbb3CC13barEv();
extern void _ZN3bbb3CC13fooEv();
static  VTBL_ENTRY vtc__ZN3bbb3CC1E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb3CC1E[0]),
  (VTBL_ENTRY)&_ZN3bbb3CC13barEv,
  (VTBL_ENTRY)&_ZN3bbb3CC13fooEv,
};
extern VTBL_ENTRY _ZTIN3bbb3CC1E[];
extern  VTBL_ENTRY _ZTVN3bbb3CC1E[];
Class_Descriptor cd__ZN3bbb3CC1E = {  "_ZN3bbb3CC1E", // class name
  0,0,//no base classes
  &(vtc__ZN3bbb3CC1E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(16,8), // object size
  NSPAIRA(_ZTIN3bbb3CC1E),ABISELECT(16,8), //typeinfo_var
  NSPAIRA(_ZTVN3bbb3CC1E),4, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  0, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  DD1  {
  int pa;
  virtual void  bar(); // _ZN3bbb3DD13barEv
  virtual void  foo(); // _ZN3bbb3DD13fooEv
  ~DD1(); // tgen
  DD1(); // tgen
};
//SIG(1 _ZN3bbb3DD1E) C1{ v1 v2 Fi}
}
namespace bbb { 
void  bbb::DD1 ::bar(){vfunc_called(this, "_ZN3bbb3DD13barEv");}
void  bbb::DD1 ::foo(){vfunc_called(this, "_ZN3bbb3DD13fooEv");}
bbb::DD1 ::~DD1(){ note_dtor("_ZN3bbb3DD1E", this);} // tgen
bbb::DD1 ::DD1(){ note_ctor("_ZN3bbb3DD1E", this);} // tgen
}
static void Test__ZN3bbb3DD1E()
{
  extern Class_Descriptor cd__ZN3bbb3DD1E;
  void *lvp;
  {
    ABISELECT(double,int) buf[3];
    init_test(&cd__ZN3bbb3DD1E, buf);
    ::bbb::DD1 *dp, &lv = *(dp=new (buf) ::bbb::DD1());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(16,8), "sizeof(_ZN3bbb3DD1E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb3DD1E)");
    check_field_offset(lv, pa, ABISELECT(8,4), "_ZN3bbb3DD1E.pa");
    test_class_info(&lv, &cd__ZN3bbb3DD1E);
    dp->::bbb::DD1::~DD1();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb3DD1E(Test__ZN3bbb3DD1E, "_ZN3bbb3DD1E", ABISELECT(16,8));

#else // __cplusplus

extern void _ZN3bbb3DD1C1Ev();
extern void _ZN3bbb3DD1D1Ev();
Name_Map name_map__ZN3bbb3DD1E[] = {
  NSPAIR(_ZN3bbb3DD1C1Ev),
  NSPAIR(_ZN3bbb3DD1D1Ev),
  {0,0}
};
extern VTBL_ENTRY _ZTIN3bbb3DD1E[];
extern void _ZN3bbb3DD13barEv();
extern void _ZN3bbb3DD13fooEv();
static  VTBL_ENTRY vtc__ZN3bbb3DD1E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb3DD1E[0]),
  (VTBL_ENTRY)&_ZN3bbb3DD13barEv,
  (VTBL_ENTRY)&_ZN3bbb3DD13fooEv,
};
extern VTBL_ENTRY _ZTIN3bbb3DD1E[];
extern  VTBL_ENTRY _ZTVN3bbb3DD1E[];
Class_Descriptor cd__ZN3bbb3DD1E = {  "_ZN3bbb3DD1E", // class name
  0,0,//no base classes
  &(vtc__ZN3bbb3DD1E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(16,8), // object size
  NSPAIRA(_ZTIN3bbb3DD1E),ABISELECT(16,8), //typeinfo_var
  NSPAIRA(_ZTVN3bbb3DD1E),4, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  0, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  EE000  : ::bbb::AA0 , ::bbb::BB0 {
  int pe;
  virtual void  foo(); // _ZN3bbb5EE0003fooEv
  virtual void  bar(); // _ZN3bbb5EE0003barEv
  ~EE000(); // tgen
  EE000(); // tgen
};
//SIG(-1 _ZN3bbb5EE000E) C1{ BC2{ v1 v2 Fi} BC3{ v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::EE000 ::foo(){vfunc_called(this, "_ZN3bbb5EE0003fooEv");}
void  bbb::EE000 ::bar(){vfunc_called(this, "_ZN3bbb5EE0003barEv");}
bbb::EE000 ::~EE000(){ note_dtor("_ZN3bbb5EE000E", this);} // tgen
bbb::EE000 ::EE000(){ note_ctor("_ZN3bbb5EE000E", this);} // tgen
}
static void Test__ZN3bbb5EE000E()
{
  extern Class_Descriptor cd__ZN3bbb5EE000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5EE000E, buf);
    ::bbb::EE000 *dp, &lv = *(dp=new (buf) ::bbb::EE000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5EE000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5EE000E)");
    check_base_class_offset(lv, (::bbb::AA0*), 0, "_ZN3bbb5EE000E");
    check_base_class_offset(lv, (::bbb::BB0*), ABISELECT(16,8), "_ZN3bbb5EE000E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5EE000E.pe");
    test_class_info(&lv, &cd__ZN3bbb5EE000E);
    dp->::bbb::EE000::~EE000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5EE000E(Test__ZN3bbb5EE000E, "_ZN3bbb5EE000E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5EE000C1Ev();
extern void _ZN3bbb5EE000D1Ev();
Name_Map name_map__ZN3bbb5EE000E[] = {
  NSPAIR(_ZN3bbb5EE000C1Ev),
  NSPAIR(_ZN3bbb5EE000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
static Base_Class bases__ZN3bbb5EE000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern void _ZN3bbb5EE0003fooEv();
extern void _ZN3bbb5EE0003barEv();
extern void ABISELECT(_ZThn16_N3bbb5EE0003fooEv,_ZThn8_N3bbb5EE0003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb5EE0003barEv,_ZThn8_N3bbb5EE0003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb5EE000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5EE000E[0]),
  (VTBL_ENTRY)&_ZN3bbb5EE0003fooEv,
  (VTBL_ENTRY)&_ZN3bbb5EE0003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5EE000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE0003fooEv,_ZThn8_N3bbb5EE0003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE0003barEv,_ZThn8_N3bbb5EE0003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
Class_Descriptor cd__ZN3bbb5EE000E = {  "_ZN3bbb5EE000E", // class name
  bases__ZN3bbb5EE000E, 2,
  &(vtc__ZN3bbb5EE000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5EE000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5EE000E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  FF000  : ::bbb::AA0 , ::bbb::BB0 {
  int pe;
  virtual void  foo(); // _ZN3bbb5FF0003fooEv
  virtual void  bar(); // _ZN3bbb5FF0003barEv
  ~FF000(); // tgen
  FF000(); // tgen
};
//SIG(-1 _ZN3bbb5FF000E) C1{ BC2{ v1 v2 Fi} BC3{ v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::FF000 ::foo(){vfunc_called(this, "_ZN3bbb5FF0003fooEv");}
void  bbb::FF000 ::bar(){vfunc_called(this, "_ZN3bbb5FF0003barEv");}
bbb::FF000 ::~FF000(){ note_dtor("_ZN3bbb5FF000E", this);} // tgen
bbb::FF000 ::FF000(){ note_ctor("_ZN3bbb5FF000E", this);} // tgen
}
static void Test__ZN3bbb5FF000E()
{
  extern Class_Descriptor cd__ZN3bbb5FF000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5FF000E, buf);
    ::bbb::FF000 *dp, &lv = *(dp=new (buf) ::bbb::FF000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5FF000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5FF000E)");
    check_base_class_offset(lv, (::bbb::AA0*), 0, "_ZN3bbb5FF000E");
    check_base_class_offset(lv, (::bbb::BB0*), ABISELECT(16,8), "_ZN3bbb5FF000E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5FF000E.pe");
    test_class_info(&lv, &cd__ZN3bbb5FF000E);
    dp->::bbb::FF000::~FF000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5FF000E(Test__ZN3bbb5FF000E, "_ZN3bbb5FF000E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5FF000C1Ev();
extern void _ZN3bbb5FF000D1Ev();
Name_Map name_map__ZN3bbb5FF000E[] = {
  NSPAIR(_ZN3bbb5FF000C1Ev),
  NSPAIR(_ZN3bbb5FF000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
static Base_Class bases__ZN3bbb5FF000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern void _ZN3bbb5FF0003fooEv();
extern void _ZN3bbb5FF0003barEv();
extern void ABISELECT(_ZThn16_N3bbb5FF0003fooEv,_ZThn8_N3bbb5FF0003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb5FF0003barEv,_ZThn8_N3bbb5FF0003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb5FF000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5FF000E[0]),
  (VTBL_ENTRY)&_ZN3bbb5FF0003fooEv,
  (VTBL_ENTRY)&_ZN3bbb5FF0003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5FF000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF0003fooEv,_ZThn8_N3bbb5FF0003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF0003barEv,_ZThn8_N3bbb5FF0003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
Class_Descriptor cd__ZN3bbb5FF000E = {  "_ZN3bbb5FF000E", // class name
  bases__ZN3bbb5FF000E, 2,
  &(vtc__ZN3bbb5FF000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5FF000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5FF000E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  EE001  : ::bbb::AA0 , ::bbb::BB0 {
  int pe;
  virtual void  bar(); // _ZN3bbb5EE0013barEv
  virtual void  foo(); // _ZN3bbb5EE0013fooEv
  ~EE001(); // tgen
  EE001(); // tgen
};
//SIG(-1 _ZN3bbb5EE001E) C1{ BC2{ v2 v1 Fi} BC3{ v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::EE001 ::bar(){vfunc_called(this, "_ZN3bbb5EE0013barEv");}
void  bbb::EE001 ::foo(){vfunc_called(this, "_ZN3bbb5EE0013fooEv");}
bbb::EE001 ::~EE001(){ note_dtor("_ZN3bbb5EE001E", this);} // tgen
bbb::EE001 ::EE001(){ note_ctor("_ZN3bbb5EE001E", this);} // tgen
}
static void Test__ZN3bbb5EE001E()
{
  extern Class_Descriptor cd__ZN3bbb5EE001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5EE001E, buf);
    ::bbb::EE001 *dp, &lv = *(dp=new (buf) ::bbb::EE001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5EE001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5EE001E)");
    check_base_class_offset(lv, (::bbb::AA0*), 0, "_ZN3bbb5EE001E");
    check_base_class_offset(lv, (::bbb::BB0*), ABISELECT(16,8), "_ZN3bbb5EE001E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5EE001E.pe");
    test_class_info(&lv, &cd__ZN3bbb5EE001E);
    dp->::bbb::EE001::~EE001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5EE001E(Test__ZN3bbb5EE001E, "_ZN3bbb5EE001E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5EE001C1Ev();
extern void _ZN3bbb5EE001D1Ev();
Name_Map name_map__ZN3bbb5EE001E[] = {
  NSPAIR(_ZN3bbb5EE001C1Ev),
  NSPAIR(_ZN3bbb5EE001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
static Base_Class bases__ZN3bbb5EE001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern void _ZN3bbb5EE0013fooEv();
extern void _ZN3bbb5EE0013barEv();
extern void ABISELECT(_ZThn16_N3bbb5EE0013fooEv,_ZThn8_N3bbb5EE0013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb5EE0013barEv,_ZThn8_N3bbb5EE0013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb5EE001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5EE001E[0]),
  (VTBL_ENTRY)&_ZN3bbb5EE0013fooEv,
  (VTBL_ENTRY)&_ZN3bbb5EE0013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5EE001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE0013fooEv,_ZThn8_N3bbb5EE0013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE0013barEv,_ZThn8_N3bbb5EE0013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
Class_Descriptor cd__ZN3bbb5EE001E = {  "_ZN3bbb5EE001E", // class name
  bases__ZN3bbb5EE001E, 2,
  &(vtc__ZN3bbb5EE001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5EE001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5EE001E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  FF001  : ::bbb::AA0 , ::bbb::BB0 {
  int pe;
  virtual void  bar(); // _ZN3bbb5FF0013barEv
  virtual void  foo(); // _ZN3bbb5FF0013fooEv
  ~FF001(); // tgen
  FF001(); // tgen
};
//SIG(-1 _ZN3bbb5FF001E) C1{ BC2{ v2 v1 Fi} BC3{ v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::FF001 ::bar(){vfunc_called(this, "_ZN3bbb5FF0013barEv");}
void  bbb::FF001 ::foo(){vfunc_called(this, "_ZN3bbb5FF0013fooEv");}
bbb::FF001 ::~FF001(){ note_dtor("_ZN3bbb5FF001E", this);} // tgen
bbb::FF001 ::FF001(){ note_ctor("_ZN3bbb5FF001E", this);} // tgen
}
static void Test__ZN3bbb5FF001E()
{
  extern Class_Descriptor cd__ZN3bbb5FF001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5FF001E, buf);
    ::bbb::FF001 *dp, &lv = *(dp=new (buf) ::bbb::FF001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5FF001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5FF001E)");
    check_base_class_offset(lv, (::bbb::AA0*), 0, "_ZN3bbb5FF001E");
    check_base_class_offset(lv, (::bbb::BB0*), ABISELECT(16,8), "_ZN3bbb5FF001E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5FF001E.pe");
    test_class_info(&lv, &cd__ZN3bbb5FF001E);
    dp->::bbb::FF001::~FF001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5FF001E(Test__ZN3bbb5FF001E, "_ZN3bbb5FF001E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5FF001C1Ev();
extern void _ZN3bbb5FF001D1Ev();
Name_Map name_map__ZN3bbb5FF001E[] = {
  NSPAIR(_ZN3bbb5FF001C1Ev),
  NSPAIR(_ZN3bbb5FF001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
static Base_Class bases__ZN3bbb5FF001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern void _ZN3bbb5FF0013fooEv();
extern void _ZN3bbb5FF0013barEv();
extern void ABISELECT(_ZThn16_N3bbb5FF0013fooEv,_ZThn8_N3bbb5FF0013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb5FF0013barEv,_ZThn8_N3bbb5FF0013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb5FF001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5FF001E[0]),
  (VTBL_ENTRY)&_ZN3bbb5FF0013fooEv,
  (VTBL_ENTRY)&_ZN3bbb5FF0013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5FF001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF0013fooEv,_ZThn8_N3bbb5FF0013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF0013barEv,_ZThn8_N3bbb5FF0013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
Class_Descriptor cd__ZN3bbb5FF001E = {  "_ZN3bbb5FF001E", // class name
  bases__ZN3bbb5FF001E, 2,
  &(vtc__ZN3bbb5FF001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5FF001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5FF001E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  EE010  : ::bbb::AA0 , ::bbb::BB1 {
  int pe;
  virtual void  foo(); // _ZN3bbb5EE0103fooEv
  virtual void  bar(); // _ZN3bbb5EE0103barEv
  ~EE010(); // tgen
  EE010(); // tgen
};
//SIG(-1 _ZN3bbb5EE010E) C1{ BC2{ v1 v2 Fi} BC3{ v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::EE010 ::foo(){vfunc_called(this, "_ZN3bbb5EE0103fooEv");}
void  bbb::EE010 ::bar(){vfunc_called(this, "_ZN3bbb5EE0103barEv");}
bbb::EE010 ::~EE010(){ note_dtor("_ZN3bbb5EE010E", this);} // tgen
bbb::EE010 ::EE010(){ note_ctor("_ZN3bbb5EE010E", this);} // tgen
}
static void Test__ZN3bbb5EE010E()
{
  extern Class_Descriptor cd__ZN3bbb5EE010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5EE010E, buf);
    ::bbb::EE010 *dp, &lv = *(dp=new (buf) ::bbb::EE010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5EE010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5EE010E)");
    check_base_class_offset(lv, (::bbb::AA0*), 0, "_ZN3bbb5EE010E");
    check_base_class_offset(lv, (::bbb::BB1*), ABISELECT(16,8), "_ZN3bbb5EE010E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5EE010E.pe");
    test_class_info(&lv, &cd__ZN3bbb5EE010E);
    dp->::bbb::EE010::~EE010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5EE010E(Test__ZN3bbb5EE010E, "_ZN3bbb5EE010E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5EE010C1Ev();
extern void _ZN3bbb5EE010D1Ev();
Name_Map name_map__ZN3bbb5EE010E[] = {
  NSPAIR(_ZN3bbb5EE010C1Ev),
  NSPAIR(_ZN3bbb5EE010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
static Base_Class bases__ZN3bbb5EE010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern void _ZN3bbb5EE0103fooEv();
extern void _ZN3bbb5EE0103barEv();
extern void ABISELECT(_ZThn16_N3bbb5EE0103barEv,_ZThn8_N3bbb5EE0103barEv)();
extern void ABISELECT(_ZThn16_N3bbb5EE0103fooEv,_ZThn8_N3bbb5EE0103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb5EE010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5EE010E[0]),
  (VTBL_ENTRY)&_ZN3bbb5EE0103fooEv,
  (VTBL_ENTRY)&_ZN3bbb5EE0103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5EE010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE0103barEv,_ZThn8_N3bbb5EE0103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE0103fooEv,_ZThn8_N3bbb5EE0103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
Class_Descriptor cd__ZN3bbb5EE010E = {  "_ZN3bbb5EE010E", // class name
  bases__ZN3bbb5EE010E, 2,
  &(vtc__ZN3bbb5EE010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5EE010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5EE010E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  FF010  : ::bbb::AA0 , ::bbb::BB1 {
  int pe;
  virtual void  foo(); // _ZN3bbb5FF0103fooEv
  virtual void  bar(); // _ZN3bbb5FF0103barEv
  ~FF010(); // tgen
  FF010(); // tgen
};
//SIG(-1 _ZN3bbb5FF010E) C1{ BC2{ v1 v2 Fi} BC3{ v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::FF010 ::foo(){vfunc_called(this, "_ZN3bbb5FF0103fooEv");}
void  bbb::FF010 ::bar(){vfunc_called(this, "_ZN3bbb5FF0103barEv");}
bbb::FF010 ::~FF010(){ note_dtor("_ZN3bbb5FF010E", this);} // tgen
bbb::FF010 ::FF010(){ note_ctor("_ZN3bbb5FF010E", this);} // tgen
}
static void Test__ZN3bbb5FF010E()
{
  extern Class_Descriptor cd__ZN3bbb5FF010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5FF010E, buf);
    ::bbb::FF010 *dp, &lv = *(dp=new (buf) ::bbb::FF010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5FF010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5FF010E)");
    check_base_class_offset(lv, (::bbb::AA0*), 0, "_ZN3bbb5FF010E");
    check_base_class_offset(lv, (::bbb::BB1*), ABISELECT(16,8), "_ZN3bbb5FF010E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5FF010E.pe");
    test_class_info(&lv, &cd__ZN3bbb5FF010E);
    dp->::bbb::FF010::~FF010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5FF010E(Test__ZN3bbb5FF010E, "_ZN3bbb5FF010E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5FF010C1Ev();
extern void _ZN3bbb5FF010D1Ev();
Name_Map name_map__ZN3bbb5FF010E[] = {
  NSPAIR(_ZN3bbb5FF010C1Ev),
  NSPAIR(_ZN3bbb5FF010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
static Base_Class bases__ZN3bbb5FF010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern void _ZN3bbb5FF0103fooEv();
extern void _ZN3bbb5FF0103barEv();
extern void ABISELECT(_ZThn16_N3bbb5FF0103barEv,_ZThn8_N3bbb5FF0103barEv)();
extern void ABISELECT(_ZThn16_N3bbb5FF0103fooEv,_ZThn8_N3bbb5FF0103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb5FF010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5FF010E[0]),
  (VTBL_ENTRY)&_ZN3bbb5FF0103fooEv,
  (VTBL_ENTRY)&_ZN3bbb5FF0103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5FF010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF0103barEv,_ZThn8_N3bbb5FF0103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF0103fooEv,_ZThn8_N3bbb5FF0103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
Class_Descriptor cd__ZN3bbb5FF010E = {  "_ZN3bbb5FF010E", // class name
  bases__ZN3bbb5FF010E, 2,
  &(vtc__ZN3bbb5FF010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5FF010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5FF010E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  EE011  : ::bbb::AA0 , ::bbb::BB1 {
  int pe;
  virtual void  bar(); // _ZN3bbb5EE0113barEv
  virtual void  foo(); // _ZN3bbb5EE0113fooEv
  ~EE011(); // tgen
  EE011(); // tgen
};
//SIG(-1 _ZN3bbb5EE011E) C1{ BC2{ v2 v1 Fi} BC3{ v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::EE011 ::bar(){vfunc_called(this, "_ZN3bbb5EE0113barEv");}
void  bbb::EE011 ::foo(){vfunc_called(this, "_ZN3bbb5EE0113fooEv");}
bbb::EE011 ::~EE011(){ note_dtor("_ZN3bbb5EE011E", this);} // tgen
bbb::EE011 ::EE011(){ note_ctor("_ZN3bbb5EE011E", this);} // tgen
}
static void Test__ZN3bbb5EE011E()
{
  extern Class_Descriptor cd__ZN3bbb5EE011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5EE011E, buf);
    ::bbb::EE011 *dp, &lv = *(dp=new (buf) ::bbb::EE011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5EE011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5EE011E)");
    check_base_class_offset(lv, (::bbb::AA0*), 0, "_ZN3bbb5EE011E");
    check_base_class_offset(lv, (::bbb::BB1*), ABISELECT(16,8), "_ZN3bbb5EE011E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5EE011E.pe");
    test_class_info(&lv, &cd__ZN3bbb5EE011E);
    dp->::bbb::EE011::~EE011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5EE011E(Test__ZN3bbb5EE011E, "_ZN3bbb5EE011E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5EE011C1Ev();
extern void _ZN3bbb5EE011D1Ev();
Name_Map name_map__ZN3bbb5EE011E[] = {
  NSPAIR(_ZN3bbb5EE011C1Ev),
  NSPAIR(_ZN3bbb5EE011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
static Base_Class bases__ZN3bbb5EE011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern void _ZN3bbb5EE0113fooEv();
extern void _ZN3bbb5EE0113barEv();
extern void ABISELECT(_ZThn16_N3bbb5EE0113barEv,_ZThn8_N3bbb5EE0113barEv)();
extern void ABISELECT(_ZThn16_N3bbb5EE0113fooEv,_ZThn8_N3bbb5EE0113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb5EE011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5EE011E[0]),
  (VTBL_ENTRY)&_ZN3bbb5EE0113fooEv,
  (VTBL_ENTRY)&_ZN3bbb5EE0113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5EE011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE0113barEv,_ZThn8_N3bbb5EE0113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE0113fooEv,_ZThn8_N3bbb5EE0113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
Class_Descriptor cd__ZN3bbb5EE011E = {  "_ZN3bbb5EE011E", // class name
  bases__ZN3bbb5EE011E, 2,
  &(vtc__ZN3bbb5EE011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5EE011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5EE011E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  FF011  : ::bbb::AA0 , ::bbb::BB1 {
  int pe;
  virtual void  bar(); // _ZN3bbb5FF0113barEv
  virtual void  foo(); // _ZN3bbb5FF0113fooEv
  ~FF011(); // tgen
  FF011(); // tgen
};
//SIG(-1 _ZN3bbb5FF011E) C1{ BC2{ v2 v1 Fi} BC3{ v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::FF011 ::bar(){vfunc_called(this, "_ZN3bbb5FF0113barEv");}
void  bbb::FF011 ::foo(){vfunc_called(this, "_ZN3bbb5FF0113fooEv");}
bbb::FF011 ::~FF011(){ note_dtor("_ZN3bbb5FF011E", this);} // tgen
bbb::FF011 ::FF011(){ note_ctor("_ZN3bbb5FF011E", this);} // tgen
}
static void Test__ZN3bbb5FF011E()
{
  extern Class_Descriptor cd__ZN3bbb5FF011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5FF011E, buf);
    ::bbb::FF011 *dp, &lv = *(dp=new (buf) ::bbb::FF011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5FF011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5FF011E)");
    check_base_class_offset(lv, (::bbb::AA0*), 0, "_ZN3bbb5FF011E");
    check_base_class_offset(lv, (::bbb::BB1*), ABISELECT(16,8), "_ZN3bbb5FF011E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5FF011E.pe");
    test_class_info(&lv, &cd__ZN3bbb5FF011E);
    dp->::bbb::FF011::~FF011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5FF011E(Test__ZN3bbb5FF011E, "_ZN3bbb5FF011E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5FF011C1Ev();
extern void _ZN3bbb5FF011D1Ev();
Name_Map name_map__ZN3bbb5FF011E[] = {
  NSPAIR(_ZN3bbb5FF011C1Ev),
  NSPAIR(_ZN3bbb5FF011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
static Base_Class bases__ZN3bbb5FF011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern void _ZN3bbb5FF0113fooEv();
extern void _ZN3bbb5FF0113barEv();
extern void ABISELECT(_ZThn16_N3bbb5FF0113barEv,_ZThn8_N3bbb5FF0113barEv)();
extern void ABISELECT(_ZThn16_N3bbb5FF0113fooEv,_ZThn8_N3bbb5FF0113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb5FF011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5FF011E[0]),
  (VTBL_ENTRY)&_ZN3bbb5FF0113fooEv,
  (VTBL_ENTRY)&_ZN3bbb5FF0113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5FF011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF0113barEv,_ZThn8_N3bbb5FF0113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF0113fooEv,_ZThn8_N3bbb5FF0113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
Class_Descriptor cd__ZN3bbb5FF011E = {  "_ZN3bbb5FF011E", // class name
  bases__ZN3bbb5FF011E, 2,
  &(vtc__ZN3bbb5FF011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5FF011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5FF011E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  EE100  : ::bbb::AA1 , ::bbb::BB0 {
  int pe;
  virtual void  foo(); // _ZN3bbb5EE1003fooEv
  virtual void  bar(); // _ZN3bbb5EE1003barEv
  ~EE100(); // tgen
  EE100(); // tgen
};
//SIG(-1 _ZN3bbb5EE100E) C1{ BC2{ v2 v1 Fi} BC3{ v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::EE100 ::foo(){vfunc_called(this, "_ZN3bbb5EE1003fooEv");}
void  bbb::EE100 ::bar(){vfunc_called(this, "_ZN3bbb5EE1003barEv");}
bbb::EE100 ::~EE100(){ note_dtor("_ZN3bbb5EE100E", this);} // tgen
bbb::EE100 ::EE100(){ note_ctor("_ZN3bbb5EE100E", this);} // tgen
}
static void Test__ZN3bbb5EE100E()
{
  extern Class_Descriptor cd__ZN3bbb5EE100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5EE100E, buf);
    ::bbb::EE100 *dp, &lv = *(dp=new (buf) ::bbb::EE100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5EE100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5EE100E)");
    check_base_class_offset(lv, (::bbb::AA1*), 0, "_ZN3bbb5EE100E");
    check_base_class_offset(lv, (::bbb::BB0*), ABISELECT(16,8), "_ZN3bbb5EE100E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5EE100E.pe");
    test_class_info(&lv, &cd__ZN3bbb5EE100E);
    dp->::bbb::EE100::~EE100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5EE100E(Test__ZN3bbb5EE100E, "_ZN3bbb5EE100E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5EE100C1Ev();
extern void _ZN3bbb5EE100D1Ev();
Name_Map name_map__ZN3bbb5EE100E[] = {
  NSPAIR(_ZN3bbb5EE100C1Ev),
  NSPAIR(_ZN3bbb5EE100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
static Base_Class bases__ZN3bbb5EE100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern void _ZN3bbb5EE1003barEv();
extern void _ZN3bbb5EE1003fooEv();
extern void ABISELECT(_ZThn16_N3bbb5EE1003fooEv,_ZThn8_N3bbb5EE1003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb5EE1003barEv,_ZThn8_N3bbb5EE1003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb5EE100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5EE100E[0]),
  (VTBL_ENTRY)&_ZN3bbb5EE1003barEv,
  (VTBL_ENTRY)&_ZN3bbb5EE1003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5EE100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE1003fooEv,_ZThn8_N3bbb5EE1003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE1003barEv,_ZThn8_N3bbb5EE1003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
Class_Descriptor cd__ZN3bbb5EE100E = {  "_ZN3bbb5EE100E", // class name
  bases__ZN3bbb5EE100E, 2,
  &(vtc__ZN3bbb5EE100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5EE100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5EE100E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  FF100  : ::bbb::AA1 , ::bbb::BB0 {
  int pe;
  virtual void  foo(); // _ZN3bbb5FF1003fooEv
  virtual void  bar(); // _ZN3bbb5FF1003barEv
  ~FF100(); // tgen
  FF100(); // tgen
};
//SIG(-1 _ZN3bbb5FF100E) C1{ BC2{ v2 v1 Fi} BC3{ v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::FF100 ::foo(){vfunc_called(this, "_ZN3bbb5FF1003fooEv");}
void  bbb::FF100 ::bar(){vfunc_called(this, "_ZN3bbb5FF1003barEv");}
bbb::FF100 ::~FF100(){ note_dtor("_ZN3bbb5FF100E", this);} // tgen
bbb::FF100 ::FF100(){ note_ctor("_ZN3bbb5FF100E", this);} // tgen
}
static void Test__ZN3bbb5FF100E()
{
  extern Class_Descriptor cd__ZN3bbb5FF100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5FF100E, buf);
    ::bbb::FF100 *dp, &lv = *(dp=new (buf) ::bbb::FF100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5FF100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5FF100E)");
    check_base_class_offset(lv, (::bbb::AA1*), 0, "_ZN3bbb5FF100E");
    check_base_class_offset(lv, (::bbb::BB0*), ABISELECT(16,8), "_ZN3bbb5FF100E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5FF100E.pe");
    test_class_info(&lv, &cd__ZN3bbb5FF100E);
    dp->::bbb::FF100::~FF100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5FF100E(Test__ZN3bbb5FF100E, "_ZN3bbb5FF100E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5FF100C1Ev();
extern void _ZN3bbb5FF100D1Ev();
Name_Map name_map__ZN3bbb5FF100E[] = {
  NSPAIR(_ZN3bbb5FF100C1Ev),
  NSPAIR(_ZN3bbb5FF100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
static Base_Class bases__ZN3bbb5FF100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern void _ZN3bbb5FF1003barEv();
extern void _ZN3bbb5FF1003fooEv();
extern void ABISELECT(_ZThn16_N3bbb5FF1003fooEv,_ZThn8_N3bbb5FF1003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb5FF1003barEv,_ZThn8_N3bbb5FF1003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb5FF100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5FF100E[0]),
  (VTBL_ENTRY)&_ZN3bbb5FF1003barEv,
  (VTBL_ENTRY)&_ZN3bbb5FF1003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5FF100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF1003fooEv,_ZThn8_N3bbb5FF1003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF1003barEv,_ZThn8_N3bbb5FF1003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
Class_Descriptor cd__ZN3bbb5FF100E = {  "_ZN3bbb5FF100E", // class name
  bases__ZN3bbb5FF100E, 2,
  &(vtc__ZN3bbb5FF100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5FF100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5FF100E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  EE101  : ::bbb::AA1 , ::bbb::BB0 {
  int pe;
  virtual void  bar(); // _ZN3bbb5EE1013barEv
  virtual void  foo(); // _ZN3bbb5EE1013fooEv
  ~EE101(); // tgen
  EE101(); // tgen
};
//SIG(-1 _ZN3bbb5EE101E) C1{ BC2{ v1 v2 Fi} BC3{ v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::EE101 ::bar(){vfunc_called(this, "_ZN3bbb5EE1013barEv");}
void  bbb::EE101 ::foo(){vfunc_called(this, "_ZN3bbb5EE1013fooEv");}
bbb::EE101 ::~EE101(){ note_dtor("_ZN3bbb5EE101E", this);} // tgen
bbb::EE101 ::EE101(){ note_ctor("_ZN3bbb5EE101E", this);} // tgen
}
static void Test__ZN3bbb5EE101E()
{
  extern Class_Descriptor cd__ZN3bbb5EE101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5EE101E, buf);
    ::bbb::EE101 *dp, &lv = *(dp=new (buf) ::bbb::EE101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5EE101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5EE101E)");
    check_base_class_offset(lv, (::bbb::AA1*), 0, "_ZN3bbb5EE101E");
    check_base_class_offset(lv, (::bbb::BB0*), ABISELECT(16,8), "_ZN3bbb5EE101E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5EE101E.pe");
    test_class_info(&lv, &cd__ZN3bbb5EE101E);
    dp->::bbb::EE101::~EE101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5EE101E(Test__ZN3bbb5EE101E, "_ZN3bbb5EE101E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5EE101C1Ev();
extern void _ZN3bbb5EE101D1Ev();
Name_Map name_map__ZN3bbb5EE101E[] = {
  NSPAIR(_ZN3bbb5EE101C1Ev),
  NSPAIR(_ZN3bbb5EE101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
static Base_Class bases__ZN3bbb5EE101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern void _ZN3bbb5EE1013barEv();
extern void _ZN3bbb5EE1013fooEv();
extern void ABISELECT(_ZThn16_N3bbb5EE1013fooEv,_ZThn8_N3bbb5EE1013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb5EE1013barEv,_ZThn8_N3bbb5EE1013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb5EE101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5EE101E[0]),
  (VTBL_ENTRY)&_ZN3bbb5EE1013barEv,
  (VTBL_ENTRY)&_ZN3bbb5EE1013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5EE101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE1013fooEv,_ZThn8_N3bbb5EE1013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE1013barEv,_ZThn8_N3bbb5EE1013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
Class_Descriptor cd__ZN3bbb5EE101E = {  "_ZN3bbb5EE101E", // class name
  bases__ZN3bbb5EE101E, 2,
  &(vtc__ZN3bbb5EE101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5EE101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5EE101E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  FF101  : ::bbb::AA1 , ::bbb::BB0 {
  int pe;
  virtual void  bar(); // _ZN3bbb5FF1013barEv
  virtual void  foo(); // _ZN3bbb5FF1013fooEv
  ~FF101(); // tgen
  FF101(); // tgen
};
//SIG(-1 _ZN3bbb5FF101E) C1{ BC2{ v1 v2 Fi} BC3{ v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::FF101 ::bar(){vfunc_called(this, "_ZN3bbb5FF1013barEv");}
void  bbb::FF101 ::foo(){vfunc_called(this, "_ZN3bbb5FF1013fooEv");}
bbb::FF101 ::~FF101(){ note_dtor("_ZN3bbb5FF101E", this);} // tgen
bbb::FF101 ::FF101(){ note_ctor("_ZN3bbb5FF101E", this);} // tgen
}
static void Test__ZN3bbb5FF101E()
{
  extern Class_Descriptor cd__ZN3bbb5FF101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5FF101E, buf);
    ::bbb::FF101 *dp, &lv = *(dp=new (buf) ::bbb::FF101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5FF101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5FF101E)");
    check_base_class_offset(lv, (::bbb::AA1*), 0, "_ZN3bbb5FF101E");
    check_base_class_offset(lv, (::bbb::BB0*), ABISELECT(16,8), "_ZN3bbb5FF101E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5FF101E.pe");
    test_class_info(&lv, &cd__ZN3bbb5FF101E);
    dp->::bbb::FF101::~FF101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5FF101E(Test__ZN3bbb5FF101E, "_ZN3bbb5FF101E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5FF101C1Ev();
extern void _ZN3bbb5FF101D1Ev();
Name_Map name_map__ZN3bbb5FF101E[] = {
  NSPAIR(_ZN3bbb5FF101C1Ev),
  NSPAIR(_ZN3bbb5FF101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
static Base_Class bases__ZN3bbb5FF101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern void _ZN3bbb5FF1013barEv();
extern void _ZN3bbb5FF1013fooEv();
extern void ABISELECT(_ZThn16_N3bbb5FF1013fooEv,_ZThn8_N3bbb5FF1013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb5FF1013barEv,_ZThn8_N3bbb5FF1013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb5FF101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5FF101E[0]),
  (VTBL_ENTRY)&_ZN3bbb5FF1013barEv,
  (VTBL_ENTRY)&_ZN3bbb5FF1013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5FF101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF1013fooEv,_ZThn8_N3bbb5FF1013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF1013barEv,_ZThn8_N3bbb5FF1013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
Class_Descriptor cd__ZN3bbb5FF101E = {  "_ZN3bbb5FF101E", // class name
  bases__ZN3bbb5FF101E, 2,
  &(vtc__ZN3bbb5FF101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5FF101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5FF101E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  EE110  : ::bbb::AA1 , ::bbb::BB1 {
  int pe;
  virtual void  foo(); // _ZN3bbb5EE1103fooEv
  virtual void  bar(); // _ZN3bbb5EE1103barEv
  ~EE110(); // tgen
  EE110(); // tgen
};
//SIG(-1 _ZN3bbb5EE110E) C1{ BC2{ v2 v1 Fi} BC3{ v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::EE110 ::foo(){vfunc_called(this, "_ZN3bbb5EE1103fooEv");}
void  bbb::EE110 ::bar(){vfunc_called(this, "_ZN3bbb5EE1103barEv");}
bbb::EE110 ::~EE110(){ note_dtor("_ZN3bbb5EE110E", this);} // tgen
bbb::EE110 ::EE110(){ note_ctor("_ZN3bbb5EE110E", this);} // tgen
}
static void Test__ZN3bbb5EE110E()
{
  extern Class_Descriptor cd__ZN3bbb5EE110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5EE110E, buf);
    ::bbb::EE110 *dp, &lv = *(dp=new (buf) ::bbb::EE110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5EE110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5EE110E)");
    check_base_class_offset(lv, (::bbb::AA1*), 0, "_ZN3bbb5EE110E");
    check_base_class_offset(lv, (::bbb::BB1*), ABISELECT(16,8), "_ZN3bbb5EE110E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5EE110E.pe");
    test_class_info(&lv, &cd__ZN3bbb5EE110E);
    dp->::bbb::EE110::~EE110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5EE110E(Test__ZN3bbb5EE110E, "_ZN3bbb5EE110E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5EE110C1Ev();
extern void _ZN3bbb5EE110D1Ev();
Name_Map name_map__ZN3bbb5EE110E[] = {
  NSPAIR(_ZN3bbb5EE110C1Ev),
  NSPAIR(_ZN3bbb5EE110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
static Base_Class bases__ZN3bbb5EE110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern void _ZN3bbb5EE1103barEv();
extern void _ZN3bbb5EE1103fooEv();
extern void ABISELECT(_ZThn16_N3bbb5EE1103barEv,_ZThn8_N3bbb5EE1103barEv)();
extern void ABISELECT(_ZThn16_N3bbb5EE1103fooEv,_ZThn8_N3bbb5EE1103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb5EE110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5EE110E[0]),
  (VTBL_ENTRY)&_ZN3bbb5EE1103barEv,
  (VTBL_ENTRY)&_ZN3bbb5EE1103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5EE110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE1103barEv,_ZThn8_N3bbb5EE1103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE1103fooEv,_ZThn8_N3bbb5EE1103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
Class_Descriptor cd__ZN3bbb5EE110E = {  "_ZN3bbb5EE110E", // class name
  bases__ZN3bbb5EE110E, 2,
  &(vtc__ZN3bbb5EE110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5EE110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5EE110E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  FF110  : ::bbb::AA1 , ::bbb::BB1 {
  int pe;
  virtual void  foo(); // _ZN3bbb5FF1103fooEv
  virtual void  bar(); // _ZN3bbb5FF1103barEv
  ~FF110(); // tgen
  FF110(); // tgen
};
//SIG(-1 _ZN3bbb5FF110E) C1{ BC2{ v2 v1 Fi} BC3{ v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::FF110 ::foo(){vfunc_called(this, "_ZN3bbb5FF1103fooEv");}
void  bbb::FF110 ::bar(){vfunc_called(this, "_ZN3bbb5FF1103barEv");}
bbb::FF110 ::~FF110(){ note_dtor("_ZN3bbb5FF110E", this);} // tgen
bbb::FF110 ::FF110(){ note_ctor("_ZN3bbb5FF110E", this);} // tgen
}
static void Test__ZN3bbb5FF110E()
{
  extern Class_Descriptor cd__ZN3bbb5FF110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5FF110E, buf);
    ::bbb::FF110 *dp, &lv = *(dp=new (buf) ::bbb::FF110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5FF110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5FF110E)");
    check_base_class_offset(lv, (::bbb::AA1*), 0, "_ZN3bbb5FF110E");
    check_base_class_offset(lv, (::bbb::BB1*), ABISELECT(16,8), "_ZN3bbb5FF110E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5FF110E.pe");
    test_class_info(&lv, &cd__ZN3bbb5FF110E);
    dp->::bbb::FF110::~FF110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5FF110E(Test__ZN3bbb5FF110E, "_ZN3bbb5FF110E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5FF110C1Ev();
extern void _ZN3bbb5FF110D1Ev();
Name_Map name_map__ZN3bbb5FF110E[] = {
  NSPAIR(_ZN3bbb5FF110C1Ev),
  NSPAIR(_ZN3bbb5FF110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
static Base_Class bases__ZN3bbb5FF110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern void _ZN3bbb5FF1103barEv();
extern void _ZN3bbb5FF1103fooEv();
extern void ABISELECT(_ZThn16_N3bbb5FF1103barEv,_ZThn8_N3bbb5FF1103barEv)();
extern void ABISELECT(_ZThn16_N3bbb5FF1103fooEv,_ZThn8_N3bbb5FF1103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb5FF110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5FF110E[0]),
  (VTBL_ENTRY)&_ZN3bbb5FF1103barEv,
  (VTBL_ENTRY)&_ZN3bbb5FF1103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5FF110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF1103barEv,_ZThn8_N3bbb5FF1103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF1103fooEv,_ZThn8_N3bbb5FF1103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
Class_Descriptor cd__ZN3bbb5FF110E = {  "_ZN3bbb5FF110E", // class name
  bases__ZN3bbb5FF110E, 2,
  &(vtc__ZN3bbb5FF110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5FF110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5FF110E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  EE111  : ::bbb::AA1 , ::bbb::BB1 {
  int pe;
  virtual void  bar(); // _ZN3bbb5EE1113barEv
  virtual void  foo(); // _ZN3bbb5EE1113fooEv
  ~EE111(); // tgen
  EE111(); // tgen
};
//SIG(-1 _ZN3bbb5EE111E) C1{ BC2{ v1 v2 Fi} BC3{ v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::EE111 ::bar(){vfunc_called(this, "_ZN3bbb5EE1113barEv");}
void  bbb::EE111 ::foo(){vfunc_called(this, "_ZN3bbb5EE1113fooEv");}
bbb::EE111 ::~EE111(){ note_dtor("_ZN3bbb5EE111E", this);} // tgen
bbb::EE111 ::EE111(){ note_ctor("_ZN3bbb5EE111E", this);} // tgen
}
static void Test__ZN3bbb5EE111E()
{
  extern Class_Descriptor cd__ZN3bbb5EE111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5EE111E, buf);
    ::bbb::EE111 *dp, &lv = *(dp=new (buf) ::bbb::EE111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5EE111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5EE111E)");
    check_base_class_offset(lv, (::bbb::AA1*), 0, "_ZN3bbb5EE111E");
    check_base_class_offset(lv, (::bbb::BB1*), ABISELECT(16,8), "_ZN3bbb5EE111E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5EE111E.pe");
    test_class_info(&lv, &cd__ZN3bbb5EE111E);
    dp->::bbb::EE111::~EE111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5EE111E(Test__ZN3bbb5EE111E, "_ZN3bbb5EE111E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5EE111C1Ev();
extern void _ZN3bbb5EE111D1Ev();
Name_Map name_map__ZN3bbb5EE111E[] = {
  NSPAIR(_ZN3bbb5EE111C1Ev),
  NSPAIR(_ZN3bbb5EE111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
static Base_Class bases__ZN3bbb5EE111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern void _ZN3bbb5EE1113barEv();
extern void _ZN3bbb5EE1113fooEv();
extern void ABISELECT(_ZThn16_N3bbb5EE1113barEv,_ZThn8_N3bbb5EE1113barEv)();
extern void ABISELECT(_ZThn16_N3bbb5EE1113fooEv,_ZThn8_N3bbb5EE1113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb5EE111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5EE111E[0]),
  (VTBL_ENTRY)&_ZN3bbb5EE1113barEv,
  (VTBL_ENTRY)&_ZN3bbb5EE1113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5EE111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE1113barEv,_ZThn8_N3bbb5EE1113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5EE1113fooEv,_ZThn8_N3bbb5EE1113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
Class_Descriptor cd__ZN3bbb5EE111E = {  "_ZN3bbb5EE111E", // class name
  bases__ZN3bbb5EE111E, 2,
  &(vtc__ZN3bbb5EE111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5EE111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5EE111E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  FF111  : ::bbb::AA1 , ::bbb::BB1 {
  int pe;
  virtual void  bar(); // _ZN3bbb5FF1113barEv
  virtual void  foo(); // _ZN3bbb5FF1113fooEv
  ~FF111(); // tgen
  FF111(); // tgen
};
//SIG(-1 _ZN3bbb5FF111E) C1{ BC2{ v1 v2 Fi} BC3{ v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::FF111 ::bar(){vfunc_called(this, "_ZN3bbb5FF1113barEv");}
void  bbb::FF111 ::foo(){vfunc_called(this, "_ZN3bbb5FF1113fooEv");}
bbb::FF111 ::~FF111(){ note_dtor("_ZN3bbb5FF111E", this);} // tgen
bbb::FF111 ::FF111(){ note_ctor("_ZN3bbb5FF111E", this);} // tgen
}
static void Test__ZN3bbb5FF111E()
{
  extern Class_Descriptor cd__ZN3bbb5FF111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(5,6)];
    init_test(&cd__ZN3bbb5FF111E, buf);
    ::bbb::FF111 *dp, &lv = *(dp=new (buf) ::bbb::FF111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(32,20), "sizeof(_ZN3bbb5FF111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb5FF111E)");
    check_base_class_offset(lv, (::bbb::AA1*), 0, "_ZN3bbb5FF111E");
    check_base_class_offset(lv, (::bbb::BB1*), ABISELECT(16,8), "_ZN3bbb5FF111E");
    check_field_offset(lv, pe, ABISELECT(28,16), "_ZN3bbb5FF111E.pe");
    test_class_info(&lv, &cd__ZN3bbb5FF111E);
    dp->::bbb::FF111::~FF111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb5FF111E(Test__ZN3bbb5FF111E, "_ZN3bbb5FF111E", ABISELECT(32,20));

#else // __cplusplus

extern void _ZN3bbb5FF111C1Ev();
extern void _ZN3bbb5FF111D1Ev();
Name_Map name_map__ZN3bbb5FF111E[] = {
  NSPAIR(_ZN3bbb5FF111C1Ev),
  NSPAIR(_ZN3bbb5FF111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
static Base_Class bases__ZN3bbb5FF111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern void _ZN3bbb5FF1113barEv();
extern void _ZN3bbb5FF1113fooEv();
extern void ABISELECT(_ZThn16_N3bbb5FF1113barEv,_ZThn8_N3bbb5FF1113barEv)();
extern void ABISELECT(_ZThn16_N3bbb5FF1113fooEv,_ZThn8_N3bbb5FF1113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb5FF111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb5FF111E[0]),
  (VTBL_ENTRY)&_ZN3bbb5FF1113barEv,
  (VTBL_ENTRY)&_ZN3bbb5FF1113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb5FF111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF1113barEv,_ZThn8_N3bbb5FF1113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb5FF1113fooEv,_ZThn8_N3bbb5FF1113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
Class_Descriptor cd__ZN3bbb5FF111E = {  "_ZN3bbb5FF111E", // class name
  bases__ZN3bbb5FF111E, 2,
  &(vtc__ZN3bbb5FF111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(32,20), // object size
  NSPAIRA(_ZTIN3bbb5FF111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb5FF111E),8, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  2, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0000000  : ::bbb::EE000 , ::bbb::FF000 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00000003fooEv
  virtual void  bar(); // _ZN3bbb9GG00000003barEv
  ~GG0000000(); // tgen
  GG0000000(); // tgen
};
//SIG(1 _ZN3bbb9GG0000000E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0000000 ::foo(){vfunc_called(this, "_ZN3bbb9GG00000003fooEv");}
void  bbb::GG0000000 ::bar(){vfunc_called(this, "_ZN3bbb9GG00000003barEv");}
bbb::GG0000000 ::~GG0000000(){ note_dtor("_ZN3bbb9GG0000000E", this);} // tgen
bbb::GG0000000 ::GG0000000(){ note_ctor("_ZN3bbb9GG0000000E", this);} // tgen
}
static void Test__ZN3bbb9GG0000000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0000000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0000000E, buf);
    ::bbb::GG0000000 *dp, &lv = *(dp=new (buf) ::bbb::GG0000000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0000000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0000000E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0000000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0000000E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0000000E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0000000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG0000000E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0000000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0000000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0000000E);
    dp->::bbb::GG0000000::~GG0000000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0000000E(Test__ZN3bbb9GG0000000E, "_ZN3bbb9GG0000000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0000000C1Ev();
extern void _ZN3bbb9GG0000000D1Ev();
Name_Map name_map__ZN3bbb9GG0000000E[] = {
  NSPAIR(_ZN3bbb9GG0000000C1Ev),
  NSPAIR(_ZN3bbb9GG0000000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG0000000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0000000E[];
extern void _ZN3bbb9GG00000003fooEv();
extern void _ZN3bbb9GG00000003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00000003fooEv,_ZThn8_N3bbb9GG00000003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00000003barEv,_ZThn8_N3bbb9GG00000003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00000003fooEv,_ZThn20_N3bbb9GG00000003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00000003barEv,_ZThn20_N3bbb9GG00000003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00000003fooEv,_ZThn28_N3bbb9GG00000003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00000003barEv,_ZThn28_N3bbb9GG00000003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0000000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00000003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00000003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00000003fooEv,_ZThn8_N3bbb9GG00000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00000003barEv,_ZThn8_N3bbb9GG00000003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00000003fooEv,_ZThn20_N3bbb9GG00000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00000003barEv,_ZThn20_N3bbb9GG00000003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00000003fooEv,_ZThn28_N3bbb9GG00000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00000003barEv,_ZThn28_N3bbb9GG00000003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0000000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0000000E[];
Class_Descriptor cd__ZN3bbb9GG0000000E = {  "_ZN3bbb9GG0000000E", // class name
  bases__ZN3bbb9GG0000000E, 6,
  &(vtc__ZN3bbb9GG0000000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0000000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0000000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0000001  : ::bbb::EE000 , ::bbb::FF000 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00000013barEv
  virtual void  foo(); // _ZN3bbb9GG00000013fooEv
  ~GG0000001(); // tgen
  GG0000001(); // tgen
};
//SIG(1 _ZN3bbb9GG0000001E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0000001 ::bar(){vfunc_called(this, "_ZN3bbb9GG00000013barEv");}
void  bbb::GG0000001 ::foo(){vfunc_called(this, "_ZN3bbb9GG00000013fooEv");}
bbb::GG0000001 ::~GG0000001(){ note_dtor("_ZN3bbb9GG0000001E", this);} // tgen
bbb::GG0000001 ::GG0000001(){ note_ctor("_ZN3bbb9GG0000001E", this);} // tgen
}
static void Test__ZN3bbb9GG0000001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0000001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0000001E, buf);
    ::bbb::GG0000001 *dp, &lv = *(dp=new (buf) ::bbb::GG0000001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0000001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0000001E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0000001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0000001E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0000001E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0000001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG0000001E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0000001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0000001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0000001E);
    dp->::bbb::GG0000001::~GG0000001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0000001E(Test__ZN3bbb9GG0000001E, "_ZN3bbb9GG0000001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0000001C1Ev();
extern void _ZN3bbb9GG0000001D1Ev();
Name_Map name_map__ZN3bbb9GG0000001E[] = {
  NSPAIR(_ZN3bbb9GG0000001C1Ev),
  NSPAIR(_ZN3bbb9GG0000001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG0000001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0000001E[];
extern void _ZN3bbb9GG00000013fooEv();
extern void _ZN3bbb9GG00000013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00000013fooEv,_ZThn8_N3bbb9GG00000013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00000013barEv,_ZThn8_N3bbb9GG00000013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00000013fooEv,_ZThn20_N3bbb9GG00000013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00000013barEv,_ZThn20_N3bbb9GG00000013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00000013fooEv,_ZThn28_N3bbb9GG00000013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00000013barEv,_ZThn28_N3bbb9GG00000013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0000001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00000013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00000013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00000013fooEv,_ZThn8_N3bbb9GG00000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00000013barEv,_ZThn8_N3bbb9GG00000013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00000013fooEv,_ZThn20_N3bbb9GG00000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00000013barEv,_ZThn20_N3bbb9GG00000013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00000013fooEv,_ZThn28_N3bbb9GG00000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00000013barEv,_ZThn28_N3bbb9GG00000013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0000001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0000001E[];
Class_Descriptor cd__ZN3bbb9GG0000001E = {  "_ZN3bbb9GG0000001E", // class name
  bases__ZN3bbb9GG0000001E, 6,
  &(vtc__ZN3bbb9GG0000001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0000001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0000001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0000010  : ::bbb::EE000 , ::bbb::FF001 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00000103fooEv
  virtual void  bar(); // _ZN3bbb9GG00000103barEv
  ~GG0000010(); // tgen
  GG0000010(); // tgen
};
//SIG(1 _ZN3bbb9GG0000010E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0000010 ::foo(){vfunc_called(this, "_ZN3bbb9GG00000103fooEv");}
void  bbb::GG0000010 ::bar(){vfunc_called(this, "_ZN3bbb9GG00000103barEv");}
bbb::GG0000010 ::~GG0000010(){ note_dtor("_ZN3bbb9GG0000010E", this);} // tgen
bbb::GG0000010 ::GG0000010(){ note_ctor("_ZN3bbb9GG0000010E", this);} // tgen
}
static void Test__ZN3bbb9GG0000010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0000010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0000010E, buf);
    ::bbb::GG0000010 *dp, &lv = *(dp=new (buf) ::bbb::GG0000010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0000010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0000010E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0000010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0000010E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0000010E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0000010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG0000010E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0000010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0000010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0000010E);
    dp->::bbb::GG0000010::~GG0000010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0000010E(Test__ZN3bbb9GG0000010E, "_ZN3bbb9GG0000010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0000010C1Ev();
extern void _ZN3bbb9GG0000010D1Ev();
Name_Map name_map__ZN3bbb9GG0000010E[] = {
  NSPAIR(_ZN3bbb9GG0000010C1Ev),
  NSPAIR(_ZN3bbb9GG0000010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG0000010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0000010E[];
extern void _ZN3bbb9GG00000103fooEv();
extern void _ZN3bbb9GG00000103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00000103fooEv,_ZThn8_N3bbb9GG00000103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00000103barEv,_ZThn8_N3bbb9GG00000103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00000103fooEv,_ZThn20_N3bbb9GG00000103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00000103barEv,_ZThn20_N3bbb9GG00000103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00000103fooEv,_ZThn28_N3bbb9GG00000103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00000103barEv,_ZThn28_N3bbb9GG00000103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0000010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00000103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00000103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00000103fooEv,_ZThn8_N3bbb9GG00000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00000103barEv,_ZThn8_N3bbb9GG00000103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00000103fooEv,_ZThn20_N3bbb9GG00000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00000103barEv,_ZThn20_N3bbb9GG00000103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00000103fooEv,_ZThn28_N3bbb9GG00000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00000103barEv,_ZThn28_N3bbb9GG00000103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0000010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0000010E[];
Class_Descriptor cd__ZN3bbb9GG0000010E = {  "_ZN3bbb9GG0000010E", // class name
  bases__ZN3bbb9GG0000010E, 6,
  &(vtc__ZN3bbb9GG0000010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0000010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0000010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0000011  : ::bbb::EE000 , ::bbb::FF001 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00000113barEv
  virtual void  foo(); // _ZN3bbb9GG00000113fooEv
  ~GG0000011(); // tgen
  GG0000011(); // tgen
};
//SIG(1 _ZN3bbb9GG0000011E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0000011 ::bar(){vfunc_called(this, "_ZN3bbb9GG00000113barEv");}
void  bbb::GG0000011 ::foo(){vfunc_called(this, "_ZN3bbb9GG00000113fooEv");}
bbb::GG0000011 ::~GG0000011(){ note_dtor("_ZN3bbb9GG0000011E", this);} // tgen
bbb::GG0000011 ::GG0000011(){ note_ctor("_ZN3bbb9GG0000011E", this);} // tgen
}
static void Test__ZN3bbb9GG0000011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0000011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0000011E, buf);
    ::bbb::GG0000011 *dp, &lv = *(dp=new (buf) ::bbb::GG0000011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0000011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0000011E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0000011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0000011E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0000011E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0000011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG0000011E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0000011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0000011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0000011E);
    dp->::bbb::GG0000011::~GG0000011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0000011E(Test__ZN3bbb9GG0000011E, "_ZN3bbb9GG0000011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0000011C1Ev();
extern void _ZN3bbb9GG0000011D1Ev();
Name_Map name_map__ZN3bbb9GG0000011E[] = {
  NSPAIR(_ZN3bbb9GG0000011C1Ev),
  NSPAIR(_ZN3bbb9GG0000011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG0000011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0000011E[];
extern void _ZN3bbb9GG00000113fooEv();
extern void _ZN3bbb9GG00000113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00000113fooEv,_ZThn8_N3bbb9GG00000113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00000113barEv,_ZThn8_N3bbb9GG00000113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00000113fooEv,_ZThn20_N3bbb9GG00000113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00000113barEv,_ZThn20_N3bbb9GG00000113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00000113fooEv,_ZThn28_N3bbb9GG00000113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00000113barEv,_ZThn28_N3bbb9GG00000113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0000011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00000113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00000113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00000113fooEv,_ZThn8_N3bbb9GG00000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00000113barEv,_ZThn8_N3bbb9GG00000113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00000113fooEv,_ZThn20_N3bbb9GG00000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00000113barEv,_ZThn20_N3bbb9GG00000113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00000113fooEv,_ZThn28_N3bbb9GG00000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00000113barEv,_ZThn28_N3bbb9GG00000113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0000011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0000011E[];
Class_Descriptor cd__ZN3bbb9GG0000011E = {  "_ZN3bbb9GG0000011E", // class name
  bases__ZN3bbb9GG0000011E, 6,
  &(vtc__ZN3bbb9GG0000011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0000011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0000011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0000100  : ::bbb::EE000 , ::bbb::FF010 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00001003fooEv
  virtual void  bar(); // _ZN3bbb9GG00001003barEv
  ~GG0000100(); // tgen
  GG0000100(); // tgen
};
//SIG(1 _ZN3bbb9GG0000100E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0000100 ::foo(){vfunc_called(this, "_ZN3bbb9GG00001003fooEv");}
void  bbb::GG0000100 ::bar(){vfunc_called(this, "_ZN3bbb9GG00001003barEv");}
bbb::GG0000100 ::~GG0000100(){ note_dtor("_ZN3bbb9GG0000100E", this);} // tgen
bbb::GG0000100 ::GG0000100(){ note_ctor("_ZN3bbb9GG0000100E", this);} // tgen
}
static void Test__ZN3bbb9GG0000100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0000100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0000100E, buf);
    ::bbb::GG0000100 *dp, &lv = *(dp=new (buf) ::bbb::GG0000100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0000100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0000100E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0000100E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0000100E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0000100E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0000100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG0000100E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0000100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0000100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0000100E);
    dp->::bbb::GG0000100::~GG0000100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0000100E(Test__ZN3bbb9GG0000100E, "_ZN3bbb9GG0000100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0000100C1Ev();
extern void _ZN3bbb9GG0000100D1Ev();
Name_Map name_map__ZN3bbb9GG0000100E[] = {
  NSPAIR(_ZN3bbb9GG0000100C1Ev),
  NSPAIR(_ZN3bbb9GG0000100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG0000100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0000100E[];
extern void _ZN3bbb9GG00001003fooEv();
extern void _ZN3bbb9GG00001003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00001003fooEv,_ZThn8_N3bbb9GG00001003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00001003barEv,_ZThn8_N3bbb9GG00001003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00001003fooEv,_ZThn20_N3bbb9GG00001003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00001003barEv,_ZThn20_N3bbb9GG00001003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00001003barEv,_ZThn28_N3bbb9GG00001003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00001003fooEv,_ZThn28_N3bbb9GG00001003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0000100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00001003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00001003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00001003fooEv,_ZThn8_N3bbb9GG00001003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00001003barEv,_ZThn8_N3bbb9GG00001003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00001003fooEv,_ZThn20_N3bbb9GG00001003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00001003barEv,_ZThn20_N3bbb9GG00001003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00001003barEv,_ZThn28_N3bbb9GG00001003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00001003fooEv,_ZThn28_N3bbb9GG00001003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0000100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0000100E[];
Class_Descriptor cd__ZN3bbb9GG0000100E = {  "_ZN3bbb9GG0000100E", // class name
  bases__ZN3bbb9GG0000100E, 6,
  &(vtc__ZN3bbb9GG0000100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0000100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0000100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0000101  : ::bbb::EE000 , ::bbb::FF010 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00001013barEv
  virtual void  foo(); // _ZN3bbb9GG00001013fooEv
  ~GG0000101(); // tgen
  GG0000101(); // tgen
};
//SIG(1 _ZN3bbb9GG0000101E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0000101 ::bar(){vfunc_called(this, "_ZN3bbb9GG00001013barEv");}
void  bbb::GG0000101 ::foo(){vfunc_called(this, "_ZN3bbb9GG00001013fooEv");}
bbb::GG0000101 ::~GG0000101(){ note_dtor("_ZN3bbb9GG0000101E", this);} // tgen
bbb::GG0000101 ::GG0000101(){ note_ctor("_ZN3bbb9GG0000101E", this);} // tgen
}
static void Test__ZN3bbb9GG0000101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0000101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0000101E, buf);
    ::bbb::GG0000101 *dp, &lv = *(dp=new (buf) ::bbb::GG0000101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0000101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0000101E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0000101E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0000101E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0000101E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0000101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG0000101E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0000101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0000101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0000101E);
    dp->::bbb::GG0000101::~GG0000101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0000101E(Test__ZN3bbb9GG0000101E, "_ZN3bbb9GG0000101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0000101C1Ev();
extern void _ZN3bbb9GG0000101D1Ev();
Name_Map name_map__ZN3bbb9GG0000101E[] = {
  NSPAIR(_ZN3bbb9GG0000101C1Ev),
  NSPAIR(_ZN3bbb9GG0000101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG0000101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0000101E[];
extern void _ZN3bbb9GG00001013fooEv();
extern void _ZN3bbb9GG00001013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00001013fooEv,_ZThn8_N3bbb9GG00001013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00001013barEv,_ZThn8_N3bbb9GG00001013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00001013fooEv,_ZThn20_N3bbb9GG00001013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00001013barEv,_ZThn20_N3bbb9GG00001013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00001013barEv,_ZThn28_N3bbb9GG00001013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00001013fooEv,_ZThn28_N3bbb9GG00001013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0000101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00001013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00001013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00001013fooEv,_ZThn8_N3bbb9GG00001013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00001013barEv,_ZThn8_N3bbb9GG00001013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00001013fooEv,_ZThn20_N3bbb9GG00001013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00001013barEv,_ZThn20_N3bbb9GG00001013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00001013barEv,_ZThn28_N3bbb9GG00001013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00001013fooEv,_ZThn28_N3bbb9GG00001013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0000101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0000101E[];
Class_Descriptor cd__ZN3bbb9GG0000101E = {  "_ZN3bbb9GG0000101E", // class name
  bases__ZN3bbb9GG0000101E, 6,
  &(vtc__ZN3bbb9GG0000101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0000101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0000101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0000110  : ::bbb::EE000 , ::bbb::FF011 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00001103fooEv
  virtual void  bar(); // _ZN3bbb9GG00001103barEv
  ~GG0000110(); // tgen
  GG0000110(); // tgen
};
//SIG(1 _ZN3bbb9GG0000110E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0000110 ::foo(){vfunc_called(this, "_ZN3bbb9GG00001103fooEv");}
void  bbb::GG0000110 ::bar(){vfunc_called(this, "_ZN3bbb9GG00001103barEv");}
bbb::GG0000110 ::~GG0000110(){ note_dtor("_ZN3bbb9GG0000110E", this);} // tgen
bbb::GG0000110 ::GG0000110(){ note_ctor("_ZN3bbb9GG0000110E", this);} // tgen
}
static void Test__ZN3bbb9GG0000110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0000110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0000110E, buf);
    ::bbb::GG0000110 *dp, &lv = *(dp=new (buf) ::bbb::GG0000110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0000110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0000110E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0000110E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0000110E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0000110E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0000110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG0000110E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0000110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0000110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0000110E);
    dp->::bbb::GG0000110::~GG0000110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0000110E(Test__ZN3bbb9GG0000110E, "_ZN3bbb9GG0000110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0000110C1Ev();
extern void _ZN3bbb9GG0000110D1Ev();
Name_Map name_map__ZN3bbb9GG0000110E[] = {
  NSPAIR(_ZN3bbb9GG0000110C1Ev),
  NSPAIR(_ZN3bbb9GG0000110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG0000110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0000110E[];
extern void _ZN3bbb9GG00001103fooEv();
extern void _ZN3bbb9GG00001103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00001103fooEv,_ZThn8_N3bbb9GG00001103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00001103barEv,_ZThn8_N3bbb9GG00001103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00001103fooEv,_ZThn20_N3bbb9GG00001103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00001103barEv,_ZThn20_N3bbb9GG00001103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00001103barEv,_ZThn28_N3bbb9GG00001103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00001103fooEv,_ZThn28_N3bbb9GG00001103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0000110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00001103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00001103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00001103fooEv,_ZThn8_N3bbb9GG00001103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00001103barEv,_ZThn8_N3bbb9GG00001103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00001103fooEv,_ZThn20_N3bbb9GG00001103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00001103barEv,_ZThn20_N3bbb9GG00001103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00001103barEv,_ZThn28_N3bbb9GG00001103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00001103fooEv,_ZThn28_N3bbb9GG00001103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0000110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0000110E[];
Class_Descriptor cd__ZN3bbb9GG0000110E = {  "_ZN3bbb9GG0000110E", // class name
  bases__ZN3bbb9GG0000110E, 6,
  &(vtc__ZN3bbb9GG0000110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0000110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0000110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0000111  : ::bbb::EE000 , ::bbb::FF011 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00001113barEv
  virtual void  foo(); // _ZN3bbb9GG00001113fooEv
  ~GG0000111(); // tgen
  GG0000111(); // tgen
};
//SIG(1 _ZN3bbb9GG0000111E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0000111 ::bar(){vfunc_called(this, "_ZN3bbb9GG00001113barEv");}
void  bbb::GG0000111 ::foo(){vfunc_called(this, "_ZN3bbb9GG00001113fooEv");}
bbb::GG0000111 ::~GG0000111(){ note_dtor("_ZN3bbb9GG0000111E", this);} // tgen
bbb::GG0000111 ::GG0000111(){ note_ctor("_ZN3bbb9GG0000111E", this);} // tgen
}
static void Test__ZN3bbb9GG0000111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0000111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0000111E, buf);
    ::bbb::GG0000111 *dp, &lv = *(dp=new (buf) ::bbb::GG0000111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0000111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0000111E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0000111E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0000111E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0000111E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0000111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG0000111E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0000111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0000111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0000111E);
    dp->::bbb::GG0000111::~GG0000111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0000111E(Test__ZN3bbb9GG0000111E, "_ZN3bbb9GG0000111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0000111C1Ev();
extern void _ZN3bbb9GG0000111D1Ev();
Name_Map name_map__ZN3bbb9GG0000111E[] = {
  NSPAIR(_ZN3bbb9GG0000111C1Ev),
  NSPAIR(_ZN3bbb9GG0000111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG0000111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0000111E[];
extern void _ZN3bbb9GG00001113fooEv();
extern void _ZN3bbb9GG00001113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00001113fooEv,_ZThn8_N3bbb9GG00001113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00001113barEv,_ZThn8_N3bbb9GG00001113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00001113fooEv,_ZThn20_N3bbb9GG00001113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00001113barEv,_ZThn20_N3bbb9GG00001113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00001113barEv,_ZThn28_N3bbb9GG00001113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00001113fooEv,_ZThn28_N3bbb9GG00001113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0000111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00001113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00001113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00001113fooEv,_ZThn8_N3bbb9GG00001113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00001113barEv,_ZThn8_N3bbb9GG00001113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00001113fooEv,_ZThn20_N3bbb9GG00001113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00001113barEv,_ZThn20_N3bbb9GG00001113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0000111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00001113barEv,_ZThn28_N3bbb9GG00001113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00001113fooEv,_ZThn28_N3bbb9GG00001113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0000111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0000111E[];
Class_Descriptor cd__ZN3bbb9GG0000111E = {  "_ZN3bbb9GG0000111E", // class name
  bases__ZN3bbb9GG0000111E, 6,
  &(vtc__ZN3bbb9GG0000111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0000111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0000111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0001000  : ::bbb::EE000 , ::bbb::FF100 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00010003fooEv
  virtual void  bar(); // _ZN3bbb9GG00010003barEv
  ~GG0001000(); // tgen
  GG0001000(); // tgen
};
//SIG(1 _ZN3bbb9GG0001000E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0001000 ::foo(){vfunc_called(this, "_ZN3bbb9GG00010003fooEv");}
void  bbb::GG0001000 ::bar(){vfunc_called(this, "_ZN3bbb9GG00010003barEv");}
bbb::GG0001000 ::~GG0001000(){ note_dtor("_ZN3bbb9GG0001000E", this);} // tgen
bbb::GG0001000 ::GG0001000(){ note_ctor("_ZN3bbb9GG0001000E", this);} // tgen
}
static void Test__ZN3bbb9GG0001000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0001000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0001000E, buf);
    ::bbb::GG0001000 *dp, &lv = *(dp=new (buf) ::bbb::GG0001000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0001000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0001000E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0001000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0001000E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0001000E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0001000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG0001000E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0001000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0001000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0001000E);
    dp->::bbb::GG0001000::~GG0001000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0001000E(Test__ZN3bbb9GG0001000E, "_ZN3bbb9GG0001000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0001000C1Ev();
extern void _ZN3bbb9GG0001000D1Ev();
Name_Map name_map__ZN3bbb9GG0001000E[] = {
  NSPAIR(_ZN3bbb9GG0001000C1Ev),
  NSPAIR(_ZN3bbb9GG0001000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG0001000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0001000E[];
extern void _ZN3bbb9GG00010003fooEv();
extern void _ZN3bbb9GG00010003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00010003fooEv,_ZThn8_N3bbb9GG00010003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00010003barEv,_ZThn8_N3bbb9GG00010003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00010003barEv,_ZThn20_N3bbb9GG00010003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00010003fooEv,_ZThn20_N3bbb9GG00010003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00010003fooEv,_ZThn28_N3bbb9GG00010003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00010003barEv,_ZThn28_N3bbb9GG00010003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0001000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00010003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00010003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00010003fooEv,_ZThn8_N3bbb9GG00010003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00010003barEv,_ZThn8_N3bbb9GG00010003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00010003barEv,_ZThn20_N3bbb9GG00010003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00010003fooEv,_ZThn20_N3bbb9GG00010003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00010003fooEv,_ZThn28_N3bbb9GG00010003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00010003barEv,_ZThn28_N3bbb9GG00010003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0001000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0001000E[];
Class_Descriptor cd__ZN3bbb9GG0001000E = {  "_ZN3bbb9GG0001000E", // class name
  bases__ZN3bbb9GG0001000E, 6,
  &(vtc__ZN3bbb9GG0001000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0001000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0001000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0001001  : ::bbb::EE000 , ::bbb::FF100 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00010013barEv
  virtual void  foo(); // _ZN3bbb9GG00010013fooEv
  ~GG0001001(); // tgen
  GG0001001(); // tgen
};
//SIG(1 _ZN3bbb9GG0001001E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0001001 ::bar(){vfunc_called(this, "_ZN3bbb9GG00010013barEv");}
void  bbb::GG0001001 ::foo(){vfunc_called(this, "_ZN3bbb9GG00010013fooEv");}
bbb::GG0001001 ::~GG0001001(){ note_dtor("_ZN3bbb9GG0001001E", this);} // tgen
bbb::GG0001001 ::GG0001001(){ note_ctor("_ZN3bbb9GG0001001E", this);} // tgen
}
static void Test__ZN3bbb9GG0001001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0001001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0001001E, buf);
    ::bbb::GG0001001 *dp, &lv = *(dp=new (buf) ::bbb::GG0001001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0001001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0001001E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0001001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0001001E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0001001E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0001001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG0001001E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0001001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0001001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0001001E);
    dp->::bbb::GG0001001::~GG0001001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0001001E(Test__ZN3bbb9GG0001001E, "_ZN3bbb9GG0001001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0001001C1Ev();
extern void _ZN3bbb9GG0001001D1Ev();
Name_Map name_map__ZN3bbb9GG0001001E[] = {
  NSPAIR(_ZN3bbb9GG0001001C1Ev),
  NSPAIR(_ZN3bbb9GG0001001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG0001001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0001001E[];
extern void _ZN3bbb9GG00010013fooEv();
extern void _ZN3bbb9GG00010013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00010013fooEv,_ZThn8_N3bbb9GG00010013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00010013barEv,_ZThn8_N3bbb9GG00010013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00010013barEv,_ZThn20_N3bbb9GG00010013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00010013fooEv,_ZThn20_N3bbb9GG00010013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00010013fooEv,_ZThn28_N3bbb9GG00010013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00010013barEv,_ZThn28_N3bbb9GG00010013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0001001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00010013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00010013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00010013fooEv,_ZThn8_N3bbb9GG00010013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00010013barEv,_ZThn8_N3bbb9GG00010013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00010013barEv,_ZThn20_N3bbb9GG00010013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00010013fooEv,_ZThn20_N3bbb9GG00010013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00010013fooEv,_ZThn28_N3bbb9GG00010013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00010013barEv,_ZThn28_N3bbb9GG00010013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0001001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0001001E[];
Class_Descriptor cd__ZN3bbb9GG0001001E = {  "_ZN3bbb9GG0001001E", // class name
  bases__ZN3bbb9GG0001001E, 6,
  &(vtc__ZN3bbb9GG0001001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0001001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0001001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0001010  : ::bbb::EE000 , ::bbb::FF101 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00010103fooEv
  virtual void  bar(); // _ZN3bbb9GG00010103barEv
  ~GG0001010(); // tgen
  GG0001010(); // tgen
};
//SIG(1 _ZN3bbb9GG0001010E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0001010 ::foo(){vfunc_called(this, "_ZN3bbb9GG00010103fooEv");}
void  bbb::GG0001010 ::bar(){vfunc_called(this, "_ZN3bbb9GG00010103barEv");}
bbb::GG0001010 ::~GG0001010(){ note_dtor("_ZN3bbb9GG0001010E", this);} // tgen
bbb::GG0001010 ::GG0001010(){ note_ctor("_ZN3bbb9GG0001010E", this);} // tgen
}
static void Test__ZN3bbb9GG0001010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0001010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0001010E, buf);
    ::bbb::GG0001010 *dp, &lv = *(dp=new (buf) ::bbb::GG0001010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0001010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0001010E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0001010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0001010E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0001010E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0001010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG0001010E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0001010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0001010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0001010E);
    dp->::bbb::GG0001010::~GG0001010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0001010E(Test__ZN3bbb9GG0001010E, "_ZN3bbb9GG0001010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0001010C1Ev();
extern void _ZN3bbb9GG0001010D1Ev();
Name_Map name_map__ZN3bbb9GG0001010E[] = {
  NSPAIR(_ZN3bbb9GG0001010C1Ev),
  NSPAIR(_ZN3bbb9GG0001010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG0001010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0001010E[];
extern void _ZN3bbb9GG00010103fooEv();
extern void _ZN3bbb9GG00010103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00010103fooEv,_ZThn8_N3bbb9GG00010103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00010103barEv,_ZThn8_N3bbb9GG00010103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00010103barEv,_ZThn20_N3bbb9GG00010103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00010103fooEv,_ZThn20_N3bbb9GG00010103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00010103fooEv,_ZThn28_N3bbb9GG00010103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00010103barEv,_ZThn28_N3bbb9GG00010103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0001010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00010103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00010103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00010103fooEv,_ZThn8_N3bbb9GG00010103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00010103barEv,_ZThn8_N3bbb9GG00010103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00010103barEv,_ZThn20_N3bbb9GG00010103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00010103fooEv,_ZThn20_N3bbb9GG00010103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00010103fooEv,_ZThn28_N3bbb9GG00010103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00010103barEv,_ZThn28_N3bbb9GG00010103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0001010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0001010E[];
Class_Descriptor cd__ZN3bbb9GG0001010E = {  "_ZN3bbb9GG0001010E", // class name
  bases__ZN3bbb9GG0001010E, 6,
  &(vtc__ZN3bbb9GG0001010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0001010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0001010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0001011  : ::bbb::EE000 , ::bbb::FF101 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00010113barEv
  virtual void  foo(); // _ZN3bbb9GG00010113fooEv
  ~GG0001011(); // tgen
  GG0001011(); // tgen
};
//SIG(1 _ZN3bbb9GG0001011E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0001011 ::bar(){vfunc_called(this, "_ZN3bbb9GG00010113barEv");}
void  bbb::GG0001011 ::foo(){vfunc_called(this, "_ZN3bbb9GG00010113fooEv");}
bbb::GG0001011 ::~GG0001011(){ note_dtor("_ZN3bbb9GG0001011E", this);} // tgen
bbb::GG0001011 ::GG0001011(){ note_ctor("_ZN3bbb9GG0001011E", this);} // tgen
}
static void Test__ZN3bbb9GG0001011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0001011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0001011E, buf);
    ::bbb::GG0001011 *dp, &lv = *(dp=new (buf) ::bbb::GG0001011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0001011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0001011E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0001011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0001011E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0001011E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0001011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG0001011E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0001011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0001011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0001011E);
    dp->::bbb::GG0001011::~GG0001011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0001011E(Test__ZN3bbb9GG0001011E, "_ZN3bbb9GG0001011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0001011C1Ev();
extern void _ZN3bbb9GG0001011D1Ev();
Name_Map name_map__ZN3bbb9GG0001011E[] = {
  NSPAIR(_ZN3bbb9GG0001011C1Ev),
  NSPAIR(_ZN3bbb9GG0001011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG0001011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0001011E[];
extern void _ZN3bbb9GG00010113fooEv();
extern void _ZN3bbb9GG00010113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00010113fooEv,_ZThn8_N3bbb9GG00010113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00010113barEv,_ZThn8_N3bbb9GG00010113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00010113barEv,_ZThn20_N3bbb9GG00010113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00010113fooEv,_ZThn20_N3bbb9GG00010113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00010113fooEv,_ZThn28_N3bbb9GG00010113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00010113barEv,_ZThn28_N3bbb9GG00010113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0001011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00010113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00010113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00010113fooEv,_ZThn8_N3bbb9GG00010113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00010113barEv,_ZThn8_N3bbb9GG00010113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00010113barEv,_ZThn20_N3bbb9GG00010113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00010113fooEv,_ZThn20_N3bbb9GG00010113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00010113fooEv,_ZThn28_N3bbb9GG00010113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00010113barEv,_ZThn28_N3bbb9GG00010113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0001011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0001011E[];
Class_Descriptor cd__ZN3bbb9GG0001011E = {  "_ZN3bbb9GG0001011E", // class name
  bases__ZN3bbb9GG0001011E, 6,
  &(vtc__ZN3bbb9GG0001011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0001011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0001011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0001100  : ::bbb::EE000 , ::bbb::FF110 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00011003fooEv
  virtual void  bar(); // _ZN3bbb9GG00011003barEv
  ~GG0001100(); // tgen
  GG0001100(); // tgen
};
//SIG(1 _ZN3bbb9GG0001100E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0001100 ::foo(){vfunc_called(this, "_ZN3bbb9GG00011003fooEv");}
void  bbb::GG0001100 ::bar(){vfunc_called(this, "_ZN3bbb9GG00011003barEv");}
bbb::GG0001100 ::~GG0001100(){ note_dtor("_ZN3bbb9GG0001100E", this);} // tgen
bbb::GG0001100 ::GG0001100(){ note_ctor("_ZN3bbb9GG0001100E", this);} // tgen
}
static void Test__ZN3bbb9GG0001100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0001100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0001100E, buf);
    ::bbb::GG0001100 *dp, &lv = *(dp=new (buf) ::bbb::GG0001100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0001100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0001100E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0001100E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0001100E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0001100E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0001100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG0001100E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0001100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0001100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0001100E);
    dp->::bbb::GG0001100::~GG0001100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0001100E(Test__ZN3bbb9GG0001100E, "_ZN3bbb9GG0001100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0001100C1Ev();
extern void _ZN3bbb9GG0001100D1Ev();
Name_Map name_map__ZN3bbb9GG0001100E[] = {
  NSPAIR(_ZN3bbb9GG0001100C1Ev),
  NSPAIR(_ZN3bbb9GG0001100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG0001100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0001100E[];
extern void _ZN3bbb9GG00011003fooEv();
extern void _ZN3bbb9GG00011003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00011003fooEv,_ZThn8_N3bbb9GG00011003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00011003barEv,_ZThn8_N3bbb9GG00011003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00011003barEv,_ZThn20_N3bbb9GG00011003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00011003fooEv,_ZThn20_N3bbb9GG00011003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00011003barEv,_ZThn28_N3bbb9GG00011003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00011003fooEv,_ZThn28_N3bbb9GG00011003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0001100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00011003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00011003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00011003fooEv,_ZThn8_N3bbb9GG00011003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00011003barEv,_ZThn8_N3bbb9GG00011003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00011003barEv,_ZThn20_N3bbb9GG00011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00011003fooEv,_ZThn20_N3bbb9GG00011003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00011003barEv,_ZThn28_N3bbb9GG00011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00011003fooEv,_ZThn28_N3bbb9GG00011003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0001100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0001100E[];
Class_Descriptor cd__ZN3bbb9GG0001100E = {  "_ZN3bbb9GG0001100E", // class name
  bases__ZN3bbb9GG0001100E, 6,
  &(vtc__ZN3bbb9GG0001100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0001100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0001100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0001101  : ::bbb::EE000 , ::bbb::FF110 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00011013barEv
  virtual void  foo(); // _ZN3bbb9GG00011013fooEv
  ~GG0001101(); // tgen
  GG0001101(); // tgen
};
//SIG(1 _ZN3bbb9GG0001101E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0001101 ::bar(){vfunc_called(this, "_ZN3bbb9GG00011013barEv");}
void  bbb::GG0001101 ::foo(){vfunc_called(this, "_ZN3bbb9GG00011013fooEv");}
bbb::GG0001101 ::~GG0001101(){ note_dtor("_ZN3bbb9GG0001101E", this);} // tgen
bbb::GG0001101 ::GG0001101(){ note_ctor("_ZN3bbb9GG0001101E", this);} // tgen
}
static void Test__ZN3bbb9GG0001101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0001101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0001101E, buf);
    ::bbb::GG0001101 *dp, &lv = *(dp=new (buf) ::bbb::GG0001101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0001101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0001101E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0001101E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0001101E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0001101E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0001101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG0001101E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0001101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0001101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0001101E);
    dp->::bbb::GG0001101::~GG0001101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0001101E(Test__ZN3bbb9GG0001101E, "_ZN3bbb9GG0001101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0001101C1Ev();
extern void _ZN3bbb9GG0001101D1Ev();
Name_Map name_map__ZN3bbb9GG0001101E[] = {
  NSPAIR(_ZN3bbb9GG0001101C1Ev),
  NSPAIR(_ZN3bbb9GG0001101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG0001101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0001101E[];
extern void _ZN3bbb9GG00011013fooEv();
extern void _ZN3bbb9GG00011013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00011013fooEv,_ZThn8_N3bbb9GG00011013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00011013barEv,_ZThn8_N3bbb9GG00011013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00011013barEv,_ZThn20_N3bbb9GG00011013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00011013fooEv,_ZThn20_N3bbb9GG00011013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00011013barEv,_ZThn28_N3bbb9GG00011013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00011013fooEv,_ZThn28_N3bbb9GG00011013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0001101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00011013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00011013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00011013fooEv,_ZThn8_N3bbb9GG00011013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00011013barEv,_ZThn8_N3bbb9GG00011013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00011013barEv,_ZThn20_N3bbb9GG00011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00011013fooEv,_ZThn20_N3bbb9GG00011013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00011013barEv,_ZThn28_N3bbb9GG00011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00011013fooEv,_ZThn28_N3bbb9GG00011013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0001101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0001101E[];
Class_Descriptor cd__ZN3bbb9GG0001101E = {  "_ZN3bbb9GG0001101E", // class name
  bases__ZN3bbb9GG0001101E, 6,
  &(vtc__ZN3bbb9GG0001101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0001101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0001101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0001110  : ::bbb::EE000 , ::bbb::FF111 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00011103fooEv
  virtual void  bar(); // _ZN3bbb9GG00011103barEv
  ~GG0001110(); // tgen
  GG0001110(); // tgen
};
//SIG(1 _ZN3bbb9GG0001110E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0001110 ::foo(){vfunc_called(this, "_ZN3bbb9GG00011103fooEv");}
void  bbb::GG0001110 ::bar(){vfunc_called(this, "_ZN3bbb9GG00011103barEv");}
bbb::GG0001110 ::~GG0001110(){ note_dtor("_ZN3bbb9GG0001110E", this);} // tgen
bbb::GG0001110 ::GG0001110(){ note_ctor("_ZN3bbb9GG0001110E", this);} // tgen
}
static void Test__ZN3bbb9GG0001110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0001110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0001110E, buf);
    ::bbb::GG0001110 *dp, &lv = *(dp=new (buf) ::bbb::GG0001110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0001110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0001110E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0001110E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0001110E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0001110E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0001110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG0001110E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0001110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0001110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0001110E);
    dp->::bbb::GG0001110::~GG0001110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0001110E(Test__ZN3bbb9GG0001110E, "_ZN3bbb9GG0001110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0001110C1Ev();
extern void _ZN3bbb9GG0001110D1Ev();
Name_Map name_map__ZN3bbb9GG0001110E[] = {
  NSPAIR(_ZN3bbb9GG0001110C1Ev),
  NSPAIR(_ZN3bbb9GG0001110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG0001110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0001110E[];
extern void _ZN3bbb9GG00011103fooEv();
extern void _ZN3bbb9GG00011103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00011103fooEv,_ZThn8_N3bbb9GG00011103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00011103barEv,_ZThn8_N3bbb9GG00011103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00011103barEv,_ZThn20_N3bbb9GG00011103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00011103fooEv,_ZThn20_N3bbb9GG00011103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00011103barEv,_ZThn28_N3bbb9GG00011103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00011103fooEv,_ZThn28_N3bbb9GG00011103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0001110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00011103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00011103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00011103fooEv,_ZThn8_N3bbb9GG00011103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00011103barEv,_ZThn8_N3bbb9GG00011103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00011103barEv,_ZThn20_N3bbb9GG00011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00011103fooEv,_ZThn20_N3bbb9GG00011103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00011103barEv,_ZThn28_N3bbb9GG00011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00011103fooEv,_ZThn28_N3bbb9GG00011103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0001110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0001110E[];
Class_Descriptor cd__ZN3bbb9GG0001110E = {  "_ZN3bbb9GG0001110E", // class name
  bases__ZN3bbb9GG0001110E, 6,
  &(vtc__ZN3bbb9GG0001110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0001110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0001110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0001111  : ::bbb::EE000 , ::bbb::FF111 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00011113barEv
  virtual void  foo(); // _ZN3bbb9GG00011113fooEv
  ~GG0001111(); // tgen
  GG0001111(); // tgen
};
//SIG(1 _ZN3bbb9GG0001111E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0001111 ::bar(){vfunc_called(this, "_ZN3bbb9GG00011113barEv");}
void  bbb::GG0001111 ::foo(){vfunc_called(this, "_ZN3bbb9GG00011113fooEv");}
bbb::GG0001111 ::~GG0001111(){ note_dtor("_ZN3bbb9GG0001111E", this);} // tgen
bbb::GG0001111 ::GG0001111(){ note_ctor("_ZN3bbb9GG0001111E", this);} // tgen
}
static void Test__ZN3bbb9GG0001111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0001111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0001111E, buf);
    ::bbb::GG0001111 *dp, &lv = *(dp=new (buf) ::bbb::GG0001111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0001111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0001111E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE000*), 0, "_ZN3bbb9GG0001111E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE000*), ABISELECT(16,8), "_ZN3bbb9GG0001111E");
    check_base_class_offset(lv, (::bbb::EE000*), 0, "_ZN3bbb9GG0001111E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0001111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG0001111E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0001111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0001111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0001111E);
    dp->::bbb::GG0001111::~GG0001111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0001111E(Test__ZN3bbb9GG0001111E, "_ZN3bbb9GG0001111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0001111C1Ev();
extern void _ZN3bbb9GG0001111D1Ev();
Name_Map name_map__ZN3bbb9GG0001111E[] = {
  NSPAIR(_ZN3bbb9GG0001111C1Ev),
  NSPAIR(_ZN3bbb9GG0001111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE000E;
extern VTBL_ENTRY _ZTIN3bbb5EE000E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE000E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG0001111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE000E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0001111E[];
extern void _ZN3bbb9GG00011113fooEv();
extern void _ZN3bbb9GG00011113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00011113fooEv,_ZThn8_N3bbb9GG00011113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00011113barEv,_ZThn8_N3bbb9GG00011113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00011113barEv,_ZThn20_N3bbb9GG00011113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00011113fooEv,_ZThn20_N3bbb9GG00011113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00011113barEv,_ZThn28_N3bbb9GG00011113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00011113fooEv,_ZThn28_N3bbb9GG00011113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0001111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00011113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00011113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00011113fooEv,_ZThn8_N3bbb9GG00011113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00011113barEv,_ZThn8_N3bbb9GG00011113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00011113barEv,_ZThn20_N3bbb9GG00011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00011113fooEv,_ZThn20_N3bbb9GG00011113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0001111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00011113barEv,_ZThn28_N3bbb9GG00011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00011113fooEv,_ZThn28_N3bbb9GG00011113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0001111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0001111E[];
Class_Descriptor cd__ZN3bbb9GG0001111E = {  "_ZN3bbb9GG0001111E", // class name
  bases__ZN3bbb9GG0001111E, 6,
  &(vtc__ZN3bbb9GG0001111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0001111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0001111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0010000  : ::bbb::EE001 , ::bbb::FF000 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00100003fooEv
  virtual void  bar(); // _ZN3bbb9GG00100003barEv
  ~GG0010000(); // tgen
  GG0010000(); // tgen
};
//SIG(1 _ZN3bbb9GG0010000E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0010000 ::foo(){vfunc_called(this, "_ZN3bbb9GG00100003fooEv");}
void  bbb::GG0010000 ::bar(){vfunc_called(this, "_ZN3bbb9GG00100003barEv");}
bbb::GG0010000 ::~GG0010000(){ note_dtor("_ZN3bbb9GG0010000E", this);} // tgen
bbb::GG0010000 ::GG0010000(){ note_ctor("_ZN3bbb9GG0010000E", this);} // tgen
}
static void Test__ZN3bbb9GG0010000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0010000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0010000E, buf);
    ::bbb::GG0010000 *dp, &lv = *(dp=new (buf) ::bbb::GG0010000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0010000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0010000E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0010000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0010000E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0010000E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0010000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG0010000E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0010000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0010000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0010000E);
    dp->::bbb::GG0010000::~GG0010000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0010000E(Test__ZN3bbb9GG0010000E, "_ZN3bbb9GG0010000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0010000C1Ev();
extern void _ZN3bbb9GG0010000D1Ev();
Name_Map name_map__ZN3bbb9GG0010000E[] = {
  NSPAIR(_ZN3bbb9GG0010000C1Ev),
  NSPAIR(_ZN3bbb9GG0010000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG0010000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0010000E[];
extern void _ZN3bbb9GG00100003fooEv();
extern void _ZN3bbb9GG00100003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00100003fooEv,_ZThn8_N3bbb9GG00100003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00100003barEv,_ZThn8_N3bbb9GG00100003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00100003fooEv,_ZThn20_N3bbb9GG00100003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00100003barEv,_ZThn20_N3bbb9GG00100003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00100003fooEv,_ZThn28_N3bbb9GG00100003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00100003barEv,_ZThn28_N3bbb9GG00100003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0010000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00100003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00100003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00100003fooEv,_ZThn8_N3bbb9GG00100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00100003barEv,_ZThn8_N3bbb9GG00100003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00100003fooEv,_ZThn20_N3bbb9GG00100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00100003barEv,_ZThn20_N3bbb9GG00100003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00100003fooEv,_ZThn28_N3bbb9GG00100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00100003barEv,_ZThn28_N3bbb9GG00100003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0010000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0010000E[];
Class_Descriptor cd__ZN3bbb9GG0010000E = {  "_ZN3bbb9GG0010000E", // class name
  bases__ZN3bbb9GG0010000E, 6,
  &(vtc__ZN3bbb9GG0010000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0010000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0010000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0010001  : ::bbb::EE001 , ::bbb::FF000 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00100013barEv
  virtual void  foo(); // _ZN3bbb9GG00100013fooEv
  ~GG0010001(); // tgen
  GG0010001(); // tgen
};
//SIG(1 _ZN3bbb9GG0010001E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0010001 ::bar(){vfunc_called(this, "_ZN3bbb9GG00100013barEv");}
void  bbb::GG0010001 ::foo(){vfunc_called(this, "_ZN3bbb9GG00100013fooEv");}
bbb::GG0010001 ::~GG0010001(){ note_dtor("_ZN3bbb9GG0010001E", this);} // tgen
bbb::GG0010001 ::GG0010001(){ note_ctor("_ZN3bbb9GG0010001E", this);} // tgen
}
static void Test__ZN3bbb9GG0010001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0010001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0010001E, buf);
    ::bbb::GG0010001 *dp, &lv = *(dp=new (buf) ::bbb::GG0010001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0010001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0010001E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0010001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0010001E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0010001E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0010001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG0010001E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0010001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0010001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0010001E);
    dp->::bbb::GG0010001::~GG0010001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0010001E(Test__ZN3bbb9GG0010001E, "_ZN3bbb9GG0010001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0010001C1Ev();
extern void _ZN3bbb9GG0010001D1Ev();
Name_Map name_map__ZN3bbb9GG0010001E[] = {
  NSPAIR(_ZN3bbb9GG0010001C1Ev),
  NSPAIR(_ZN3bbb9GG0010001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG0010001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0010001E[];
extern void _ZN3bbb9GG00100013fooEv();
extern void _ZN3bbb9GG00100013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00100013fooEv,_ZThn8_N3bbb9GG00100013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00100013barEv,_ZThn8_N3bbb9GG00100013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00100013fooEv,_ZThn20_N3bbb9GG00100013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00100013barEv,_ZThn20_N3bbb9GG00100013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00100013fooEv,_ZThn28_N3bbb9GG00100013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00100013barEv,_ZThn28_N3bbb9GG00100013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0010001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00100013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00100013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00100013fooEv,_ZThn8_N3bbb9GG00100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00100013barEv,_ZThn8_N3bbb9GG00100013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00100013fooEv,_ZThn20_N3bbb9GG00100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00100013barEv,_ZThn20_N3bbb9GG00100013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00100013fooEv,_ZThn28_N3bbb9GG00100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00100013barEv,_ZThn28_N3bbb9GG00100013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0010001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0010001E[];
Class_Descriptor cd__ZN3bbb9GG0010001E = {  "_ZN3bbb9GG0010001E", // class name
  bases__ZN3bbb9GG0010001E, 6,
  &(vtc__ZN3bbb9GG0010001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0010001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0010001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0010010  : ::bbb::EE001 , ::bbb::FF001 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00100103fooEv
  virtual void  bar(); // _ZN3bbb9GG00100103barEv
  ~GG0010010(); // tgen
  GG0010010(); // tgen
};
//SIG(1 _ZN3bbb9GG0010010E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0010010 ::foo(){vfunc_called(this, "_ZN3bbb9GG00100103fooEv");}
void  bbb::GG0010010 ::bar(){vfunc_called(this, "_ZN3bbb9GG00100103barEv");}
bbb::GG0010010 ::~GG0010010(){ note_dtor("_ZN3bbb9GG0010010E", this);} // tgen
bbb::GG0010010 ::GG0010010(){ note_ctor("_ZN3bbb9GG0010010E", this);} // tgen
}
static void Test__ZN3bbb9GG0010010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0010010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0010010E, buf);
    ::bbb::GG0010010 *dp, &lv = *(dp=new (buf) ::bbb::GG0010010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0010010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0010010E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0010010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0010010E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0010010E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0010010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG0010010E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0010010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0010010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0010010E);
    dp->::bbb::GG0010010::~GG0010010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0010010E(Test__ZN3bbb9GG0010010E, "_ZN3bbb9GG0010010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0010010C1Ev();
extern void _ZN3bbb9GG0010010D1Ev();
Name_Map name_map__ZN3bbb9GG0010010E[] = {
  NSPAIR(_ZN3bbb9GG0010010C1Ev),
  NSPAIR(_ZN3bbb9GG0010010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG0010010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0010010E[];
extern void _ZN3bbb9GG00100103fooEv();
extern void _ZN3bbb9GG00100103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00100103fooEv,_ZThn8_N3bbb9GG00100103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00100103barEv,_ZThn8_N3bbb9GG00100103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00100103fooEv,_ZThn20_N3bbb9GG00100103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00100103barEv,_ZThn20_N3bbb9GG00100103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00100103fooEv,_ZThn28_N3bbb9GG00100103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00100103barEv,_ZThn28_N3bbb9GG00100103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0010010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00100103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00100103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00100103fooEv,_ZThn8_N3bbb9GG00100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00100103barEv,_ZThn8_N3bbb9GG00100103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00100103fooEv,_ZThn20_N3bbb9GG00100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00100103barEv,_ZThn20_N3bbb9GG00100103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00100103fooEv,_ZThn28_N3bbb9GG00100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00100103barEv,_ZThn28_N3bbb9GG00100103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0010010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0010010E[];
Class_Descriptor cd__ZN3bbb9GG0010010E = {  "_ZN3bbb9GG0010010E", // class name
  bases__ZN3bbb9GG0010010E, 6,
  &(vtc__ZN3bbb9GG0010010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0010010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0010010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0010011  : ::bbb::EE001 , ::bbb::FF001 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00100113barEv
  virtual void  foo(); // _ZN3bbb9GG00100113fooEv
  ~GG0010011(); // tgen
  GG0010011(); // tgen
};
//SIG(1 _ZN3bbb9GG0010011E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0010011 ::bar(){vfunc_called(this, "_ZN3bbb9GG00100113barEv");}
void  bbb::GG0010011 ::foo(){vfunc_called(this, "_ZN3bbb9GG00100113fooEv");}
bbb::GG0010011 ::~GG0010011(){ note_dtor("_ZN3bbb9GG0010011E", this);} // tgen
bbb::GG0010011 ::GG0010011(){ note_ctor("_ZN3bbb9GG0010011E", this);} // tgen
}
static void Test__ZN3bbb9GG0010011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0010011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0010011E, buf);
    ::bbb::GG0010011 *dp, &lv = *(dp=new (buf) ::bbb::GG0010011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0010011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0010011E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0010011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0010011E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0010011E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0010011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG0010011E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0010011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0010011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0010011E);
    dp->::bbb::GG0010011::~GG0010011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0010011E(Test__ZN3bbb9GG0010011E, "_ZN3bbb9GG0010011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0010011C1Ev();
extern void _ZN3bbb9GG0010011D1Ev();
Name_Map name_map__ZN3bbb9GG0010011E[] = {
  NSPAIR(_ZN3bbb9GG0010011C1Ev),
  NSPAIR(_ZN3bbb9GG0010011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG0010011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0010011E[];
extern void _ZN3bbb9GG00100113fooEv();
extern void _ZN3bbb9GG00100113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00100113fooEv,_ZThn8_N3bbb9GG00100113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00100113barEv,_ZThn8_N3bbb9GG00100113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00100113fooEv,_ZThn20_N3bbb9GG00100113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00100113barEv,_ZThn20_N3bbb9GG00100113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00100113fooEv,_ZThn28_N3bbb9GG00100113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00100113barEv,_ZThn28_N3bbb9GG00100113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0010011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00100113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00100113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00100113fooEv,_ZThn8_N3bbb9GG00100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00100113barEv,_ZThn8_N3bbb9GG00100113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00100113fooEv,_ZThn20_N3bbb9GG00100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00100113barEv,_ZThn20_N3bbb9GG00100113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00100113fooEv,_ZThn28_N3bbb9GG00100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00100113barEv,_ZThn28_N3bbb9GG00100113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0010011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0010011E[];
Class_Descriptor cd__ZN3bbb9GG0010011E = {  "_ZN3bbb9GG0010011E", // class name
  bases__ZN3bbb9GG0010011E, 6,
  &(vtc__ZN3bbb9GG0010011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0010011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0010011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0010100  : ::bbb::EE001 , ::bbb::FF010 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00101003fooEv
  virtual void  bar(); // _ZN3bbb9GG00101003barEv
  ~GG0010100(); // tgen
  GG0010100(); // tgen
};
//SIG(1 _ZN3bbb9GG0010100E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0010100 ::foo(){vfunc_called(this, "_ZN3bbb9GG00101003fooEv");}
void  bbb::GG0010100 ::bar(){vfunc_called(this, "_ZN3bbb9GG00101003barEv");}
bbb::GG0010100 ::~GG0010100(){ note_dtor("_ZN3bbb9GG0010100E", this);} // tgen
bbb::GG0010100 ::GG0010100(){ note_ctor("_ZN3bbb9GG0010100E", this);} // tgen
}
static void Test__ZN3bbb9GG0010100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0010100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0010100E, buf);
    ::bbb::GG0010100 *dp, &lv = *(dp=new (buf) ::bbb::GG0010100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0010100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0010100E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0010100E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0010100E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0010100E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0010100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG0010100E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0010100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0010100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0010100E);
    dp->::bbb::GG0010100::~GG0010100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0010100E(Test__ZN3bbb9GG0010100E, "_ZN3bbb9GG0010100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0010100C1Ev();
extern void _ZN3bbb9GG0010100D1Ev();
Name_Map name_map__ZN3bbb9GG0010100E[] = {
  NSPAIR(_ZN3bbb9GG0010100C1Ev),
  NSPAIR(_ZN3bbb9GG0010100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG0010100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0010100E[];
extern void _ZN3bbb9GG00101003fooEv();
extern void _ZN3bbb9GG00101003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00101003fooEv,_ZThn8_N3bbb9GG00101003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00101003barEv,_ZThn8_N3bbb9GG00101003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00101003fooEv,_ZThn20_N3bbb9GG00101003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00101003barEv,_ZThn20_N3bbb9GG00101003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00101003barEv,_ZThn28_N3bbb9GG00101003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00101003fooEv,_ZThn28_N3bbb9GG00101003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0010100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00101003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00101003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00101003fooEv,_ZThn8_N3bbb9GG00101003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00101003barEv,_ZThn8_N3bbb9GG00101003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00101003fooEv,_ZThn20_N3bbb9GG00101003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00101003barEv,_ZThn20_N3bbb9GG00101003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00101003barEv,_ZThn28_N3bbb9GG00101003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00101003fooEv,_ZThn28_N3bbb9GG00101003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0010100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0010100E[];
Class_Descriptor cd__ZN3bbb9GG0010100E = {  "_ZN3bbb9GG0010100E", // class name
  bases__ZN3bbb9GG0010100E, 6,
  &(vtc__ZN3bbb9GG0010100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0010100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0010100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0010101  : ::bbb::EE001 , ::bbb::FF010 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00101013barEv
  virtual void  foo(); // _ZN3bbb9GG00101013fooEv
  ~GG0010101(); // tgen
  GG0010101(); // tgen
};
//SIG(1 _ZN3bbb9GG0010101E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0010101 ::bar(){vfunc_called(this, "_ZN3bbb9GG00101013barEv");}
void  bbb::GG0010101 ::foo(){vfunc_called(this, "_ZN3bbb9GG00101013fooEv");}
bbb::GG0010101 ::~GG0010101(){ note_dtor("_ZN3bbb9GG0010101E", this);} // tgen
bbb::GG0010101 ::GG0010101(){ note_ctor("_ZN3bbb9GG0010101E", this);} // tgen
}
static void Test__ZN3bbb9GG0010101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0010101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0010101E, buf);
    ::bbb::GG0010101 *dp, &lv = *(dp=new (buf) ::bbb::GG0010101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0010101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0010101E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0010101E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0010101E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0010101E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0010101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG0010101E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0010101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0010101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0010101E);
    dp->::bbb::GG0010101::~GG0010101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0010101E(Test__ZN3bbb9GG0010101E, "_ZN3bbb9GG0010101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0010101C1Ev();
extern void _ZN3bbb9GG0010101D1Ev();
Name_Map name_map__ZN3bbb9GG0010101E[] = {
  NSPAIR(_ZN3bbb9GG0010101C1Ev),
  NSPAIR(_ZN3bbb9GG0010101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG0010101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0010101E[];
extern void _ZN3bbb9GG00101013fooEv();
extern void _ZN3bbb9GG00101013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00101013fooEv,_ZThn8_N3bbb9GG00101013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00101013barEv,_ZThn8_N3bbb9GG00101013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00101013fooEv,_ZThn20_N3bbb9GG00101013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00101013barEv,_ZThn20_N3bbb9GG00101013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00101013barEv,_ZThn28_N3bbb9GG00101013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00101013fooEv,_ZThn28_N3bbb9GG00101013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0010101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00101013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00101013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00101013fooEv,_ZThn8_N3bbb9GG00101013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00101013barEv,_ZThn8_N3bbb9GG00101013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00101013fooEv,_ZThn20_N3bbb9GG00101013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00101013barEv,_ZThn20_N3bbb9GG00101013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00101013barEv,_ZThn28_N3bbb9GG00101013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00101013fooEv,_ZThn28_N3bbb9GG00101013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0010101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0010101E[];
Class_Descriptor cd__ZN3bbb9GG0010101E = {  "_ZN3bbb9GG0010101E", // class name
  bases__ZN3bbb9GG0010101E, 6,
  &(vtc__ZN3bbb9GG0010101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0010101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0010101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0010110  : ::bbb::EE001 , ::bbb::FF011 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00101103fooEv
  virtual void  bar(); // _ZN3bbb9GG00101103barEv
  ~GG0010110(); // tgen
  GG0010110(); // tgen
};
//SIG(1 _ZN3bbb9GG0010110E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0010110 ::foo(){vfunc_called(this, "_ZN3bbb9GG00101103fooEv");}
void  bbb::GG0010110 ::bar(){vfunc_called(this, "_ZN3bbb9GG00101103barEv");}
bbb::GG0010110 ::~GG0010110(){ note_dtor("_ZN3bbb9GG0010110E", this);} // tgen
bbb::GG0010110 ::GG0010110(){ note_ctor("_ZN3bbb9GG0010110E", this);} // tgen
}
static void Test__ZN3bbb9GG0010110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0010110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0010110E, buf);
    ::bbb::GG0010110 *dp, &lv = *(dp=new (buf) ::bbb::GG0010110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0010110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0010110E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0010110E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0010110E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0010110E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0010110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG0010110E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0010110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0010110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0010110E);
    dp->::bbb::GG0010110::~GG0010110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0010110E(Test__ZN3bbb9GG0010110E, "_ZN3bbb9GG0010110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0010110C1Ev();
extern void _ZN3bbb9GG0010110D1Ev();
Name_Map name_map__ZN3bbb9GG0010110E[] = {
  NSPAIR(_ZN3bbb9GG0010110C1Ev),
  NSPAIR(_ZN3bbb9GG0010110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG0010110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0010110E[];
extern void _ZN3bbb9GG00101103fooEv();
extern void _ZN3bbb9GG00101103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00101103fooEv,_ZThn8_N3bbb9GG00101103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00101103barEv,_ZThn8_N3bbb9GG00101103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00101103fooEv,_ZThn20_N3bbb9GG00101103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00101103barEv,_ZThn20_N3bbb9GG00101103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00101103barEv,_ZThn28_N3bbb9GG00101103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00101103fooEv,_ZThn28_N3bbb9GG00101103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0010110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00101103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00101103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00101103fooEv,_ZThn8_N3bbb9GG00101103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00101103barEv,_ZThn8_N3bbb9GG00101103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00101103fooEv,_ZThn20_N3bbb9GG00101103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00101103barEv,_ZThn20_N3bbb9GG00101103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00101103barEv,_ZThn28_N3bbb9GG00101103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00101103fooEv,_ZThn28_N3bbb9GG00101103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0010110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0010110E[];
Class_Descriptor cd__ZN3bbb9GG0010110E = {  "_ZN3bbb9GG0010110E", // class name
  bases__ZN3bbb9GG0010110E, 6,
  &(vtc__ZN3bbb9GG0010110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0010110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0010110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0010111  : ::bbb::EE001 , ::bbb::FF011 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00101113barEv
  virtual void  foo(); // _ZN3bbb9GG00101113fooEv
  ~GG0010111(); // tgen
  GG0010111(); // tgen
};
//SIG(1 _ZN3bbb9GG0010111E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0010111 ::bar(){vfunc_called(this, "_ZN3bbb9GG00101113barEv");}
void  bbb::GG0010111 ::foo(){vfunc_called(this, "_ZN3bbb9GG00101113fooEv");}
bbb::GG0010111 ::~GG0010111(){ note_dtor("_ZN3bbb9GG0010111E", this);} // tgen
bbb::GG0010111 ::GG0010111(){ note_ctor("_ZN3bbb9GG0010111E", this);} // tgen
}
static void Test__ZN3bbb9GG0010111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0010111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0010111E, buf);
    ::bbb::GG0010111 *dp, &lv = *(dp=new (buf) ::bbb::GG0010111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0010111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0010111E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0010111E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0010111E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0010111E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0010111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG0010111E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0010111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0010111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0010111E);
    dp->::bbb::GG0010111::~GG0010111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0010111E(Test__ZN3bbb9GG0010111E, "_ZN3bbb9GG0010111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0010111C1Ev();
extern void _ZN3bbb9GG0010111D1Ev();
Name_Map name_map__ZN3bbb9GG0010111E[] = {
  NSPAIR(_ZN3bbb9GG0010111C1Ev),
  NSPAIR(_ZN3bbb9GG0010111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG0010111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0010111E[];
extern void _ZN3bbb9GG00101113fooEv();
extern void _ZN3bbb9GG00101113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00101113fooEv,_ZThn8_N3bbb9GG00101113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00101113barEv,_ZThn8_N3bbb9GG00101113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00101113fooEv,_ZThn20_N3bbb9GG00101113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00101113barEv,_ZThn20_N3bbb9GG00101113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00101113barEv,_ZThn28_N3bbb9GG00101113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00101113fooEv,_ZThn28_N3bbb9GG00101113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0010111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00101113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00101113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00101113fooEv,_ZThn8_N3bbb9GG00101113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00101113barEv,_ZThn8_N3bbb9GG00101113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00101113fooEv,_ZThn20_N3bbb9GG00101113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00101113barEv,_ZThn20_N3bbb9GG00101113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0010111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00101113barEv,_ZThn28_N3bbb9GG00101113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00101113fooEv,_ZThn28_N3bbb9GG00101113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0010111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0010111E[];
Class_Descriptor cd__ZN3bbb9GG0010111E = {  "_ZN3bbb9GG0010111E", // class name
  bases__ZN3bbb9GG0010111E, 6,
  &(vtc__ZN3bbb9GG0010111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0010111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0010111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0011000  : ::bbb::EE001 , ::bbb::FF100 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00110003fooEv
  virtual void  bar(); // _ZN3bbb9GG00110003barEv
  ~GG0011000(); // tgen
  GG0011000(); // tgen
};
//SIG(1 _ZN3bbb9GG0011000E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0011000 ::foo(){vfunc_called(this, "_ZN3bbb9GG00110003fooEv");}
void  bbb::GG0011000 ::bar(){vfunc_called(this, "_ZN3bbb9GG00110003barEv");}
bbb::GG0011000 ::~GG0011000(){ note_dtor("_ZN3bbb9GG0011000E", this);} // tgen
bbb::GG0011000 ::GG0011000(){ note_ctor("_ZN3bbb9GG0011000E", this);} // tgen
}
static void Test__ZN3bbb9GG0011000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0011000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0011000E, buf);
    ::bbb::GG0011000 *dp, &lv = *(dp=new (buf) ::bbb::GG0011000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0011000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0011000E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0011000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0011000E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0011000E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0011000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG0011000E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0011000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0011000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0011000E);
    dp->::bbb::GG0011000::~GG0011000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0011000E(Test__ZN3bbb9GG0011000E, "_ZN3bbb9GG0011000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0011000C1Ev();
extern void _ZN3bbb9GG0011000D1Ev();
Name_Map name_map__ZN3bbb9GG0011000E[] = {
  NSPAIR(_ZN3bbb9GG0011000C1Ev),
  NSPAIR(_ZN3bbb9GG0011000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG0011000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0011000E[];
extern void _ZN3bbb9GG00110003fooEv();
extern void _ZN3bbb9GG00110003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00110003fooEv,_ZThn8_N3bbb9GG00110003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00110003barEv,_ZThn8_N3bbb9GG00110003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00110003barEv,_ZThn20_N3bbb9GG00110003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00110003fooEv,_ZThn20_N3bbb9GG00110003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00110003fooEv,_ZThn28_N3bbb9GG00110003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00110003barEv,_ZThn28_N3bbb9GG00110003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0011000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00110003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00110003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00110003fooEv,_ZThn8_N3bbb9GG00110003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00110003barEv,_ZThn8_N3bbb9GG00110003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00110003barEv,_ZThn20_N3bbb9GG00110003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00110003fooEv,_ZThn20_N3bbb9GG00110003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00110003fooEv,_ZThn28_N3bbb9GG00110003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00110003barEv,_ZThn28_N3bbb9GG00110003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0011000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0011000E[];
Class_Descriptor cd__ZN3bbb9GG0011000E = {  "_ZN3bbb9GG0011000E", // class name
  bases__ZN3bbb9GG0011000E, 6,
  &(vtc__ZN3bbb9GG0011000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0011000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0011000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0011001  : ::bbb::EE001 , ::bbb::FF100 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00110013barEv
  virtual void  foo(); // _ZN3bbb9GG00110013fooEv
  ~GG0011001(); // tgen
  GG0011001(); // tgen
};
//SIG(1 _ZN3bbb9GG0011001E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0011001 ::bar(){vfunc_called(this, "_ZN3bbb9GG00110013barEv");}
void  bbb::GG0011001 ::foo(){vfunc_called(this, "_ZN3bbb9GG00110013fooEv");}
bbb::GG0011001 ::~GG0011001(){ note_dtor("_ZN3bbb9GG0011001E", this);} // tgen
bbb::GG0011001 ::GG0011001(){ note_ctor("_ZN3bbb9GG0011001E", this);} // tgen
}
static void Test__ZN3bbb9GG0011001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0011001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0011001E, buf);
    ::bbb::GG0011001 *dp, &lv = *(dp=new (buf) ::bbb::GG0011001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0011001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0011001E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0011001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0011001E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0011001E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0011001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG0011001E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0011001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0011001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0011001E);
    dp->::bbb::GG0011001::~GG0011001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0011001E(Test__ZN3bbb9GG0011001E, "_ZN3bbb9GG0011001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0011001C1Ev();
extern void _ZN3bbb9GG0011001D1Ev();
Name_Map name_map__ZN3bbb9GG0011001E[] = {
  NSPAIR(_ZN3bbb9GG0011001C1Ev),
  NSPAIR(_ZN3bbb9GG0011001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG0011001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0011001E[];
extern void _ZN3bbb9GG00110013fooEv();
extern void _ZN3bbb9GG00110013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00110013fooEv,_ZThn8_N3bbb9GG00110013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00110013barEv,_ZThn8_N3bbb9GG00110013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00110013barEv,_ZThn20_N3bbb9GG00110013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00110013fooEv,_ZThn20_N3bbb9GG00110013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00110013fooEv,_ZThn28_N3bbb9GG00110013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00110013barEv,_ZThn28_N3bbb9GG00110013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0011001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00110013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00110013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00110013fooEv,_ZThn8_N3bbb9GG00110013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00110013barEv,_ZThn8_N3bbb9GG00110013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00110013barEv,_ZThn20_N3bbb9GG00110013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00110013fooEv,_ZThn20_N3bbb9GG00110013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00110013fooEv,_ZThn28_N3bbb9GG00110013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00110013barEv,_ZThn28_N3bbb9GG00110013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0011001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0011001E[];
Class_Descriptor cd__ZN3bbb9GG0011001E = {  "_ZN3bbb9GG0011001E", // class name
  bases__ZN3bbb9GG0011001E, 6,
  &(vtc__ZN3bbb9GG0011001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0011001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0011001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0011010  : ::bbb::EE001 , ::bbb::FF101 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00110103fooEv
  virtual void  bar(); // _ZN3bbb9GG00110103barEv
  ~GG0011010(); // tgen
  GG0011010(); // tgen
};
//SIG(1 _ZN3bbb9GG0011010E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0011010 ::foo(){vfunc_called(this, "_ZN3bbb9GG00110103fooEv");}
void  bbb::GG0011010 ::bar(){vfunc_called(this, "_ZN3bbb9GG00110103barEv");}
bbb::GG0011010 ::~GG0011010(){ note_dtor("_ZN3bbb9GG0011010E", this);} // tgen
bbb::GG0011010 ::GG0011010(){ note_ctor("_ZN3bbb9GG0011010E", this);} // tgen
}
static void Test__ZN3bbb9GG0011010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0011010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0011010E, buf);
    ::bbb::GG0011010 *dp, &lv = *(dp=new (buf) ::bbb::GG0011010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0011010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0011010E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0011010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0011010E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0011010E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0011010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG0011010E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0011010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0011010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0011010E);
    dp->::bbb::GG0011010::~GG0011010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0011010E(Test__ZN3bbb9GG0011010E, "_ZN3bbb9GG0011010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0011010C1Ev();
extern void _ZN3bbb9GG0011010D1Ev();
Name_Map name_map__ZN3bbb9GG0011010E[] = {
  NSPAIR(_ZN3bbb9GG0011010C1Ev),
  NSPAIR(_ZN3bbb9GG0011010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG0011010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0011010E[];
extern void _ZN3bbb9GG00110103fooEv();
extern void _ZN3bbb9GG00110103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00110103fooEv,_ZThn8_N3bbb9GG00110103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00110103barEv,_ZThn8_N3bbb9GG00110103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00110103barEv,_ZThn20_N3bbb9GG00110103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00110103fooEv,_ZThn20_N3bbb9GG00110103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00110103fooEv,_ZThn28_N3bbb9GG00110103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00110103barEv,_ZThn28_N3bbb9GG00110103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0011010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00110103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00110103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00110103fooEv,_ZThn8_N3bbb9GG00110103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00110103barEv,_ZThn8_N3bbb9GG00110103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00110103barEv,_ZThn20_N3bbb9GG00110103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00110103fooEv,_ZThn20_N3bbb9GG00110103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00110103fooEv,_ZThn28_N3bbb9GG00110103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00110103barEv,_ZThn28_N3bbb9GG00110103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0011010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0011010E[];
Class_Descriptor cd__ZN3bbb9GG0011010E = {  "_ZN3bbb9GG0011010E", // class name
  bases__ZN3bbb9GG0011010E, 6,
  &(vtc__ZN3bbb9GG0011010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0011010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0011010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0011011  : ::bbb::EE001 , ::bbb::FF101 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00110113barEv
  virtual void  foo(); // _ZN3bbb9GG00110113fooEv
  ~GG0011011(); // tgen
  GG0011011(); // tgen
};
//SIG(1 _ZN3bbb9GG0011011E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0011011 ::bar(){vfunc_called(this, "_ZN3bbb9GG00110113barEv");}
void  bbb::GG0011011 ::foo(){vfunc_called(this, "_ZN3bbb9GG00110113fooEv");}
bbb::GG0011011 ::~GG0011011(){ note_dtor("_ZN3bbb9GG0011011E", this);} // tgen
bbb::GG0011011 ::GG0011011(){ note_ctor("_ZN3bbb9GG0011011E", this);} // tgen
}
static void Test__ZN3bbb9GG0011011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0011011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0011011E, buf);
    ::bbb::GG0011011 *dp, &lv = *(dp=new (buf) ::bbb::GG0011011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0011011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0011011E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0011011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0011011E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0011011E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0011011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG0011011E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0011011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0011011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0011011E);
    dp->::bbb::GG0011011::~GG0011011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0011011E(Test__ZN3bbb9GG0011011E, "_ZN3bbb9GG0011011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0011011C1Ev();
extern void _ZN3bbb9GG0011011D1Ev();
Name_Map name_map__ZN3bbb9GG0011011E[] = {
  NSPAIR(_ZN3bbb9GG0011011C1Ev),
  NSPAIR(_ZN3bbb9GG0011011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG0011011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0011011E[];
extern void _ZN3bbb9GG00110113fooEv();
extern void _ZN3bbb9GG00110113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00110113fooEv,_ZThn8_N3bbb9GG00110113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00110113barEv,_ZThn8_N3bbb9GG00110113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00110113barEv,_ZThn20_N3bbb9GG00110113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00110113fooEv,_ZThn20_N3bbb9GG00110113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00110113fooEv,_ZThn28_N3bbb9GG00110113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00110113barEv,_ZThn28_N3bbb9GG00110113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0011011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00110113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00110113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00110113fooEv,_ZThn8_N3bbb9GG00110113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00110113barEv,_ZThn8_N3bbb9GG00110113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00110113barEv,_ZThn20_N3bbb9GG00110113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00110113fooEv,_ZThn20_N3bbb9GG00110113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00110113fooEv,_ZThn28_N3bbb9GG00110113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00110113barEv,_ZThn28_N3bbb9GG00110113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0011011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0011011E[];
Class_Descriptor cd__ZN3bbb9GG0011011E = {  "_ZN3bbb9GG0011011E", // class name
  bases__ZN3bbb9GG0011011E, 6,
  &(vtc__ZN3bbb9GG0011011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0011011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0011011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0011100  : ::bbb::EE001 , ::bbb::FF110 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00111003fooEv
  virtual void  bar(); // _ZN3bbb9GG00111003barEv
  ~GG0011100(); // tgen
  GG0011100(); // tgen
};
//SIG(1 _ZN3bbb9GG0011100E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0011100 ::foo(){vfunc_called(this, "_ZN3bbb9GG00111003fooEv");}
void  bbb::GG0011100 ::bar(){vfunc_called(this, "_ZN3bbb9GG00111003barEv");}
bbb::GG0011100 ::~GG0011100(){ note_dtor("_ZN3bbb9GG0011100E", this);} // tgen
bbb::GG0011100 ::GG0011100(){ note_ctor("_ZN3bbb9GG0011100E", this);} // tgen
}
static void Test__ZN3bbb9GG0011100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0011100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0011100E, buf);
    ::bbb::GG0011100 *dp, &lv = *(dp=new (buf) ::bbb::GG0011100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0011100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0011100E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0011100E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0011100E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0011100E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0011100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG0011100E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0011100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0011100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0011100E);
    dp->::bbb::GG0011100::~GG0011100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0011100E(Test__ZN3bbb9GG0011100E, "_ZN3bbb9GG0011100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0011100C1Ev();
extern void _ZN3bbb9GG0011100D1Ev();
Name_Map name_map__ZN3bbb9GG0011100E[] = {
  NSPAIR(_ZN3bbb9GG0011100C1Ev),
  NSPAIR(_ZN3bbb9GG0011100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG0011100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0011100E[];
extern void _ZN3bbb9GG00111003fooEv();
extern void _ZN3bbb9GG00111003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00111003fooEv,_ZThn8_N3bbb9GG00111003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00111003barEv,_ZThn8_N3bbb9GG00111003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00111003barEv,_ZThn20_N3bbb9GG00111003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00111003fooEv,_ZThn20_N3bbb9GG00111003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00111003barEv,_ZThn28_N3bbb9GG00111003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00111003fooEv,_ZThn28_N3bbb9GG00111003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0011100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00111003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00111003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00111003fooEv,_ZThn8_N3bbb9GG00111003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00111003barEv,_ZThn8_N3bbb9GG00111003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00111003barEv,_ZThn20_N3bbb9GG00111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00111003fooEv,_ZThn20_N3bbb9GG00111003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00111003barEv,_ZThn28_N3bbb9GG00111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00111003fooEv,_ZThn28_N3bbb9GG00111003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0011100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0011100E[];
Class_Descriptor cd__ZN3bbb9GG0011100E = {  "_ZN3bbb9GG0011100E", // class name
  bases__ZN3bbb9GG0011100E, 6,
  &(vtc__ZN3bbb9GG0011100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0011100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0011100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0011101  : ::bbb::EE001 , ::bbb::FF110 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00111013barEv
  virtual void  foo(); // _ZN3bbb9GG00111013fooEv
  ~GG0011101(); // tgen
  GG0011101(); // tgen
};
//SIG(1 _ZN3bbb9GG0011101E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0011101 ::bar(){vfunc_called(this, "_ZN3bbb9GG00111013barEv");}
void  bbb::GG0011101 ::foo(){vfunc_called(this, "_ZN3bbb9GG00111013fooEv");}
bbb::GG0011101 ::~GG0011101(){ note_dtor("_ZN3bbb9GG0011101E", this);} // tgen
bbb::GG0011101 ::GG0011101(){ note_ctor("_ZN3bbb9GG0011101E", this);} // tgen
}
static void Test__ZN3bbb9GG0011101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0011101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0011101E, buf);
    ::bbb::GG0011101 *dp, &lv = *(dp=new (buf) ::bbb::GG0011101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0011101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0011101E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0011101E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0011101E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0011101E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0011101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG0011101E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0011101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0011101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0011101E);
    dp->::bbb::GG0011101::~GG0011101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0011101E(Test__ZN3bbb9GG0011101E, "_ZN3bbb9GG0011101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0011101C1Ev();
extern void _ZN3bbb9GG0011101D1Ev();
Name_Map name_map__ZN3bbb9GG0011101E[] = {
  NSPAIR(_ZN3bbb9GG0011101C1Ev),
  NSPAIR(_ZN3bbb9GG0011101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG0011101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0011101E[];
extern void _ZN3bbb9GG00111013fooEv();
extern void _ZN3bbb9GG00111013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00111013fooEv,_ZThn8_N3bbb9GG00111013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00111013barEv,_ZThn8_N3bbb9GG00111013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00111013barEv,_ZThn20_N3bbb9GG00111013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00111013fooEv,_ZThn20_N3bbb9GG00111013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00111013barEv,_ZThn28_N3bbb9GG00111013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00111013fooEv,_ZThn28_N3bbb9GG00111013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0011101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00111013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00111013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00111013fooEv,_ZThn8_N3bbb9GG00111013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00111013barEv,_ZThn8_N3bbb9GG00111013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00111013barEv,_ZThn20_N3bbb9GG00111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00111013fooEv,_ZThn20_N3bbb9GG00111013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00111013barEv,_ZThn28_N3bbb9GG00111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00111013fooEv,_ZThn28_N3bbb9GG00111013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0011101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0011101E[];
Class_Descriptor cd__ZN3bbb9GG0011101E = {  "_ZN3bbb9GG0011101E", // class name
  bases__ZN3bbb9GG0011101E, 6,
  &(vtc__ZN3bbb9GG0011101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0011101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0011101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0011110  : ::bbb::EE001 , ::bbb::FF111 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG00111103fooEv
  virtual void  bar(); // _ZN3bbb9GG00111103barEv
  ~GG0011110(); // tgen
  GG0011110(); // tgen
};
//SIG(1 _ZN3bbb9GG0011110E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0011110 ::foo(){vfunc_called(this, "_ZN3bbb9GG00111103fooEv");}
void  bbb::GG0011110 ::bar(){vfunc_called(this, "_ZN3bbb9GG00111103barEv");}
bbb::GG0011110 ::~GG0011110(){ note_dtor("_ZN3bbb9GG0011110E", this);} // tgen
bbb::GG0011110 ::GG0011110(){ note_ctor("_ZN3bbb9GG0011110E", this);} // tgen
}
static void Test__ZN3bbb9GG0011110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0011110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0011110E, buf);
    ::bbb::GG0011110 *dp, &lv = *(dp=new (buf) ::bbb::GG0011110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0011110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0011110E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0011110E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0011110E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0011110E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0011110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG0011110E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0011110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0011110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0011110E);
    dp->::bbb::GG0011110::~GG0011110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0011110E(Test__ZN3bbb9GG0011110E, "_ZN3bbb9GG0011110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0011110C1Ev();
extern void _ZN3bbb9GG0011110D1Ev();
Name_Map name_map__ZN3bbb9GG0011110E[] = {
  NSPAIR(_ZN3bbb9GG0011110C1Ev),
  NSPAIR(_ZN3bbb9GG0011110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG0011110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0011110E[];
extern void _ZN3bbb9GG00111103fooEv();
extern void _ZN3bbb9GG00111103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00111103fooEv,_ZThn8_N3bbb9GG00111103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00111103barEv,_ZThn8_N3bbb9GG00111103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00111103barEv,_ZThn20_N3bbb9GG00111103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00111103fooEv,_ZThn20_N3bbb9GG00111103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00111103barEv,_ZThn28_N3bbb9GG00111103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00111103fooEv,_ZThn28_N3bbb9GG00111103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0011110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00111103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00111103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00111103fooEv,_ZThn8_N3bbb9GG00111103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00111103barEv,_ZThn8_N3bbb9GG00111103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00111103barEv,_ZThn20_N3bbb9GG00111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00111103fooEv,_ZThn20_N3bbb9GG00111103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00111103barEv,_ZThn28_N3bbb9GG00111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00111103fooEv,_ZThn28_N3bbb9GG00111103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0011110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0011110E[];
Class_Descriptor cd__ZN3bbb9GG0011110E = {  "_ZN3bbb9GG0011110E", // class name
  bases__ZN3bbb9GG0011110E, 6,
  &(vtc__ZN3bbb9GG0011110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0011110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0011110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0011111  : ::bbb::EE001 , ::bbb::FF111 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG00111113barEv
  virtual void  foo(); // _ZN3bbb9GG00111113fooEv
  ~GG0011111(); // tgen
  GG0011111(); // tgen
};
//SIG(1 _ZN3bbb9GG0011111E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0011111 ::bar(){vfunc_called(this, "_ZN3bbb9GG00111113barEv");}
void  bbb::GG0011111 ::foo(){vfunc_called(this, "_ZN3bbb9GG00111113fooEv");}
bbb::GG0011111 ::~GG0011111(){ note_dtor("_ZN3bbb9GG0011111E", this);} // tgen
bbb::GG0011111 ::GG0011111(){ note_ctor("_ZN3bbb9GG0011111E", this);} // tgen
}
static void Test__ZN3bbb9GG0011111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0011111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0011111E, buf);
    ::bbb::GG0011111 *dp, &lv = *(dp=new (buf) ::bbb::GG0011111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0011111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0011111E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE001*), 0, "_ZN3bbb9GG0011111E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE001*), ABISELECT(16,8), "_ZN3bbb9GG0011111E");
    check_base_class_offset(lv, (::bbb::EE001*), 0, "_ZN3bbb9GG0011111E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0011111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG0011111E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0011111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0011111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0011111E);
    dp->::bbb::GG0011111::~GG0011111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0011111E(Test__ZN3bbb9GG0011111E, "_ZN3bbb9GG0011111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0011111C1Ev();
extern void _ZN3bbb9GG0011111D1Ev();
Name_Map name_map__ZN3bbb9GG0011111E[] = {
  NSPAIR(_ZN3bbb9GG0011111C1Ev),
  NSPAIR(_ZN3bbb9GG0011111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE001E;
extern VTBL_ENTRY _ZTIN3bbb5EE001E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE001E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG0011111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE001E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0011111E[];
extern void _ZN3bbb9GG00111113fooEv();
extern void _ZN3bbb9GG00111113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG00111113fooEv,_ZThn8_N3bbb9GG00111113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG00111113barEv,_ZThn8_N3bbb9GG00111113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00111113barEv,_ZThn20_N3bbb9GG00111113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG00111113fooEv,_ZThn20_N3bbb9GG00111113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00111113barEv,_ZThn28_N3bbb9GG00111113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG00111113fooEv,_ZThn28_N3bbb9GG00111113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0011111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG00111113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG00111113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00111113fooEv,_ZThn8_N3bbb9GG00111113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG00111113barEv,_ZThn8_N3bbb9GG00111113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00111113barEv,_ZThn20_N3bbb9GG00111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG00111113fooEv,_ZThn20_N3bbb9GG00111113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0011111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00111113barEv,_ZThn28_N3bbb9GG00111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG00111113fooEv,_ZThn28_N3bbb9GG00111113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0011111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0011111E[];
Class_Descriptor cd__ZN3bbb9GG0011111E = {  "_ZN3bbb9GG0011111E", // class name
  bases__ZN3bbb9GG0011111E, 6,
  &(vtc__ZN3bbb9GG0011111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0011111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0011111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0100000  : ::bbb::EE010 , ::bbb::FF000 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01000003fooEv
  virtual void  bar(); // _ZN3bbb9GG01000003barEv
  ~GG0100000(); // tgen
  GG0100000(); // tgen
};
//SIG(1 _ZN3bbb9GG0100000E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0100000 ::foo(){vfunc_called(this, "_ZN3bbb9GG01000003fooEv");}
void  bbb::GG0100000 ::bar(){vfunc_called(this, "_ZN3bbb9GG01000003barEv");}
bbb::GG0100000 ::~GG0100000(){ note_dtor("_ZN3bbb9GG0100000E", this);} // tgen
bbb::GG0100000 ::GG0100000(){ note_ctor("_ZN3bbb9GG0100000E", this);} // tgen
}
static void Test__ZN3bbb9GG0100000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0100000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0100000E, buf);
    ::bbb::GG0100000 *dp, &lv = *(dp=new (buf) ::bbb::GG0100000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0100000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0100000E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0100000E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0100000E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0100000E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0100000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG0100000E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0100000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0100000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0100000E);
    dp->::bbb::GG0100000::~GG0100000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0100000E(Test__ZN3bbb9GG0100000E, "_ZN3bbb9GG0100000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0100000C1Ev();
extern void _ZN3bbb9GG0100000D1Ev();
Name_Map name_map__ZN3bbb9GG0100000E[] = {
  NSPAIR(_ZN3bbb9GG0100000C1Ev),
  NSPAIR(_ZN3bbb9GG0100000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG0100000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0100000E[];
extern void _ZN3bbb9GG01000003fooEv();
extern void _ZN3bbb9GG01000003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01000003barEv,_ZThn8_N3bbb9GG01000003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01000003fooEv,_ZThn8_N3bbb9GG01000003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01000003fooEv,_ZThn20_N3bbb9GG01000003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01000003barEv,_ZThn20_N3bbb9GG01000003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01000003fooEv,_ZThn28_N3bbb9GG01000003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01000003barEv,_ZThn28_N3bbb9GG01000003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0100000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01000003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01000003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01000003barEv,_ZThn8_N3bbb9GG01000003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01000003fooEv,_ZThn8_N3bbb9GG01000003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01000003fooEv,_ZThn20_N3bbb9GG01000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01000003barEv,_ZThn20_N3bbb9GG01000003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01000003fooEv,_ZThn28_N3bbb9GG01000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01000003barEv,_ZThn28_N3bbb9GG01000003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0100000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0100000E[];
Class_Descriptor cd__ZN3bbb9GG0100000E = {  "_ZN3bbb9GG0100000E", // class name
  bases__ZN3bbb9GG0100000E, 6,
  &(vtc__ZN3bbb9GG0100000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0100000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0100000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0100001  : ::bbb::EE010 , ::bbb::FF000 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01000013barEv
  virtual void  foo(); // _ZN3bbb9GG01000013fooEv
  ~GG0100001(); // tgen
  GG0100001(); // tgen
};
//SIG(1 _ZN3bbb9GG0100001E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0100001 ::bar(){vfunc_called(this, "_ZN3bbb9GG01000013barEv");}
void  bbb::GG0100001 ::foo(){vfunc_called(this, "_ZN3bbb9GG01000013fooEv");}
bbb::GG0100001 ::~GG0100001(){ note_dtor("_ZN3bbb9GG0100001E", this);} // tgen
bbb::GG0100001 ::GG0100001(){ note_ctor("_ZN3bbb9GG0100001E", this);} // tgen
}
static void Test__ZN3bbb9GG0100001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0100001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0100001E, buf);
    ::bbb::GG0100001 *dp, &lv = *(dp=new (buf) ::bbb::GG0100001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0100001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0100001E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0100001E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0100001E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0100001E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0100001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG0100001E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0100001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0100001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0100001E);
    dp->::bbb::GG0100001::~GG0100001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0100001E(Test__ZN3bbb9GG0100001E, "_ZN3bbb9GG0100001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0100001C1Ev();
extern void _ZN3bbb9GG0100001D1Ev();
Name_Map name_map__ZN3bbb9GG0100001E[] = {
  NSPAIR(_ZN3bbb9GG0100001C1Ev),
  NSPAIR(_ZN3bbb9GG0100001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG0100001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0100001E[];
extern void _ZN3bbb9GG01000013fooEv();
extern void _ZN3bbb9GG01000013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01000013barEv,_ZThn8_N3bbb9GG01000013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01000013fooEv,_ZThn8_N3bbb9GG01000013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01000013fooEv,_ZThn20_N3bbb9GG01000013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01000013barEv,_ZThn20_N3bbb9GG01000013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01000013fooEv,_ZThn28_N3bbb9GG01000013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01000013barEv,_ZThn28_N3bbb9GG01000013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0100001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01000013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01000013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01000013barEv,_ZThn8_N3bbb9GG01000013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01000013fooEv,_ZThn8_N3bbb9GG01000013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01000013fooEv,_ZThn20_N3bbb9GG01000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01000013barEv,_ZThn20_N3bbb9GG01000013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01000013fooEv,_ZThn28_N3bbb9GG01000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01000013barEv,_ZThn28_N3bbb9GG01000013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0100001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0100001E[];
Class_Descriptor cd__ZN3bbb9GG0100001E = {  "_ZN3bbb9GG0100001E", // class name
  bases__ZN3bbb9GG0100001E, 6,
  &(vtc__ZN3bbb9GG0100001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0100001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0100001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0100010  : ::bbb::EE010 , ::bbb::FF001 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01000103fooEv
  virtual void  bar(); // _ZN3bbb9GG01000103barEv
  ~GG0100010(); // tgen
  GG0100010(); // tgen
};
//SIG(1 _ZN3bbb9GG0100010E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0100010 ::foo(){vfunc_called(this, "_ZN3bbb9GG01000103fooEv");}
void  bbb::GG0100010 ::bar(){vfunc_called(this, "_ZN3bbb9GG01000103barEv");}
bbb::GG0100010 ::~GG0100010(){ note_dtor("_ZN3bbb9GG0100010E", this);} // tgen
bbb::GG0100010 ::GG0100010(){ note_ctor("_ZN3bbb9GG0100010E", this);} // tgen
}
static void Test__ZN3bbb9GG0100010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0100010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0100010E, buf);
    ::bbb::GG0100010 *dp, &lv = *(dp=new (buf) ::bbb::GG0100010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0100010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0100010E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0100010E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0100010E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0100010E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0100010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG0100010E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0100010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0100010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0100010E);
    dp->::bbb::GG0100010::~GG0100010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0100010E(Test__ZN3bbb9GG0100010E, "_ZN3bbb9GG0100010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0100010C1Ev();
extern void _ZN3bbb9GG0100010D1Ev();
Name_Map name_map__ZN3bbb9GG0100010E[] = {
  NSPAIR(_ZN3bbb9GG0100010C1Ev),
  NSPAIR(_ZN3bbb9GG0100010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG0100010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0100010E[];
extern void _ZN3bbb9GG01000103fooEv();
extern void _ZN3bbb9GG01000103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01000103barEv,_ZThn8_N3bbb9GG01000103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01000103fooEv,_ZThn8_N3bbb9GG01000103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01000103fooEv,_ZThn20_N3bbb9GG01000103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01000103barEv,_ZThn20_N3bbb9GG01000103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01000103fooEv,_ZThn28_N3bbb9GG01000103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01000103barEv,_ZThn28_N3bbb9GG01000103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0100010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01000103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01000103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01000103barEv,_ZThn8_N3bbb9GG01000103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01000103fooEv,_ZThn8_N3bbb9GG01000103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01000103fooEv,_ZThn20_N3bbb9GG01000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01000103barEv,_ZThn20_N3bbb9GG01000103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01000103fooEv,_ZThn28_N3bbb9GG01000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01000103barEv,_ZThn28_N3bbb9GG01000103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0100010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0100010E[];
Class_Descriptor cd__ZN3bbb9GG0100010E = {  "_ZN3bbb9GG0100010E", // class name
  bases__ZN3bbb9GG0100010E, 6,
  &(vtc__ZN3bbb9GG0100010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0100010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0100010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0100011  : ::bbb::EE010 , ::bbb::FF001 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01000113barEv
  virtual void  foo(); // _ZN3bbb9GG01000113fooEv
  ~GG0100011(); // tgen
  GG0100011(); // tgen
};
//SIG(1 _ZN3bbb9GG0100011E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0100011 ::bar(){vfunc_called(this, "_ZN3bbb9GG01000113barEv");}
void  bbb::GG0100011 ::foo(){vfunc_called(this, "_ZN3bbb9GG01000113fooEv");}
bbb::GG0100011 ::~GG0100011(){ note_dtor("_ZN3bbb9GG0100011E", this);} // tgen
bbb::GG0100011 ::GG0100011(){ note_ctor("_ZN3bbb9GG0100011E", this);} // tgen
}
static void Test__ZN3bbb9GG0100011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0100011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0100011E, buf);
    ::bbb::GG0100011 *dp, &lv = *(dp=new (buf) ::bbb::GG0100011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0100011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0100011E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0100011E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0100011E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0100011E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0100011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG0100011E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0100011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0100011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0100011E);
    dp->::bbb::GG0100011::~GG0100011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0100011E(Test__ZN3bbb9GG0100011E, "_ZN3bbb9GG0100011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0100011C1Ev();
extern void _ZN3bbb9GG0100011D1Ev();
Name_Map name_map__ZN3bbb9GG0100011E[] = {
  NSPAIR(_ZN3bbb9GG0100011C1Ev),
  NSPAIR(_ZN3bbb9GG0100011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG0100011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0100011E[];
extern void _ZN3bbb9GG01000113fooEv();
extern void _ZN3bbb9GG01000113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01000113barEv,_ZThn8_N3bbb9GG01000113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01000113fooEv,_ZThn8_N3bbb9GG01000113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01000113fooEv,_ZThn20_N3bbb9GG01000113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01000113barEv,_ZThn20_N3bbb9GG01000113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01000113fooEv,_ZThn28_N3bbb9GG01000113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01000113barEv,_ZThn28_N3bbb9GG01000113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0100011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01000113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01000113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01000113barEv,_ZThn8_N3bbb9GG01000113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01000113fooEv,_ZThn8_N3bbb9GG01000113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01000113fooEv,_ZThn20_N3bbb9GG01000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01000113barEv,_ZThn20_N3bbb9GG01000113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01000113fooEv,_ZThn28_N3bbb9GG01000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01000113barEv,_ZThn28_N3bbb9GG01000113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0100011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0100011E[];
Class_Descriptor cd__ZN3bbb9GG0100011E = {  "_ZN3bbb9GG0100011E", // class name
  bases__ZN3bbb9GG0100011E, 6,
  &(vtc__ZN3bbb9GG0100011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0100011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0100011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0100100  : ::bbb::EE010 , ::bbb::FF010 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01001003fooEv
  virtual void  bar(); // _ZN3bbb9GG01001003barEv
  ~GG0100100(); // tgen
  GG0100100(); // tgen
};
//SIG(1 _ZN3bbb9GG0100100E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0100100 ::foo(){vfunc_called(this, "_ZN3bbb9GG01001003fooEv");}
void  bbb::GG0100100 ::bar(){vfunc_called(this, "_ZN3bbb9GG01001003barEv");}
bbb::GG0100100 ::~GG0100100(){ note_dtor("_ZN3bbb9GG0100100E", this);} // tgen
bbb::GG0100100 ::GG0100100(){ note_ctor("_ZN3bbb9GG0100100E", this);} // tgen
}
static void Test__ZN3bbb9GG0100100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0100100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0100100E, buf);
    ::bbb::GG0100100 *dp, &lv = *(dp=new (buf) ::bbb::GG0100100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0100100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0100100E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0100100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0100100E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0100100E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0100100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG0100100E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0100100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0100100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0100100E);
    dp->::bbb::GG0100100::~GG0100100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0100100E(Test__ZN3bbb9GG0100100E, "_ZN3bbb9GG0100100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0100100C1Ev();
extern void _ZN3bbb9GG0100100D1Ev();
Name_Map name_map__ZN3bbb9GG0100100E[] = {
  NSPAIR(_ZN3bbb9GG0100100C1Ev),
  NSPAIR(_ZN3bbb9GG0100100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG0100100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0100100E[];
extern void _ZN3bbb9GG01001003fooEv();
extern void _ZN3bbb9GG01001003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01001003barEv,_ZThn8_N3bbb9GG01001003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01001003fooEv,_ZThn8_N3bbb9GG01001003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01001003fooEv,_ZThn20_N3bbb9GG01001003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01001003barEv,_ZThn20_N3bbb9GG01001003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01001003barEv,_ZThn28_N3bbb9GG01001003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01001003fooEv,_ZThn28_N3bbb9GG01001003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0100100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01001003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01001003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01001003barEv,_ZThn8_N3bbb9GG01001003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01001003fooEv,_ZThn8_N3bbb9GG01001003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01001003fooEv,_ZThn20_N3bbb9GG01001003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01001003barEv,_ZThn20_N3bbb9GG01001003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01001003barEv,_ZThn28_N3bbb9GG01001003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01001003fooEv,_ZThn28_N3bbb9GG01001003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0100100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0100100E[];
Class_Descriptor cd__ZN3bbb9GG0100100E = {  "_ZN3bbb9GG0100100E", // class name
  bases__ZN3bbb9GG0100100E, 6,
  &(vtc__ZN3bbb9GG0100100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0100100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0100100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0100101  : ::bbb::EE010 , ::bbb::FF010 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01001013barEv
  virtual void  foo(); // _ZN3bbb9GG01001013fooEv
  ~GG0100101(); // tgen
  GG0100101(); // tgen
};
//SIG(1 _ZN3bbb9GG0100101E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0100101 ::bar(){vfunc_called(this, "_ZN3bbb9GG01001013barEv");}
void  bbb::GG0100101 ::foo(){vfunc_called(this, "_ZN3bbb9GG01001013fooEv");}
bbb::GG0100101 ::~GG0100101(){ note_dtor("_ZN3bbb9GG0100101E", this);} // tgen
bbb::GG0100101 ::GG0100101(){ note_ctor("_ZN3bbb9GG0100101E", this);} // tgen
}
static void Test__ZN3bbb9GG0100101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0100101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0100101E, buf);
    ::bbb::GG0100101 *dp, &lv = *(dp=new (buf) ::bbb::GG0100101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0100101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0100101E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0100101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0100101E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0100101E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0100101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG0100101E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0100101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0100101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0100101E);
    dp->::bbb::GG0100101::~GG0100101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0100101E(Test__ZN3bbb9GG0100101E, "_ZN3bbb9GG0100101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0100101C1Ev();
extern void _ZN3bbb9GG0100101D1Ev();
Name_Map name_map__ZN3bbb9GG0100101E[] = {
  NSPAIR(_ZN3bbb9GG0100101C1Ev),
  NSPAIR(_ZN3bbb9GG0100101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG0100101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0100101E[];
extern void _ZN3bbb9GG01001013fooEv();
extern void _ZN3bbb9GG01001013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01001013barEv,_ZThn8_N3bbb9GG01001013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01001013fooEv,_ZThn8_N3bbb9GG01001013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01001013fooEv,_ZThn20_N3bbb9GG01001013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01001013barEv,_ZThn20_N3bbb9GG01001013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01001013barEv,_ZThn28_N3bbb9GG01001013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01001013fooEv,_ZThn28_N3bbb9GG01001013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0100101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01001013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01001013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01001013barEv,_ZThn8_N3bbb9GG01001013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01001013fooEv,_ZThn8_N3bbb9GG01001013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01001013fooEv,_ZThn20_N3bbb9GG01001013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01001013barEv,_ZThn20_N3bbb9GG01001013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01001013barEv,_ZThn28_N3bbb9GG01001013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01001013fooEv,_ZThn28_N3bbb9GG01001013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0100101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0100101E[];
Class_Descriptor cd__ZN3bbb9GG0100101E = {  "_ZN3bbb9GG0100101E", // class name
  bases__ZN3bbb9GG0100101E, 6,
  &(vtc__ZN3bbb9GG0100101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0100101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0100101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0100110  : ::bbb::EE010 , ::bbb::FF011 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01001103fooEv
  virtual void  bar(); // _ZN3bbb9GG01001103barEv
  ~GG0100110(); // tgen
  GG0100110(); // tgen
};
//SIG(1 _ZN3bbb9GG0100110E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0100110 ::foo(){vfunc_called(this, "_ZN3bbb9GG01001103fooEv");}
void  bbb::GG0100110 ::bar(){vfunc_called(this, "_ZN3bbb9GG01001103barEv");}
bbb::GG0100110 ::~GG0100110(){ note_dtor("_ZN3bbb9GG0100110E", this);} // tgen
bbb::GG0100110 ::GG0100110(){ note_ctor("_ZN3bbb9GG0100110E", this);} // tgen
}
static void Test__ZN3bbb9GG0100110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0100110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0100110E, buf);
    ::bbb::GG0100110 *dp, &lv = *(dp=new (buf) ::bbb::GG0100110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0100110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0100110E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0100110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0100110E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0100110E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0100110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG0100110E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0100110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0100110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0100110E);
    dp->::bbb::GG0100110::~GG0100110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0100110E(Test__ZN3bbb9GG0100110E, "_ZN3bbb9GG0100110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0100110C1Ev();
extern void _ZN3bbb9GG0100110D1Ev();
Name_Map name_map__ZN3bbb9GG0100110E[] = {
  NSPAIR(_ZN3bbb9GG0100110C1Ev),
  NSPAIR(_ZN3bbb9GG0100110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG0100110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0100110E[];
extern void _ZN3bbb9GG01001103fooEv();
extern void _ZN3bbb9GG01001103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01001103barEv,_ZThn8_N3bbb9GG01001103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01001103fooEv,_ZThn8_N3bbb9GG01001103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01001103fooEv,_ZThn20_N3bbb9GG01001103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01001103barEv,_ZThn20_N3bbb9GG01001103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01001103barEv,_ZThn28_N3bbb9GG01001103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01001103fooEv,_ZThn28_N3bbb9GG01001103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0100110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01001103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01001103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01001103barEv,_ZThn8_N3bbb9GG01001103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01001103fooEv,_ZThn8_N3bbb9GG01001103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01001103fooEv,_ZThn20_N3bbb9GG01001103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01001103barEv,_ZThn20_N3bbb9GG01001103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01001103barEv,_ZThn28_N3bbb9GG01001103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01001103fooEv,_ZThn28_N3bbb9GG01001103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0100110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0100110E[];
Class_Descriptor cd__ZN3bbb9GG0100110E = {  "_ZN3bbb9GG0100110E", // class name
  bases__ZN3bbb9GG0100110E, 6,
  &(vtc__ZN3bbb9GG0100110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0100110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0100110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0100111  : ::bbb::EE010 , ::bbb::FF011 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01001113barEv
  virtual void  foo(); // _ZN3bbb9GG01001113fooEv
  ~GG0100111(); // tgen
  GG0100111(); // tgen
};
//SIG(1 _ZN3bbb9GG0100111E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0100111 ::bar(){vfunc_called(this, "_ZN3bbb9GG01001113barEv");}
void  bbb::GG0100111 ::foo(){vfunc_called(this, "_ZN3bbb9GG01001113fooEv");}
bbb::GG0100111 ::~GG0100111(){ note_dtor("_ZN3bbb9GG0100111E", this);} // tgen
bbb::GG0100111 ::GG0100111(){ note_ctor("_ZN3bbb9GG0100111E", this);} // tgen
}
static void Test__ZN3bbb9GG0100111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0100111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0100111E, buf);
    ::bbb::GG0100111 *dp, &lv = *(dp=new (buf) ::bbb::GG0100111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0100111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0100111E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0100111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0100111E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0100111E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0100111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG0100111E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0100111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0100111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0100111E);
    dp->::bbb::GG0100111::~GG0100111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0100111E(Test__ZN3bbb9GG0100111E, "_ZN3bbb9GG0100111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0100111C1Ev();
extern void _ZN3bbb9GG0100111D1Ev();
Name_Map name_map__ZN3bbb9GG0100111E[] = {
  NSPAIR(_ZN3bbb9GG0100111C1Ev),
  NSPAIR(_ZN3bbb9GG0100111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG0100111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0100111E[];
extern void _ZN3bbb9GG01001113fooEv();
extern void _ZN3bbb9GG01001113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01001113barEv,_ZThn8_N3bbb9GG01001113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01001113fooEv,_ZThn8_N3bbb9GG01001113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01001113fooEv,_ZThn20_N3bbb9GG01001113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01001113barEv,_ZThn20_N3bbb9GG01001113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01001113barEv,_ZThn28_N3bbb9GG01001113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01001113fooEv,_ZThn28_N3bbb9GG01001113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0100111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01001113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01001113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01001113barEv,_ZThn8_N3bbb9GG01001113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01001113fooEv,_ZThn8_N3bbb9GG01001113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01001113fooEv,_ZThn20_N3bbb9GG01001113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01001113barEv,_ZThn20_N3bbb9GG01001113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0100111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01001113barEv,_ZThn28_N3bbb9GG01001113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01001113fooEv,_ZThn28_N3bbb9GG01001113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0100111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0100111E[];
Class_Descriptor cd__ZN3bbb9GG0100111E = {  "_ZN3bbb9GG0100111E", // class name
  bases__ZN3bbb9GG0100111E, 6,
  &(vtc__ZN3bbb9GG0100111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0100111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0100111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0101000  : ::bbb::EE010 , ::bbb::FF100 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01010003fooEv
  virtual void  bar(); // _ZN3bbb9GG01010003barEv
  ~GG0101000(); // tgen
  GG0101000(); // tgen
};
//SIG(1 _ZN3bbb9GG0101000E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0101000 ::foo(){vfunc_called(this, "_ZN3bbb9GG01010003fooEv");}
void  bbb::GG0101000 ::bar(){vfunc_called(this, "_ZN3bbb9GG01010003barEv");}
bbb::GG0101000 ::~GG0101000(){ note_dtor("_ZN3bbb9GG0101000E", this);} // tgen
bbb::GG0101000 ::GG0101000(){ note_ctor("_ZN3bbb9GG0101000E", this);} // tgen
}
static void Test__ZN3bbb9GG0101000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0101000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0101000E, buf);
    ::bbb::GG0101000 *dp, &lv = *(dp=new (buf) ::bbb::GG0101000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0101000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0101000E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0101000E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0101000E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0101000E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0101000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG0101000E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0101000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0101000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0101000E);
    dp->::bbb::GG0101000::~GG0101000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0101000E(Test__ZN3bbb9GG0101000E, "_ZN3bbb9GG0101000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0101000C1Ev();
extern void _ZN3bbb9GG0101000D1Ev();
Name_Map name_map__ZN3bbb9GG0101000E[] = {
  NSPAIR(_ZN3bbb9GG0101000C1Ev),
  NSPAIR(_ZN3bbb9GG0101000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG0101000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0101000E[];
extern void _ZN3bbb9GG01010003fooEv();
extern void _ZN3bbb9GG01010003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01010003barEv,_ZThn8_N3bbb9GG01010003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01010003fooEv,_ZThn8_N3bbb9GG01010003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01010003barEv,_ZThn20_N3bbb9GG01010003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01010003fooEv,_ZThn20_N3bbb9GG01010003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01010003fooEv,_ZThn28_N3bbb9GG01010003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01010003barEv,_ZThn28_N3bbb9GG01010003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0101000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01010003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01010003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01010003barEv,_ZThn8_N3bbb9GG01010003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01010003fooEv,_ZThn8_N3bbb9GG01010003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01010003barEv,_ZThn20_N3bbb9GG01010003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01010003fooEv,_ZThn20_N3bbb9GG01010003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01010003fooEv,_ZThn28_N3bbb9GG01010003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01010003barEv,_ZThn28_N3bbb9GG01010003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0101000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0101000E[];
Class_Descriptor cd__ZN3bbb9GG0101000E = {  "_ZN3bbb9GG0101000E", // class name
  bases__ZN3bbb9GG0101000E, 6,
  &(vtc__ZN3bbb9GG0101000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0101000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0101000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0101001  : ::bbb::EE010 , ::bbb::FF100 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01010013barEv
  virtual void  foo(); // _ZN3bbb9GG01010013fooEv
  ~GG0101001(); // tgen
  GG0101001(); // tgen
};
//SIG(1 _ZN3bbb9GG0101001E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0101001 ::bar(){vfunc_called(this, "_ZN3bbb9GG01010013barEv");}
void  bbb::GG0101001 ::foo(){vfunc_called(this, "_ZN3bbb9GG01010013fooEv");}
bbb::GG0101001 ::~GG0101001(){ note_dtor("_ZN3bbb9GG0101001E", this);} // tgen
bbb::GG0101001 ::GG0101001(){ note_ctor("_ZN3bbb9GG0101001E", this);} // tgen
}
static void Test__ZN3bbb9GG0101001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0101001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0101001E, buf);
    ::bbb::GG0101001 *dp, &lv = *(dp=new (buf) ::bbb::GG0101001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0101001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0101001E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0101001E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0101001E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0101001E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0101001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG0101001E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0101001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0101001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0101001E);
    dp->::bbb::GG0101001::~GG0101001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0101001E(Test__ZN3bbb9GG0101001E, "_ZN3bbb9GG0101001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0101001C1Ev();
extern void _ZN3bbb9GG0101001D1Ev();
Name_Map name_map__ZN3bbb9GG0101001E[] = {
  NSPAIR(_ZN3bbb9GG0101001C1Ev),
  NSPAIR(_ZN3bbb9GG0101001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG0101001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0101001E[];
extern void _ZN3bbb9GG01010013fooEv();
extern void _ZN3bbb9GG01010013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01010013barEv,_ZThn8_N3bbb9GG01010013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01010013fooEv,_ZThn8_N3bbb9GG01010013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01010013barEv,_ZThn20_N3bbb9GG01010013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01010013fooEv,_ZThn20_N3bbb9GG01010013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01010013fooEv,_ZThn28_N3bbb9GG01010013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01010013barEv,_ZThn28_N3bbb9GG01010013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0101001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01010013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01010013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01010013barEv,_ZThn8_N3bbb9GG01010013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01010013fooEv,_ZThn8_N3bbb9GG01010013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01010013barEv,_ZThn20_N3bbb9GG01010013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01010013fooEv,_ZThn20_N3bbb9GG01010013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01010013fooEv,_ZThn28_N3bbb9GG01010013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01010013barEv,_ZThn28_N3bbb9GG01010013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0101001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0101001E[];
Class_Descriptor cd__ZN3bbb9GG0101001E = {  "_ZN3bbb9GG0101001E", // class name
  bases__ZN3bbb9GG0101001E, 6,
  &(vtc__ZN3bbb9GG0101001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0101001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0101001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0101010  : ::bbb::EE010 , ::bbb::FF101 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01010103fooEv
  virtual void  bar(); // _ZN3bbb9GG01010103barEv
  ~GG0101010(); // tgen
  GG0101010(); // tgen
};
//SIG(1 _ZN3bbb9GG0101010E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0101010 ::foo(){vfunc_called(this, "_ZN3bbb9GG01010103fooEv");}
void  bbb::GG0101010 ::bar(){vfunc_called(this, "_ZN3bbb9GG01010103barEv");}
bbb::GG0101010 ::~GG0101010(){ note_dtor("_ZN3bbb9GG0101010E", this);} // tgen
bbb::GG0101010 ::GG0101010(){ note_ctor("_ZN3bbb9GG0101010E", this);} // tgen
}
static void Test__ZN3bbb9GG0101010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0101010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0101010E, buf);
    ::bbb::GG0101010 *dp, &lv = *(dp=new (buf) ::bbb::GG0101010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0101010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0101010E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0101010E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0101010E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0101010E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0101010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG0101010E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0101010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0101010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0101010E);
    dp->::bbb::GG0101010::~GG0101010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0101010E(Test__ZN3bbb9GG0101010E, "_ZN3bbb9GG0101010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0101010C1Ev();
extern void _ZN3bbb9GG0101010D1Ev();
Name_Map name_map__ZN3bbb9GG0101010E[] = {
  NSPAIR(_ZN3bbb9GG0101010C1Ev),
  NSPAIR(_ZN3bbb9GG0101010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG0101010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0101010E[];
extern void _ZN3bbb9GG01010103fooEv();
extern void _ZN3bbb9GG01010103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01010103barEv,_ZThn8_N3bbb9GG01010103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01010103fooEv,_ZThn8_N3bbb9GG01010103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01010103barEv,_ZThn20_N3bbb9GG01010103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01010103fooEv,_ZThn20_N3bbb9GG01010103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01010103fooEv,_ZThn28_N3bbb9GG01010103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01010103barEv,_ZThn28_N3bbb9GG01010103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0101010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01010103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01010103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01010103barEv,_ZThn8_N3bbb9GG01010103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01010103fooEv,_ZThn8_N3bbb9GG01010103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01010103barEv,_ZThn20_N3bbb9GG01010103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01010103fooEv,_ZThn20_N3bbb9GG01010103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01010103fooEv,_ZThn28_N3bbb9GG01010103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01010103barEv,_ZThn28_N3bbb9GG01010103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0101010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0101010E[];
Class_Descriptor cd__ZN3bbb9GG0101010E = {  "_ZN3bbb9GG0101010E", // class name
  bases__ZN3bbb9GG0101010E, 6,
  &(vtc__ZN3bbb9GG0101010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0101010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0101010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0101011  : ::bbb::EE010 , ::bbb::FF101 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01010113barEv
  virtual void  foo(); // _ZN3bbb9GG01010113fooEv
  ~GG0101011(); // tgen
  GG0101011(); // tgen
};
//SIG(1 _ZN3bbb9GG0101011E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0101011 ::bar(){vfunc_called(this, "_ZN3bbb9GG01010113barEv");}
void  bbb::GG0101011 ::foo(){vfunc_called(this, "_ZN3bbb9GG01010113fooEv");}
bbb::GG0101011 ::~GG0101011(){ note_dtor("_ZN3bbb9GG0101011E", this);} // tgen
bbb::GG0101011 ::GG0101011(){ note_ctor("_ZN3bbb9GG0101011E", this);} // tgen
}
static void Test__ZN3bbb9GG0101011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0101011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0101011E, buf);
    ::bbb::GG0101011 *dp, &lv = *(dp=new (buf) ::bbb::GG0101011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0101011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0101011E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0101011E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0101011E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0101011E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0101011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG0101011E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0101011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0101011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0101011E);
    dp->::bbb::GG0101011::~GG0101011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0101011E(Test__ZN3bbb9GG0101011E, "_ZN3bbb9GG0101011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0101011C1Ev();
extern void _ZN3bbb9GG0101011D1Ev();
Name_Map name_map__ZN3bbb9GG0101011E[] = {
  NSPAIR(_ZN3bbb9GG0101011C1Ev),
  NSPAIR(_ZN3bbb9GG0101011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG0101011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0101011E[];
extern void _ZN3bbb9GG01010113fooEv();
extern void _ZN3bbb9GG01010113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01010113barEv,_ZThn8_N3bbb9GG01010113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01010113fooEv,_ZThn8_N3bbb9GG01010113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01010113barEv,_ZThn20_N3bbb9GG01010113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01010113fooEv,_ZThn20_N3bbb9GG01010113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01010113fooEv,_ZThn28_N3bbb9GG01010113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01010113barEv,_ZThn28_N3bbb9GG01010113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0101011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01010113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01010113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01010113barEv,_ZThn8_N3bbb9GG01010113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01010113fooEv,_ZThn8_N3bbb9GG01010113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01010113barEv,_ZThn20_N3bbb9GG01010113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01010113fooEv,_ZThn20_N3bbb9GG01010113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01010113fooEv,_ZThn28_N3bbb9GG01010113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01010113barEv,_ZThn28_N3bbb9GG01010113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0101011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0101011E[];
Class_Descriptor cd__ZN3bbb9GG0101011E = {  "_ZN3bbb9GG0101011E", // class name
  bases__ZN3bbb9GG0101011E, 6,
  &(vtc__ZN3bbb9GG0101011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0101011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0101011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0101100  : ::bbb::EE010 , ::bbb::FF110 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01011003fooEv
  virtual void  bar(); // _ZN3bbb9GG01011003barEv
  ~GG0101100(); // tgen
  GG0101100(); // tgen
};
//SIG(1 _ZN3bbb9GG0101100E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0101100 ::foo(){vfunc_called(this, "_ZN3bbb9GG01011003fooEv");}
void  bbb::GG0101100 ::bar(){vfunc_called(this, "_ZN3bbb9GG01011003barEv");}
bbb::GG0101100 ::~GG0101100(){ note_dtor("_ZN3bbb9GG0101100E", this);} // tgen
bbb::GG0101100 ::GG0101100(){ note_ctor("_ZN3bbb9GG0101100E", this);} // tgen
}
static void Test__ZN3bbb9GG0101100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0101100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0101100E, buf);
    ::bbb::GG0101100 *dp, &lv = *(dp=new (buf) ::bbb::GG0101100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0101100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0101100E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0101100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0101100E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0101100E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0101100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG0101100E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0101100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0101100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0101100E);
    dp->::bbb::GG0101100::~GG0101100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0101100E(Test__ZN3bbb9GG0101100E, "_ZN3bbb9GG0101100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0101100C1Ev();
extern void _ZN3bbb9GG0101100D1Ev();
Name_Map name_map__ZN3bbb9GG0101100E[] = {
  NSPAIR(_ZN3bbb9GG0101100C1Ev),
  NSPAIR(_ZN3bbb9GG0101100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG0101100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0101100E[];
extern void _ZN3bbb9GG01011003fooEv();
extern void _ZN3bbb9GG01011003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01011003barEv,_ZThn8_N3bbb9GG01011003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01011003fooEv,_ZThn8_N3bbb9GG01011003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01011003barEv,_ZThn20_N3bbb9GG01011003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01011003fooEv,_ZThn20_N3bbb9GG01011003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01011003barEv,_ZThn28_N3bbb9GG01011003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01011003fooEv,_ZThn28_N3bbb9GG01011003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0101100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01011003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01011003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01011003barEv,_ZThn8_N3bbb9GG01011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01011003fooEv,_ZThn8_N3bbb9GG01011003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01011003barEv,_ZThn20_N3bbb9GG01011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01011003fooEv,_ZThn20_N3bbb9GG01011003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01011003barEv,_ZThn28_N3bbb9GG01011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01011003fooEv,_ZThn28_N3bbb9GG01011003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0101100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0101100E[];
Class_Descriptor cd__ZN3bbb9GG0101100E = {  "_ZN3bbb9GG0101100E", // class name
  bases__ZN3bbb9GG0101100E, 6,
  &(vtc__ZN3bbb9GG0101100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0101100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0101100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0101101  : ::bbb::EE010 , ::bbb::FF110 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01011013barEv
  virtual void  foo(); // _ZN3bbb9GG01011013fooEv
  ~GG0101101(); // tgen
  GG0101101(); // tgen
};
//SIG(1 _ZN3bbb9GG0101101E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0101101 ::bar(){vfunc_called(this, "_ZN3bbb9GG01011013barEv");}
void  bbb::GG0101101 ::foo(){vfunc_called(this, "_ZN3bbb9GG01011013fooEv");}
bbb::GG0101101 ::~GG0101101(){ note_dtor("_ZN3bbb9GG0101101E", this);} // tgen
bbb::GG0101101 ::GG0101101(){ note_ctor("_ZN3bbb9GG0101101E", this);} // tgen
}
static void Test__ZN3bbb9GG0101101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0101101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0101101E, buf);
    ::bbb::GG0101101 *dp, &lv = *(dp=new (buf) ::bbb::GG0101101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0101101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0101101E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0101101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0101101E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0101101E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0101101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG0101101E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0101101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0101101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0101101E);
    dp->::bbb::GG0101101::~GG0101101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0101101E(Test__ZN3bbb9GG0101101E, "_ZN3bbb9GG0101101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0101101C1Ev();
extern void _ZN3bbb9GG0101101D1Ev();
Name_Map name_map__ZN3bbb9GG0101101E[] = {
  NSPAIR(_ZN3bbb9GG0101101C1Ev),
  NSPAIR(_ZN3bbb9GG0101101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG0101101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0101101E[];
extern void _ZN3bbb9GG01011013fooEv();
extern void _ZN3bbb9GG01011013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01011013barEv,_ZThn8_N3bbb9GG01011013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01011013fooEv,_ZThn8_N3bbb9GG01011013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01011013barEv,_ZThn20_N3bbb9GG01011013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01011013fooEv,_ZThn20_N3bbb9GG01011013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01011013barEv,_ZThn28_N3bbb9GG01011013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01011013fooEv,_ZThn28_N3bbb9GG01011013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0101101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01011013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01011013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01011013barEv,_ZThn8_N3bbb9GG01011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01011013fooEv,_ZThn8_N3bbb9GG01011013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01011013barEv,_ZThn20_N3bbb9GG01011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01011013fooEv,_ZThn20_N3bbb9GG01011013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01011013barEv,_ZThn28_N3bbb9GG01011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01011013fooEv,_ZThn28_N3bbb9GG01011013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0101101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0101101E[];
Class_Descriptor cd__ZN3bbb9GG0101101E = {  "_ZN3bbb9GG0101101E", // class name
  bases__ZN3bbb9GG0101101E, 6,
  &(vtc__ZN3bbb9GG0101101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0101101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0101101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0101110  : ::bbb::EE010 , ::bbb::FF111 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01011103fooEv
  virtual void  bar(); // _ZN3bbb9GG01011103barEv
  ~GG0101110(); // tgen
  GG0101110(); // tgen
};
//SIG(1 _ZN3bbb9GG0101110E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0101110 ::foo(){vfunc_called(this, "_ZN3bbb9GG01011103fooEv");}
void  bbb::GG0101110 ::bar(){vfunc_called(this, "_ZN3bbb9GG01011103barEv");}
bbb::GG0101110 ::~GG0101110(){ note_dtor("_ZN3bbb9GG0101110E", this);} // tgen
bbb::GG0101110 ::GG0101110(){ note_ctor("_ZN3bbb9GG0101110E", this);} // tgen
}
static void Test__ZN3bbb9GG0101110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0101110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0101110E, buf);
    ::bbb::GG0101110 *dp, &lv = *(dp=new (buf) ::bbb::GG0101110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0101110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0101110E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0101110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0101110E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0101110E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0101110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG0101110E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0101110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0101110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0101110E);
    dp->::bbb::GG0101110::~GG0101110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0101110E(Test__ZN3bbb9GG0101110E, "_ZN3bbb9GG0101110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0101110C1Ev();
extern void _ZN3bbb9GG0101110D1Ev();
Name_Map name_map__ZN3bbb9GG0101110E[] = {
  NSPAIR(_ZN3bbb9GG0101110C1Ev),
  NSPAIR(_ZN3bbb9GG0101110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG0101110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0101110E[];
extern void _ZN3bbb9GG01011103fooEv();
extern void _ZN3bbb9GG01011103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01011103barEv,_ZThn8_N3bbb9GG01011103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01011103fooEv,_ZThn8_N3bbb9GG01011103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01011103barEv,_ZThn20_N3bbb9GG01011103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01011103fooEv,_ZThn20_N3bbb9GG01011103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01011103barEv,_ZThn28_N3bbb9GG01011103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01011103fooEv,_ZThn28_N3bbb9GG01011103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0101110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01011103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01011103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01011103barEv,_ZThn8_N3bbb9GG01011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01011103fooEv,_ZThn8_N3bbb9GG01011103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01011103barEv,_ZThn20_N3bbb9GG01011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01011103fooEv,_ZThn20_N3bbb9GG01011103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01011103barEv,_ZThn28_N3bbb9GG01011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01011103fooEv,_ZThn28_N3bbb9GG01011103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0101110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0101110E[];
Class_Descriptor cd__ZN3bbb9GG0101110E = {  "_ZN3bbb9GG0101110E", // class name
  bases__ZN3bbb9GG0101110E, 6,
  &(vtc__ZN3bbb9GG0101110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0101110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0101110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0101111  : ::bbb::EE010 , ::bbb::FF111 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01011113barEv
  virtual void  foo(); // _ZN3bbb9GG01011113fooEv
  ~GG0101111(); // tgen
  GG0101111(); // tgen
};
//SIG(1 _ZN3bbb9GG0101111E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0101111 ::bar(){vfunc_called(this, "_ZN3bbb9GG01011113barEv");}
void  bbb::GG0101111 ::foo(){vfunc_called(this, "_ZN3bbb9GG01011113fooEv");}
bbb::GG0101111 ::~GG0101111(){ note_dtor("_ZN3bbb9GG0101111E", this);} // tgen
bbb::GG0101111 ::GG0101111(){ note_ctor("_ZN3bbb9GG0101111E", this);} // tgen
}
static void Test__ZN3bbb9GG0101111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0101111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0101111E, buf);
    ::bbb::GG0101111 *dp, &lv = *(dp=new (buf) ::bbb::GG0101111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0101111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0101111E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE010*), 0, "_ZN3bbb9GG0101111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE010*), ABISELECT(16,8), "_ZN3bbb9GG0101111E");
    check_base_class_offset(lv, (::bbb::EE010*), 0, "_ZN3bbb9GG0101111E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0101111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG0101111E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0101111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0101111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0101111E);
    dp->::bbb::GG0101111::~GG0101111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0101111E(Test__ZN3bbb9GG0101111E, "_ZN3bbb9GG0101111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0101111C1Ev();
extern void _ZN3bbb9GG0101111D1Ev();
Name_Map name_map__ZN3bbb9GG0101111E[] = {
  NSPAIR(_ZN3bbb9GG0101111C1Ev),
  NSPAIR(_ZN3bbb9GG0101111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE010E;
extern VTBL_ENTRY _ZTIN3bbb5EE010E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE010E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG0101111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE010E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0101111E[];
extern void _ZN3bbb9GG01011113fooEv();
extern void _ZN3bbb9GG01011113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01011113barEv,_ZThn8_N3bbb9GG01011113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01011113fooEv,_ZThn8_N3bbb9GG01011113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01011113barEv,_ZThn20_N3bbb9GG01011113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01011113fooEv,_ZThn20_N3bbb9GG01011113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01011113barEv,_ZThn28_N3bbb9GG01011113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01011113fooEv,_ZThn28_N3bbb9GG01011113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0101111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01011113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01011113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01011113barEv,_ZThn8_N3bbb9GG01011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01011113fooEv,_ZThn8_N3bbb9GG01011113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01011113barEv,_ZThn20_N3bbb9GG01011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01011113fooEv,_ZThn20_N3bbb9GG01011113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0101111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01011113barEv,_ZThn28_N3bbb9GG01011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01011113fooEv,_ZThn28_N3bbb9GG01011113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0101111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0101111E[];
Class_Descriptor cd__ZN3bbb9GG0101111E = {  "_ZN3bbb9GG0101111E", // class name
  bases__ZN3bbb9GG0101111E, 6,
  &(vtc__ZN3bbb9GG0101111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0101111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0101111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0110000  : ::bbb::EE011 , ::bbb::FF000 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01100003fooEv
  virtual void  bar(); // _ZN3bbb9GG01100003barEv
  ~GG0110000(); // tgen
  GG0110000(); // tgen
};
//SIG(1 _ZN3bbb9GG0110000E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0110000 ::foo(){vfunc_called(this, "_ZN3bbb9GG01100003fooEv");}
void  bbb::GG0110000 ::bar(){vfunc_called(this, "_ZN3bbb9GG01100003barEv");}
bbb::GG0110000 ::~GG0110000(){ note_dtor("_ZN3bbb9GG0110000E", this);} // tgen
bbb::GG0110000 ::GG0110000(){ note_ctor("_ZN3bbb9GG0110000E", this);} // tgen
}
static void Test__ZN3bbb9GG0110000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0110000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0110000E, buf);
    ::bbb::GG0110000 *dp, &lv = *(dp=new (buf) ::bbb::GG0110000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0110000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0110000E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0110000E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0110000E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0110000E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0110000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG0110000E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0110000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0110000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0110000E);
    dp->::bbb::GG0110000::~GG0110000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0110000E(Test__ZN3bbb9GG0110000E, "_ZN3bbb9GG0110000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0110000C1Ev();
extern void _ZN3bbb9GG0110000D1Ev();
Name_Map name_map__ZN3bbb9GG0110000E[] = {
  NSPAIR(_ZN3bbb9GG0110000C1Ev),
  NSPAIR(_ZN3bbb9GG0110000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG0110000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0110000E[];
extern void _ZN3bbb9GG01100003fooEv();
extern void _ZN3bbb9GG01100003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01100003barEv,_ZThn8_N3bbb9GG01100003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01100003fooEv,_ZThn8_N3bbb9GG01100003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01100003fooEv,_ZThn20_N3bbb9GG01100003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01100003barEv,_ZThn20_N3bbb9GG01100003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01100003fooEv,_ZThn28_N3bbb9GG01100003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01100003barEv,_ZThn28_N3bbb9GG01100003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0110000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01100003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01100003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01100003barEv,_ZThn8_N3bbb9GG01100003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01100003fooEv,_ZThn8_N3bbb9GG01100003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01100003fooEv,_ZThn20_N3bbb9GG01100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01100003barEv,_ZThn20_N3bbb9GG01100003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01100003fooEv,_ZThn28_N3bbb9GG01100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01100003barEv,_ZThn28_N3bbb9GG01100003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0110000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0110000E[];
Class_Descriptor cd__ZN3bbb9GG0110000E = {  "_ZN3bbb9GG0110000E", // class name
  bases__ZN3bbb9GG0110000E, 6,
  &(vtc__ZN3bbb9GG0110000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0110000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0110000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0110001  : ::bbb::EE011 , ::bbb::FF000 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01100013barEv
  virtual void  foo(); // _ZN3bbb9GG01100013fooEv
  ~GG0110001(); // tgen
  GG0110001(); // tgen
};
//SIG(1 _ZN3bbb9GG0110001E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0110001 ::bar(){vfunc_called(this, "_ZN3bbb9GG01100013barEv");}
void  bbb::GG0110001 ::foo(){vfunc_called(this, "_ZN3bbb9GG01100013fooEv");}
bbb::GG0110001 ::~GG0110001(){ note_dtor("_ZN3bbb9GG0110001E", this);} // tgen
bbb::GG0110001 ::GG0110001(){ note_ctor("_ZN3bbb9GG0110001E", this);} // tgen
}
static void Test__ZN3bbb9GG0110001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0110001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0110001E, buf);
    ::bbb::GG0110001 *dp, &lv = *(dp=new (buf) ::bbb::GG0110001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0110001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0110001E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0110001E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0110001E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0110001E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0110001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG0110001E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG0110001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0110001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0110001E);
    dp->::bbb::GG0110001::~GG0110001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0110001E(Test__ZN3bbb9GG0110001E, "_ZN3bbb9GG0110001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0110001C1Ev();
extern void _ZN3bbb9GG0110001D1Ev();
Name_Map name_map__ZN3bbb9GG0110001E[] = {
  NSPAIR(_ZN3bbb9GG0110001C1Ev),
  NSPAIR(_ZN3bbb9GG0110001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG0110001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0110001E[];
extern void _ZN3bbb9GG01100013fooEv();
extern void _ZN3bbb9GG01100013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01100013barEv,_ZThn8_N3bbb9GG01100013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01100013fooEv,_ZThn8_N3bbb9GG01100013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01100013fooEv,_ZThn20_N3bbb9GG01100013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01100013barEv,_ZThn20_N3bbb9GG01100013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01100013fooEv,_ZThn28_N3bbb9GG01100013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01100013barEv,_ZThn28_N3bbb9GG01100013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0110001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01100013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01100013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01100013barEv,_ZThn8_N3bbb9GG01100013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01100013fooEv,_ZThn8_N3bbb9GG01100013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01100013fooEv,_ZThn20_N3bbb9GG01100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01100013barEv,_ZThn20_N3bbb9GG01100013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01100013fooEv,_ZThn28_N3bbb9GG01100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01100013barEv,_ZThn28_N3bbb9GG01100013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0110001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0110001E[];
Class_Descriptor cd__ZN3bbb9GG0110001E = {  "_ZN3bbb9GG0110001E", // class name
  bases__ZN3bbb9GG0110001E, 6,
  &(vtc__ZN3bbb9GG0110001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0110001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0110001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0110010  : ::bbb::EE011 , ::bbb::FF001 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01100103fooEv
  virtual void  bar(); // _ZN3bbb9GG01100103barEv
  ~GG0110010(); // tgen
  GG0110010(); // tgen
};
//SIG(1 _ZN3bbb9GG0110010E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0110010 ::foo(){vfunc_called(this, "_ZN3bbb9GG01100103fooEv");}
void  bbb::GG0110010 ::bar(){vfunc_called(this, "_ZN3bbb9GG01100103barEv");}
bbb::GG0110010 ::~GG0110010(){ note_dtor("_ZN3bbb9GG0110010E", this);} // tgen
bbb::GG0110010 ::GG0110010(){ note_ctor("_ZN3bbb9GG0110010E", this);} // tgen
}
static void Test__ZN3bbb9GG0110010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0110010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0110010E, buf);
    ::bbb::GG0110010 *dp, &lv = *(dp=new (buf) ::bbb::GG0110010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0110010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0110010E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0110010E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0110010E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0110010E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0110010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG0110010E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0110010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0110010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0110010E);
    dp->::bbb::GG0110010::~GG0110010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0110010E(Test__ZN3bbb9GG0110010E, "_ZN3bbb9GG0110010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0110010C1Ev();
extern void _ZN3bbb9GG0110010D1Ev();
Name_Map name_map__ZN3bbb9GG0110010E[] = {
  NSPAIR(_ZN3bbb9GG0110010C1Ev),
  NSPAIR(_ZN3bbb9GG0110010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG0110010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0110010E[];
extern void _ZN3bbb9GG01100103fooEv();
extern void _ZN3bbb9GG01100103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01100103barEv,_ZThn8_N3bbb9GG01100103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01100103fooEv,_ZThn8_N3bbb9GG01100103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01100103fooEv,_ZThn20_N3bbb9GG01100103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01100103barEv,_ZThn20_N3bbb9GG01100103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01100103fooEv,_ZThn28_N3bbb9GG01100103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01100103barEv,_ZThn28_N3bbb9GG01100103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0110010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01100103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01100103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01100103barEv,_ZThn8_N3bbb9GG01100103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01100103fooEv,_ZThn8_N3bbb9GG01100103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01100103fooEv,_ZThn20_N3bbb9GG01100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01100103barEv,_ZThn20_N3bbb9GG01100103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01100103fooEv,_ZThn28_N3bbb9GG01100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01100103barEv,_ZThn28_N3bbb9GG01100103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0110010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0110010E[];
Class_Descriptor cd__ZN3bbb9GG0110010E = {  "_ZN3bbb9GG0110010E", // class name
  bases__ZN3bbb9GG0110010E, 6,
  &(vtc__ZN3bbb9GG0110010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0110010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0110010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0110011  : ::bbb::EE011 , ::bbb::FF001 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01100113barEv
  virtual void  foo(); // _ZN3bbb9GG01100113fooEv
  ~GG0110011(); // tgen
  GG0110011(); // tgen
};
//SIG(1 _ZN3bbb9GG0110011E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0110011 ::bar(){vfunc_called(this, "_ZN3bbb9GG01100113barEv");}
void  bbb::GG0110011 ::foo(){vfunc_called(this, "_ZN3bbb9GG01100113fooEv");}
bbb::GG0110011 ::~GG0110011(){ note_dtor("_ZN3bbb9GG0110011E", this);} // tgen
bbb::GG0110011 ::GG0110011(){ note_ctor("_ZN3bbb9GG0110011E", this);} // tgen
}
static void Test__ZN3bbb9GG0110011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0110011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0110011E, buf);
    ::bbb::GG0110011 *dp, &lv = *(dp=new (buf) ::bbb::GG0110011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0110011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0110011E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0110011E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0110011E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0110011E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0110011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG0110011E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG0110011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0110011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0110011E);
    dp->::bbb::GG0110011::~GG0110011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0110011E(Test__ZN3bbb9GG0110011E, "_ZN3bbb9GG0110011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0110011C1Ev();
extern void _ZN3bbb9GG0110011D1Ev();
Name_Map name_map__ZN3bbb9GG0110011E[] = {
  NSPAIR(_ZN3bbb9GG0110011C1Ev),
  NSPAIR(_ZN3bbb9GG0110011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG0110011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0110011E[];
extern void _ZN3bbb9GG01100113fooEv();
extern void _ZN3bbb9GG01100113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01100113barEv,_ZThn8_N3bbb9GG01100113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01100113fooEv,_ZThn8_N3bbb9GG01100113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01100113fooEv,_ZThn20_N3bbb9GG01100113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01100113barEv,_ZThn20_N3bbb9GG01100113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01100113fooEv,_ZThn28_N3bbb9GG01100113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01100113barEv,_ZThn28_N3bbb9GG01100113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0110011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01100113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01100113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01100113barEv,_ZThn8_N3bbb9GG01100113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01100113fooEv,_ZThn8_N3bbb9GG01100113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01100113fooEv,_ZThn20_N3bbb9GG01100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01100113barEv,_ZThn20_N3bbb9GG01100113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01100113fooEv,_ZThn28_N3bbb9GG01100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01100113barEv,_ZThn28_N3bbb9GG01100113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0110011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0110011E[];
Class_Descriptor cd__ZN3bbb9GG0110011E = {  "_ZN3bbb9GG0110011E", // class name
  bases__ZN3bbb9GG0110011E, 6,
  &(vtc__ZN3bbb9GG0110011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0110011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0110011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0110100  : ::bbb::EE011 , ::bbb::FF010 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01101003fooEv
  virtual void  bar(); // _ZN3bbb9GG01101003barEv
  ~GG0110100(); // tgen
  GG0110100(); // tgen
};
//SIG(1 _ZN3bbb9GG0110100E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0110100 ::foo(){vfunc_called(this, "_ZN3bbb9GG01101003fooEv");}
void  bbb::GG0110100 ::bar(){vfunc_called(this, "_ZN3bbb9GG01101003barEv");}
bbb::GG0110100 ::~GG0110100(){ note_dtor("_ZN3bbb9GG0110100E", this);} // tgen
bbb::GG0110100 ::GG0110100(){ note_ctor("_ZN3bbb9GG0110100E", this);} // tgen
}
static void Test__ZN3bbb9GG0110100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0110100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0110100E, buf);
    ::bbb::GG0110100 *dp, &lv = *(dp=new (buf) ::bbb::GG0110100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0110100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0110100E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0110100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0110100E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0110100E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0110100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG0110100E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0110100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0110100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0110100E);
    dp->::bbb::GG0110100::~GG0110100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0110100E(Test__ZN3bbb9GG0110100E, "_ZN3bbb9GG0110100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0110100C1Ev();
extern void _ZN3bbb9GG0110100D1Ev();
Name_Map name_map__ZN3bbb9GG0110100E[] = {
  NSPAIR(_ZN3bbb9GG0110100C1Ev),
  NSPAIR(_ZN3bbb9GG0110100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG0110100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0110100E[];
extern void _ZN3bbb9GG01101003fooEv();
extern void _ZN3bbb9GG01101003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01101003barEv,_ZThn8_N3bbb9GG01101003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01101003fooEv,_ZThn8_N3bbb9GG01101003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01101003fooEv,_ZThn20_N3bbb9GG01101003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01101003barEv,_ZThn20_N3bbb9GG01101003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01101003barEv,_ZThn28_N3bbb9GG01101003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01101003fooEv,_ZThn28_N3bbb9GG01101003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0110100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01101003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01101003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01101003barEv,_ZThn8_N3bbb9GG01101003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01101003fooEv,_ZThn8_N3bbb9GG01101003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01101003fooEv,_ZThn20_N3bbb9GG01101003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01101003barEv,_ZThn20_N3bbb9GG01101003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01101003barEv,_ZThn28_N3bbb9GG01101003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01101003fooEv,_ZThn28_N3bbb9GG01101003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0110100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0110100E[];
Class_Descriptor cd__ZN3bbb9GG0110100E = {  "_ZN3bbb9GG0110100E", // class name
  bases__ZN3bbb9GG0110100E, 6,
  &(vtc__ZN3bbb9GG0110100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0110100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0110100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0110101  : ::bbb::EE011 , ::bbb::FF010 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01101013barEv
  virtual void  foo(); // _ZN3bbb9GG01101013fooEv
  ~GG0110101(); // tgen
  GG0110101(); // tgen
};
//SIG(1 _ZN3bbb9GG0110101E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0110101 ::bar(){vfunc_called(this, "_ZN3bbb9GG01101013barEv");}
void  bbb::GG0110101 ::foo(){vfunc_called(this, "_ZN3bbb9GG01101013fooEv");}
bbb::GG0110101 ::~GG0110101(){ note_dtor("_ZN3bbb9GG0110101E", this);} // tgen
bbb::GG0110101 ::GG0110101(){ note_ctor("_ZN3bbb9GG0110101E", this);} // tgen
}
static void Test__ZN3bbb9GG0110101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0110101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0110101E, buf);
    ::bbb::GG0110101 *dp, &lv = *(dp=new (buf) ::bbb::GG0110101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0110101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0110101E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0110101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0110101E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0110101E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0110101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG0110101E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG0110101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0110101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0110101E);
    dp->::bbb::GG0110101::~GG0110101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0110101E(Test__ZN3bbb9GG0110101E, "_ZN3bbb9GG0110101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0110101C1Ev();
extern void _ZN3bbb9GG0110101D1Ev();
Name_Map name_map__ZN3bbb9GG0110101E[] = {
  NSPAIR(_ZN3bbb9GG0110101C1Ev),
  NSPAIR(_ZN3bbb9GG0110101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG0110101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0110101E[];
extern void _ZN3bbb9GG01101013fooEv();
extern void _ZN3bbb9GG01101013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01101013barEv,_ZThn8_N3bbb9GG01101013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01101013fooEv,_ZThn8_N3bbb9GG01101013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01101013fooEv,_ZThn20_N3bbb9GG01101013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01101013barEv,_ZThn20_N3bbb9GG01101013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01101013barEv,_ZThn28_N3bbb9GG01101013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01101013fooEv,_ZThn28_N3bbb9GG01101013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0110101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01101013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01101013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01101013barEv,_ZThn8_N3bbb9GG01101013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01101013fooEv,_ZThn8_N3bbb9GG01101013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01101013fooEv,_ZThn20_N3bbb9GG01101013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01101013barEv,_ZThn20_N3bbb9GG01101013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01101013barEv,_ZThn28_N3bbb9GG01101013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01101013fooEv,_ZThn28_N3bbb9GG01101013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0110101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0110101E[];
Class_Descriptor cd__ZN3bbb9GG0110101E = {  "_ZN3bbb9GG0110101E", // class name
  bases__ZN3bbb9GG0110101E, 6,
  &(vtc__ZN3bbb9GG0110101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0110101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0110101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0110110  : ::bbb::EE011 , ::bbb::FF011 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01101103fooEv
  virtual void  bar(); // _ZN3bbb9GG01101103barEv
  ~GG0110110(); // tgen
  GG0110110(); // tgen
};
//SIG(1 _ZN3bbb9GG0110110E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0110110 ::foo(){vfunc_called(this, "_ZN3bbb9GG01101103fooEv");}
void  bbb::GG0110110 ::bar(){vfunc_called(this, "_ZN3bbb9GG01101103barEv");}
bbb::GG0110110 ::~GG0110110(){ note_dtor("_ZN3bbb9GG0110110E", this);} // tgen
bbb::GG0110110 ::GG0110110(){ note_ctor("_ZN3bbb9GG0110110E", this);} // tgen
}
static void Test__ZN3bbb9GG0110110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0110110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0110110E, buf);
    ::bbb::GG0110110 *dp, &lv = *(dp=new (buf) ::bbb::GG0110110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0110110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0110110E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0110110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0110110E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0110110E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0110110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG0110110E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0110110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0110110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0110110E);
    dp->::bbb::GG0110110::~GG0110110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0110110E(Test__ZN3bbb9GG0110110E, "_ZN3bbb9GG0110110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0110110C1Ev();
extern void _ZN3bbb9GG0110110D1Ev();
Name_Map name_map__ZN3bbb9GG0110110E[] = {
  NSPAIR(_ZN3bbb9GG0110110C1Ev),
  NSPAIR(_ZN3bbb9GG0110110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG0110110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0110110E[];
extern void _ZN3bbb9GG01101103fooEv();
extern void _ZN3bbb9GG01101103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01101103barEv,_ZThn8_N3bbb9GG01101103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01101103fooEv,_ZThn8_N3bbb9GG01101103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01101103fooEv,_ZThn20_N3bbb9GG01101103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01101103barEv,_ZThn20_N3bbb9GG01101103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01101103barEv,_ZThn28_N3bbb9GG01101103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01101103fooEv,_ZThn28_N3bbb9GG01101103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0110110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01101103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01101103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01101103barEv,_ZThn8_N3bbb9GG01101103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01101103fooEv,_ZThn8_N3bbb9GG01101103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01101103fooEv,_ZThn20_N3bbb9GG01101103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01101103barEv,_ZThn20_N3bbb9GG01101103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01101103barEv,_ZThn28_N3bbb9GG01101103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01101103fooEv,_ZThn28_N3bbb9GG01101103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0110110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0110110E[];
Class_Descriptor cd__ZN3bbb9GG0110110E = {  "_ZN3bbb9GG0110110E", // class name
  bases__ZN3bbb9GG0110110E, 6,
  &(vtc__ZN3bbb9GG0110110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0110110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0110110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0110111  : ::bbb::EE011 , ::bbb::FF011 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01101113barEv
  virtual void  foo(); // _ZN3bbb9GG01101113fooEv
  ~GG0110111(); // tgen
  GG0110111(); // tgen
};
//SIG(1 _ZN3bbb9GG0110111E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0110111 ::bar(){vfunc_called(this, "_ZN3bbb9GG01101113barEv");}
void  bbb::GG0110111 ::foo(){vfunc_called(this, "_ZN3bbb9GG01101113fooEv");}
bbb::GG0110111 ::~GG0110111(){ note_dtor("_ZN3bbb9GG0110111E", this);} // tgen
bbb::GG0110111 ::GG0110111(){ note_ctor("_ZN3bbb9GG0110111E", this);} // tgen
}
static void Test__ZN3bbb9GG0110111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0110111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0110111E, buf);
    ::bbb::GG0110111 *dp, &lv = *(dp=new (buf) ::bbb::GG0110111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0110111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0110111E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0110111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0110111E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0110111E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0110111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG0110111E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG0110111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0110111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0110111E);
    dp->::bbb::GG0110111::~GG0110111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0110111E(Test__ZN3bbb9GG0110111E, "_ZN3bbb9GG0110111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0110111C1Ev();
extern void _ZN3bbb9GG0110111D1Ev();
Name_Map name_map__ZN3bbb9GG0110111E[] = {
  NSPAIR(_ZN3bbb9GG0110111C1Ev),
  NSPAIR(_ZN3bbb9GG0110111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG0110111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0110111E[];
extern void _ZN3bbb9GG01101113fooEv();
extern void _ZN3bbb9GG01101113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01101113barEv,_ZThn8_N3bbb9GG01101113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01101113fooEv,_ZThn8_N3bbb9GG01101113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01101113fooEv,_ZThn20_N3bbb9GG01101113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01101113barEv,_ZThn20_N3bbb9GG01101113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01101113barEv,_ZThn28_N3bbb9GG01101113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01101113fooEv,_ZThn28_N3bbb9GG01101113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0110111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01101113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01101113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01101113barEv,_ZThn8_N3bbb9GG01101113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01101113fooEv,_ZThn8_N3bbb9GG01101113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01101113fooEv,_ZThn20_N3bbb9GG01101113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01101113barEv,_ZThn20_N3bbb9GG01101113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0110111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01101113barEv,_ZThn28_N3bbb9GG01101113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01101113fooEv,_ZThn28_N3bbb9GG01101113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0110111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0110111E[];
Class_Descriptor cd__ZN3bbb9GG0110111E = {  "_ZN3bbb9GG0110111E", // class name
  bases__ZN3bbb9GG0110111E, 6,
  &(vtc__ZN3bbb9GG0110111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0110111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0110111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0111000  : ::bbb::EE011 , ::bbb::FF100 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01110003fooEv
  virtual void  bar(); // _ZN3bbb9GG01110003barEv
  ~GG0111000(); // tgen
  GG0111000(); // tgen
};
//SIG(1 _ZN3bbb9GG0111000E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0111000 ::foo(){vfunc_called(this, "_ZN3bbb9GG01110003fooEv");}
void  bbb::GG0111000 ::bar(){vfunc_called(this, "_ZN3bbb9GG01110003barEv");}
bbb::GG0111000 ::~GG0111000(){ note_dtor("_ZN3bbb9GG0111000E", this);} // tgen
bbb::GG0111000 ::GG0111000(){ note_ctor("_ZN3bbb9GG0111000E", this);} // tgen
}
static void Test__ZN3bbb9GG0111000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0111000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0111000E, buf);
    ::bbb::GG0111000 *dp, &lv = *(dp=new (buf) ::bbb::GG0111000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0111000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0111000E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0111000E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0111000E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0111000E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0111000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG0111000E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0111000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0111000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0111000E);
    dp->::bbb::GG0111000::~GG0111000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0111000E(Test__ZN3bbb9GG0111000E, "_ZN3bbb9GG0111000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0111000C1Ev();
extern void _ZN3bbb9GG0111000D1Ev();
Name_Map name_map__ZN3bbb9GG0111000E[] = {
  NSPAIR(_ZN3bbb9GG0111000C1Ev),
  NSPAIR(_ZN3bbb9GG0111000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG0111000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0111000E[];
extern void _ZN3bbb9GG01110003fooEv();
extern void _ZN3bbb9GG01110003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01110003barEv,_ZThn8_N3bbb9GG01110003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01110003fooEv,_ZThn8_N3bbb9GG01110003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01110003barEv,_ZThn20_N3bbb9GG01110003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01110003fooEv,_ZThn20_N3bbb9GG01110003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01110003fooEv,_ZThn28_N3bbb9GG01110003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01110003barEv,_ZThn28_N3bbb9GG01110003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0111000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01110003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01110003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01110003barEv,_ZThn8_N3bbb9GG01110003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01110003fooEv,_ZThn8_N3bbb9GG01110003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01110003barEv,_ZThn20_N3bbb9GG01110003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01110003fooEv,_ZThn20_N3bbb9GG01110003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01110003fooEv,_ZThn28_N3bbb9GG01110003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01110003barEv,_ZThn28_N3bbb9GG01110003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0111000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0111000E[];
Class_Descriptor cd__ZN3bbb9GG0111000E = {  "_ZN3bbb9GG0111000E", // class name
  bases__ZN3bbb9GG0111000E, 6,
  &(vtc__ZN3bbb9GG0111000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0111000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0111000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0111001  : ::bbb::EE011 , ::bbb::FF100 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01110013barEv
  virtual void  foo(); // _ZN3bbb9GG01110013fooEv
  ~GG0111001(); // tgen
  GG0111001(); // tgen
};
//SIG(1 _ZN3bbb9GG0111001E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0111001 ::bar(){vfunc_called(this, "_ZN3bbb9GG01110013barEv");}
void  bbb::GG0111001 ::foo(){vfunc_called(this, "_ZN3bbb9GG01110013fooEv");}
bbb::GG0111001 ::~GG0111001(){ note_dtor("_ZN3bbb9GG0111001E", this);} // tgen
bbb::GG0111001 ::GG0111001(){ note_ctor("_ZN3bbb9GG0111001E", this);} // tgen
}
static void Test__ZN3bbb9GG0111001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0111001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0111001E, buf);
    ::bbb::GG0111001 *dp, &lv = *(dp=new (buf) ::bbb::GG0111001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0111001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0111001E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0111001E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0111001E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0111001E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0111001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG0111001E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG0111001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0111001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0111001E);
    dp->::bbb::GG0111001::~GG0111001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0111001E(Test__ZN3bbb9GG0111001E, "_ZN3bbb9GG0111001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0111001C1Ev();
extern void _ZN3bbb9GG0111001D1Ev();
Name_Map name_map__ZN3bbb9GG0111001E[] = {
  NSPAIR(_ZN3bbb9GG0111001C1Ev),
  NSPAIR(_ZN3bbb9GG0111001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG0111001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0111001E[];
extern void _ZN3bbb9GG01110013fooEv();
extern void _ZN3bbb9GG01110013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01110013barEv,_ZThn8_N3bbb9GG01110013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01110013fooEv,_ZThn8_N3bbb9GG01110013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01110013barEv,_ZThn20_N3bbb9GG01110013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01110013fooEv,_ZThn20_N3bbb9GG01110013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01110013fooEv,_ZThn28_N3bbb9GG01110013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01110013barEv,_ZThn28_N3bbb9GG01110013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0111001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01110013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01110013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01110013barEv,_ZThn8_N3bbb9GG01110013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01110013fooEv,_ZThn8_N3bbb9GG01110013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01110013barEv,_ZThn20_N3bbb9GG01110013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01110013fooEv,_ZThn20_N3bbb9GG01110013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01110013fooEv,_ZThn28_N3bbb9GG01110013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01110013barEv,_ZThn28_N3bbb9GG01110013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0111001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0111001E[];
Class_Descriptor cd__ZN3bbb9GG0111001E = {  "_ZN3bbb9GG0111001E", // class name
  bases__ZN3bbb9GG0111001E, 6,
  &(vtc__ZN3bbb9GG0111001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0111001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0111001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0111010  : ::bbb::EE011 , ::bbb::FF101 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01110103fooEv
  virtual void  bar(); // _ZN3bbb9GG01110103barEv
  ~GG0111010(); // tgen
  GG0111010(); // tgen
};
//SIG(1 _ZN3bbb9GG0111010E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0111010 ::foo(){vfunc_called(this, "_ZN3bbb9GG01110103fooEv");}
void  bbb::GG0111010 ::bar(){vfunc_called(this, "_ZN3bbb9GG01110103barEv");}
bbb::GG0111010 ::~GG0111010(){ note_dtor("_ZN3bbb9GG0111010E", this);} // tgen
bbb::GG0111010 ::GG0111010(){ note_ctor("_ZN3bbb9GG0111010E", this);} // tgen
}
static void Test__ZN3bbb9GG0111010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0111010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0111010E, buf);
    ::bbb::GG0111010 *dp, &lv = *(dp=new (buf) ::bbb::GG0111010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0111010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0111010E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0111010E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0111010E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0111010E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0111010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG0111010E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0111010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0111010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0111010E);
    dp->::bbb::GG0111010::~GG0111010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0111010E(Test__ZN3bbb9GG0111010E, "_ZN3bbb9GG0111010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0111010C1Ev();
extern void _ZN3bbb9GG0111010D1Ev();
Name_Map name_map__ZN3bbb9GG0111010E[] = {
  NSPAIR(_ZN3bbb9GG0111010C1Ev),
  NSPAIR(_ZN3bbb9GG0111010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG0111010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0111010E[];
extern void _ZN3bbb9GG01110103fooEv();
extern void _ZN3bbb9GG01110103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01110103barEv,_ZThn8_N3bbb9GG01110103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01110103fooEv,_ZThn8_N3bbb9GG01110103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01110103barEv,_ZThn20_N3bbb9GG01110103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01110103fooEv,_ZThn20_N3bbb9GG01110103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01110103fooEv,_ZThn28_N3bbb9GG01110103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01110103barEv,_ZThn28_N3bbb9GG01110103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0111010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01110103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01110103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01110103barEv,_ZThn8_N3bbb9GG01110103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01110103fooEv,_ZThn8_N3bbb9GG01110103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01110103barEv,_ZThn20_N3bbb9GG01110103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01110103fooEv,_ZThn20_N3bbb9GG01110103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01110103fooEv,_ZThn28_N3bbb9GG01110103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01110103barEv,_ZThn28_N3bbb9GG01110103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0111010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0111010E[];
Class_Descriptor cd__ZN3bbb9GG0111010E = {  "_ZN3bbb9GG0111010E", // class name
  bases__ZN3bbb9GG0111010E, 6,
  &(vtc__ZN3bbb9GG0111010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0111010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0111010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0111011  : ::bbb::EE011 , ::bbb::FF101 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01110113barEv
  virtual void  foo(); // _ZN3bbb9GG01110113fooEv
  ~GG0111011(); // tgen
  GG0111011(); // tgen
};
//SIG(1 _ZN3bbb9GG0111011E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0111011 ::bar(){vfunc_called(this, "_ZN3bbb9GG01110113barEv");}
void  bbb::GG0111011 ::foo(){vfunc_called(this, "_ZN3bbb9GG01110113fooEv");}
bbb::GG0111011 ::~GG0111011(){ note_dtor("_ZN3bbb9GG0111011E", this);} // tgen
bbb::GG0111011 ::GG0111011(){ note_ctor("_ZN3bbb9GG0111011E", this);} // tgen
}
static void Test__ZN3bbb9GG0111011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0111011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0111011E, buf);
    ::bbb::GG0111011 *dp, &lv = *(dp=new (buf) ::bbb::GG0111011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0111011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0111011E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0111011E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0111011E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0111011E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0111011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG0111011E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG0111011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0111011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0111011E);
    dp->::bbb::GG0111011::~GG0111011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0111011E(Test__ZN3bbb9GG0111011E, "_ZN3bbb9GG0111011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0111011C1Ev();
extern void _ZN3bbb9GG0111011D1Ev();
Name_Map name_map__ZN3bbb9GG0111011E[] = {
  NSPAIR(_ZN3bbb9GG0111011C1Ev),
  NSPAIR(_ZN3bbb9GG0111011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG0111011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0111011E[];
extern void _ZN3bbb9GG01110113fooEv();
extern void _ZN3bbb9GG01110113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01110113barEv,_ZThn8_N3bbb9GG01110113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01110113fooEv,_ZThn8_N3bbb9GG01110113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01110113barEv,_ZThn20_N3bbb9GG01110113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01110113fooEv,_ZThn20_N3bbb9GG01110113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01110113fooEv,_ZThn28_N3bbb9GG01110113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01110113barEv,_ZThn28_N3bbb9GG01110113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0111011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01110113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01110113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01110113barEv,_ZThn8_N3bbb9GG01110113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01110113fooEv,_ZThn8_N3bbb9GG01110113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01110113barEv,_ZThn20_N3bbb9GG01110113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01110113fooEv,_ZThn20_N3bbb9GG01110113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01110113fooEv,_ZThn28_N3bbb9GG01110113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01110113barEv,_ZThn28_N3bbb9GG01110113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0111011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0111011E[];
Class_Descriptor cd__ZN3bbb9GG0111011E = {  "_ZN3bbb9GG0111011E", // class name
  bases__ZN3bbb9GG0111011E, 6,
  &(vtc__ZN3bbb9GG0111011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0111011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0111011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0111100  : ::bbb::EE011 , ::bbb::FF110 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01111003fooEv
  virtual void  bar(); // _ZN3bbb9GG01111003barEv
  ~GG0111100(); // tgen
  GG0111100(); // tgen
};
//SIG(1 _ZN3bbb9GG0111100E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0111100 ::foo(){vfunc_called(this, "_ZN3bbb9GG01111003fooEv");}
void  bbb::GG0111100 ::bar(){vfunc_called(this, "_ZN3bbb9GG01111003barEv");}
bbb::GG0111100 ::~GG0111100(){ note_dtor("_ZN3bbb9GG0111100E", this);} // tgen
bbb::GG0111100 ::GG0111100(){ note_ctor("_ZN3bbb9GG0111100E", this);} // tgen
}
static void Test__ZN3bbb9GG0111100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0111100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0111100E, buf);
    ::bbb::GG0111100 *dp, &lv = *(dp=new (buf) ::bbb::GG0111100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0111100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0111100E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0111100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0111100E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0111100E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0111100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG0111100E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0111100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0111100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0111100E);
    dp->::bbb::GG0111100::~GG0111100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0111100E(Test__ZN3bbb9GG0111100E, "_ZN3bbb9GG0111100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0111100C1Ev();
extern void _ZN3bbb9GG0111100D1Ev();
Name_Map name_map__ZN3bbb9GG0111100E[] = {
  NSPAIR(_ZN3bbb9GG0111100C1Ev),
  NSPAIR(_ZN3bbb9GG0111100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG0111100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0111100E[];
extern void _ZN3bbb9GG01111003fooEv();
extern void _ZN3bbb9GG01111003barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01111003barEv,_ZThn8_N3bbb9GG01111003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01111003fooEv,_ZThn8_N3bbb9GG01111003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01111003barEv,_ZThn20_N3bbb9GG01111003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01111003fooEv,_ZThn20_N3bbb9GG01111003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01111003barEv,_ZThn28_N3bbb9GG01111003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01111003fooEv,_ZThn28_N3bbb9GG01111003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0111100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01111003fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01111003barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01111003barEv,_ZThn8_N3bbb9GG01111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01111003fooEv,_ZThn8_N3bbb9GG01111003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01111003barEv,_ZThn20_N3bbb9GG01111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01111003fooEv,_ZThn20_N3bbb9GG01111003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01111003barEv,_ZThn28_N3bbb9GG01111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01111003fooEv,_ZThn28_N3bbb9GG01111003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0111100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0111100E[];
Class_Descriptor cd__ZN3bbb9GG0111100E = {  "_ZN3bbb9GG0111100E", // class name
  bases__ZN3bbb9GG0111100E, 6,
  &(vtc__ZN3bbb9GG0111100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0111100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0111100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0111101  : ::bbb::EE011 , ::bbb::FF110 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01111013barEv
  virtual void  foo(); // _ZN3bbb9GG01111013fooEv
  ~GG0111101(); // tgen
  GG0111101(); // tgen
};
//SIG(1 _ZN3bbb9GG0111101E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0111101 ::bar(){vfunc_called(this, "_ZN3bbb9GG01111013barEv");}
void  bbb::GG0111101 ::foo(){vfunc_called(this, "_ZN3bbb9GG01111013fooEv");}
bbb::GG0111101 ::~GG0111101(){ note_dtor("_ZN3bbb9GG0111101E", this);} // tgen
bbb::GG0111101 ::GG0111101(){ note_ctor("_ZN3bbb9GG0111101E", this);} // tgen
}
static void Test__ZN3bbb9GG0111101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0111101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0111101E, buf);
    ::bbb::GG0111101 *dp, &lv = *(dp=new (buf) ::bbb::GG0111101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0111101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0111101E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0111101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0111101E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0111101E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0111101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG0111101E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG0111101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0111101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0111101E);
    dp->::bbb::GG0111101::~GG0111101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0111101E(Test__ZN3bbb9GG0111101E, "_ZN3bbb9GG0111101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0111101C1Ev();
extern void _ZN3bbb9GG0111101D1Ev();
Name_Map name_map__ZN3bbb9GG0111101E[] = {
  NSPAIR(_ZN3bbb9GG0111101C1Ev),
  NSPAIR(_ZN3bbb9GG0111101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG0111101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0111101E[];
extern void _ZN3bbb9GG01111013fooEv();
extern void _ZN3bbb9GG01111013barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01111013barEv,_ZThn8_N3bbb9GG01111013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01111013fooEv,_ZThn8_N3bbb9GG01111013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01111013barEv,_ZThn20_N3bbb9GG01111013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01111013fooEv,_ZThn20_N3bbb9GG01111013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01111013barEv,_ZThn28_N3bbb9GG01111013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01111013fooEv,_ZThn28_N3bbb9GG01111013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0111101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01111013fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01111013barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01111013barEv,_ZThn8_N3bbb9GG01111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01111013fooEv,_ZThn8_N3bbb9GG01111013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01111013barEv,_ZThn20_N3bbb9GG01111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01111013fooEv,_ZThn20_N3bbb9GG01111013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01111013barEv,_ZThn28_N3bbb9GG01111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01111013fooEv,_ZThn28_N3bbb9GG01111013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0111101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0111101E[];
Class_Descriptor cd__ZN3bbb9GG0111101E = {  "_ZN3bbb9GG0111101E", // class name
  bases__ZN3bbb9GG0111101E, 6,
  &(vtc__ZN3bbb9GG0111101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0111101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0111101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0111110  : ::bbb::EE011 , ::bbb::FF111 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG01111103fooEv
  virtual void  bar(); // _ZN3bbb9GG01111103barEv
  ~GG0111110(); // tgen
  GG0111110(); // tgen
};
//SIG(1 _ZN3bbb9GG0111110E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0111110 ::foo(){vfunc_called(this, "_ZN3bbb9GG01111103fooEv");}
void  bbb::GG0111110 ::bar(){vfunc_called(this, "_ZN3bbb9GG01111103barEv");}
bbb::GG0111110 ::~GG0111110(){ note_dtor("_ZN3bbb9GG0111110E", this);} // tgen
bbb::GG0111110 ::GG0111110(){ note_ctor("_ZN3bbb9GG0111110E", this);} // tgen
}
static void Test__ZN3bbb9GG0111110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0111110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0111110E, buf);
    ::bbb::GG0111110 *dp, &lv = *(dp=new (buf) ::bbb::GG0111110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0111110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0111110E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0111110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0111110E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0111110E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0111110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG0111110E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0111110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0111110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0111110E);
    dp->::bbb::GG0111110::~GG0111110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0111110E(Test__ZN3bbb9GG0111110E, "_ZN3bbb9GG0111110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0111110C1Ev();
extern void _ZN3bbb9GG0111110D1Ev();
Name_Map name_map__ZN3bbb9GG0111110E[] = {
  NSPAIR(_ZN3bbb9GG0111110C1Ev),
  NSPAIR(_ZN3bbb9GG0111110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG0111110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0111110E[];
extern void _ZN3bbb9GG01111103fooEv();
extern void _ZN3bbb9GG01111103barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01111103barEv,_ZThn8_N3bbb9GG01111103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01111103fooEv,_ZThn8_N3bbb9GG01111103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01111103barEv,_ZThn20_N3bbb9GG01111103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01111103fooEv,_ZThn20_N3bbb9GG01111103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01111103barEv,_ZThn28_N3bbb9GG01111103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01111103fooEv,_ZThn28_N3bbb9GG01111103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0111110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01111103fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01111103barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01111103barEv,_ZThn8_N3bbb9GG01111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01111103fooEv,_ZThn8_N3bbb9GG01111103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01111103barEv,_ZThn20_N3bbb9GG01111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01111103fooEv,_ZThn20_N3bbb9GG01111103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01111103barEv,_ZThn28_N3bbb9GG01111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01111103fooEv,_ZThn28_N3bbb9GG01111103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0111110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0111110E[];
Class_Descriptor cd__ZN3bbb9GG0111110E = {  "_ZN3bbb9GG0111110E", // class name
  bases__ZN3bbb9GG0111110E, 6,
  &(vtc__ZN3bbb9GG0111110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0111110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0111110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG0111111  : ::bbb::EE011 , ::bbb::FF111 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG01111113barEv
  virtual void  foo(); // _ZN3bbb9GG01111113fooEv
  ~GG0111111(); // tgen
  GG0111111(); // tgen
};
//SIG(1 _ZN3bbb9GG0111111E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG0111111 ::bar(){vfunc_called(this, "_ZN3bbb9GG01111113barEv");}
void  bbb::GG0111111 ::foo(){vfunc_called(this, "_ZN3bbb9GG01111113fooEv");}
bbb::GG0111111 ::~GG0111111(){ note_dtor("_ZN3bbb9GG0111111E", this);} // tgen
bbb::GG0111111 ::GG0111111(){ note_ctor("_ZN3bbb9GG0111111E", this);} // tgen
}
static void Test__ZN3bbb9GG0111111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG0111111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG0111111E, buf);
    ::bbb::GG0111111 *dp, &lv = *(dp=new (buf) ::bbb::GG0111111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG0111111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG0111111E)");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::EE011*), 0, "_ZN3bbb9GG0111111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE011*), ABISELECT(16,8), "_ZN3bbb9GG0111111E");
    check_base_class_offset(lv, (::bbb::EE011*), 0, "_ZN3bbb9GG0111111E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0111111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG0111111E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG0111111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG0111111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG0111111E);
    dp->::bbb::GG0111111::~GG0111111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG0111111E(Test__ZN3bbb9GG0111111E, "_ZN3bbb9GG0111111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG0111111C1Ev();
extern void _ZN3bbb9GG0111111D1Ev();
Name_Map name_map__ZN3bbb9GG0111111E[] = {
  NSPAIR(_ZN3bbb9GG0111111C1Ev),
  NSPAIR(_ZN3bbb9GG0111111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE011E;
extern VTBL_ENTRY _ZTIN3bbb5EE011E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE011E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG0111111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA0E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE011E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG0111111E[];
extern void _ZN3bbb9GG01111113fooEv();
extern void _ZN3bbb9GG01111113barEv();
extern void ABISELECT(_ZThn16_N3bbb9GG01111113barEv,_ZThn8_N3bbb9GG01111113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG01111113fooEv,_ZThn8_N3bbb9GG01111113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01111113barEv,_ZThn20_N3bbb9GG01111113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG01111113fooEv,_ZThn20_N3bbb9GG01111113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01111113barEv,_ZThn28_N3bbb9GG01111113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG01111113fooEv,_ZThn28_N3bbb9GG01111113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG0111111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG01111113fooEv,
  (VTBL_ENTRY)&_ZN3bbb9GG01111113barEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01111113barEv,_ZThn8_N3bbb9GG01111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG01111113fooEv,_ZThn8_N3bbb9GG01111113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01111113barEv,_ZThn20_N3bbb9GG01111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG01111113fooEv,_ZThn20_N3bbb9GG01111113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG0111111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01111113barEv,_ZThn28_N3bbb9GG01111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG01111113fooEv,_ZThn28_N3bbb9GG01111113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG0111111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG0111111E[];
Class_Descriptor cd__ZN3bbb9GG0111111E = {  "_ZN3bbb9GG0111111E", // class name
  bases__ZN3bbb9GG0111111E, 6,
  &(vtc__ZN3bbb9GG0111111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG0111111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG0111111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1000000  : ::bbb::EE100 , ::bbb::FF000 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10000003fooEv
  virtual void  bar(); // _ZN3bbb9GG10000003barEv
  ~GG1000000(); // tgen
  GG1000000(); // tgen
};
//SIG(1 _ZN3bbb9GG1000000E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1000000 ::foo(){vfunc_called(this, "_ZN3bbb9GG10000003fooEv");}
void  bbb::GG1000000 ::bar(){vfunc_called(this, "_ZN3bbb9GG10000003barEv");}
bbb::GG1000000 ::~GG1000000(){ note_dtor("_ZN3bbb9GG1000000E", this);} // tgen
bbb::GG1000000 ::GG1000000(){ note_ctor("_ZN3bbb9GG1000000E", this);} // tgen
}
static void Test__ZN3bbb9GG1000000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1000000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1000000E, buf);
    ::bbb::GG1000000 *dp, &lv = *(dp=new (buf) ::bbb::GG1000000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1000000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1000000E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1000000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1000000E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1000000E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1000000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG1000000E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1000000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1000000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1000000E);
    dp->::bbb::GG1000000::~GG1000000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1000000E(Test__ZN3bbb9GG1000000E, "_ZN3bbb9GG1000000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1000000C1Ev();
extern void _ZN3bbb9GG1000000D1Ev();
Name_Map name_map__ZN3bbb9GG1000000E[] = {
  NSPAIR(_ZN3bbb9GG1000000C1Ev),
  NSPAIR(_ZN3bbb9GG1000000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG1000000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1000000E[];
extern void _ZN3bbb9GG10000003barEv();
extern void _ZN3bbb9GG10000003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10000003fooEv,_ZThn8_N3bbb9GG10000003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10000003barEv,_ZThn8_N3bbb9GG10000003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10000003fooEv,_ZThn20_N3bbb9GG10000003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10000003barEv,_ZThn20_N3bbb9GG10000003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10000003fooEv,_ZThn28_N3bbb9GG10000003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10000003barEv,_ZThn28_N3bbb9GG10000003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1000000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10000003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10000003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10000003fooEv,_ZThn8_N3bbb9GG10000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10000003barEv,_ZThn8_N3bbb9GG10000003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10000003fooEv,_ZThn20_N3bbb9GG10000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10000003barEv,_ZThn20_N3bbb9GG10000003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10000003fooEv,_ZThn28_N3bbb9GG10000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10000003barEv,_ZThn28_N3bbb9GG10000003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1000000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1000000E[];
Class_Descriptor cd__ZN3bbb9GG1000000E = {  "_ZN3bbb9GG1000000E", // class name
  bases__ZN3bbb9GG1000000E, 6,
  &(vtc__ZN3bbb9GG1000000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1000000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1000000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1000001  : ::bbb::EE100 , ::bbb::FF000 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10000013barEv
  virtual void  foo(); // _ZN3bbb9GG10000013fooEv
  ~GG1000001(); // tgen
  GG1000001(); // tgen
};
//SIG(1 _ZN3bbb9GG1000001E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1000001 ::bar(){vfunc_called(this, "_ZN3bbb9GG10000013barEv");}
void  bbb::GG1000001 ::foo(){vfunc_called(this, "_ZN3bbb9GG10000013fooEv");}
bbb::GG1000001 ::~GG1000001(){ note_dtor("_ZN3bbb9GG1000001E", this);} // tgen
bbb::GG1000001 ::GG1000001(){ note_ctor("_ZN3bbb9GG1000001E", this);} // tgen
}
static void Test__ZN3bbb9GG1000001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1000001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1000001E, buf);
    ::bbb::GG1000001 *dp, &lv = *(dp=new (buf) ::bbb::GG1000001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1000001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1000001E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1000001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1000001E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1000001E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1000001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG1000001E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1000001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1000001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1000001E);
    dp->::bbb::GG1000001::~GG1000001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1000001E(Test__ZN3bbb9GG1000001E, "_ZN3bbb9GG1000001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1000001C1Ev();
extern void _ZN3bbb9GG1000001D1Ev();
Name_Map name_map__ZN3bbb9GG1000001E[] = {
  NSPAIR(_ZN3bbb9GG1000001C1Ev),
  NSPAIR(_ZN3bbb9GG1000001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG1000001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1000001E[];
extern void _ZN3bbb9GG10000013barEv();
extern void _ZN3bbb9GG10000013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10000013fooEv,_ZThn8_N3bbb9GG10000013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10000013barEv,_ZThn8_N3bbb9GG10000013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10000013fooEv,_ZThn20_N3bbb9GG10000013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10000013barEv,_ZThn20_N3bbb9GG10000013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10000013fooEv,_ZThn28_N3bbb9GG10000013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10000013barEv,_ZThn28_N3bbb9GG10000013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1000001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10000013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10000013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10000013fooEv,_ZThn8_N3bbb9GG10000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10000013barEv,_ZThn8_N3bbb9GG10000013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10000013fooEv,_ZThn20_N3bbb9GG10000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10000013barEv,_ZThn20_N3bbb9GG10000013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10000013fooEv,_ZThn28_N3bbb9GG10000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10000013barEv,_ZThn28_N3bbb9GG10000013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1000001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1000001E[];
Class_Descriptor cd__ZN3bbb9GG1000001E = {  "_ZN3bbb9GG1000001E", // class name
  bases__ZN3bbb9GG1000001E, 6,
  &(vtc__ZN3bbb9GG1000001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1000001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1000001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1000010  : ::bbb::EE100 , ::bbb::FF001 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10000103fooEv
  virtual void  bar(); // _ZN3bbb9GG10000103barEv
  ~GG1000010(); // tgen
  GG1000010(); // tgen
};
//SIG(1 _ZN3bbb9GG1000010E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1000010 ::foo(){vfunc_called(this, "_ZN3bbb9GG10000103fooEv");}
void  bbb::GG1000010 ::bar(){vfunc_called(this, "_ZN3bbb9GG10000103barEv");}
bbb::GG1000010 ::~GG1000010(){ note_dtor("_ZN3bbb9GG1000010E", this);} // tgen
bbb::GG1000010 ::GG1000010(){ note_ctor("_ZN3bbb9GG1000010E", this);} // tgen
}
static void Test__ZN3bbb9GG1000010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1000010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1000010E, buf);
    ::bbb::GG1000010 *dp, &lv = *(dp=new (buf) ::bbb::GG1000010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1000010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1000010E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1000010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1000010E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1000010E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1000010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG1000010E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1000010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1000010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1000010E);
    dp->::bbb::GG1000010::~GG1000010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1000010E(Test__ZN3bbb9GG1000010E, "_ZN3bbb9GG1000010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1000010C1Ev();
extern void _ZN3bbb9GG1000010D1Ev();
Name_Map name_map__ZN3bbb9GG1000010E[] = {
  NSPAIR(_ZN3bbb9GG1000010C1Ev),
  NSPAIR(_ZN3bbb9GG1000010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG1000010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1000010E[];
extern void _ZN3bbb9GG10000103barEv();
extern void _ZN3bbb9GG10000103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10000103fooEv,_ZThn8_N3bbb9GG10000103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10000103barEv,_ZThn8_N3bbb9GG10000103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10000103fooEv,_ZThn20_N3bbb9GG10000103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10000103barEv,_ZThn20_N3bbb9GG10000103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10000103fooEv,_ZThn28_N3bbb9GG10000103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10000103barEv,_ZThn28_N3bbb9GG10000103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1000010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10000103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10000103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10000103fooEv,_ZThn8_N3bbb9GG10000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10000103barEv,_ZThn8_N3bbb9GG10000103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10000103fooEv,_ZThn20_N3bbb9GG10000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10000103barEv,_ZThn20_N3bbb9GG10000103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10000103fooEv,_ZThn28_N3bbb9GG10000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10000103barEv,_ZThn28_N3bbb9GG10000103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1000010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1000010E[];
Class_Descriptor cd__ZN3bbb9GG1000010E = {  "_ZN3bbb9GG1000010E", // class name
  bases__ZN3bbb9GG1000010E, 6,
  &(vtc__ZN3bbb9GG1000010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1000010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1000010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1000011  : ::bbb::EE100 , ::bbb::FF001 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10000113barEv
  virtual void  foo(); // _ZN3bbb9GG10000113fooEv
  ~GG1000011(); // tgen
  GG1000011(); // tgen
};
//SIG(1 _ZN3bbb9GG1000011E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1000011 ::bar(){vfunc_called(this, "_ZN3bbb9GG10000113barEv");}
void  bbb::GG1000011 ::foo(){vfunc_called(this, "_ZN3bbb9GG10000113fooEv");}
bbb::GG1000011 ::~GG1000011(){ note_dtor("_ZN3bbb9GG1000011E", this);} // tgen
bbb::GG1000011 ::GG1000011(){ note_ctor("_ZN3bbb9GG1000011E", this);} // tgen
}
static void Test__ZN3bbb9GG1000011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1000011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1000011E, buf);
    ::bbb::GG1000011 *dp, &lv = *(dp=new (buf) ::bbb::GG1000011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1000011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1000011E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1000011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1000011E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1000011E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1000011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG1000011E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1000011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1000011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1000011E);
    dp->::bbb::GG1000011::~GG1000011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1000011E(Test__ZN3bbb9GG1000011E, "_ZN3bbb9GG1000011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1000011C1Ev();
extern void _ZN3bbb9GG1000011D1Ev();
Name_Map name_map__ZN3bbb9GG1000011E[] = {
  NSPAIR(_ZN3bbb9GG1000011C1Ev),
  NSPAIR(_ZN3bbb9GG1000011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG1000011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1000011E[];
extern void _ZN3bbb9GG10000113barEv();
extern void _ZN3bbb9GG10000113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10000113fooEv,_ZThn8_N3bbb9GG10000113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10000113barEv,_ZThn8_N3bbb9GG10000113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10000113fooEv,_ZThn20_N3bbb9GG10000113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10000113barEv,_ZThn20_N3bbb9GG10000113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10000113fooEv,_ZThn28_N3bbb9GG10000113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10000113barEv,_ZThn28_N3bbb9GG10000113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1000011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10000113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10000113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10000113fooEv,_ZThn8_N3bbb9GG10000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10000113barEv,_ZThn8_N3bbb9GG10000113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10000113fooEv,_ZThn20_N3bbb9GG10000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10000113barEv,_ZThn20_N3bbb9GG10000113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10000113fooEv,_ZThn28_N3bbb9GG10000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10000113barEv,_ZThn28_N3bbb9GG10000113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1000011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1000011E[];
Class_Descriptor cd__ZN3bbb9GG1000011E = {  "_ZN3bbb9GG1000011E", // class name
  bases__ZN3bbb9GG1000011E, 6,
  &(vtc__ZN3bbb9GG1000011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1000011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1000011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1000100  : ::bbb::EE100 , ::bbb::FF010 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10001003fooEv
  virtual void  bar(); // _ZN3bbb9GG10001003barEv
  ~GG1000100(); // tgen
  GG1000100(); // tgen
};
//SIG(1 _ZN3bbb9GG1000100E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1000100 ::foo(){vfunc_called(this, "_ZN3bbb9GG10001003fooEv");}
void  bbb::GG1000100 ::bar(){vfunc_called(this, "_ZN3bbb9GG10001003barEv");}
bbb::GG1000100 ::~GG1000100(){ note_dtor("_ZN3bbb9GG1000100E", this);} // tgen
bbb::GG1000100 ::GG1000100(){ note_ctor("_ZN3bbb9GG1000100E", this);} // tgen
}
static void Test__ZN3bbb9GG1000100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1000100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1000100E, buf);
    ::bbb::GG1000100 *dp, &lv = *(dp=new (buf) ::bbb::GG1000100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1000100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1000100E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1000100E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1000100E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1000100E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1000100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG1000100E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1000100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1000100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1000100E);
    dp->::bbb::GG1000100::~GG1000100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1000100E(Test__ZN3bbb9GG1000100E, "_ZN3bbb9GG1000100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1000100C1Ev();
extern void _ZN3bbb9GG1000100D1Ev();
Name_Map name_map__ZN3bbb9GG1000100E[] = {
  NSPAIR(_ZN3bbb9GG1000100C1Ev),
  NSPAIR(_ZN3bbb9GG1000100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG1000100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1000100E[];
extern void _ZN3bbb9GG10001003barEv();
extern void _ZN3bbb9GG10001003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10001003fooEv,_ZThn8_N3bbb9GG10001003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10001003barEv,_ZThn8_N3bbb9GG10001003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10001003fooEv,_ZThn20_N3bbb9GG10001003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10001003barEv,_ZThn20_N3bbb9GG10001003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10001003barEv,_ZThn28_N3bbb9GG10001003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10001003fooEv,_ZThn28_N3bbb9GG10001003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1000100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10001003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10001003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10001003fooEv,_ZThn8_N3bbb9GG10001003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10001003barEv,_ZThn8_N3bbb9GG10001003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10001003fooEv,_ZThn20_N3bbb9GG10001003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10001003barEv,_ZThn20_N3bbb9GG10001003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10001003barEv,_ZThn28_N3bbb9GG10001003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10001003fooEv,_ZThn28_N3bbb9GG10001003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1000100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1000100E[];
Class_Descriptor cd__ZN3bbb9GG1000100E = {  "_ZN3bbb9GG1000100E", // class name
  bases__ZN3bbb9GG1000100E, 6,
  &(vtc__ZN3bbb9GG1000100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1000100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1000100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1000101  : ::bbb::EE100 , ::bbb::FF010 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10001013barEv
  virtual void  foo(); // _ZN3bbb9GG10001013fooEv
  ~GG1000101(); // tgen
  GG1000101(); // tgen
};
//SIG(1 _ZN3bbb9GG1000101E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1000101 ::bar(){vfunc_called(this, "_ZN3bbb9GG10001013barEv");}
void  bbb::GG1000101 ::foo(){vfunc_called(this, "_ZN3bbb9GG10001013fooEv");}
bbb::GG1000101 ::~GG1000101(){ note_dtor("_ZN3bbb9GG1000101E", this);} // tgen
bbb::GG1000101 ::GG1000101(){ note_ctor("_ZN3bbb9GG1000101E", this);} // tgen
}
static void Test__ZN3bbb9GG1000101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1000101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1000101E, buf);
    ::bbb::GG1000101 *dp, &lv = *(dp=new (buf) ::bbb::GG1000101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1000101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1000101E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1000101E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1000101E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1000101E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1000101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG1000101E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1000101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1000101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1000101E);
    dp->::bbb::GG1000101::~GG1000101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1000101E(Test__ZN3bbb9GG1000101E, "_ZN3bbb9GG1000101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1000101C1Ev();
extern void _ZN3bbb9GG1000101D1Ev();
Name_Map name_map__ZN3bbb9GG1000101E[] = {
  NSPAIR(_ZN3bbb9GG1000101C1Ev),
  NSPAIR(_ZN3bbb9GG1000101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG1000101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1000101E[];
extern void _ZN3bbb9GG10001013barEv();
extern void _ZN3bbb9GG10001013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10001013fooEv,_ZThn8_N3bbb9GG10001013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10001013barEv,_ZThn8_N3bbb9GG10001013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10001013fooEv,_ZThn20_N3bbb9GG10001013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10001013barEv,_ZThn20_N3bbb9GG10001013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10001013barEv,_ZThn28_N3bbb9GG10001013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10001013fooEv,_ZThn28_N3bbb9GG10001013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1000101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10001013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10001013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10001013fooEv,_ZThn8_N3bbb9GG10001013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10001013barEv,_ZThn8_N3bbb9GG10001013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10001013fooEv,_ZThn20_N3bbb9GG10001013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10001013barEv,_ZThn20_N3bbb9GG10001013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10001013barEv,_ZThn28_N3bbb9GG10001013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10001013fooEv,_ZThn28_N3bbb9GG10001013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1000101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1000101E[];
Class_Descriptor cd__ZN3bbb9GG1000101E = {  "_ZN3bbb9GG1000101E", // class name
  bases__ZN3bbb9GG1000101E, 6,
  &(vtc__ZN3bbb9GG1000101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1000101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1000101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1000110  : ::bbb::EE100 , ::bbb::FF011 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10001103fooEv
  virtual void  bar(); // _ZN3bbb9GG10001103barEv
  ~GG1000110(); // tgen
  GG1000110(); // tgen
};
//SIG(1 _ZN3bbb9GG1000110E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1000110 ::foo(){vfunc_called(this, "_ZN3bbb9GG10001103fooEv");}
void  bbb::GG1000110 ::bar(){vfunc_called(this, "_ZN3bbb9GG10001103barEv");}
bbb::GG1000110 ::~GG1000110(){ note_dtor("_ZN3bbb9GG1000110E", this);} // tgen
bbb::GG1000110 ::GG1000110(){ note_ctor("_ZN3bbb9GG1000110E", this);} // tgen
}
static void Test__ZN3bbb9GG1000110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1000110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1000110E, buf);
    ::bbb::GG1000110 *dp, &lv = *(dp=new (buf) ::bbb::GG1000110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1000110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1000110E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1000110E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1000110E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1000110E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1000110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG1000110E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1000110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1000110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1000110E);
    dp->::bbb::GG1000110::~GG1000110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1000110E(Test__ZN3bbb9GG1000110E, "_ZN3bbb9GG1000110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1000110C1Ev();
extern void _ZN3bbb9GG1000110D1Ev();
Name_Map name_map__ZN3bbb9GG1000110E[] = {
  NSPAIR(_ZN3bbb9GG1000110C1Ev),
  NSPAIR(_ZN3bbb9GG1000110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG1000110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1000110E[];
extern void _ZN3bbb9GG10001103barEv();
extern void _ZN3bbb9GG10001103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10001103fooEv,_ZThn8_N3bbb9GG10001103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10001103barEv,_ZThn8_N3bbb9GG10001103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10001103fooEv,_ZThn20_N3bbb9GG10001103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10001103barEv,_ZThn20_N3bbb9GG10001103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10001103barEv,_ZThn28_N3bbb9GG10001103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10001103fooEv,_ZThn28_N3bbb9GG10001103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1000110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10001103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10001103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10001103fooEv,_ZThn8_N3bbb9GG10001103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10001103barEv,_ZThn8_N3bbb9GG10001103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10001103fooEv,_ZThn20_N3bbb9GG10001103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10001103barEv,_ZThn20_N3bbb9GG10001103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10001103barEv,_ZThn28_N3bbb9GG10001103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10001103fooEv,_ZThn28_N3bbb9GG10001103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1000110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1000110E[];
Class_Descriptor cd__ZN3bbb9GG1000110E = {  "_ZN3bbb9GG1000110E", // class name
  bases__ZN3bbb9GG1000110E, 6,
  &(vtc__ZN3bbb9GG1000110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1000110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1000110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1000111  : ::bbb::EE100 , ::bbb::FF011 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10001113barEv
  virtual void  foo(); // _ZN3bbb9GG10001113fooEv
  ~GG1000111(); // tgen
  GG1000111(); // tgen
};
//SIG(1 _ZN3bbb9GG1000111E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1000111 ::bar(){vfunc_called(this, "_ZN3bbb9GG10001113barEv");}
void  bbb::GG1000111 ::foo(){vfunc_called(this, "_ZN3bbb9GG10001113fooEv");}
bbb::GG1000111 ::~GG1000111(){ note_dtor("_ZN3bbb9GG1000111E", this);} // tgen
bbb::GG1000111 ::GG1000111(){ note_ctor("_ZN3bbb9GG1000111E", this);} // tgen
}
static void Test__ZN3bbb9GG1000111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1000111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1000111E, buf);
    ::bbb::GG1000111 *dp, &lv = *(dp=new (buf) ::bbb::GG1000111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1000111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1000111E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1000111E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1000111E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1000111E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1000111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG1000111E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1000111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1000111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1000111E);
    dp->::bbb::GG1000111::~GG1000111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1000111E(Test__ZN3bbb9GG1000111E, "_ZN3bbb9GG1000111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1000111C1Ev();
extern void _ZN3bbb9GG1000111D1Ev();
Name_Map name_map__ZN3bbb9GG1000111E[] = {
  NSPAIR(_ZN3bbb9GG1000111C1Ev),
  NSPAIR(_ZN3bbb9GG1000111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG1000111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1000111E[];
extern void _ZN3bbb9GG10001113barEv();
extern void _ZN3bbb9GG10001113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10001113fooEv,_ZThn8_N3bbb9GG10001113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10001113barEv,_ZThn8_N3bbb9GG10001113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10001113fooEv,_ZThn20_N3bbb9GG10001113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10001113barEv,_ZThn20_N3bbb9GG10001113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10001113barEv,_ZThn28_N3bbb9GG10001113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10001113fooEv,_ZThn28_N3bbb9GG10001113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1000111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10001113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10001113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10001113fooEv,_ZThn8_N3bbb9GG10001113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10001113barEv,_ZThn8_N3bbb9GG10001113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10001113fooEv,_ZThn20_N3bbb9GG10001113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10001113barEv,_ZThn20_N3bbb9GG10001113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1000111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10001113barEv,_ZThn28_N3bbb9GG10001113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10001113fooEv,_ZThn28_N3bbb9GG10001113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1000111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1000111E[];
Class_Descriptor cd__ZN3bbb9GG1000111E = {  "_ZN3bbb9GG1000111E", // class name
  bases__ZN3bbb9GG1000111E, 6,
  &(vtc__ZN3bbb9GG1000111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1000111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1000111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1001000  : ::bbb::EE100 , ::bbb::FF100 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10010003fooEv
  virtual void  bar(); // _ZN3bbb9GG10010003barEv
  ~GG1001000(); // tgen
  GG1001000(); // tgen
};
//SIG(1 _ZN3bbb9GG1001000E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1001000 ::foo(){vfunc_called(this, "_ZN3bbb9GG10010003fooEv");}
void  bbb::GG1001000 ::bar(){vfunc_called(this, "_ZN3bbb9GG10010003barEv");}
bbb::GG1001000 ::~GG1001000(){ note_dtor("_ZN3bbb9GG1001000E", this);} // tgen
bbb::GG1001000 ::GG1001000(){ note_ctor("_ZN3bbb9GG1001000E", this);} // tgen
}
static void Test__ZN3bbb9GG1001000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1001000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1001000E, buf);
    ::bbb::GG1001000 *dp, &lv = *(dp=new (buf) ::bbb::GG1001000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1001000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1001000E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1001000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1001000E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1001000E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1001000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG1001000E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1001000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1001000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1001000E);
    dp->::bbb::GG1001000::~GG1001000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1001000E(Test__ZN3bbb9GG1001000E, "_ZN3bbb9GG1001000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1001000C1Ev();
extern void _ZN3bbb9GG1001000D1Ev();
Name_Map name_map__ZN3bbb9GG1001000E[] = {
  NSPAIR(_ZN3bbb9GG1001000C1Ev),
  NSPAIR(_ZN3bbb9GG1001000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG1001000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1001000E[];
extern void _ZN3bbb9GG10010003barEv();
extern void _ZN3bbb9GG10010003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10010003fooEv,_ZThn8_N3bbb9GG10010003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10010003barEv,_ZThn8_N3bbb9GG10010003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10010003barEv,_ZThn20_N3bbb9GG10010003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10010003fooEv,_ZThn20_N3bbb9GG10010003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10010003fooEv,_ZThn28_N3bbb9GG10010003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10010003barEv,_ZThn28_N3bbb9GG10010003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1001000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10010003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10010003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10010003fooEv,_ZThn8_N3bbb9GG10010003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10010003barEv,_ZThn8_N3bbb9GG10010003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10010003barEv,_ZThn20_N3bbb9GG10010003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10010003fooEv,_ZThn20_N3bbb9GG10010003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10010003fooEv,_ZThn28_N3bbb9GG10010003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10010003barEv,_ZThn28_N3bbb9GG10010003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1001000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1001000E[];
Class_Descriptor cd__ZN3bbb9GG1001000E = {  "_ZN3bbb9GG1001000E", // class name
  bases__ZN3bbb9GG1001000E, 6,
  &(vtc__ZN3bbb9GG1001000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1001000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1001000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1001001  : ::bbb::EE100 , ::bbb::FF100 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10010013barEv
  virtual void  foo(); // _ZN3bbb9GG10010013fooEv
  ~GG1001001(); // tgen
  GG1001001(); // tgen
};
//SIG(1 _ZN3bbb9GG1001001E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1001001 ::bar(){vfunc_called(this, "_ZN3bbb9GG10010013barEv");}
void  bbb::GG1001001 ::foo(){vfunc_called(this, "_ZN3bbb9GG10010013fooEv");}
bbb::GG1001001 ::~GG1001001(){ note_dtor("_ZN3bbb9GG1001001E", this);} // tgen
bbb::GG1001001 ::GG1001001(){ note_ctor("_ZN3bbb9GG1001001E", this);} // tgen
}
static void Test__ZN3bbb9GG1001001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1001001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1001001E, buf);
    ::bbb::GG1001001 *dp, &lv = *(dp=new (buf) ::bbb::GG1001001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1001001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1001001E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1001001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1001001E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1001001E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1001001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG1001001E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1001001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1001001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1001001E);
    dp->::bbb::GG1001001::~GG1001001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1001001E(Test__ZN3bbb9GG1001001E, "_ZN3bbb9GG1001001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1001001C1Ev();
extern void _ZN3bbb9GG1001001D1Ev();
Name_Map name_map__ZN3bbb9GG1001001E[] = {
  NSPAIR(_ZN3bbb9GG1001001C1Ev),
  NSPAIR(_ZN3bbb9GG1001001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG1001001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1001001E[];
extern void _ZN3bbb9GG10010013barEv();
extern void _ZN3bbb9GG10010013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10010013fooEv,_ZThn8_N3bbb9GG10010013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10010013barEv,_ZThn8_N3bbb9GG10010013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10010013barEv,_ZThn20_N3bbb9GG10010013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10010013fooEv,_ZThn20_N3bbb9GG10010013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10010013fooEv,_ZThn28_N3bbb9GG10010013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10010013barEv,_ZThn28_N3bbb9GG10010013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1001001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10010013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10010013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10010013fooEv,_ZThn8_N3bbb9GG10010013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10010013barEv,_ZThn8_N3bbb9GG10010013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10010013barEv,_ZThn20_N3bbb9GG10010013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10010013fooEv,_ZThn20_N3bbb9GG10010013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10010013fooEv,_ZThn28_N3bbb9GG10010013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10010013barEv,_ZThn28_N3bbb9GG10010013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1001001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1001001E[];
Class_Descriptor cd__ZN3bbb9GG1001001E = {  "_ZN3bbb9GG1001001E", // class name
  bases__ZN3bbb9GG1001001E, 6,
  &(vtc__ZN3bbb9GG1001001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1001001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1001001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1001010  : ::bbb::EE100 , ::bbb::FF101 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10010103fooEv
  virtual void  bar(); // _ZN3bbb9GG10010103barEv
  ~GG1001010(); // tgen
  GG1001010(); // tgen
};
//SIG(1 _ZN3bbb9GG1001010E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1001010 ::foo(){vfunc_called(this, "_ZN3bbb9GG10010103fooEv");}
void  bbb::GG1001010 ::bar(){vfunc_called(this, "_ZN3bbb9GG10010103barEv");}
bbb::GG1001010 ::~GG1001010(){ note_dtor("_ZN3bbb9GG1001010E", this);} // tgen
bbb::GG1001010 ::GG1001010(){ note_ctor("_ZN3bbb9GG1001010E", this);} // tgen
}
static void Test__ZN3bbb9GG1001010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1001010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1001010E, buf);
    ::bbb::GG1001010 *dp, &lv = *(dp=new (buf) ::bbb::GG1001010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1001010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1001010E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1001010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1001010E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1001010E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1001010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG1001010E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1001010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1001010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1001010E);
    dp->::bbb::GG1001010::~GG1001010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1001010E(Test__ZN3bbb9GG1001010E, "_ZN3bbb9GG1001010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1001010C1Ev();
extern void _ZN3bbb9GG1001010D1Ev();
Name_Map name_map__ZN3bbb9GG1001010E[] = {
  NSPAIR(_ZN3bbb9GG1001010C1Ev),
  NSPAIR(_ZN3bbb9GG1001010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG1001010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1001010E[];
extern void _ZN3bbb9GG10010103barEv();
extern void _ZN3bbb9GG10010103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10010103fooEv,_ZThn8_N3bbb9GG10010103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10010103barEv,_ZThn8_N3bbb9GG10010103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10010103barEv,_ZThn20_N3bbb9GG10010103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10010103fooEv,_ZThn20_N3bbb9GG10010103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10010103fooEv,_ZThn28_N3bbb9GG10010103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10010103barEv,_ZThn28_N3bbb9GG10010103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1001010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10010103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10010103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10010103fooEv,_ZThn8_N3bbb9GG10010103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10010103barEv,_ZThn8_N3bbb9GG10010103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10010103barEv,_ZThn20_N3bbb9GG10010103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10010103fooEv,_ZThn20_N3bbb9GG10010103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10010103fooEv,_ZThn28_N3bbb9GG10010103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10010103barEv,_ZThn28_N3bbb9GG10010103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1001010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1001010E[];
Class_Descriptor cd__ZN3bbb9GG1001010E = {  "_ZN3bbb9GG1001010E", // class name
  bases__ZN3bbb9GG1001010E, 6,
  &(vtc__ZN3bbb9GG1001010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1001010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1001010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1001011  : ::bbb::EE100 , ::bbb::FF101 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10010113barEv
  virtual void  foo(); // _ZN3bbb9GG10010113fooEv
  ~GG1001011(); // tgen
  GG1001011(); // tgen
};
//SIG(1 _ZN3bbb9GG1001011E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1001011 ::bar(){vfunc_called(this, "_ZN3bbb9GG10010113barEv");}
void  bbb::GG1001011 ::foo(){vfunc_called(this, "_ZN3bbb9GG10010113fooEv");}
bbb::GG1001011 ::~GG1001011(){ note_dtor("_ZN3bbb9GG1001011E", this);} // tgen
bbb::GG1001011 ::GG1001011(){ note_ctor("_ZN3bbb9GG1001011E", this);} // tgen
}
static void Test__ZN3bbb9GG1001011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1001011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1001011E, buf);
    ::bbb::GG1001011 *dp, &lv = *(dp=new (buf) ::bbb::GG1001011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1001011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1001011E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1001011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1001011E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1001011E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1001011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG1001011E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1001011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1001011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1001011E);
    dp->::bbb::GG1001011::~GG1001011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1001011E(Test__ZN3bbb9GG1001011E, "_ZN3bbb9GG1001011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1001011C1Ev();
extern void _ZN3bbb9GG1001011D1Ev();
Name_Map name_map__ZN3bbb9GG1001011E[] = {
  NSPAIR(_ZN3bbb9GG1001011C1Ev),
  NSPAIR(_ZN3bbb9GG1001011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG1001011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1001011E[];
extern void _ZN3bbb9GG10010113barEv();
extern void _ZN3bbb9GG10010113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10010113fooEv,_ZThn8_N3bbb9GG10010113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10010113barEv,_ZThn8_N3bbb9GG10010113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10010113barEv,_ZThn20_N3bbb9GG10010113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10010113fooEv,_ZThn20_N3bbb9GG10010113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10010113fooEv,_ZThn28_N3bbb9GG10010113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10010113barEv,_ZThn28_N3bbb9GG10010113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1001011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10010113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10010113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10010113fooEv,_ZThn8_N3bbb9GG10010113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10010113barEv,_ZThn8_N3bbb9GG10010113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10010113barEv,_ZThn20_N3bbb9GG10010113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10010113fooEv,_ZThn20_N3bbb9GG10010113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10010113fooEv,_ZThn28_N3bbb9GG10010113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10010113barEv,_ZThn28_N3bbb9GG10010113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1001011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1001011E[];
Class_Descriptor cd__ZN3bbb9GG1001011E = {  "_ZN3bbb9GG1001011E", // class name
  bases__ZN3bbb9GG1001011E, 6,
  &(vtc__ZN3bbb9GG1001011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1001011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1001011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1001100  : ::bbb::EE100 , ::bbb::FF110 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10011003fooEv
  virtual void  bar(); // _ZN3bbb9GG10011003barEv
  ~GG1001100(); // tgen
  GG1001100(); // tgen
};
//SIG(1 _ZN3bbb9GG1001100E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1001100 ::foo(){vfunc_called(this, "_ZN3bbb9GG10011003fooEv");}
void  bbb::GG1001100 ::bar(){vfunc_called(this, "_ZN3bbb9GG10011003barEv");}
bbb::GG1001100 ::~GG1001100(){ note_dtor("_ZN3bbb9GG1001100E", this);} // tgen
bbb::GG1001100 ::GG1001100(){ note_ctor("_ZN3bbb9GG1001100E", this);} // tgen
}
static void Test__ZN3bbb9GG1001100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1001100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1001100E, buf);
    ::bbb::GG1001100 *dp, &lv = *(dp=new (buf) ::bbb::GG1001100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1001100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1001100E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1001100E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1001100E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1001100E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1001100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG1001100E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1001100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1001100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1001100E);
    dp->::bbb::GG1001100::~GG1001100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1001100E(Test__ZN3bbb9GG1001100E, "_ZN3bbb9GG1001100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1001100C1Ev();
extern void _ZN3bbb9GG1001100D1Ev();
Name_Map name_map__ZN3bbb9GG1001100E[] = {
  NSPAIR(_ZN3bbb9GG1001100C1Ev),
  NSPAIR(_ZN3bbb9GG1001100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG1001100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1001100E[];
extern void _ZN3bbb9GG10011003barEv();
extern void _ZN3bbb9GG10011003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10011003fooEv,_ZThn8_N3bbb9GG10011003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10011003barEv,_ZThn8_N3bbb9GG10011003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10011003barEv,_ZThn20_N3bbb9GG10011003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10011003fooEv,_ZThn20_N3bbb9GG10011003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10011003barEv,_ZThn28_N3bbb9GG10011003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10011003fooEv,_ZThn28_N3bbb9GG10011003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1001100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10011003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10011003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10011003fooEv,_ZThn8_N3bbb9GG10011003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10011003barEv,_ZThn8_N3bbb9GG10011003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10011003barEv,_ZThn20_N3bbb9GG10011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10011003fooEv,_ZThn20_N3bbb9GG10011003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10011003barEv,_ZThn28_N3bbb9GG10011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10011003fooEv,_ZThn28_N3bbb9GG10011003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1001100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1001100E[];
Class_Descriptor cd__ZN3bbb9GG1001100E = {  "_ZN3bbb9GG1001100E", // class name
  bases__ZN3bbb9GG1001100E, 6,
  &(vtc__ZN3bbb9GG1001100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1001100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1001100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1001101  : ::bbb::EE100 , ::bbb::FF110 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10011013barEv
  virtual void  foo(); // _ZN3bbb9GG10011013fooEv
  ~GG1001101(); // tgen
  GG1001101(); // tgen
};
//SIG(1 _ZN3bbb9GG1001101E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1001101 ::bar(){vfunc_called(this, "_ZN3bbb9GG10011013barEv");}
void  bbb::GG1001101 ::foo(){vfunc_called(this, "_ZN3bbb9GG10011013fooEv");}
bbb::GG1001101 ::~GG1001101(){ note_dtor("_ZN3bbb9GG1001101E", this);} // tgen
bbb::GG1001101 ::GG1001101(){ note_ctor("_ZN3bbb9GG1001101E", this);} // tgen
}
static void Test__ZN3bbb9GG1001101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1001101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1001101E, buf);
    ::bbb::GG1001101 *dp, &lv = *(dp=new (buf) ::bbb::GG1001101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1001101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1001101E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1001101E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1001101E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1001101E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1001101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG1001101E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1001101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1001101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1001101E);
    dp->::bbb::GG1001101::~GG1001101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1001101E(Test__ZN3bbb9GG1001101E, "_ZN3bbb9GG1001101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1001101C1Ev();
extern void _ZN3bbb9GG1001101D1Ev();
Name_Map name_map__ZN3bbb9GG1001101E[] = {
  NSPAIR(_ZN3bbb9GG1001101C1Ev),
  NSPAIR(_ZN3bbb9GG1001101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG1001101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1001101E[];
extern void _ZN3bbb9GG10011013barEv();
extern void _ZN3bbb9GG10011013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10011013fooEv,_ZThn8_N3bbb9GG10011013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10011013barEv,_ZThn8_N3bbb9GG10011013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10011013barEv,_ZThn20_N3bbb9GG10011013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10011013fooEv,_ZThn20_N3bbb9GG10011013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10011013barEv,_ZThn28_N3bbb9GG10011013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10011013fooEv,_ZThn28_N3bbb9GG10011013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1001101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10011013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10011013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10011013fooEv,_ZThn8_N3bbb9GG10011013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10011013barEv,_ZThn8_N3bbb9GG10011013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10011013barEv,_ZThn20_N3bbb9GG10011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10011013fooEv,_ZThn20_N3bbb9GG10011013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10011013barEv,_ZThn28_N3bbb9GG10011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10011013fooEv,_ZThn28_N3bbb9GG10011013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1001101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1001101E[];
Class_Descriptor cd__ZN3bbb9GG1001101E = {  "_ZN3bbb9GG1001101E", // class name
  bases__ZN3bbb9GG1001101E, 6,
  &(vtc__ZN3bbb9GG1001101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1001101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1001101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1001110  : ::bbb::EE100 , ::bbb::FF111 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10011103fooEv
  virtual void  bar(); // _ZN3bbb9GG10011103barEv
  ~GG1001110(); // tgen
  GG1001110(); // tgen
};
//SIG(1 _ZN3bbb9GG1001110E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1001110 ::foo(){vfunc_called(this, "_ZN3bbb9GG10011103fooEv");}
void  bbb::GG1001110 ::bar(){vfunc_called(this, "_ZN3bbb9GG10011103barEv");}
bbb::GG1001110 ::~GG1001110(){ note_dtor("_ZN3bbb9GG1001110E", this);} // tgen
bbb::GG1001110 ::GG1001110(){ note_ctor("_ZN3bbb9GG1001110E", this);} // tgen
}
static void Test__ZN3bbb9GG1001110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1001110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1001110E, buf);
    ::bbb::GG1001110 *dp, &lv = *(dp=new (buf) ::bbb::GG1001110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1001110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1001110E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1001110E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1001110E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1001110E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1001110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG1001110E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1001110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1001110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1001110E);
    dp->::bbb::GG1001110::~GG1001110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1001110E(Test__ZN3bbb9GG1001110E, "_ZN3bbb9GG1001110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1001110C1Ev();
extern void _ZN3bbb9GG1001110D1Ev();
Name_Map name_map__ZN3bbb9GG1001110E[] = {
  NSPAIR(_ZN3bbb9GG1001110C1Ev),
  NSPAIR(_ZN3bbb9GG1001110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG1001110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1001110E[];
extern void _ZN3bbb9GG10011103barEv();
extern void _ZN3bbb9GG10011103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10011103fooEv,_ZThn8_N3bbb9GG10011103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10011103barEv,_ZThn8_N3bbb9GG10011103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10011103barEv,_ZThn20_N3bbb9GG10011103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10011103fooEv,_ZThn20_N3bbb9GG10011103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10011103barEv,_ZThn28_N3bbb9GG10011103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10011103fooEv,_ZThn28_N3bbb9GG10011103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1001110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10011103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10011103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10011103fooEv,_ZThn8_N3bbb9GG10011103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10011103barEv,_ZThn8_N3bbb9GG10011103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10011103barEv,_ZThn20_N3bbb9GG10011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10011103fooEv,_ZThn20_N3bbb9GG10011103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10011103barEv,_ZThn28_N3bbb9GG10011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10011103fooEv,_ZThn28_N3bbb9GG10011103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1001110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1001110E[];
Class_Descriptor cd__ZN3bbb9GG1001110E = {  "_ZN3bbb9GG1001110E", // class name
  bases__ZN3bbb9GG1001110E, 6,
  &(vtc__ZN3bbb9GG1001110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1001110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1001110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1001111  : ::bbb::EE100 , ::bbb::FF111 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10011113barEv
  virtual void  foo(); // _ZN3bbb9GG10011113fooEv
  ~GG1001111(); // tgen
  GG1001111(); // tgen
};
//SIG(1 _ZN3bbb9GG1001111E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1001111 ::bar(){vfunc_called(this, "_ZN3bbb9GG10011113barEv");}
void  bbb::GG1001111 ::foo(){vfunc_called(this, "_ZN3bbb9GG10011113fooEv");}
bbb::GG1001111 ::~GG1001111(){ note_dtor("_ZN3bbb9GG1001111E", this);} // tgen
bbb::GG1001111 ::GG1001111(){ note_ctor("_ZN3bbb9GG1001111E", this);} // tgen
}
static void Test__ZN3bbb9GG1001111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1001111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1001111E, buf);
    ::bbb::GG1001111 *dp, &lv = *(dp=new (buf) ::bbb::GG1001111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1001111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1001111E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE100*), 0, "_ZN3bbb9GG1001111E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE100*), ABISELECT(16,8), "_ZN3bbb9GG1001111E");
    check_base_class_offset(lv, (::bbb::EE100*), 0, "_ZN3bbb9GG1001111E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1001111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG1001111E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1001111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1001111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1001111E);
    dp->::bbb::GG1001111::~GG1001111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1001111E(Test__ZN3bbb9GG1001111E, "_ZN3bbb9GG1001111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1001111C1Ev();
extern void _ZN3bbb9GG1001111D1Ev();
Name_Map name_map__ZN3bbb9GG1001111E[] = {
  NSPAIR(_ZN3bbb9GG1001111C1Ev),
  NSPAIR(_ZN3bbb9GG1001111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE100E;
extern VTBL_ENTRY _ZTIN3bbb5EE100E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE100E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG1001111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE100E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1001111E[];
extern void _ZN3bbb9GG10011113barEv();
extern void _ZN3bbb9GG10011113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10011113fooEv,_ZThn8_N3bbb9GG10011113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10011113barEv,_ZThn8_N3bbb9GG10011113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10011113barEv,_ZThn20_N3bbb9GG10011113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10011113fooEv,_ZThn20_N3bbb9GG10011113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10011113barEv,_ZThn28_N3bbb9GG10011113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10011113fooEv,_ZThn28_N3bbb9GG10011113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1001111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10011113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10011113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10011113fooEv,_ZThn8_N3bbb9GG10011113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10011113barEv,_ZThn8_N3bbb9GG10011113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10011113barEv,_ZThn20_N3bbb9GG10011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10011113fooEv,_ZThn20_N3bbb9GG10011113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1001111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10011113barEv,_ZThn28_N3bbb9GG10011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10011113fooEv,_ZThn28_N3bbb9GG10011113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1001111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1001111E[];
Class_Descriptor cd__ZN3bbb9GG1001111E = {  "_ZN3bbb9GG1001111E", // class name
  bases__ZN3bbb9GG1001111E, 6,
  &(vtc__ZN3bbb9GG1001111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1001111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1001111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1010000  : ::bbb::EE101 , ::bbb::FF000 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10100003fooEv
  virtual void  bar(); // _ZN3bbb9GG10100003barEv
  ~GG1010000(); // tgen
  GG1010000(); // tgen
};
//SIG(1 _ZN3bbb9GG1010000E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1010000 ::foo(){vfunc_called(this, "_ZN3bbb9GG10100003fooEv");}
void  bbb::GG1010000 ::bar(){vfunc_called(this, "_ZN3bbb9GG10100003barEv");}
bbb::GG1010000 ::~GG1010000(){ note_dtor("_ZN3bbb9GG1010000E", this);} // tgen
bbb::GG1010000 ::GG1010000(){ note_ctor("_ZN3bbb9GG1010000E", this);} // tgen
}
static void Test__ZN3bbb9GG1010000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1010000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1010000E, buf);
    ::bbb::GG1010000 *dp, &lv = *(dp=new (buf) ::bbb::GG1010000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1010000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1010000E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1010000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1010000E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1010000E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1010000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG1010000E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1010000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1010000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1010000E);
    dp->::bbb::GG1010000::~GG1010000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1010000E(Test__ZN3bbb9GG1010000E, "_ZN3bbb9GG1010000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1010000C1Ev();
extern void _ZN3bbb9GG1010000D1Ev();
Name_Map name_map__ZN3bbb9GG1010000E[] = {
  NSPAIR(_ZN3bbb9GG1010000C1Ev),
  NSPAIR(_ZN3bbb9GG1010000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG1010000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1010000E[];
extern void _ZN3bbb9GG10100003barEv();
extern void _ZN3bbb9GG10100003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10100003fooEv,_ZThn8_N3bbb9GG10100003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10100003barEv,_ZThn8_N3bbb9GG10100003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10100003fooEv,_ZThn20_N3bbb9GG10100003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10100003barEv,_ZThn20_N3bbb9GG10100003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10100003fooEv,_ZThn28_N3bbb9GG10100003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10100003barEv,_ZThn28_N3bbb9GG10100003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1010000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10100003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10100003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10100003fooEv,_ZThn8_N3bbb9GG10100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10100003barEv,_ZThn8_N3bbb9GG10100003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10100003fooEv,_ZThn20_N3bbb9GG10100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10100003barEv,_ZThn20_N3bbb9GG10100003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10100003fooEv,_ZThn28_N3bbb9GG10100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10100003barEv,_ZThn28_N3bbb9GG10100003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1010000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1010000E[];
Class_Descriptor cd__ZN3bbb9GG1010000E = {  "_ZN3bbb9GG1010000E", // class name
  bases__ZN3bbb9GG1010000E, 6,
  &(vtc__ZN3bbb9GG1010000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1010000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1010000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1010001  : ::bbb::EE101 , ::bbb::FF000 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10100013barEv
  virtual void  foo(); // _ZN3bbb9GG10100013fooEv
  ~GG1010001(); // tgen
  GG1010001(); // tgen
};
//SIG(1 _ZN3bbb9GG1010001E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1010001 ::bar(){vfunc_called(this, "_ZN3bbb9GG10100013barEv");}
void  bbb::GG1010001 ::foo(){vfunc_called(this, "_ZN3bbb9GG10100013fooEv");}
bbb::GG1010001 ::~GG1010001(){ note_dtor("_ZN3bbb9GG1010001E", this);} // tgen
bbb::GG1010001 ::GG1010001(){ note_ctor("_ZN3bbb9GG1010001E", this);} // tgen
}
static void Test__ZN3bbb9GG1010001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1010001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1010001E, buf);
    ::bbb::GG1010001 *dp, &lv = *(dp=new (buf) ::bbb::GG1010001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1010001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1010001E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1010001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1010001E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1010001E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1010001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG1010001E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1010001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1010001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1010001E);
    dp->::bbb::GG1010001::~GG1010001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1010001E(Test__ZN3bbb9GG1010001E, "_ZN3bbb9GG1010001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1010001C1Ev();
extern void _ZN3bbb9GG1010001D1Ev();
Name_Map name_map__ZN3bbb9GG1010001E[] = {
  NSPAIR(_ZN3bbb9GG1010001C1Ev),
  NSPAIR(_ZN3bbb9GG1010001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG1010001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1010001E[];
extern void _ZN3bbb9GG10100013barEv();
extern void _ZN3bbb9GG10100013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10100013fooEv,_ZThn8_N3bbb9GG10100013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10100013barEv,_ZThn8_N3bbb9GG10100013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10100013fooEv,_ZThn20_N3bbb9GG10100013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10100013barEv,_ZThn20_N3bbb9GG10100013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10100013fooEv,_ZThn28_N3bbb9GG10100013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10100013barEv,_ZThn28_N3bbb9GG10100013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1010001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10100013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10100013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10100013fooEv,_ZThn8_N3bbb9GG10100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10100013barEv,_ZThn8_N3bbb9GG10100013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10100013fooEv,_ZThn20_N3bbb9GG10100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10100013barEv,_ZThn20_N3bbb9GG10100013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10100013fooEv,_ZThn28_N3bbb9GG10100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10100013barEv,_ZThn28_N3bbb9GG10100013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1010001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1010001E[];
Class_Descriptor cd__ZN3bbb9GG1010001E = {  "_ZN3bbb9GG1010001E", // class name
  bases__ZN3bbb9GG1010001E, 6,
  &(vtc__ZN3bbb9GG1010001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1010001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1010001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1010010  : ::bbb::EE101 , ::bbb::FF001 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10100103fooEv
  virtual void  bar(); // _ZN3bbb9GG10100103barEv
  ~GG1010010(); // tgen
  GG1010010(); // tgen
};
//SIG(1 _ZN3bbb9GG1010010E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1010010 ::foo(){vfunc_called(this, "_ZN3bbb9GG10100103fooEv");}
void  bbb::GG1010010 ::bar(){vfunc_called(this, "_ZN3bbb9GG10100103barEv");}
bbb::GG1010010 ::~GG1010010(){ note_dtor("_ZN3bbb9GG1010010E", this);} // tgen
bbb::GG1010010 ::GG1010010(){ note_ctor("_ZN3bbb9GG1010010E", this);} // tgen
}
static void Test__ZN3bbb9GG1010010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1010010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1010010E, buf);
    ::bbb::GG1010010 *dp, &lv = *(dp=new (buf) ::bbb::GG1010010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1010010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1010010E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1010010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1010010E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1010010E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1010010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG1010010E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1010010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1010010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1010010E);
    dp->::bbb::GG1010010::~GG1010010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1010010E(Test__ZN3bbb9GG1010010E, "_ZN3bbb9GG1010010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1010010C1Ev();
extern void _ZN3bbb9GG1010010D1Ev();
Name_Map name_map__ZN3bbb9GG1010010E[] = {
  NSPAIR(_ZN3bbb9GG1010010C1Ev),
  NSPAIR(_ZN3bbb9GG1010010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG1010010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1010010E[];
extern void _ZN3bbb9GG10100103barEv();
extern void _ZN3bbb9GG10100103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10100103fooEv,_ZThn8_N3bbb9GG10100103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10100103barEv,_ZThn8_N3bbb9GG10100103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10100103fooEv,_ZThn20_N3bbb9GG10100103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10100103barEv,_ZThn20_N3bbb9GG10100103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10100103fooEv,_ZThn28_N3bbb9GG10100103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10100103barEv,_ZThn28_N3bbb9GG10100103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1010010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10100103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10100103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10100103fooEv,_ZThn8_N3bbb9GG10100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10100103barEv,_ZThn8_N3bbb9GG10100103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10100103fooEv,_ZThn20_N3bbb9GG10100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10100103barEv,_ZThn20_N3bbb9GG10100103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10100103fooEv,_ZThn28_N3bbb9GG10100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10100103barEv,_ZThn28_N3bbb9GG10100103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1010010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1010010E[];
Class_Descriptor cd__ZN3bbb9GG1010010E = {  "_ZN3bbb9GG1010010E", // class name
  bases__ZN3bbb9GG1010010E, 6,
  &(vtc__ZN3bbb9GG1010010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1010010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1010010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1010011  : ::bbb::EE101 , ::bbb::FF001 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10100113barEv
  virtual void  foo(); // _ZN3bbb9GG10100113fooEv
  ~GG1010011(); // tgen
  GG1010011(); // tgen
};
//SIG(1 _ZN3bbb9GG1010011E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1010011 ::bar(){vfunc_called(this, "_ZN3bbb9GG10100113barEv");}
void  bbb::GG1010011 ::foo(){vfunc_called(this, "_ZN3bbb9GG10100113fooEv");}
bbb::GG1010011 ::~GG1010011(){ note_dtor("_ZN3bbb9GG1010011E", this);} // tgen
bbb::GG1010011 ::GG1010011(){ note_ctor("_ZN3bbb9GG1010011E", this);} // tgen
}
static void Test__ZN3bbb9GG1010011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1010011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1010011E, buf);
    ::bbb::GG1010011 *dp, &lv = *(dp=new (buf) ::bbb::GG1010011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1010011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1010011E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1010011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1010011E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1010011E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1010011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG1010011E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1010011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1010011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1010011E);
    dp->::bbb::GG1010011::~GG1010011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1010011E(Test__ZN3bbb9GG1010011E, "_ZN3bbb9GG1010011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1010011C1Ev();
extern void _ZN3bbb9GG1010011D1Ev();
Name_Map name_map__ZN3bbb9GG1010011E[] = {
  NSPAIR(_ZN3bbb9GG1010011C1Ev),
  NSPAIR(_ZN3bbb9GG1010011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG1010011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1010011E[];
extern void _ZN3bbb9GG10100113barEv();
extern void _ZN3bbb9GG10100113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10100113fooEv,_ZThn8_N3bbb9GG10100113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10100113barEv,_ZThn8_N3bbb9GG10100113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10100113fooEv,_ZThn20_N3bbb9GG10100113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10100113barEv,_ZThn20_N3bbb9GG10100113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10100113fooEv,_ZThn28_N3bbb9GG10100113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10100113barEv,_ZThn28_N3bbb9GG10100113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1010011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10100113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10100113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10100113fooEv,_ZThn8_N3bbb9GG10100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10100113barEv,_ZThn8_N3bbb9GG10100113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10100113fooEv,_ZThn20_N3bbb9GG10100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10100113barEv,_ZThn20_N3bbb9GG10100113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10100113fooEv,_ZThn28_N3bbb9GG10100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10100113barEv,_ZThn28_N3bbb9GG10100113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1010011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1010011E[];
Class_Descriptor cd__ZN3bbb9GG1010011E = {  "_ZN3bbb9GG1010011E", // class name
  bases__ZN3bbb9GG1010011E, 6,
  &(vtc__ZN3bbb9GG1010011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1010011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1010011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1010100  : ::bbb::EE101 , ::bbb::FF010 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10101003fooEv
  virtual void  bar(); // _ZN3bbb9GG10101003barEv
  ~GG1010100(); // tgen
  GG1010100(); // tgen
};
//SIG(1 _ZN3bbb9GG1010100E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1010100 ::foo(){vfunc_called(this, "_ZN3bbb9GG10101003fooEv");}
void  bbb::GG1010100 ::bar(){vfunc_called(this, "_ZN3bbb9GG10101003barEv");}
bbb::GG1010100 ::~GG1010100(){ note_dtor("_ZN3bbb9GG1010100E", this);} // tgen
bbb::GG1010100 ::GG1010100(){ note_ctor("_ZN3bbb9GG1010100E", this);} // tgen
}
static void Test__ZN3bbb9GG1010100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1010100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1010100E, buf);
    ::bbb::GG1010100 *dp, &lv = *(dp=new (buf) ::bbb::GG1010100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1010100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1010100E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1010100E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1010100E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1010100E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1010100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG1010100E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1010100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1010100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1010100E);
    dp->::bbb::GG1010100::~GG1010100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1010100E(Test__ZN3bbb9GG1010100E, "_ZN3bbb9GG1010100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1010100C1Ev();
extern void _ZN3bbb9GG1010100D1Ev();
Name_Map name_map__ZN3bbb9GG1010100E[] = {
  NSPAIR(_ZN3bbb9GG1010100C1Ev),
  NSPAIR(_ZN3bbb9GG1010100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG1010100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1010100E[];
extern void _ZN3bbb9GG10101003barEv();
extern void _ZN3bbb9GG10101003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10101003fooEv,_ZThn8_N3bbb9GG10101003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10101003barEv,_ZThn8_N3bbb9GG10101003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10101003fooEv,_ZThn20_N3bbb9GG10101003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10101003barEv,_ZThn20_N3bbb9GG10101003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10101003barEv,_ZThn28_N3bbb9GG10101003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10101003fooEv,_ZThn28_N3bbb9GG10101003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1010100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10101003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10101003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10101003fooEv,_ZThn8_N3bbb9GG10101003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10101003barEv,_ZThn8_N3bbb9GG10101003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10101003fooEv,_ZThn20_N3bbb9GG10101003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10101003barEv,_ZThn20_N3bbb9GG10101003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10101003barEv,_ZThn28_N3bbb9GG10101003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10101003fooEv,_ZThn28_N3bbb9GG10101003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1010100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1010100E[];
Class_Descriptor cd__ZN3bbb9GG1010100E = {  "_ZN3bbb9GG1010100E", // class name
  bases__ZN3bbb9GG1010100E, 6,
  &(vtc__ZN3bbb9GG1010100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1010100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1010100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1010101  : ::bbb::EE101 , ::bbb::FF010 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10101013barEv
  virtual void  foo(); // _ZN3bbb9GG10101013fooEv
  ~GG1010101(); // tgen
  GG1010101(); // tgen
};
//SIG(1 _ZN3bbb9GG1010101E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1010101 ::bar(){vfunc_called(this, "_ZN3bbb9GG10101013barEv");}
void  bbb::GG1010101 ::foo(){vfunc_called(this, "_ZN3bbb9GG10101013fooEv");}
bbb::GG1010101 ::~GG1010101(){ note_dtor("_ZN3bbb9GG1010101E", this);} // tgen
bbb::GG1010101 ::GG1010101(){ note_ctor("_ZN3bbb9GG1010101E", this);} // tgen
}
static void Test__ZN3bbb9GG1010101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1010101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1010101E, buf);
    ::bbb::GG1010101 *dp, &lv = *(dp=new (buf) ::bbb::GG1010101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1010101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1010101E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1010101E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1010101E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1010101E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1010101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG1010101E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1010101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1010101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1010101E);
    dp->::bbb::GG1010101::~GG1010101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1010101E(Test__ZN3bbb9GG1010101E, "_ZN3bbb9GG1010101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1010101C1Ev();
extern void _ZN3bbb9GG1010101D1Ev();
Name_Map name_map__ZN3bbb9GG1010101E[] = {
  NSPAIR(_ZN3bbb9GG1010101C1Ev),
  NSPAIR(_ZN3bbb9GG1010101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG1010101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1010101E[];
extern void _ZN3bbb9GG10101013barEv();
extern void _ZN3bbb9GG10101013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10101013fooEv,_ZThn8_N3bbb9GG10101013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10101013barEv,_ZThn8_N3bbb9GG10101013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10101013fooEv,_ZThn20_N3bbb9GG10101013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10101013barEv,_ZThn20_N3bbb9GG10101013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10101013barEv,_ZThn28_N3bbb9GG10101013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10101013fooEv,_ZThn28_N3bbb9GG10101013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1010101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10101013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10101013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10101013fooEv,_ZThn8_N3bbb9GG10101013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10101013barEv,_ZThn8_N3bbb9GG10101013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10101013fooEv,_ZThn20_N3bbb9GG10101013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10101013barEv,_ZThn20_N3bbb9GG10101013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10101013barEv,_ZThn28_N3bbb9GG10101013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10101013fooEv,_ZThn28_N3bbb9GG10101013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1010101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1010101E[];
Class_Descriptor cd__ZN3bbb9GG1010101E = {  "_ZN3bbb9GG1010101E", // class name
  bases__ZN3bbb9GG1010101E, 6,
  &(vtc__ZN3bbb9GG1010101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1010101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1010101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1010110  : ::bbb::EE101 , ::bbb::FF011 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10101103fooEv
  virtual void  bar(); // _ZN3bbb9GG10101103barEv
  ~GG1010110(); // tgen
  GG1010110(); // tgen
};
//SIG(1 _ZN3bbb9GG1010110E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1010110 ::foo(){vfunc_called(this, "_ZN3bbb9GG10101103fooEv");}
void  bbb::GG1010110 ::bar(){vfunc_called(this, "_ZN3bbb9GG10101103barEv");}
bbb::GG1010110 ::~GG1010110(){ note_dtor("_ZN3bbb9GG1010110E", this);} // tgen
bbb::GG1010110 ::GG1010110(){ note_ctor("_ZN3bbb9GG1010110E", this);} // tgen
}
static void Test__ZN3bbb9GG1010110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1010110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1010110E, buf);
    ::bbb::GG1010110 *dp, &lv = *(dp=new (buf) ::bbb::GG1010110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1010110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1010110E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1010110E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1010110E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1010110E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1010110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG1010110E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1010110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1010110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1010110E);
    dp->::bbb::GG1010110::~GG1010110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1010110E(Test__ZN3bbb9GG1010110E, "_ZN3bbb9GG1010110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1010110C1Ev();
extern void _ZN3bbb9GG1010110D1Ev();
Name_Map name_map__ZN3bbb9GG1010110E[] = {
  NSPAIR(_ZN3bbb9GG1010110C1Ev),
  NSPAIR(_ZN3bbb9GG1010110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG1010110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1010110E[];
extern void _ZN3bbb9GG10101103barEv();
extern void _ZN3bbb9GG10101103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10101103fooEv,_ZThn8_N3bbb9GG10101103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10101103barEv,_ZThn8_N3bbb9GG10101103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10101103fooEv,_ZThn20_N3bbb9GG10101103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10101103barEv,_ZThn20_N3bbb9GG10101103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10101103barEv,_ZThn28_N3bbb9GG10101103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10101103fooEv,_ZThn28_N3bbb9GG10101103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1010110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10101103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10101103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10101103fooEv,_ZThn8_N3bbb9GG10101103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10101103barEv,_ZThn8_N3bbb9GG10101103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10101103fooEv,_ZThn20_N3bbb9GG10101103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10101103barEv,_ZThn20_N3bbb9GG10101103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10101103barEv,_ZThn28_N3bbb9GG10101103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10101103fooEv,_ZThn28_N3bbb9GG10101103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1010110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1010110E[];
Class_Descriptor cd__ZN3bbb9GG1010110E = {  "_ZN3bbb9GG1010110E", // class name
  bases__ZN3bbb9GG1010110E, 6,
  &(vtc__ZN3bbb9GG1010110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1010110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1010110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1010111  : ::bbb::EE101 , ::bbb::FF011 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10101113barEv
  virtual void  foo(); // _ZN3bbb9GG10101113fooEv
  ~GG1010111(); // tgen
  GG1010111(); // tgen
};
//SIG(1 _ZN3bbb9GG1010111E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1010111 ::bar(){vfunc_called(this, "_ZN3bbb9GG10101113barEv");}
void  bbb::GG1010111 ::foo(){vfunc_called(this, "_ZN3bbb9GG10101113fooEv");}
bbb::GG1010111 ::~GG1010111(){ note_dtor("_ZN3bbb9GG1010111E", this);} // tgen
bbb::GG1010111 ::GG1010111(){ note_ctor("_ZN3bbb9GG1010111E", this);} // tgen
}
static void Test__ZN3bbb9GG1010111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1010111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1010111E, buf);
    ::bbb::GG1010111 *dp, &lv = *(dp=new (buf) ::bbb::GG1010111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1010111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1010111E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1010111E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1010111E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1010111E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1010111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG1010111E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1010111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1010111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1010111E);
    dp->::bbb::GG1010111::~GG1010111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1010111E(Test__ZN3bbb9GG1010111E, "_ZN3bbb9GG1010111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1010111C1Ev();
extern void _ZN3bbb9GG1010111D1Ev();
Name_Map name_map__ZN3bbb9GG1010111E[] = {
  NSPAIR(_ZN3bbb9GG1010111C1Ev),
  NSPAIR(_ZN3bbb9GG1010111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG1010111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1010111E[];
extern void _ZN3bbb9GG10101113barEv();
extern void _ZN3bbb9GG10101113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10101113fooEv,_ZThn8_N3bbb9GG10101113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10101113barEv,_ZThn8_N3bbb9GG10101113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10101113fooEv,_ZThn20_N3bbb9GG10101113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10101113barEv,_ZThn20_N3bbb9GG10101113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10101113barEv,_ZThn28_N3bbb9GG10101113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10101113fooEv,_ZThn28_N3bbb9GG10101113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1010111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10101113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10101113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10101113fooEv,_ZThn8_N3bbb9GG10101113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10101113barEv,_ZThn8_N3bbb9GG10101113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10101113fooEv,_ZThn20_N3bbb9GG10101113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10101113barEv,_ZThn20_N3bbb9GG10101113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1010111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10101113barEv,_ZThn28_N3bbb9GG10101113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10101113fooEv,_ZThn28_N3bbb9GG10101113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1010111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1010111E[];
Class_Descriptor cd__ZN3bbb9GG1010111E = {  "_ZN3bbb9GG1010111E", // class name
  bases__ZN3bbb9GG1010111E, 6,
  &(vtc__ZN3bbb9GG1010111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1010111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1010111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1011000  : ::bbb::EE101 , ::bbb::FF100 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10110003fooEv
  virtual void  bar(); // _ZN3bbb9GG10110003barEv
  ~GG1011000(); // tgen
  GG1011000(); // tgen
};
//SIG(1 _ZN3bbb9GG1011000E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1011000 ::foo(){vfunc_called(this, "_ZN3bbb9GG10110003fooEv");}
void  bbb::GG1011000 ::bar(){vfunc_called(this, "_ZN3bbb9GG10110003barEv");}
bbb::GG1011000 ::~GG1011000(){ note_dtor("_ZN3bbb9GG1011000E", this);} // tgen
bbb::GG1011000 ::GG1011000(){ note_ctor("_ZN3bbb9GG1011000E", this);} // tgen
}
static void Test__ZN3bbb9GG1011000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1011000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1011000E, buf);
    ::bbb::GG1011000 *dp, &lv = *(dp=new (buf) ::bbb::GG1011000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1011000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1011000E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1011000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1011000E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1011000E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1011000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG1011000E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1011000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1011000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1011000E);
    dp->::bbb::GG1011000::~GG1011000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1011000E(Test__ZN3bbb9GG1011000E, "_ZN3bbb9GG1011000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1011000C1Ev();
extern void _ZN3bbb9GG1011000D1Ev();
Name_Map name_map__ZN3bbb9GG1011000E[] = {
  NSPAIR(_ZN3bbb9GG1011000C1Ev),
  NSPAIR(_ZN3bbb9GG1011000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG1011000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1011000E[];
extern void _ZN3bbb9GG10110003barEv();
extern void _ZN3bbb9GG10110003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10110003fooEv,_ZThn8_N3bbb9GG10110003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10110003barEv,_ZThn8_N3bbb9GG10110003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10110003barEv,_ZThn20_N3bbb9GG10110003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10110003fooEv,_ZThn20_N3bbb9GG10110003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10110003fooEv,_ZThn28_N3bbb9GG10110003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10110003barEv,_ZThn28_N3bbb9GG10110003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1011000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10110003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10110003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10110003fooEv,_ZThn8_N3bbb9GG10110003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10110003barEv,_ZThn8_N3bbb9GG10110003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10110003barEv,_ZThn20_N3bbb9GG10110003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10110003fooEv,_ZThn20_N3bbb9GG10110003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10110003fooEv,_ZThn28_N3bbb9GG10110003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10110003barEv,_ZThn28_N3bbb9GG10110003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1011000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1011000E[];
Class_Descriptor cd__ZN3bbb9GG1011000E = {  "_ZN3bbb9GG1011000E", // class name
  bases__ZN3bbb9GG1011000E, 6,
  &(vtc__ZN3bbb9GG1011000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1011000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1011000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1011001  : ::bbb::EE101 , ::bbb::FF100 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10110013barEv
  virtual void  foo(); // _ZN3bbb9GG10110013fooEv
  ~GG1011001(); // tgen
  GG1011001(); // tgen
};
//SIG(1 _ZN3bbb9GG1011001E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1011001 ::bar(){vfunc_called(this, "_ZN3bbb9GG10110013barEv");}
void  bbb::GG1011001 ::foo(){vfunc_called(this, "_ZN3bbb9GG10110013fooEv");}
bbb::GG1011001 ::~GG1011001(){ note_dtor("_ZN3bbb9GG1011001E", this);} // tgen
bbb::GG1011001 ::GG1011001(){ note_ctor("_ZN3bbb9GG1011001E", this);} // tgen
}
static void Test__ZN3bbb9GG1011001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1011001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1011001E, buf);
    ::bbb::GG1011001 *dp, &lv = *(dp=new (buf) ::bbb::GG1011001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1011001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1011001E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1011001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1011001E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1011001E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1011001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG1011001E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1011001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1011001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1011001E);
    dp->::bbb::GG1011001::~GG1011001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1011001E(Test__ZN3bbb9GG1011001E, "_ZN3bbb9GG1011001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1011001C1Ev();
extern void _ZN3bbb9GG1011001D1Ev();
Name_Map name_map__ZN3bbb9GG1011001E[] = {
  NSPAIR(_ZN3bbb9GG1011001C1Ev),
  NSPAIR(_ZN3bbb9GG1011001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG1011001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1011001E[];
extern void _ZN3bbb9GG10110013barEv();
extern void _ZN3bbb9GG10110013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10110013fooEv,_ZThn8_N3bbb9GG10110013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10110013barEv,_ZThn8_N3bbb9GG10110013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10110013barEv,_ZThn20_N3bbb9GG10110013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10110013fooEv,_ZThn20_N3bbb9GG10110013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10110013fooEv,_ZThn28_N3bbb9GG10110013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10110013barEv,_ZThn28_N3bbb9GG10110013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1011001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10110013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10110013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10110013fooEv,_ZThn8_N3bbb9GG10110013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10110013barEv,_ZThn8_N3bbb9GG10110013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10110013barEv,_ZThn20_N3bbb9GG10110013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10110013fooEv,_ZThn20_N3bbb9GG10110013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10110013fooEv,_ZThn28_N3bbb9GG10110013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10110013barEv,_ZThn28_N3bbb9GG10110013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1011001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1011001E[];
Class_Descriptor cd__ZN3bbb9GG1011001E = {  "_ZN3bbb9GG1011001E", // class name
  bases__ZN3bbb9GG1011001E, 6,
  &(vtc__ZN3bbb9GG1011001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1011001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1011001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1011010  : ::bbb::EE101 , ::bbb::FF101 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10110103fooEv
  virtual void  bar(); // _ZN3bbb9GG10110103barEv
  ~GG1011010(); // tgen
  GG1011010(); // tgen
};
//SIG(1 _ZN3bbb9GG1011010E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1011010 ::foo(){vfunc_called(this, "_ZN3bbb9GG10110103fooEv");}
void  bbb::GG1011010 ::bar(){vfunc_called(this, "_ZN3bbb9GG10110103barEv");}
bbb::GG1011010 ::~GG1011010(){ note_dtor("_ZN3bbb9GG1011010E", this);} // tgen
bbb::GG1011010 ::GG1011010(){ note_ctor("_ZN3bbb9GG1011010E", this);} // tgen
}
static void Test__ZN3bbb9GG1011010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1011010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1011010E, buf);
    ::bbb::GG1011010 *dp, &lv = *(dp=new (buf) ::bbb::GG1011010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1011010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1011010E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1011010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1011010E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1011010E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1011010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG1011010E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1011010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1011010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1011010E);
    dp->::bbb::GG1011010::~GG1011010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1011010E(Test__ZN3bbb9GG1011010E, "_ZN3bbb9GG1011010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1011010C1Ev();
extern void _ZN3bbb9GG1011010D1Ev();
Name_Map name_map__ZN3bbb9GG1011010E[] = {
  NSPAIR(_ZN3bbb9GG1011010C1Ev),
  NSPAIR(_ZN3bbb9GG1011010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG1011010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1011010E[];
extern void _ZN3bbb9GG10110103barEv();
extern void _ZN3bbb9GG10110103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10110103fooEv,_ZThn8_N3bbb9GG10110103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10110103barEv,_ZThn8_N3bbb9GG10110103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10110103barEv,_ZThn20_N3bbb9GG10110103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10110103fooEv,_ZThn20_N3bbb9GG10110103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10110103fooEv,_ZThn28_N3bbb9GG10110103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10110103barEv,_ZThn28_N3bbb9GG10110103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1011010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10110103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10110103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10110103fooEv,_ZThn8_N3bbb9GG10110103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10110103barEv,_ZThn8_N3bbb9GG10110103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10110103barEv,_ZThn20_N3bbb9GG10110103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10110103fooEv,_ZThn20_N3bbb9GG10110103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10110103fooEv,_ZThn28_N3bbb9GG10110103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10110103barEv,_ZThn28_N3bbb9GG10110103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1011010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1011010E[];
Class_Descriptor cd__ZN3bbb9GG1011010E = {  "_ZN3bbb9GG1011010E", // class name
  bases__ZN3bbb9GG1011010E, 6,
  &(vtc__ZN3bbb9GG1011010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1011010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1011010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1011011  : ::bbb::EE101 , ::bbb::FF101 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10110113barEv
  virtual void  foo(); // _ZN3bbb9GG10110113fooEv
  ~GG1011011(); // tgen
  GG1011011(); // tgen
};
//SIG(1 _ZN3bbb9GG1011011E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1011011 ::bar(){vfunc_called(this, "_ZN3bbb9GG10110113barEv");}
void  bbb::GG1011011 ::foo(){vfunc_called(this, "_ZN3bbb9GG10110113fooEv");}
bbb::GG1011011 ::~GG1011011(){ note_dtor("_ZN3bbb9GG1011011E", this);} // tgen
bbb::GG1011011 ::GG1011011(){ note_ctor("_ZN3bbb9GG1011011E", this);} // tgen
}
static void Test__ZN3bbb9GG1011011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1011011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1011011E, buf);
    ::bbb::GG1011011 *dp, &lv = *(dp=new (buf) ::bbb::GG1011011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1011011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1011011E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1011011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1011011E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1011011E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1011011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG1011011E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1011011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1011011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1011011E);
    dp->::bbb::GG1011011::~GG1011011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1011011E(Test__ZN3bbb9GG1011011E, "_ZN3bbb9GG1011011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1011011C1Ev();
extern void _ZN3bbb9GG1011011D1Ev();
Name_Map name_map__ZN3bbb9GG1011011E[] = {
  NSPAIR(_ZN3bbb9GG1011011C1Ev),
  NSPAIR(_ZN3bbb9GG1011011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG1011011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1011011E[];
extern void _ZN3bbb9GG10110113barEv();
extern void _ZN3bbb9GG10110113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10110113fooEv,_ZThn8_N3bbb9GG10110113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10110113barEv,_ZThn8_N3bbb9GG10110113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10110113barEv,_ZThn20_N3bbb9GG10110113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10110113fooEv,_ZThn20_N3bbb9GG10110113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10110113fooEv,_ZThn28_N3bbb9GG10110113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10110113barEv,_ZThn28_N3bbb9GG10110113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1011011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10110113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10110113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10110113fooEv,_ZThn8_N3bbb9GG10110113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10110113barEv,_ZThn8_N3bbb9GG10110113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10110113barEv,_ZThn20_N3bbb9GG10110113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10110113fooEv,_ZThn20_N3bbb9GG10110113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10110113fooEv,_ZThn28_N3bbb9GG10110113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10110113barEv,_ZThn28_N3bbb9GG10110113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1011011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1011011E[];
Class_Descriptor cd__ZN3bbb9GG1011011E = {  "_ZN3bbb9GG1011011E", // class name
  bases__ZN3bbb9GG1011011E, 6,
  &(vtc__ZN3bbb9GG1011011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1011011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1011011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1011100  : ::bbb::EE101 , ::bbb::FF110 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10111003fooEv
  virtual void  bar(); // _ZN3bbb9GG10111003barEv
  ~GG1011100(); // tgen
  GG1011100(); // tgen
};
//SIG(1 _ZN3bbb9GG1011100E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1011100 ::foo(){vfunc_called(this, "_ZN3bbb9GG10111003fooEv");}
void  bbb::GG1011100 ::bar(){vfunc_called(this, "_ZN3bbb9GG10111003barEv");}
bbb::GG1011100 ::~GG1011100(){ note_dtor("_ZN3bbb9GG1011100E", this);} // tgen
bbb::GG1011100 ::GG1011100(){ note_ctor("_ZN3bbb9GG1011100E", this);} // tgen
}
static void Test__ZN3bbb9GG1011100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1011100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1011100E, buf);
    ::bbb::GG1011100 *dp, &lv = *(dp=new (buf) ::bbb::GG1011100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1011100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1011100E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1011100E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1011100E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1011100E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1011100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG1011100E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1011100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1011100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1011100E);
    dp->::bbb::GG1011100::~GG1011100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1011100E(Test__ZN3bbb9GG1011100E, "_ZN3bbb9GG1011100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1011100C1Ev();
extern void _ZN3bbb9GG1011100D1Ev();
Name_Map name_map__ZN3bbb9GG1011100E[] = {
  NSPAIR(_ZN3bbb9GG1011100C1Ev),
  NSPAIR(_ZN3bbb9GG1011100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG1011100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1011100E[];
extern void _ZN3bbb9GG10111003barEv();
extern void _ZN3bbb9GG10111003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10111003fooEv,_ZThn8_N3bbb9GG10111003fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10111003barEv,_ZThn8_N3bbb9GG10111003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10111003barEv,_ZThn20_N3bbb9GG10111003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10111003fooEv,_ZThn20_N3bbb9GG10111003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10111003barEv,_ZThn28_N3bbb9GG10111003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10111003fooEv,_ZThn28_N3bbb9GG10111003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1011100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10111003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10111003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10111003fooEv,_ZThn8_N3bbb9GG10111003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10111003barEv,_ZThn8_N3bbb9GG10111003barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10111003barEv,_ZThn20_N3bbb9GG10111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10111003fooEv,_ZThn20_N3bbb9GG10111003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10111003barEv,_ZThn28_N3bbb9GG10111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10111003fooEv,_ZThn28_N3bbb9GG10111003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1011100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1011100E[];
Class_Descriptor cd__ZN3bbb9GG1011100E = {  "_ZN3bbb9GG1011100E", // class name
  bases__ZN3bbb9GG1011100E, 6,
  &(vtc__ZN3bbb9GG1011100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1011100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1011100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1011101  : ::bbb::EE101 , ::bbb::FF110 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10111013barEv
  virtual void  foo(); // _ZN3bbb9GG10111013fooEv
  ~GG1011101(); // tgen
  GG1011101(); // tgen
};
//SIG(1 _ZN3bbb9GG1011101E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1011101 ::bar(){vfunc_called(this, "_ZN3bbb9GG10111013barEv");}
void  bbb::GG1011101 ::foo(){vfunc_called(this, "_ZN3bbb9GG10111013fooEv");}
bbb::GG1011101 ::~GG1011101(){ note_dtor("_ZN3bbb9GG1011101E", this);} // tgen
bbb::GG1011101 ::GG1011101(){ note_ctor("_ZN3bbb9GG1011101E", this);} // tgen
}
static void Test__ZN3bbb9GG1011101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1011101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1011101E, buf);
    ::bbb::GG1011101 *dp, &lv = *(dp=new (buf) ::bbb::GG1011101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1011101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1011101E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1011101E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1011101E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1011101E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1011101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG1011101E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1011101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1011101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1011101E);
    dp->::bbb::GG1011101::~GG1011101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1011101E(Test__ZN3bbb9GG1011101E, "_ZN3bbb9GG1011101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1011101C1Ev();
extern void _ZN3bbb9GG1011101D1Ev();
Name_Map name_map__ZN3bbb9GG1011101E[] = {
  NSPAIR(_ZN3bbb9GG1011101C1Ev),
  NSPAIR(_ZN3bbb9GG1011101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG1011101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1011101E[];
extern void _ZN3bbb9GG10111013barEv();
extern void _ZN3bbb9GG10111013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10111013fooEv,_ZThn8_N3bbb9GG10111013fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10111013barEv,_ZThn8_N3bbb9GG10111013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10111013barEv,_ZThn20_N3bbb9GG10111013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10111013fooEv,_ZThn20_N3bbb9GG10111013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10111013barEv,_ZThn28_N3bbb9GG10111013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10111013fooEv,_ZThn28_N3bbb9GG10111013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1011101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10111013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10111013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10111013fooEv,_ZThn8_N3bbb9GG10111013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10111013barEv,_ZThn8_N3bbb9GG10111013barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10111013barEv,_ZThn20_N3bbb9GG10111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10111013fooEv,_ZThn20_N3bbb9GG10111013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10111013barEv,_ZThn28_N3bbb9GG10111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10111013fooEv,_ZThn28_N3bbb9GG10111013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1011101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1011101E[];
Class_Descriptor cd__ZN3bbb9GG1011101E = {  "_ZN3bbb9GG1011101E", // class name
  bases__ZN3bbb9GG1011101E, 6,
  &(vtc__ZN3bbb9GG1011101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1011101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1011101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1011110  : ::bbb::EE101 , ::bbb::FF111 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG10111103fooEv
  virtual void  bar(); // _ZN3bbb9GG10111103barEv
  ~GG1011110(); // tgen
  GG1011110(); // tgen
};
//SIG(1 _ZN3bbb9GG1011110E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1011110 ::foo(){vfunc_called(this, "_ZN3bbb9GG10111103fooEv");}
void  bbb::GG1011110 ::bar(){vfunc_called(this, "_ZN3bbb9GG10111103barEv");}
bbb::GG1011110 ::~GG1011110(){ note_dtor("_ZN3bbb9GG1011110E", this);} // tgen
bbb::GG1011110 ::GG1011110(){ note_ctor("_ZN3bbb9GG1011110E", this);} // tgen
}
static void Test__ZN3bbb9GG1011110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1011110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1011110E, buf);
    ::bbb::GG1011110 *dp, &lv = *(dp=new (buf) ::bbb::GG1011110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1011110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1011110E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1011110E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1011110E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1011110E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1011110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG1011110E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1011110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1011110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1011110E);
    dp->::bbb::GG1011110::~GG1011110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1011110E(Test__ZN3bbb9GG1011110E, "_ZN3bbb9GG1011110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1011110C1Ev();
extern void _ZN3bbb9GG1011110D1Ev();
Name_Map name_map__ZN3bbb9GG1011110E[] = {
  NSPAIR(_ZN3bbb9GG1011110C1Ev),
  NSPAIR(_ZN3bbb9GG1011110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG1011110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1011110E[];
extern void _ZN3bbb9GG10111103barEv();
extern void _ZN3bbb9GG10111103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10111103fooEv,_ZThn8_N3bbb9GG10111103fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10111103barEv,_ZThn8_N3bbb9GG10111103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10111103barEv,_ZThn20_N3bbb9GG10111103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10111103fooEv,_ZThn20_N3bbb9GG10111103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10111103barEv,_ZThn28_N3bbb9GG10111103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10111103fooEv,_ZThn28_N3bbb9GG10111103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1011110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10111103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10111103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10111103fooEv,_ZThn8_N3bbb9GG10111103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10111103barEv,_ZThn8_N3bbb9GG10111103barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10111103barEv,_ZThn20_N3bbb9GG10111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10111103fooEv,_ZThn20_N3bbb9GG10111103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10111103barEv,_ZThn28_N3bbb9GG10111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10111103fooEv,_ZThn28_N3bbb9GG10111103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1011110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1011110E[];
Class_Descriptor cd__ZN3bbb9GG1011110E = {  "_ZN3bbb9GG1011110E", // class name
  bases__ZN3bbb9GG1011110E, 6,
  &(vtc__ZN3bbb9GG1011110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1011110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1011110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1011111  : ::bbb::EE101 , ::bbb::FF111 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG10111113barEv
  virtual void  foo(); // _ZN3bbb9GG10111113fooEv
  ~GG1011111(); // tgen
  GG1011111(); // tgen
};
//SIG(1 _ZN3bbb9GG1011111E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1011111 ::bar(){vfunc_called(this, "_ZN3bbb9GG10111113barEv");}
void  bbb::GG1011111 ::foo(){vfunc_called(this, "_ZN3bbb9GG10111113fooEv");}
bbb::GG1011111 ::~GG1011111(){ note_dtor("_ZN3bbb9GG1011111E", this);} // tgen
bbb::GG1011111 ::GG1011111(){ note_ctor("_ZN3bbb9GG1011111E", this);} // tgen
}
static void Test__ZN3bbb9GG1011111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1011111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1011111E, buf);
    ::bbb::GG1011111 *dp, &lv = *(dp=new (buf) ::bbb::GG1011111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1011111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1011111E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE101*), 0, "_ZN3bbb9GG1011111E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::EE101*), ABISELECT(16,8), "_ZN3bbb9GG1011111E");
    check_base_class_offset(lv, (::bbb::EE101*), 0, "_ZN3bbb9GG1011111E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1011111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG1011111E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1011111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1011111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1011111E);
    dp->::bbb::GG1011111::~GG1011111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1011111E(Test__ZN3bbb9GG1011111E, "_ZN3bbb9GG1011111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1011111C1Ev();
extern void _ZN3bbb9GG1011111D1Ev();
Name_Map name_map__ZN3bbb9GG1011111E[] = {
  NSPAIR(_ZN3bbb9GG1011111C1Ev),
  NSPAIR(_ZN3bbb9GG1011111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5EE101E;
extern VTBL_ENTRY _ZTIN3bbb5EE101E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE101E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG1011111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE101E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1011111E[];
extern void _ZN3bbb9GG10111113barEv();
extern void _ZN3bbb9GG10111113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG10111113fooEv,_ZThn8_N3bbb9GG10111113fooEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG10111113barEv,_ZThn8_N3bbb9GG10111113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10111113barEv,_ZThn20_N3bbb9GG10111113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG10111113fooEv,_ZThn20_N3bbb9GG10111113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10111113barEv,_ZThn28_N3bbb9GG10111113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG10111113fooEv,_ZThn28_N3bbb9GG10111113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1011111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG10111113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG10111113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10111113fooEv,_ZThn8_N3bbb9GG10111113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG10111113barEv,_ZThn8_N3bbb9GG10111113barEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10111113barEv,_ZThn20_N3bbb9GG10111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG10111113fooEv,_ZThn20_N3bbb9GG10111113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1011111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10111113barEv,_ZThn28_N3bbb9GG10111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG10111113fooEv,_ZThn28_N3bbb9GG10111113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1011111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1011111E[];
Class_Descriptor cd__ZN3bbb9GG1011111E = {  "_ZN3bbb9GG1011111E", // class name
  bases__ZN3bbb9GG1011111E, 6,
  &(vtc__ZN3bbb9GG1011111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1011111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1011111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1100000  : ::bbb::EE110 , ::bbb::FF000 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11000003fooEv
  virtual void  bar(); // _ZN3bbb9GG11000003barEv
  ~GG1100000(); // tgen
  GG1100000(); // tgen
};
//SIG(1 _ZN3bbb9GG1100000E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1100000 ::foo(){vfunc_called(this, "_ZN3bbb9GG11000003fooEv");}
void  bbb::GG1100000 ::bar(){vfunc_called(this, "_ZN3bbb9GG11000003barEv");}
bbb::GG1100000 ::~GG1100000(){ note_dtor("_ZN3bbb9GG1100000E", this);} // tgen
bbb::GG1100000 ::GG1100000(){ note_ctor("_ZN3bbb9GG1100000E", this);} // tgen
}
static void Test__ZN3bbb9GG1100000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1100000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1100000E, buf);
    ::bbb::GG1100000 *dp, &lv = *(dp=new (buf) ::bbb::GG1100000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1100000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1100000E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1100000E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1100000E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1100000E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1100000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG1100000E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1100000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1100000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1100000E);
    dp->::bbb::GG1100000::~GG1100000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1100000E(Test__ZN3bbb9GG1100000E, "_ZN3bbb9GG1100000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1100000C1Ev();
extern void _ZN3bbb9GG1100000D1Ev();
Name_Map name_map__ZN3bbb9GG1100000E[] = {
  NSPAIR(_ZN3bbb9GG1100000C1Ev),
  NSPAIR(_ZN3bbb9GG1100000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG1100000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1100000E[];
extern void _ZN3bbb9GG11000003barEv();
extern void _ZN3bbb9GG11000003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11000003barEv,_ZThn8_N3bbb9GG11000003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11000003fooEv,_ZThn8_N3bbb9GG11000003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11000003fooEv,_ZThn20_N3bbb9GG11000003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11000003barEv,_ZThn20_N3bbb9GG11000003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11000003fooEv,_ZThn28_N3bbb9GG11000003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11000003barEv,_ZThn28_N3bbb9GG11000003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1100000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11000003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11000003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11000003barEv,_ZThn8_N3bbb9GG11000003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11000003fooEv,_ZThn8_N3bbb9GG11000003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11000003fooEv,_ZThn20_N3bbb9GG11000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11000003barEv,_ZThn20_N3bbb9GG11000003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11000003fooEv,_ZThn28_N3bbb9GG11000003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11000003barEv,_ZThn28_N3bbb9GG11000003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1100000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1100000E[];
Class_Descriptor cd__ZN3bbb9GG1100000E = {  "_ZN3bbb9GG1100000E", // class name
  bases__ZN3bbb9GG1100000E, 6,
  &(vtc__ZN3bbb9GG1100000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1100000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1100000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1100001  : ::bbb::EE110 , ::bbb::FF000 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11000013barEv
  virtual void  foo(); // _ZN3bbb9GG11000013fooEv
  ~GG1100001(); // tgen
  GG1100001(); // tgen
};
//SIG(1 _ZN3bbb9GG1100001E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1100001 ::bar(){vfunc_called(this, "_ZN3bbb9GG11000013barEv");}
void  bbb::GG1100001 ::foo(){vfunc_called(this, "_ZN3bbb9GG11000013fooEv");}
bbb::GG1100001 ::~GG1100001(){ note_dtor("_ZN3bbb9GG1100001E", this);} // tgen
bbb::GG1100001 ::GG1100001(){ note_ctor("_ZN3bbb9GG1100001E", this);} // tgen
}
static void Test__ZN3bbb9GG1100001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1100001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1100001E, buf);
    ::bbb::GG1100001 *dp, &lv = *(dp=new (buf) ::bbb::GG1100001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1100001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1100001E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1100001E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1100001E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1100001E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1100001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG1100001E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1100001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1100001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1100001E);
    dp->::bbb::GG1100001::~GG1100001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1100001E(Test__ZN3bbb9GG1100001E, "_ZN3bbb9GG1100001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1100001C1Ev();
extern void _ZN3bbb9GG1100001D1Ev();
Name_Map name_map__ZN3bbb9GG1100001E[] = {
  NSPAIR(_ZN3bbb9GG1100001C1Ev),
  NSPAIR(_ZN3bbb9GG1100001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG1100001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1100001E[];
extern void _ZN3bbb9GG11000013barEv();
extern void _ZN3bbb9GG11000013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11000013barEv,_ZThn8_N3bbb9GG11000013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11000013fooEv,_ZThn8_N3bbb9GG11000013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11000013fooEv,_ZThn20_N3bbb9GG11000013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11000013barEv,_ZThn20_N3bbb9GG11000013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11000013fooEv,_ZThn28_N3bbb9GG11000013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11000013barEv,_ZThn28_N3bbb9GG11000013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1100001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11000013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11000013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11000013barEv,_ZThn8_N3bbb9GG11000013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11000013fooEv,_ZThn8_N3bbb9GG11000013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11000013fooEv,_ZThn20_N3bbb9GG11000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11000013barEv,_ZThn20_N3bbb9GG11000013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11000013fooEv,_ZThn28_N3bbb9GG11000013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11000013barEv,_ZThn28_N3bbb9GG11000013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1100001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1100001E[];
Class_Descriptor cd__ZN3bbb9GG1100001E = {  "_ZN3bbb9GG1100001E", // class name
  bases__ZN3bbb9GG1100001E, 6,
  &(vtc__ZN3bbb9GG1100001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1100001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1100001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1100010  : ::bbb::EE110 , ::bbb::FF001 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11000103fooEv
  virtual void  bar(); // _ZN3bbb9GG11000103barEv
  ~GG1100010(); // tgen
  GG1100010(); // tgen
};
//SIG(1 _ZN3bbb9GG1100010E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1100010 ::foo(){vfunc_called(this, "_ZN3bbb9GG11000103fooEv");}
void  bbb::GG1100010 ::bar(){vfunc_called(this, "_ZN3bbb9GG11000103barEv");}
bbb::GG1100010 ::~GG1100010(){ note_dtor("_ZN3bbb9GG1100010E", this);} // tgen
bbb::GG1100010 ::GG1100010(){ note_ctor("_ZN3bbb9GG1100010E", this);} // tgen
}
static void Test__ZN3bbb9GG1100010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1100010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1100010E, buf);
    ::bbb::GG1100010 *dp, &lv = *(dp=new (buf) ::bbb::GG1100010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1100010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1100010E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1100010E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1100010E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1100010E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1100010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG1100010E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1100010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1100010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1100010E);
    dp->::bbb::GG1100010::~GG1100010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1100010E(Test__ZN3bbb9GG1100010E, "_ZN3bbb9GG1100010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1100010C1Ev();
extern void _ZN3bbb9GG1100010D1Ev();
Name_Map name_map__ZN3bbb9GG1100010E[] = {
  NSPAIR(_ZN3bbb9GG1100010C1Ev),
  NSPAIR(_ZN3bbb9GG1100010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG1100010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1100010E[];
extern void _ZN3bbb9GG11000103barEv();
extern void _ZN3bbb9GG11000103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11000103barEv,_ZThn8_N3bbb9GG11000103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11000103fooEv,_ZThn8_N3bbb9GG11000103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11000103fooEv,_ZThn20_N3bbb9GG11000103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11000103barEv,_ZThn20_N3bbb9GG11000103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11000103fooEv,_ZThn28_N3bbb9GG11000103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11000103barEv,_ZThn28_N3bbb9GG11000103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1100010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11000103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11000103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11000103barEv,_ZThn8_N3bbb9GG11000103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11000103fooEv,_ZThn8_N3bbb9GG11000103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11000103fooEv,_ZThn20_N3bbb9GG11000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11000103barEv,_ZThn20_N3bbb9GG11000103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11000103fooEv,_ZThn28_N3bbb9GG11000103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11000103barEv,_ZThn28_N3bbb9GG11000103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1100010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1100010E[];
Class_Descriptor cd__ZN3bbb9GG1100010E = {  "_ZN3bbb9GG1100010E", // class name
  bases__ZN3bbb9GG1100010E, 6,
  &(vtc__ZN3bbb9GG1100010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1100010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1100010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1100011  : ::bbb::EE110 , ::bbb::FF001 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11000113barEv
  virtual void  foo(); // _ZN3bbb9GG11000113fooEv
  ~GG1100011(); // tgen
  GG1100011(); // tgen
};
//SIG(1 _ZN3bbb9GG1100011E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1100011 ::bar(){vfunc_called(this, "_ZN3bbb9GG11000113barEv");}
void  bbb::GG1100011 ::foo(){vfunc_called(this, "_ZN3bbb9GG11000113fooEv");}
bbb::GG1100011 ::~GG1100011(){ note_dtor("_ZN3bbb9GG1100011E", this);} // tgen
bbb::GG1100011 ::GG1100011(){ note_ctor("_ZN3bbb9GG1100011E", this);} // tgen
}
static void Test__ZN3bbb9GG1100011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1100011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1100011E, buf);
    ::bbb::GG1100011 *dp, &lv = *(dp=new (buf) ::bbb::GG1100011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1100011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1100011E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1100011E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1100011E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1100011E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1100011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG1100011E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1100011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1100011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1100011E);
    dp->::bbb::GG1100011::~GG1100011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1100011E(Test__ZN3bbb9GG1100011E, "_ZN3bbb9GG1100011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1100011C1Ev();
extern void _ZN3bbb9GG1100011D1Ev();
Name_Map name_map__ZN3bbb9GG1100011E[] = {
  NSPAIR(_ZN3bbb9GG1100011C1Ev),
  NSPAIR(_ZN3bbb9GG1100011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG1100011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1100011E[];
extern void _ZN3bbb9GG11000113barEv();
extern void _ZN3bbb9GG11000113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11000113barEv,_ZThn8_N3bbb9GG11000113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11000113fooEv,_ZThn8_N3bbb9GG11000113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11000113fooEv,_ZThn20_N3bbb9GG11000113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11000113barEv,_ZThn20_N3bbb9GG11000113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11000113fooEv,_ZThn28_N3bbb9GG11000113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11000113barEv,_ZThn28_N3bbb9GG11000113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1100011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11000113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11000113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11000113barEv,_ZThn8_N3bbb9GG11000113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11000113fooEv,_ZThn8_N3bbb9GG11000113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11000113fooEv,_ZThn20_N3bbb9GG11000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11000113barEv,_ZThn20_N3bbb9GG11000113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11000113fooEv,_ZThn28_N3bbb9GG11000113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11000113barEv,_ZThn28_N3bbb9GG11000113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1100011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1100011E[];
Class_Descriptor cd__ZN3bbb9GG1100011E = {  "_ZN3bbb9GG1100011E", // class name
  bases__ZN3bbb9GG1100011E, 6,
  &(vtc__ZN3bbb9GG1100011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1100011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1100011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1100100  : ::bbb::EE110 , ::bbb::FF010 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11001003fooEv
  virtual void  bar(); // _ZN3bbb9GG11001003barEv
  ~GG1100100(); // tgen
  GG1100100(); // tgen
};
//SIG(1 _ZN3bbb9GG1100100E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1100100 ::foo(){vfunc_called(this, "_ZN3bbb9GG11001003fooEv");}
void  bbb::GG1100100 ::bar(){vfunc_called(this, "_ZN3bbb9GG11001003barEv");}
bbb::GG1100100 ::~GG1100100(){ note_dtor("_ZN3bbb9GG1100100E", this);} // tgen
bbb::GG1100100 ::GG1100100(){ note_ctor("_ZN3bbb9GG1100100E", this);} // tgen
}
static void Test__ZN3bbb9GG1100100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1100100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1100100E, buf);
    ::bbb::GG1100100 *dp, &lv = *(dp=new (buf) ::bbb::GG1100100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1100100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1100100E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1100100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1100100E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1100100E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1100100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG1100100E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1100100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1100100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1100100E);
    dp->::bbb::GG1100100::~GG1100100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1100100E(Test__ZN3bbb9GG1100100E, "_ZN3bbb9GG1100100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1100100C1Ev();
extern void _ZN3bbb9GG1100100D1Ev();
Name_Map name_map__ZN3bbb9GG1100100E[] = {
  NSPAIR(_ZN3bbb9GG1100100C1Ev),
  NSPAIR(_ZN3bbb9GG1100100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG1100100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1100100E[];
extern void _ZN3bbb9GG11001003barEv();
extern void _ZN3bbb9GG11001003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11001003barEv,_ZThn8_N3bbb9GG11001003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11001003fooEv,_ZThn8_N3bbb9GG11001003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11001003fooEv,_ZThn20_N3bbb9GG11001003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11001003barEv,_ZThn20_N3bbb9GG11001003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11001003barEv,_ZThn28_N3bbb9GG11001003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11001003fooEv,_ZThn28_N3bbb9GG11001003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1100100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11001003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11001003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11001003barEv,_ZThn8_N3bbb9GG11001003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11001003fooEv,_ZThn8_N3bbb9GG11001003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11001003fooEv,_ZThn20_N3bbb9GG11001003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11001003barEv,_ZThn20_N3bbb9GG11001003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11001003barEv,_ZThn28_N3bbb9GG11001003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11001003fooEv,_ZThn28_N3bbb9GG11001003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1100100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1100100E[];
Class_Descriptor cd__ZN3bbb9GG1100100E = {  "_ZN3bbb9GG1100100E", // class name
  bases__ZN3bbb9GG1100100E, 6,
  &(vtc__ZN3bbb9GG1100100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1100100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1100100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1100101  : ::bbb::EE110 , ::bbb::FF010 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11001013barEv
  virtual void  foo(); // _ZN3bbb9GG11001013fooEv
  ~GG1100101(); // tgen
  GG1100101(); // tgen
};
//SIG(1 _ZN3bbb9GG1100101E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1100101 ::bar(){vfunc_called(this, "_ZN3bbb9GG11001013barEv");}
void  bbb::GG1100101 ::foo(){vfunc_called(this, "_ZN3bbb9GG11001013fooEv");}
bbb::GG1100101 ::~GG1100101(){ note_dtor("_ZN3bbb9GG1100101E", this);} // tgen
bbb::GG1100101 ::GG1100101(){ note_ctor("_ZN3bbb9GG1100101E", this);} // tgen
}
static void Test__ZN3bbb9GG1100101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1100101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1100101E, buf);
    ::bbb::GG1100101 *dp, &lv = *(dp=new (buf) ::bbb::GG1100101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1100101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1100101E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1100101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1100101E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1100101E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1100101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG1100101E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1100101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1100101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1100101E);
    dp->::bbb::GG1100101::~GG1100101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1100101E(Test__ZN3bbb9GG1100101E, "_ZN3bbb9GG1100101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1100101C1Ev();
extern void _ZN3bbb9GG1100101D1Ev();
Name_Map name_map__ZN3bbb9GG1100101E[] = {
  NSPAIR(_ZN3bbb9GG1100101C1Ev),
  NSPAIR(_ZN3bbb9GG1100101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG1100101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1100101E[];
extern void _ZN3bbb9GG11001013barEv();
extern void _ZN3bbb9GG11001013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11001013barEv,_ZThn8_N3bbb9GG11001013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11001013fooEv,_ZThn8_N3bbb9GG11001013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11001013fooEv,_ZThn20_N3bbb9GG11001013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11001013barEv,_ZThn20_N3bbb9GG11001013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11001013barEv,_ZThn28_N3bbb9GG11001013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11001013fooEv,_ZThn28_N3bbb9GG11001013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1100101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11001013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11001013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11001013barEv,_ZThn8_N3bbb9GG11001013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11001013fooEv,_ZThn8_N3bbb9GG11001013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11001013fooEv,_ZThn20_N3bbb9GG11001013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11001013barEv,_ZThn20_N3bbb9GG11001013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11001013barEv,_ZThn28_N3bbb9GG11001013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11001013fooEv,_ZThn28_N3bbb9GG11001013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1100101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1100101E[];
Class_Descriptor cd__ZN3bbb9GG1100101E = {  "_ZN3bbb9GG1100101E", // class name
  bases__ZN3bbb9GG1100101E, 6,
  &(vtc__ZN3bbb9GG1100101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1100101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1100101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1100110  : ::bbb::EE110 , ::bbb::FF011 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11001103fooEv
  virtual void  bar(); // _ZN3bbb9GG11001103barEv
  ~GG1100110(); // tgen
  GG1100110(); // tgen
};
//SIG(1 _ZN3bbb9GG1100110E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1100110 ::foo(){vfunc_called(this, "_ZN3bbb9GG11001103fooEv");}
void  bbb::GG1100110 ::bar(){vfunc_called(this, "_ZN3bbb9GG11001103barEv");}
bbb::GG1100110 ::~GG1100110(){ note_dtor("_ZN3bbb9GG1100110E", this);} // tgen
bbb::GG1100110 ::GG1100110(){ note_ctor("_ZN3bbb9GG1100110E", this);} // tgen
}
static void Test__ZN3bbb9GG1100110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1100110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1100110E, buf);
    ::bbb::GG1100110 *dp, &lv = *(dp=new (buf) ::bbb::GG1100110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1100110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1100110E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1100110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1100110E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1100110E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1100110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG1100110E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1100110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1100110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1100110E);
    dp->::bbb::GG1100110::~GG1100110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1100110E(Test__ZN3bbb9GG1100110E, "_ZN3bbb9GG1100110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1100110C1Ev();
extern void _ZN3bbb9GG1100110D1Ev();
Name_Map name_map__ZN3bbb9GG1100110E[] = {
  NSPAIR(_ZN3bbb9GG1100110C1Ev),
  NSPAIR(_ZN3bbb9GG1100110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG1100110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1100110E[];
extern void _ZN3bbb9GG11001103barEv();
extern void _ZN3bbb9GG11001103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11001103barEv,_ZThn8_N3bbb9GG11001103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11001103fooEv,_ZThn8_N3bbb9GG11001103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11001103fooEv,_ZThn20_N3bbb9GG11001103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11001103barEv,_ZThn20_N3bbb9GG11001103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11001103barEv,_ZThn28_N3bbb9GG11001103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11001103fooEv,_ZThn28_N3bbb9GG11001103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1100110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11001103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11001103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11001103barEv,_ZThn8_N3bbb9GG11001103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11001103fooEv,_ZThn8_N3bbb9GG11001103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11001103fooEv,_ZThn20_N3bbb9GG11001103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11001103barEv,_ZThn20_N3bbb9GG11001103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11001103barEv,_ZThn28_N3bbb9GG11001103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11001103fooEv,_ZThn28_N3bbb9GG11001103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1100110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1100110E[];
Class_Descriptor cd__ZN3bbb9GG1100110E = {  "_ZN3bbb9GG1100110E", // class name
  bases__ZN3bbb9GG1100110E, 6,
  &(vtc__ZN3bbb9GG1100110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1100110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1100110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1100111  : ::bbb::EE110 , ::bbb::FF011 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11001113barEv
  virtual void  foo(); // _ZN3bbb9GG11001113fooEv
  ~GG1100111(); // tgen
  GG1100111(); // tgen
};
//SIG(1 _ZN3bbb9GG1100111E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1100111 ::bar(){vfunc_called(this, "_ZN3bbb9GG11001113barEv");}
void  bbb::GG1100111 ::foo(){vfunc_called(this, "_ZN3bbb9GG11001113fooEv");}
bbb::GG1100111 ::~GG1100111(){ note_dtor("_ZN3bbb9GG1100111E", this);} // tgen
bbb::GG1100111 ::GG1100111(){ note_ctor("_ZN3bbb9GG1100111E", this);} // tgen
}
static void Test__ZN3bbb9GG1100111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1100111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1100111E, buf);
    ::bbb::GG1100111 *dp, &lv = *(dp=new (buf) ::bbb::GG1100111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1100111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1100111E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1100111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1100111E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1100111E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1100111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG1100111E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1100111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1100111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1100111E);
    dp->::bbb::GG1100111::~GG1100111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1100111E(Test__ZN3bbb9GG1100111E, "_ZN3bbb9GG1100111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1100111C1Ev();
extern void _ZN3bbb9GG1100111D1Ev();
Name_Map name_map__ZN3bbb9GG1100111E[] = {
  NSPAIR(_ZN3bbb9GG1100111C1Ev),
  NSPAIR(_ZN3bbb9GG1100111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG1100111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1100111E[];
extern void _ZN3bbb9GG11001113barEv();
extern void _ZN3bbb9GG11001113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11001113barEv,_ZThn8_N3bbb9GG11001113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11001113fooEv,_ZThn8_N3bbb9GG11001113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11001113fooEv,_ZThn20_N3bbb9GG11001113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11001113barEv,_ZThn20_N3bbb9GG11001113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11001113barEv,_ZThn28_N3bbb9GG11001113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11001113fooEv,_ZThn28_N3bbb9GG11001113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1100111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11001113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11001113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11001113barEv,_ZThn8_N3bbb9GG11001113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11001113fooEv,_ZThn8_N3bbb9GG11001113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11001113fooEv,_ZThn20_N3bbb9GG11001113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11001113barEv,_ZThn20_N3bbb9GG11001113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1100111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11001113barEv,_ZThn28_N3bbb9GG11001113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11001113fooEv,_ZThn28_N3bbb9GG11001113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1100111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1100111E[];
Class_Descriptor cd__ZN3bbb9GG1100111E = {  "_ZN3bbb9GG1100111E", // class name
  bases__ZN3bbb9GG1100111E, 6,
  &(vtc__ZN3bbb9GG1100111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1100111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1100111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1101000  : ::bbb::EE110 , ::bbb::FF100 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11010003fooEv
  virtual void  bar(); // _ZN3bbb9GG11010003barEv
  ~GG1101000(); // tgen
  GG1101000(); // tgen
};
//SIG(1 _ZN3bbb9GG1101000E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1101000 ::foo(){vfunc_called(this, "_ZN3bbb9GG11010003fooEv");}
void  bbb::GG1101000 ::bar(){vfunc_called(this, "_ZN3bbb9GG11010003barEv");}
bbb::GG1101000 ::~GG1101000(){ note_dtor("_ZN3bbb9GG1101000E", this);} // tgen
bbb::GG1101000 ::GG1101000(){ note_ctor("_ZN3bbb9GG1101000E", this);} // tgen
}
static void Test__ZN3bbb9GG1101000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1101000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1101000E, buf);
    ::bbb::GG1101000 *dp, &lv = *(dp=new (buf) ::bbb::GG1101000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1101000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1101000E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1101000E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1101000E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1101000E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1101000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG1101000E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1101000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1101000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1101000E);
    dp->::bbb::GG1101000::~GG1101000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1101000E(Test__ZN3bbb9GG1101000E, "_ZN3bbb9GG1101000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1101000C1Ev();
extern void _ZN3bbb9GG1101000D1Ev();
Name_Map name_map__ZN3bbb9GG1101000E[] = {
  NSPAIR(_ZN3bbb9GG1101000C1Ev),
  NSPAIR(_ZN3bbb9GG1101000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG1101000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1101000E[];
extern void _ZN3bbb9GG11010003barEv();
extern void _ZN3bbb9GG11010003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11010003barEv,_ZThn8_N3bbb9GG11010003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11010003fooEv,_ZThn8_N3bbb9GG11010003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11010003barEv,_ZThn20_N3bbb9GG11010003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11010003fooEv,_ZThn20_N3bbb9GG11010003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11010003fooEv,_ZThn28_N3bbb9GG11010003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11010003barEv,_ZThn28_N3bbb9GG11010003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1101000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11010003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11010003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11010003barEv,_ZThn8_N3bbb9GG11010003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11010003fooEv,_ZThn8_N3bbb9GG11010003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11010003barEv,_ZThn20_N3bbb9GG11010003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11010003fooEv,_ZThn20_N3bbb9GG11010003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11010003fooEv,_ZThn28_N3bbb9GG11010003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11010003barEv,_ZThn28_N3bbb9GG11010003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1101000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1101000E[];
Class_Descriptor cd__ZN3bbb9GG1101000E = {  "_ZN3bbb9GG1101000E", // class name
  bases__ZN3bbb9GG1101000E, 6,
  &(vtc__ZN3bbb9GG1101000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1101000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1101000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1101001  : ::bbb::EE110 , ::bbb::FF100 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11010013barEv
  virtual void  foo(); // _ZN3bbb9GG11010013fooEv
  ~GG1101001(); // tgen
  GG1101001(); // tgen
};
//SIG(1 _ZN3bbb9GG1101001E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1101001 ::bar(){vfunc_called(this, "_ZN3bbb9GG11010013barEv");}
void  bbb::GG1101001 ::foo(){vfunc_called(this, "_ZN3bbb9GG11010013fooEv");}
bbb::GG1101001 ::~GG1101001(){ note_dtor("_ZN3bbb9GG1101001E", this);} // tgen
bbb::GG1101001 ::GG1101001(){ note_ctor("_ZN3bbb9GG1101001E", this);} // tgen
}
static void Test__ZN3bbb9GG1101001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1101001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1101001E, buf);
    ::bbb::GG1101001 *dp, &lv = *(dp=new (buf) ::bbb::GG1101001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1101001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1101001E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1101001E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1101001E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1101001E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1101001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG1101001E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1101001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1101001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1101001E);
    dp->::bbb::GG1101001::~GG1101001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1101001E(Test__ZN3bbb9GG1101001E, "_ZN3bbb9GG1101001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1101001C1Ev();
extern void _ZN3bbb9GG1101001D1Ev();
Name_Map name_map__ZN3bbb9GG1101001E[] = {
  NSPAIR(_ZN3bbb9GG1101001C1Ev),
  NSPAIR(_ZN3bbb9GG1101001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG1101001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1101001E[];
extern void _ZN3bbb9GG11010013barEv();
extern void _ZN3bbb9GG11010013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11010013barEv,_ZThn8_N3bbb9GG11010013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11010013fooEv,_ZThn8_N3bbb9GG11010013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11010013barEv,_ZThn20_N3bbb9GG11010013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11010013fooEv,_ZThn20_N3bbb9GG11010013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11010013fooEv,_ZThn28_N3bbb9GG11010013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11010013barEv,_ZThn28_N3bbb9GG11010013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1101001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11010013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11010013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11010013barEv,_ZThn8_N3bbb9GG11010013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11010013fooEv,_ZThn8_N3bbb9GG11010013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11010013barEv,_ZThn20_N3bbb9GG11010013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11010013fooEv,_ZThn20_N3bbb9GG11010013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11010013fooEv,_ZThn28_N3bbb9GG11010013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11010013barEv,_ZThn28_N3bbb9GG11010013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1101001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1101001E[];
Class_Descriptor cd__ZN3bbb9GG1101001E = {  "_ZN3bbb9GG1101001E", // class name
  bases__ZN3bbb9GG1101001E, 6,
  &(vtc__ZN3bbb9GG1101001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1101001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1101001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1101010  : ::bbb::EE110 , ::bbb::FF101 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11010103fooEv
  virtual void  bar(); // _ZN3bbb9GG11010103barEv
  ~GG1101010(); // tgen
  GG1101010(); // tgen
};
//SIG(1 _ZN3bbb9GG1101010E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1101010 ::foo(){vfunc_called(this, "_ZN3bbb9GG11010103fooEv");}
void  bbb::GG1101010 ::bar(){vfunc_called(this, "_ZN3bbb9GG11010103barEv");}
bbb::GG1101010 ::~GG1101010(){ note_dtor("_ZN3bbb9GG1101010E", this);} // tgen
bbb::GG1101010 ::GG1101010(){ note_ctor("_ZN3bbb9GG1101010E", this);} // tgen
}
static void Test__ZN3bbb9GG1101010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1101010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1101010E, buf);
    ::bbb::GG1101010 *dp, &lv = *(dp=new (buf) ::bbb::GG1101010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1101010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1101010E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1101010E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1101010E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1101010E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1101010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG1101010E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1101010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1101010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1101010E);
    dp->::bbb::GG1101010::~GG1101010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1101010E(Test__ZN3bbb9GG1101010E, "_ZN3bbb9GG1101010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1101010C1Ev();
extern void _ZN3bbb9GG1101010D1Ev();
Name_Map name_map__ZN3bbb9GG1101010E[] = {
  NSPAIR(_ZN3bbb9GG1101010C1Ev),
  NSPAIR(_ZN3bbb9GG1101010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG1101010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1101010E[];
extern void _ZN3bbb9GG11010103barEv();
extern void _ZN3bbb9GG11010103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11010103barEv,_ZThn8_N3bbb9GG11010103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11010103fooEv,_ZThn8_N3bbb9GG11010103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11010103barEv,_ZThn20_N3bbb9GG11010103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11010103fooEv,_ZThn20_N3bbb9GG11010103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11010103fooEv,_ZThn28_N3bbb9GG11010103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11010103barEv,_ZThn28_N3bbb9GG11010103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1101010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11010103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11010103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11010103barEv,_ZThn8_N3bbb9GG11010103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11010103fooEv,_ZThn8_N3bbb9GG11010103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11010103barEv,_ZThn20_N3bbb9GG11010103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11010103fooEv,_ZThn20_N3bbb9GG11010103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11010103fooEv,_ZThn28_N3bbb9GG11010103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11010103barEv,_ZThn28_N3bbb9GG11010103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1101010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1101010E[];
Class_Descriptor cd__ZN3bbb9GG1101010E = {  "_ZN3bbb9GG1101010E", // class name
  bases__ZN3bbb9GG1101010E, 6,
  &(vtc__ZN3bbb9GG1101010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1101010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1101010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1101011  : ::bbb::EE110 , ::bbb::FF101 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11010113barEv
  virtual void  foo(); // _ZN3bbb9GG11010113fooEv
  ~GG1101011(); // tgen
  GG1101011(); // tgen
};
//SIG(1 _ZN3bbb9GG1101011E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1101011 ::bar(){vfunc_called(this, "_ZN3bbb9GG11010113barEv");}
void  bbb::GG1101011 ::foo(){vfunc_called(this, "_ZN3bbb9GG11010113fooEv");}
bbb::GG1101011 ::~GG1101011(){ note_dtor("_ZN3bbb9GG1101011E", this);} // tgen
bbb::GG1101011 ::GG1101011(){ note_ctor("_ZN3bbb9GG1101011E", this);} // tgen
}
static void Test__ZN3bbb9GG1101011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1101011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1101011E, buf);
    ::bbb::GG1101011 *dp, &lv = *(dp=new (buf) ::bbb::GG1101011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1101011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1101011E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1101011E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1101011E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1101011E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1101011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG1101011E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1101011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1101011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1101011E);
    dp->::bbb::GG1101011::~GG1101011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1101011E(Test__ZN3bbb9GG1101011E, "_ZN3bbb9GG1101011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1101011C1Ev();
extern void _ZN3bbb9GG1101011D1Ev();
Name_Map name_map__ZN3bbb9GG1101011E[] = {
  NSPAIR(_ZN3bbb9GG1101011C1Ev),
  NSPAIR(_ZN3bbb9GG1101011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG1101011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1101011E[];
extern void _ZN3bbb9GG11010113barEv();
extern void _ZN3bbb9GG11010113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11010113barEv,_ZThn8_N3bbb9GG11010113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11010113fooEv,_ZThn8_N3bbb9GG11010113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11010113barEv,_ZThn20_N3bbb9GG11010113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11010113fooEv,_ZThn20_N3bbb9GG11010113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11010113fooEv,_ZThn28_N3bbb9GG11010113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11010113barEv,_ZThn28_N3bbb9GG11010113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1101011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11010113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11010113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11010113barEv,_ZThn8_N3bbb9GG11010113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11010113fooEv,_ZThn8_N3bbb9GG11010113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11010113barEv,_ZThn20_N3bbb9GG11010113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11010113fooEv,_ZThn20_N3bbb9GG11010113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11010113fooEv,_ZThn28_N3bbb9GG11010113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11010113barEv,_ZThn28_N3bbb9GG11010113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1101011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1101011E[];
Class_Descriptor cd__ZN3bbb9GG1101011E = {  "_ZN3bbb9GG1101011E", // class name
  bases__ZN3bbb9GG1101011E, 6,
  &(vtc__ZN3bbb9GG1101011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1101011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1101011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1101100  : ::bbb::EE110 , ::bbb::FF110 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11011003fooEv
  virtual void  bar(); // _ZN3bbb9GG11011003barEv
  ~GG1101100(); // tgen
  GG1101100(); // tgen
};
//SIG(1 _ZN3bbb9GG1101100E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1101100 ::foo(){vfunc_called(this, "_ZN3bbb9GG11011003fooEv");}
void  bbb::GG1101100 ::bar(){vfunc_called(this, "_ZN3bbb9GG11011003barEv");}
bbb::GG1101100 ::~GG1101100(){ note_dtor("_ZN3bbb9GG1101100E", this);} // tgen
bbb::GG1101100 ::GG1101100(){ note_ctor("_ZN3bbb9GG1101100E", this);} // tgen
}
static void Test__ZN3bbb9GG1101100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1101100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1101100E, buf);
    ::bbb::GG1101100 *dp, &lv = *(dp=new (buf) ::bbb::GG1101100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1101100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1101100E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1101100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1101100E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1101100E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1101100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG1101100E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1101100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1101100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1101100E);
    dp->::bbb::GG1101100::~GG1101100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1101100E(Test__ZN3bbb9GG1101100E, "_ZN3bbb9GG1101100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1101100C1Ev();
extern void _ZN3bbb9GG1101100D1Ev();
Name_Map name_map__ZN3bbb9GG1101100E[] = {
  NSPAIR(_ZN3bbb9GG1101100C1Ev),
  NSPAIR(_ZN3bbb9GG1101100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG1101100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1101100E[];
extern void _ZN3bbb9GG11011003barEv();
extern void _ZN3bbb9GG11011003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11011003barEv,_ZThn8_N3bbb9GG11011003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11011003fooEv,_ZThn8_N3bbb9GG11011003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11011003barEv,_ZThn20_N3bbb9GG11011003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11011003fooEv,_ZThn20_N3bbb9GG11011003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11011003barEv,_ZThn28_N3bbb9GG11011003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11011003fooEv,_ZThn28_N3bbb9GG11011003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1101100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11011003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11011003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11011003barEv,_ZThn8_N3bbb9GG11011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11011003fooEv,_ZThn8_N3bbb9GG11011003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11011003barEv,_ZThn20_N3bbb9GG11011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11011003fooEv,_ZThn20_N3bbb9GG11011003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11011003barEv,_ZThn28_N3bbb9GG11011003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11011003fooEv,_ZThn28_N3bbb9GG11011003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1101100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1101100E[];
Class_Descriptor cd__ZN3bbb9GG1101100E = {  "_ZN3bbb9GG1101100E", // class name
  bases__ZN3bbb9GG1101100E, 6,
  &(vtc__ZN3bbb9GG1101100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1101100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1101100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1101101  : ::bbb::EE110 , ::bbb::FF110 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11011013barEv
  virtual void  foo(); // _ZN3bbb9GG11011013fooEv
  ~GG1101101(); // tgen
  GG1101101(); // tgen
};
//SIG(1 _ZN3bbb9GG1101101E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1101101 ::bar(){vfunc_called(this, "_ZN3bbb9GG11011013barEv");}
void  bbb::GG1101101 ::foo(){vfunc_called(this, "_ZN3bbb9GG11011013fooEv");}
bbb::GG1101101 ::~GG1101101(){ note_dtor("_ZN3bbb9GG1101101E", this);} // tgen
bbb::GG1101101 ::GG1101101(){ note_ctor("_ZN3bbb9GG1101101E", this);} // tgen
}
static void Test__ZN3bbb9GG1101101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1101101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1101101E, buf);
    ::bbb::GG1101101 *dp, &lv = *(dp=new (buf) ::bbb::GG1101101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1101101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1101101E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1101101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1101101E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1101101E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1101101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG1101101E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1101101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1101101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1101101E);
    dp->::bbb::GG1101101::~GG1101101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1101101E(Test__ZN3bbb9GG1101101E, "_ZN3bbb9GG1101101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1101101C1Ev();
extern void _ZN3bbb9GG1101101D1Ev();
Name_Map name_map__ZN3bbb9GG1101101E[] = {
  NSPAIR(_ZN3bbb9GG1101101C1Ev),
  NSPAIR(_ZN3bbb9GG1101101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG1101101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1101101E[];
extern void _ZN3bbb9GG11011013barEv();
extern void _ZN3bbb9GG11011013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11011013barEv,_ZThn8_N3bbb9GG11011013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11011013fooEv,_ZThn8_N3bbb9GG11011013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11011013barEv,_ZThn20_N3bbb9GG11011013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11011013fooEv,_ZThn20_N3bbb9GG11011013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11011013barEv,_ZThn28_N3bbb9GG11011013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11011013fooEv,_ZThn28_N3bbb9GG11011013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1101101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11011013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11011013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11011013barEv,_ZThn8_N3bbb9GG11011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11011013fooEv,_ZThn8_N3bbb9GG11011013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11011013barEv,_ZThn20_N3bbb9GG11011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11011013fooEv,_ZThn20_N3bbb9GG11011013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11011013barEv,_ZThn28_N3bbb9GG11011013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11011013fooEv,_ZThn28_N3bbb9GG11011013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1101101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1101101E[];
Class_Descriptor cd__ZN3bbb9GG1101101E = {  "_ZN3bbb9GG1101101E", // class name
  bases__ZN3bbb9GG1101101E, 6,
  &(vtc__ZN3bbb9GG1101101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1101101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1101101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1101110  : ::bbb::EE110 , ::bbb::FF111 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11011103fooEv
  virtual void  bar(); // _ZN3bbb9GG11011103barEv
  ~GG1101110(); // tgen
  GG1101110(); // tgen
};
//SIG(1 _ZN3bbb9GG1101110E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v1 v2 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1101110 ::foo(){vfunc_called(this, "_ZN3bbb9GG11011103fooEv");}
void  bbb::GG1101110 ::bar(){vfunc_called(this, "_ZN3bbb9GG11011103barEv");}
bbb::GG1101110 ::~GG1101110(){ note_dtor("_ZN3bbb9GG1101110E", this);} // tgen
bbb::GG1101110 ::GG1101110(){ note_ctor("_ZN3bbb9GG1101110E", this);} // tgen
}
static void Test__ZN3bbb9GG1101110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1101110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1101110E, buf);
    ::bbb::GG1101110 *dp, &lv = *(dp=new (buf) ::bbb::GG1101110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1101110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1101110E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1101110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1101110E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1101110E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1101110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG1101110E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1101110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1101110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1101110E);
    dp->::bbb::GG1101110::~GG1101110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1101110E(Test__ZN3bbb9GG1101110E, "_ZN3bbb9GG1101110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1101110C1Ev();
extern void _ZN3bbb9GG1101110D1Ev();
Name_Map name_map__ZN3bbb9GG1101110E[] = {
  NSPAIR(_ZN3bbb9GG1101110C1Ev),
  NSPAIR(_ZN3bbb9GG1101110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG1101110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1101110E[];
extern void _ZN3bbb9GG11011103barEv();
extern void _ZN3bbb9GG11011103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11011103barEv,_ZThn8_N3bbb9GG11011103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11011103fooEv,_ZThn8_N3bbb9GG11011103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11011103barEv,_ZThn20_N3bbb9GG11011103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11011103fooEv,_ZThn20_N3bbb9GG11011103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11011103barEv,_ZThn28_N3bbb9GG11011103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11011103fooEv,_ZThn28_N3bbb9GG11011103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1101110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11011103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11011103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11011103barEv,_ZThn8_N3bbb9GG11011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11011103fooEv,_ZThn8_N3bbb9GG11011103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11011103barEv,_ZThn20_N3bbb9GG11011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11011103fooEv,_ZThn20_N3bbb9GG11011103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11011103barEv,_ZThn28_N3bbb9GG11011103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11011103fooEv,_ZThn28_N3bbb9GG11011103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1101110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1101110E[];
Class_Descriptor cd__ZN3bbb9GG1101110E = {  "_ZN3bbb9GG1101110E", // class name
  bases__ZN3bbb9GG1101110E, 6,
  &(vtc__ZN3bbb9GG1101110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1101110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1101110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1101111  : ::bbb::EE110 , ::bbb::FF111 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11011113barEv
  virtual void  foo(); // _ZN3bbb9GG11011113fooEv
  ~GG1101111(); // tgen
  GG1101111(); // tgen
};
//SIG(1 _ZN3bbb9GG1101111E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v2 v1 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1101111 ::bar(){vfunc_called(this, "_ZN3bbb9GG11011113barEv");}
void  bbb::GG1101111 ::foo(){vfunc_called(this, "_ZN3bbb9GG11011113fooEv");}
bbb::GG1101111 ::~GG1101111(){ note_dtor("_ZN3bbb9GG1101111E", this);} // tgen
bbb::GG1101111 ::GG1101111(){ note_ctor("_ZN3bbb9GG1101111E", this);} // tgen
}
static void Test__ZN3bbb9GG1101111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1101111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1101111E, buf);
    ::bbb::GG1101111 *dp, &lv = *(dp=new (buf) ::bbb::GG1101111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1101111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1101111E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE110*), 0, "_ZN3bbb9GG1101111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE110*), ABISELECT(16,8), "_ZN3bbb9GG1101111E");
    check_base_class_offset(lv, (::bbb::EE110*), 0, "_ZN3bbb9GG1101111E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1101111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG1101111E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1101111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1101111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1101111E);
    dp->::bbb::GG1101111::~GG1101111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1101111E(Test__ZN3bbb9GG1101111E, "_ZN3bbb9GG1101111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1101111C1Ev();
extern void _ZN3bbb9GG1101111D1Ev();
Name_Map name_map__ZN3bbb9GG1101111E[] = {
  NSPAIR(_ZN3bbb9GG1101111C1Ev),
  NSPAIR(_ZN3bbb9GG1101111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE110E;
extern VTBL_ENTRY _ZTIN3bbb5EE110E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE110E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG1101111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE110E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1101111E[];
extern void _ZN3bbb9GG11011113barEv();
extern void _ZN3bbb9GG11011113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11011113barEv,_ZThn8_N3bbb9GG11011113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11011113fooEv,_ZThn8_N3bbb9GG11011113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11011113barEv,_ZThn20_N3bbb9GG11011113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11011113fooEv,_ZThn20_N3bbb9GG11011113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11011113barEv,_ZThn28_N3bbb9GG11011113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11011113fooEv,_ZThn28_N3bbb9GG11011113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1101111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11011113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11011113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11011113barEv,_ZThn8_N3bbb9GG11011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11011113fooEv,_ZThn8_N3bbb9GG11011113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11011113barEv,_ZThn20_N3bbb9GG11011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11011113fooEv,_ZThn20_N3bbb9GG11011113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1101111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11011113barEv,_ZThn28_N3bbb9GG11011113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11011113fooEv,_ZThn28_N3bbb9GG11011113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1101111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1101111E[];
Class_Descriptor cd__ZN3bbb9GG1101111E = {  "_ZN3bbb9GG1101111E", // class name
  bases__ZN3bbb9GG1101111E, 6,
  &(vtc__ZN3bbb9GG1101111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1101111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1101111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1110000  : ::bbb::EE111 , ::bbb::FF000 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11100003fooEv
  virtual void  bar(); // _ZN3bbb9GG11100003barEv
  ~GG1110000(); // tgen
  GG1110000(); // tgen
};
//SIG(1 _ZN3bbb9GG1110000E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1110000 ::foo(){vfunc_called(this, "_ZN3bbb9GG11100003fooEv");}
void  bbb::GG1110000 ::bar(){vfunc_called(this, "_ZN3bbb9GG11100003barEv");}
bbb::GG1110000 ::~GG1110000(){ note_dtor("_ZN3bbb9GG1110000E", this);} // tgen
bbb::GG1110000 ::GG1110000(){ note_ctor("_ZN3bbb9GG1110000E", this);} // tgen
}
static void Test__ZN3bbb9GG1110000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1110000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1110000E, buf);
    ::bbb::GG1110000 *dp, &lv = *(dp=new (buf) ::bbb::GG1110000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1110000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1110000E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1110000E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1110000E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1110000E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1110000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG1110000E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1110000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1110000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1110000E);
    dp->::bbb::GG1110000::~GG1110000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1110000E(Test__ZN3bbb9GG1110000E, "_ZN3bbb9GG1110000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1110000C1Ev();
extern void _ZN3bbb9GG1110000D1Ev();
Name_Map name_map__ZN3bbb9GG1110000E[] = {
  NSPAIR(_ZN3bbb9GG1110000C1Ev),
  NSPAIR(_ZN3bbb9GG1110000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG1110000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1110000E[];
extern void _ZN3bbb9GG11100003barEv();
extern void _ZN3bbb9GG11100003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11100003barEv,_ZThn8_N3bbb9GG11100003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11100003fooEv,_ZThn8_N3bbb9GG11100003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11100003fooEv,_ZThn20_N3bbb9GG11100003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11100003barEv,_ZThn20_N3bbb9GG11100003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11100003fooEv,_ZThn28_N3bbb9GG11100003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11100003barEv,_ZThn28_N3bbb9GG11100003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1110000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11100003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11100003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11100003barEv,_ZThn8_N3bbb9GG11100003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11100003fooEv,_ZThn8_N3bbb9GG11100003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11100003fooEv,_ZThn20_N3bbb9GG11100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11100003barEv,_ZThn20_N3bbb9GG11100003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11100003fooEv,_ZThn28_N3bbb9GG11100003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11100003barEv,_ZThn28_N3bbb9GG11100003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1110000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1110000E[];
Class_Descriptor cd__ZN3bbb9GG1110000E = {  "_ZN3bbb9GG1110000E", // class name
  bases__ZN3bbb9GG1110000E, 6,
  &(vtc__ZN3bbb9GG1110000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1110000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1110000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1110001  : ::bbb::EE111 , ::bbb::FF000 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11100013barEv
  virtual void  foo(); // _ZN3bbb9GG11100013fooEv
  ~GG1110001(); // tgen
  GG1110001(); // tgen
};
//SIG(1 _ZN3bbb9GG1110001E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1110001 ::bar(){vfunc_called(this, "_ZN3bbb9GG11100013barEv");}
void  bbb::GG1110001 ::foo(){vfunc_called(this, "_ZN3bbb9GG11100013fooEv");}
bbb::GG1110001 ::~GG1110001(){ note_dtor("_ZN3bbb9GG1110001E", this);} // tgen
bbb::GG1110001 ::GG1110001(){ note_ctor("_ZN3bbb9GG1110001E", this);} // tgen
}
static void Test__ZN3bbb9GG1110001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1110001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1110001E, buf);
    ::bbb::GG1110001 *dp, &lv = *(dp=new (buf) ::bbb::GG1110001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1110001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1110001E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1110001E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1110001E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1110001E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1110001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF000*), ABISELECT(48,28), "_ZN3bbb9GG1110001E");
    check_base_class_offset(lv, (::bbb::FF000*), ABISELECT(32,20), "_ZN3bbb9GG1110001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1110001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1110001E);
    dp->::bbb::GG1110001::~GG1110001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1110001E(Test__ZN3bbb9GG1110001E, "_ZN3bbb9GG1110001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1110001C1Ev();
extern void _ZN3bbb9GG1110001D1Ev();
Name_Map name_map__ZN3bbb9GG1110001E[] = {
  NSPAIR(_ZN3bbb9GG1110001C1Ev),
  NSPAIR(_ZN3bbb9GG1110001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF000E;
extern VTBL_ENTRY _ZTIN3bbb5FF000E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF000E[];
static Base_Class bases__ZN3bbb9GG1110001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF000E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1110001E[];
extern void _ZN3bbb9GG11100013barEv();
extern void _ZN3bbb9GG11100013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11100013barEv,_ZThn8_N3bbb9GG11100013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11100013fooEv,_ZThn8_N3bbb9GG11100013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11100013fooEv,_ZThn20_N3bbb9GG11100013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11100013barEv,_ZThn20_N3bbb9GG11100013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11100013fooEv,_ZThn28_N3bbb9GG11100013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11100013barEv,_ZThn28_N3bbb9GG11100013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1110001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11100013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11100013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11100013barEv,_ZThn8_N3bbb9GG11100013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11100013fooEv,_ZThn8_N3bbb9GG11100013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11100013fooEv,_ZThn20_N3bbb9GG11100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11100013barEv,_ZThn20_N3bbb9GG11100013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11100013fooEv,_ZThn28_N3bbb9GG11100013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11100013barEv,_ZThn28_N3bbb9GG11100013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1110001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1110001E[];
Class_Descriptor cd__ZN3bbb9GG1110001E = {  "_ZN3bbb9GG1110001E", // class name
  bases__ZN3bbb9GG1110001E, 6,
  &(vtc__ZN3bbb9GG1110001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1110001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1110001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1110010  : ::bbb::EE111 , ::bbb::FF001 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11100103fooEv
  virtual void  bar(); // _ZN3bbb9GG11100103barEv
  ~GG1110010(); // tgen
  GG1110010(); // tgen
};
//SIG(1 _ZN3bbb9GG1110010E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC7{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1110010 ::foo(){vfunc_called(this, "_ZN3bbb9GG11100103fooEv");}
void  bbb::GG1110010 ::bar(){vfunc_called(this, "_ZN3bbb9GG11100103barEv");}
bbb::GG1110010 ::~GG1110010(){ note_dtor("_ZN3bbb9GG1110010E", this);} // tgen
bbb::GG1110010 ::GG1110010(){ note_ctor("_ZN3bbb9GG1110010E", this);} // tgen
}
static void Test__ZN3bbb9GG1110010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1110010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1110010E, buf);
    ::bbb::GG1110010 *dp, &lv = *(dp=new (buf) ::bbb::GG1110010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1110010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1110010E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1110010E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1110010E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1110010E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1110010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG1110010E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1110010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1110010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1110010E);
    dp->::bbb::GG1110010::~GG1110010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1110010E(Test__ZN3bbb9GG1110010E, "_ZN3bbb9GG1110010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1110010C1Ev();
extern void _ZN3bbb9GG1110010D1Ev();
Name_Map name_map__ZN3bbb9GG1110010E[] = {
  NSPAIR(_ZN3bbb9GG1110010C1Ev),
  NSPAIR(_ZN3bbb9GG1110010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG1110010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1110010E[];
extern void _ZN3bbb9GG11100103barEv();
extern void _ZN3bbb9GG11100103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11100103barEv,_ZThn8_N3bbb9GG11100103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11100103fooEv,_ZThn8_N3bbb9GG11100103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11100103fooEv,_ZThn20_N3bbb9GG11100103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11100103barEv,_ZThn20_N3bbb9GG11100103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11100103fooEv,_ZThn28_N3bbb9GG11100103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11100103barEv,_ZThn28_N3bbb9GG11100103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1110010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11100103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11100103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11100103barEv,_ZThn8_N3bbb9GG11100103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11100103fooEv,_ZThn8_N3bbb9GG11100103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11100103fooEv,_ZThn20_N3bbb9GG11100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11100103barEv,_ZThn20_N3bbb9GG11100103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11100103fooEv,_ZThn28_N3bbb9GG11100103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11100103barEv,_ZThn28_N3bbb9GG11100103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1110010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1110010E[];
Class_Descriptor cd__ZN3bbb9GG1110010E = {  "_ZN3bbb9GG1110010E", // class name
  bases__ZN3bbb9GG1110010E, 6,
  &(vtc__ZN3bbb9GG1110010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1110010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1110010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1110011  : ::bbb::EE111 , ::bbb::FF001 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11100113barEv
  virtual void  foo(); // _ZN3bbb9GG11100113fooEv
  ~GG1110011(); // tgen
  GG1110011(); // tgen
};
//SIG(1 _ZN3bbb9GG1110011E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC7{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1110011 ::bar(){vfunc_called(this, "_ZN3bbb9GG11100113barEv");}
void  bbb::GG1110011 ::foo(){vfunc_called(this, "_ZN3bbb9GG11100113fooEv");}
bbb::GG1110011 ::~GG1110011(){ note_dtor("_ZN3bbb9GG1110011E", this);} // tgen
bbb::GG1110011 ::GG1110011(){ note_ctor("_ZN3bbb9GG1110011E", this);} // tgen
}
static void Test__ZN3bbb9GG1110011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1110011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1110011E, buf);
    ::bbb::GG1110011 *dp, &lv = *(dp=new (buf) ::bbb::GG1110011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1110011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1110011E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1110011E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1110011E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1110011E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1110011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF001*), ABISELECT(48,28), "_ZN3bbb9GG1110011E");
    check_base_class_offset(lv, (::bbb::FF001*), ABISELECT(32,20), "_ZN3bbb9GG1110011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1110011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1110011E);
    dp->::bbb::GG1110011::~GG1110011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1110011E(Test__ZN3bbb9GG1110011E, "_ZN3bbb9GG1110011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1110011C1Ev();
extern void _ZN3bbb9GG1110011D1Ev();
Name_Map name_map__ZN3bbb9GG1110011E[] = {
  NSPAIR(_ZN3bbb9GG1110011C1Ev),
  NSPAIR(_ZN3bbb9GG1110011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF001E;
extern VTBL_ENTRY _ZTIN3bbb5FF001E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF001E[];
static Base_Class bases__ZN3bbb9GG1110011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF001E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1110011E[];
extern void _ZN3bbb9GG11100113barEv();
extern void _ZN3bbb9GG11100113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11100113barEv,_ZThn8_N3bbb9GG11100113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11100113fooEv,_ZThn8_N3bbb9GG11100113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11100113fooEv,_ZThn20_N3bbb9GG11100113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11100113barEv,_ZThn20_N3bbb9GG11100113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11100113fooEv,_ZThn28_N3bbb9GG11100113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11100113barEv,_ZThn28_N3bbb9GG11100113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1110011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11100113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11100113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11100113barEv,_ZThn8_N3bbb9GG11100113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11100113fooEv,_ZThn8_N3bbb9GG11100113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11100113fooEv,_ZThn20_N3bbb9GG11100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11100113barEv,_ZThn20_N3bbb9GG11100113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11100113fooEv,_ZThn28_N3bbb9GG11100113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11100113barEv,_ZThn28_N3bbb9GG11100113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1110011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1110011E[];
Class_Descriptor cd__ZN3bbb9GG1110011E = {  "_ZN3bbb9GG1110011E", // class name
  bases__ZN3bbb9GG1110011E, 6,
  &(vtc__ZN3bbb9GG1110011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1110011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1110011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1110100  : ::bbb::EE111 , ::bbb::FF010 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11101003fooEv
  virtual void  bar(); // _ZN3bbb9GG11101003barEv
  ~GG1110100(); // tgen
  GG1110100(); // tgen
};
//SIG(1 _ZN3bbb9GG1110100E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1110100 ::foo(){vfunc_called(this, "_ZN3bbb9GG11101003fooEv");}
void  bbb::GG1110100 ::bar(){vfunc_called(this, "_ZN3bbb9GG11101003barEv");}
bbb::GG1110100 ::~GG1110100(){ note_dtor("_ZN3bbb9GG1110100E", this);} // tgen
bbb::GG1110100 ::GG1110100(){ note_ctor("_ZN3bbb9GG1110100E", this);} // tgen
}
static void Test__ZN3bbb9GG1110100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1110100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1110100E, buf);
    ::bbb::GG1110100 *dp, &lv = *(dp=new (buf) ::bbb::GG1110100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1110100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1110100E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1110100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1110100E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1110100E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1110100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG1110100E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1110100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1110100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1110100E);
    dp->::bbb::GG1110100::~GG1110100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1110100E(Test__ZN3bbb9GG1110100E, "_ZN3bbb9GG1110100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1110100C1Ev();
extern void _ZN3bbb9GG1110100D1Ev();
Name_Map name_map__ZN3bbb9GG1110100E[] = {
  NSPAIR(_ZN3bbb9GG1110100C1Ev),
  NSPAIR(_ZN3bbb9GG1110100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG1110100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1110100E[];
extern void _ZN3bbb9GG11101003barEv();
extern void _ZN3bbb9GG11101003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11101003barEv,_ZThn8_N3bbb9GG11101003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11101003fooEv,_ZThn8_N3bbb9GG11101003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11101003fooEv,_ZThn20_N3bbb9GG11101003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11101003barEv,_ZThn20_N3bbb9GG11101003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11101003barEv,_ZThn28_N3bbb9GG11101003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11101003fooEv,_ZThn28_N3bbb9GG11101003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1110100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11101003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11101003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11101003barEv,_ZThn8_N3bbb9GG11101003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11101003fooEv,_ZThn8_N3bbb9GG11101003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11101003fooEv,_ZThn20_N3bbb9GG11101003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11101003barEv,_ZThn20_N3bbb9GG11101003barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11101003barEv,_ZThn28_N3bbb9GG11101003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11101003fooEv,_ZThn28_N3bbb9GG11101003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1110100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1110100E[];
Class_Descriptor cd__ZN3bbb9GG1110100E = {  "_ZN3bbb9GG1110100E", // class name
  bases__ZN3bbb9GG1110100E, 6,
  &(vtc__ZN3bbb9GG1110100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1110100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1110100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1110101  : ::bbb::EE111 , ::bbb::FF010 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11101013barEv
  virtual void  foo(); // _ZN3bbb9GG11101013fooEv
  ~GG1110101(); // tgen
  GG1110101(); // tgen
};
//SIG(1 _ZN3bbb9GG1110101E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1110101 ::bar(){vfunc_called(this, "_ZN3bbb9GG11101013barEv");}
void  bbb::GG1110101 ::foo(){vfunc_called(this, "_ZN3bbb9GG11101013fooEv");}
bbb::GG1110101 ::~GG1110101(){ note_dtor("_ZN3bbb9GG1110101E", this);} // tgen
bbb::GG1110101 ::GG1110101(){ note_ctor("_ZN3bbb9GG1110101E", this);} // tgen
}
static void Test__ZN3bbb9GG1110101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1110101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1110101E, buf);
    ::bbb::GG1110101 *dp, &lv = *(dp=new (buf) ::bbb::GG1110101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1110101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1110101E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1110101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1110101E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1110101E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1110101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF010*), ABISELECT(48,28), "_ZN3bbb9GG1110101E");
    check_base_class_offset(lv, (::bbb::FF010*), ABISELECT(32,20), "_ZN3bbb9GG1110101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1110101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1110101E);
    dp->::bbb::GG1110101::~GG1110101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1110101E(Test__ZN3bbb9GG1110101E, "_ZN3bbb9GG1110101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1110101C1Ev();
extern void _ZN3bbb9GG1110101D1Ev();
Name_Map name_map__ZN3bbb9GG1110101E[] = {
  NSPAIR(_ZN3bbb9GG1110101C1Ev),
  NSPAIR(_ZN3bbb9GG1110101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF010E;
extern VTBL_ENTRY _ZTIN3bbb5FF010E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF010E[];
static Base_Class bases__ZN3bbb9GG1110101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF010E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1110101E[];
extern void _ZN3bbb9GG11101013barEv();
extern void _ZN3bbb9GG11101013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11101013barEv,_ZThn8_N3bbb9GG11101013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11101013fooEv,_ZThn8_N3bbb9GG11101013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11101013fooEv,_ZThn20_N3bbb9GG11101013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11101013barEv,_ZThn20_N3bbb9GG11101013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11101013barEv,_ZThn28_N3bbb9GG11101013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11101013fooEv,_ZThn28_N3bbb9GG11101013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1110101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11101013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11101013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11101013barEv,_ZThn8_N3bbb9GG11101013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11101013fooEv,_ZThn8_N3bbb9GG11101013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11101013fooEv,_ZThn20_N3bbb9GG11101013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11101013barEv,_ZThn20_N3bbb9GG11101013barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11101013barEv,_ZThn28_N3bbb9GG11101013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11101013fooEv,_ZThn28_N3bbb9GG11101013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1110101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1110101E[];
Class_Descriptor cd__ZN3bbb9GG1110101E = {  "_ZN3bbb9GG1110101E", // class name
  bases__ZN3bbb9GG1110101E, 6,
  &(vtc__ZN3bbb9GG1110101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1110101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1110101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1110110  : ::bbb::EE111 , ::bbb::FF011 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11101103fooEv
  virtual void  bar(); // _ZN3bbb9GG11101103barEv
  ~GG1110110(); // tgen
  GG1110110(); // tgen
};
//SIG(1 _ZN3bbb9GG1110110E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC6{ v1 v2 Fi} BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1110110 ::foo(){vfunc_called(this, "_ZN3bbb9GG11101103fooEv");}
void  bbb::GG1110110 ::bar(){vfunc_called(this, "_ZN3bbb9GG11101103barEv");}
bbb::GG1110110 ::~GG1110110(){ note_dtor("_ZN3bbb9GG1110110E", this);} // tgen
bbb::GG1110110 ::GG1110110(){ note_ctor("_ZN3bbb9GG1110110E", this);} // tgen
}
static void Test__ZN3bbb9GG1110110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1110110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1110110E, buf);
    ::bbb::GG1110110 *dp, &lv = *(dp=new (buf) ::bbb::GG1110110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1110110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1110110E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1110110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1110110E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1110110E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1110110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG1110110E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1110110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1110110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1110110E);
    dp->::bbb::GG1110110::~GG1110110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1110110E(Test__ZN3bbb9GG1110110E, "_ZN3bbb9GG1110110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1110110C1Ev();
extern void _ZN3bbb9GG1110110D1Ev();
Name_Map name_map__ZN3bbb9GG1110110E[] = {
  NSPAIR(_ZN3bbb9GG1110110C1Ev),
  NSPAIR(_ZN3bbb9GG1110110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG1110110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1110110E[];
extern void _ZN3bbb9GG11101103barEv();
extern void _ZN3bbb9GG11101103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11101103barEv,_ZThn8_N3bbb9GG11101103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11101103fooEv,_ZThn8_N3bbb9GG11101103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11101103fooEv,_ZThn20_N3bbb9GG11101103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11101103barEv,_ZThn20_N3bbb9GG11101103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11101103barEv,_ZThn28_N3bbb9GG11101103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11101103fooEv,_ZThn28_N3bbb9GG11101103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1110110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11101103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11101103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11101103barEv,_ZThn8_N3bbb9GG11101103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11101103fooEv,_ZThn8_N3bbb9GG11101103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11101103fooEv,_ZThn20_N3bbb9GG11101103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11101103barEv,_ZThn20_N3bbb9GG11101103barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11101103barEv,_ZThn28_N3bbb9GG11101103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11101103fooEv,_ZThn28_N3bbb9GG11101103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1110110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1110110E[];
Class_Descriptor cd__ZN3bbb9GG1110110E = {  "_ZN3bbb9GG1110110E", // class name
  bases__ZN3bbb9GG1110110E, 6,
  &(vtc__ZN3bbb9GG1110110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1110110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1110110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1110111  : ::bbb::EE111 , ::bbb::FF011 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11101113barEv
  virtual void  foo(); // _ZN3bbb9GG11101113fooEv
  ~GG1110111(); // tgen
  GG1110111(); // tgen
};
//SIG(1 _ZN3bbb9GG1110111E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC6{ v2 v1 Fi} BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1110111 ::bar(){vfunc_called(this, "_ZN3bbb9GG11101113barEv");}
void  bbb::GG1110111 ::foo(){vfunc_called(this, "_ZN3bbb9GG11101113fooEv");}
bbb::GG1110111 ::~GG1110111(){ note_dtor("_ZN3bbb9GG1110111E", this);} // tgen
bbb::GG1110111 ::GG1110111(){ note_ctor("_ZN3bbb9GG1110111E", this);} // tgen
}
static void Test__ZN3bbb9GG1110111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1110111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1110111E, buf);
    ::bbb::GG1110111 *dp, &lv = *(dp=new (buf) ::bbb::GG1110111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1110111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1110111E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1110111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1110111E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1110111E");
    check_base_class_offset(lv, (::bbb::AA0*)(::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1110111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF011*), ABISELECT(48,28), "_ZN3bbb9GG1110111E");
    check_base_class_offset(lv, (::bbb::FF011*), ABISELECT(32,20), "_ZN3bbb9GG1110111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1110111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1110111E);
    dp->::bbb::GG1110111::~GG1110111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1110111E(Test__ZN3bbb9GG1110111E, "_ZN3bbb9GG1110111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1110111C1Ev();
extern void _ZN3bbb9GG1110111D1Ev();
Name_Map name_map__ZN3bbb9GG1110111E[] = {
  NSPAIR(_ZN3bbb9GG1110111C1Ev),
  NSPAIR(_ZN3bbb9GG1110111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA0E;
extern VTBL_ENTRY _ZTIN3bbb3AA0E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA0E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF011E;
extern VTBL_ENTRY _ZTIN3bbb5FF011E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF011E[];
static Base_Class bases__ZN3bbb9GG1110111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA0E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF011E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1110111E[];
extern void _ZN3bbb9GG11101113barEv();
extern void _ZN3bbb9GG11101113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11101113barEv,_ZThn8_N3bbb9GG11101113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11101113fooEv,_ZThn8_N3bbb9GG11101113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11101113fooEv,_ZThn20_N3bbb9GG11101113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11101113barEv,_ZThn20_N3bbb9GG11101113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11101113barEv,_ZThn28_N3bbb9GG11101113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11101113fooEv,_ZThn28_N3bbb9GG11101113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1110111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11101113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11101113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11101113barEv,_ZThn8_N3bbb9GG11101113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11101113fooEv,_ZThn8_N3bbb9GG11101113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11101113fooEv,_ZThn20_N3bbb9GG11101113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11101113barEv,_ZThn20_N3bbb9GG11101113barEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1110111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11101113barEv,_ZThn28_N3bbb9GG11101113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11101113fooEv,_ZThn28_N3bbb9GG11101113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1110111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1110111E[];
Class_Descriptor cd__ZN3bbb9GG1110111E = {  "_ZN3bbb9GG1110111E", // class name
  bases__ZN3bbb9GG1110111E, 6,
  &(vtc__ZN3bbb9GG1110111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1110111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1110111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1111000  : ::bbb::EE111 , ::bbb::FF100 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11110003fooEv
  virtual void  bar(); // _ZN3bbb9GG11110003barEv
  ~GG1111000(); // tgen
  GG1111000(); // tgen
};
//SIG(1 _ZN3bbb9GG1111000E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1111000 ::foo(){vfunc_called(this, "_ZN3bbb9GG11110003fooEv");}
void  bbb::GG1111000 ::bar(){vfunc_called(this, "_ZN3bbb9GG11110003barEv");}
bbb::GG1111000 ::~GG1111000(){ note_dtor("_ZN3bbb9GG1111000E", this);} // tgen
bbb::GG1111000 ::GG1111000(){ note_ctor("_ZN3bbb9GG1111000E", this);} // tgen
}
static void Test__ZN3bbb9GG1111000E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1111000E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1111000E, buf);
    ::bbb::GG1111000 *dp, &lv = *(dp=new (buf) ::bbb::GG1111000());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1111000E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1111000E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1111000E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1111000E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1111000E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1111000E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG1111000E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1111000E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1111000E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1111000E);
    dp->::bbb::GG1111000::~GG1111000();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1111000E(Test__ZN3bbb9GG1111000E, "_ZN3bbb9GG1111000E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1111000C1Ev();
extern void _ZN3bbb9GG1111000D1Ev();
Name_Map name_map__ZN3bbb9GG1111000E[] = {
  NSPAIR(_ZN3bbb9GG1111000C1Ev),
  NSPAIR(_ZN3bbb9GG1111000D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG1111000E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1111000E[];
extern void _ZN3bbb9GG11110003barEv();
extern void _ZN3bbb9GG11110003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11110003barEv,_ZThn8_N3bbb9GG11110003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11110003fooEv,_ZThn8_N3bbb9GG11110003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11110003barEv,_ZThn20_N3bbb9GG11110003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11110003fooEv,_ZThn20_N3bbb9GG11110003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11110003fooEv,_ZThn28_N3bbb9GG11110003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11110003barEv,_ZThn28_N3bbb9GG11110003barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1111000E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111000E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11110003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11110003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11110003barEv,_ZThn8_N3bbb9GG11110003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11110003fooEv,_ZThn8_N3bbb9GG11110003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11110003barEv,_ZThn20_N3bbb9GG11110003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11110003fooEv,_ZThn20_N3bbb9GG11110003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111000E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11110003fooEv,_ZThn28_N3bbb9GG11110003fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11110003barEv,_ZThn28_N3bbb9GG11110003barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1111000E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1111000E[];
Class_Descriptor cd__ZN3bbb9GG1111000E = {  "_ZN3bbb9GG1111000E", // class name
  bases__ZN3bbb9GG1111000E, 6,
  &(vtc__ZN3bbb9GG1111000E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1111000E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1111000E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1111001  : ::bbb::EE111 , ::bbb::FF100 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11110013barEv
  virtual void  foo(); // _ZN3bbb9GG11110013fooEv
  ~GG1111001(); // tgen
  GG1111001(); // tgen
};
//SIG(1 _ZN3bbb9GG1111001E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1111001 ::bar(){vfunc_called(this, "_ZN3bbb9GG11110013barEv");}
void  bbb::GG1111001 ::foo(){vfunc_called(this, "_ZN3bbb9GG11110013fooEv");}
bbb::GG1111001 ::~GG1111001(){ note_dtor("_ZN3bbb9GG1111001E", this);} // tgen
bbb::GG1111001 ::GG1111001(){ note_ctor("_ZN3bbb9GG1111001E", this);} // tgen
}
static void Test__ZN3bbb9GG1111001E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1111001E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1111001E, buf);
    ::bbb::GG1111001 *dp, &lv = *(dp=new (buf) ::bbb::GG1111001());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1111001E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1111001E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1111001E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1111001E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1111001E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1111001E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF100*), ABISELECT(48,28), "_ZN3bbb9GG1111001E");
    check_base_class_offset(lv, (::bbb::FF100*), ABISELECT(32,20), "_ZN3bbb9GG1111001E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1111001E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1111001E);
    dp->::bbb::GG1111001::~GG1111001();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1111001E(Test__ZN3bbb9GG1111001E, "_ZN3bbb9GG1111001E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1111001C1Ev();
extern void _ZN3bbb9GG1111001D1Ev();
Name_Map name_map__ZN3bbb9GG1111001E[] = {
  NSPAIR(_ZN3bbb9GG1111001C1Ev),
  NSPAIR(_ZN3bbb9GG1111001D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF100E;
extern VTBL_ENTRY _ZTIN3bbb5FF100E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF100E[];
static Base_Class bases__ZN3bbb9GG1111001E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF100E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1111001E[];
extern void _ZN3bbb9GG11110013barEv();
extern void _ZN3bbb9GG11110013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11110013barEv,_ZThn8_N3bbb9GG11110013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11110013fooEv,_ZThn8_N3bbb9GG11110013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11110013barEv,_ZThn20_N3bbb9GG11110013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11110013fooEv,_ZThn20_N3bbb9GG11110013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11110013fooEv,_ZThn28_N3bbb9GG11110013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11110013barEv,_ZThn28_N3bbb9GG11110013barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1111001E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111001E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11110013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11110013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11110013barEv,_ZThn8_N3bbb9GG11110013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11110013fooEv,_ZThn8_N3bbb9GG11110013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11110013barEv,_ZThn20_N3bbb9GG11110013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11110013fooEv,_ZThn20_N3bbb9GG11110013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111001E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11110013fooEv,_ZThn28_N3bbb9GG11110013fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11110013barEv,_ZThn28_N3bbb9GG11110013barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1111001E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1111001E[];
Class_Descriptor cd__ZN3bbb9GG1111001E = {  "_ZN3bbb9GG1111001E", // class name
  bases__ZN3bbb9GG1111001E, 6,
  &(vtc__ZN3bbb9GG1111001E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1111001E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1111001E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1111010  : ::bbb::EE111 , ::bbb::FF101 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11110103fooEv
  virtual void  bar(); // _ZN3bbb9GG11110103barEv
  ~GG1111010(); // tgen
  GG1111010(); // tgen
};
//SIG(1 _ZN3bbb9GG1111010E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC6{ v1 v2 Fi} v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1111010 ::foo(){vfunc_called(this, "_ZN3bbb9GG11110103fooEv");}
void  bbb::GG1111010 ::bar(){vfunc_called(this, "_ZN3bbb9GG11110103barEv");}
bbb::GG1111010 ::~GG1111010(){ note_dtor("_ZN3bbb9GG1111010E", this);} // tgen
bbb::GG1111010 ::GG1111010(){ note_ctor("_ZN3bbb9GG1111010E", this);} // tgen
}
static void Test__ZN3bbb9GG1111010E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1111010E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1111010E, buf);
    ::bbb::GG1111010 *dp, &lv = *(dp=new (buf) ::bbb::GG1111010());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1111010E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1111010E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1111010E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1111010E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1111010E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1111010E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG1111010E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1111010E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1111010E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1111010E);
    dp->::bbb::GG1111010::~GG1111010();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1111010E(Test__ZN3bbb9GG1111010E, "_ZN3bbb9GG1111010E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1111010C1Ev();
extern void _ZN3bbb9GG1111010D1Ev();
Name_Map name_map__ZN3bbb9GG1111010E[] = {
  NSPAIR(_ZN3bbb9GG1111010C1Ev),
  NSPAIR(_ZN3bbb9GG1111010D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG1111010E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1111010E[];
extern void _ZN3bbb9GG11110103barEv();
extern void _ZN3bbb9GG11110103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11110103barEv,_ZThn8_N3bbb9GG11110103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11110103fooEv,_ZThn8_N3bbb9GG11110103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11110103barEv,_ZThn20_N3bbb9GG11110103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11110103fooEv,_ZThn20_N3bbb9GG11110103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11110103fooEv,_ZThn28_N3bbb9GG11110103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11110103barEv,_ZThn28_N3bbb9GG11110103barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1111010E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111010E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11110103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11110103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11110103barEv,_ZThn8_N3bbb9GG11110103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11110103fooEv,_ZThn8_N3bbb9GG11110103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11110103barEv,_ZThn20_N3bbb9GG11110103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11110103fooEv,_ZThn20_N3bbb9GG11110103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111010E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11110103fooEv,_ZThn28_N3bbb9GG11110103fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11110103barEv,_ZThn28_N3bbb9GG11110103barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1111010E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1111010E[];
Class_Descriptor cd__ZN3bbb9GG1111010E = {  "_ZN3bbb9GG1111010E", // class name
  bases__ZN3bbb9GG1111010E, 6,
  &(vtc__ZN3bbb9GG1111010E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1111010E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1111010E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1111011  : ::bbb::EE111 , ::bbb::FF101 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11110113barEv
  virtual void  foo(); // _ZN3bbb9GG11110113fooEv
  ~GG1111011(); // tgen
  GG1111011(); // tgen
};
//SIG(1 _ZN3bbb9GG1111011E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC6{ v2 v1 Fi} v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1111011 ::bar(){vfunc_called(this, "_ZN3bbb9GG11110113barEv");}
void  bbb::GG1111011 ::foo(){vfunc_called(this, "_ZN3bbb9GG11110113fooEv");}
bbb::GG1111011 ::~GG1111011(){ note_dtor("_ZN3bbb9GG1111011E", this);} // tgen
bbb::GG1111011 ::GG1111011(){ note_ctor("_ZN3bbb9GG1111011E", this);} // tgen
}
static void Test__ZN3bbb9GG1111011E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1111011E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1111011E, buf);
    ::bbb::GG1111011 *dp, &lv = *(dp=new (buf) ::bbb::GG1111011());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1111011E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1111011E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1111011E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1111011E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1111011E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1111011E");
    check_base_class_offset(lv, (::bbb::BB0*)(::bbb::FF101*), ABISELECT(48,28), "_ZN3bbb9GG1111011E");
    check_base_class_offset(lv, (::bbb::FF101*), ABISELECT(32,20), "_ZN3bbb9GG1111011E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1111011E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1111011E);
    dp->::bbb::GG1111011::~GG1111011();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1111011E(Test__ZN3bbb9GG1111011E, "_ZN3bbb9GG1111011E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1111011C1Ev();
extern void _ZN3bbb9GG1111011D1Ev();
Name_Map name_map__ZN3bbb9GG1111011E[] = {
  NSPAIR(_ZN3bbb9GG1111011C1Ev),
  NSPAIR(_ZN3bbb9GG1111011D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB0E;
extern VTBL_ENTRY _ZTIN3bbb3BB0E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB0E[];
extern Class_Descriptor cd__ZN3bbb5FF101E;
extern VTBL_ENTRY _ZTIN3bbb5FF101E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF101E[];
static Base_Class bases__ZN3bbb9GG1111011E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB0E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF101E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1111011E[];
extern void _ZN3bbb9GG11110113barEv();
extern void _ZN3bbb9GG11110113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11110113barEv,_ZThn8_N3bbb9GG11110113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11110113fooEv,_ZThn8_N3bbb9GG11110113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11110113barEv,_ZThn20_N3bbb9GG11110113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11110113fooEv,_ZThn20_N3bbb9GG11110113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11110113fooEv,_ZThn28_N3bbb9GG11110113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11110113barEv,_ZThn28_N3bbb9GG11110113barEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1111011E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111011E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11110113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11110113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11110113barEv,_ZThn8_N3bbb9GG11110113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11110113fooEv,_ZThn8_N3bbb9GG11110113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11110113barEv,_ZThn20_N3bbb9GG11110113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11110113fooEv,_ZThn20_N3bbb9GG11110113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111011E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11110113fooEv,_ZThn28_N3bbb9GG11110113fooEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11110113barEv,_ZThn28_N3bbb9GG11110113barEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1111011E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1111011E[];
Class_Descriptor cd__ZN3bbb9GG1111011E = {  "_ZN3bbb9GG1111011E", // class name
  bases__ZN3bbb9GG1111011E, 6,
  &(vtc__ZN3bbb9GG1111011E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1111011E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1111011E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1111100  : ::bbb::EE111 , ::bbb::FF110 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11111003fooEv
  virtual void  bar(); // _ZN3bbb9GG11111003barEv
  ~GG1111100(); // tgen
  GG1111100(); // tgen
};
//SIG(1 _ZN3bbb9GG1111100E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1111100 ::foo(){vfunc_called(this, "_ZN3bbb9GG11111003fooEv");}
void  bbb::GG1111100 ::bar(){vfunc_called(this, "_ZN3bbb9GG11111003barEv");}
bbb::GG1111100 ::~GG1111100(){ note_dtor("_ZN3bbb9GG1111100E", this);} // tgen
bbb::GG1111100 ::GG1111100(){ note_ctor("_ZN3bbb9GG1111100E", this);} // tgen
}
static void Test__ZN3bbb9GG1111100E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1111100E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1111100E, buf);
    ::bbb::GG1111100 *dp, &lv = *(dp=new (buf) ::bbb::GG1111100());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1111100E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1111100E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1111100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1111100E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1111100E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1111100E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG1111100E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1111100E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1111100E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1111100E);
    dp->::bbb::GG1111100::~GG1111100();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1111100E(Test__ZN3bbb9GG1111100E, "_ZN3bbb9GG1111100E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1111100C1Ev();
extern void _ZN3bbb9GG1111100D1Ev();
Name_Map name_map__ZN3bbb9GG1111100E[] = {
  NSPAIR(_ZN3bbb9GG1111100C1Ev),
  NSPAIR(_ZN3bbb9GG1111100D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG1111100E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1111100E[];
extern void _ZN3bbb9GG11111003barEv();
extern void _ZN3bbb9GG11111003fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11111003barEv,_ZThn8_N3bbb9GG11111003barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11111003fooEv,_ZThn8_N3bbb9GG11111003fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11111003barEv,_ZThn20_N3bbb9GG11111003barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11111003fooEv,_ZThn20_N3bbb9GG11111003fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11111003barEv,_ZThn28_N3bbb9GG11111003barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11111003fooEv,_ZThn28_N3bbb9GG11111003fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1111100E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111100E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11111003barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11111003fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11111003barEv,_ZThn8_N3bbb9GG11111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11111003fooEv,_ZThn8_N3bbb9GG11111003fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11111003barEv,_ZThn20_N3bbb9GG11111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11111003fooEv,_ZThn20_N3bbb9GG11111003fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111100E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11111003barEv,_ZThn28_N3bbb9GG11111003barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11111003fooEv,_ZThn28_N3bbb9GG11111003fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1111100E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1111100E[];
Class_Descriptor cd__ZN3bbb9GG1111100E = {  "_ZN3bbb9GG1111100E", // class name
  bases__ZN3bbb9GG1111100E, 6,
  &(vtc__ZN3bbb9GG1111100E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1111100E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1111100E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1111101  : ::bbb::EE111 , ::bbb::FF110 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11111013barEv
  virtual void  foo(); // _ZN3bbb9GG11111013fooEv
  ~GG1111101(); // tgen
  GG1111101(); // tgen
};
//SIG(1 _ZN3bbb9GG1111101E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1111101 ::bar(){vfunc_called(this, "_ZN3bbb9GG11111013barEv");}
void  bbb::GG1111101 ::foo(){vfunc_called(this, "_ZN3bbb9GG11111013fooEv");}
bbb::GG1111101 ::~GG1111101(){ note_dtor("_ZN3bbb9GG1111101E", this);} // tgen
bbb::GG1111101 ::GG1111101(){ note_ctor("_ZN3bbb9GG1111101E", this);} // tgen
}
static void Test__ZN3bbb9GG1111101E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1111101E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1111101E, buf);
    ::bbb::GG1111101 *dp, &lv = *(dp=new (buf) ::bbb::GG1111101());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1111101E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1111101E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1111101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1111101E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1111101E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1111101E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF110*), ABISELECT(48,28), "_ZN3bbb9GG1111101E");
    check_base_class_offset(lv, (::bbb::FF110*), ABISELECT(32,20), "_ZN3bbb9GG1111101E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1111101E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1111101E);
    dp->::bbb::GG1111101::~GG1111101();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1111101E(Test__ZN3bbb9GG1111101E, "_ZN3bbb9GG1111101E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1111101C1Ev();
extern void _ZN3bbb9GG1111101D1Ev();
Name_Map name_map__ZN3bbb9GG1111101E[] = {
  NSPAIR(_ZN3bbb9GG1111101C1Ev),
  NSPAIR(_ZN3bbb9GG1111101D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF110E;
extern VTBL_ENTRY _ZTIN3bbb5FF110E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF110E[];
static Base_Class bases__ZN3bbb9GG1111101E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF110E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1111101E[];
extern void _ZN3bbb9GG11111013barEv();
extern void _ZN3bbb9GG11111013fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11111013barEv,_ZThn8_N3bbb9GG11111013barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11111013fooEv,_ZThn8_N3bbb9GG11111013fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11111013barEv,_ZThn20_N3bbb9GG11111013barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11111013fooEv,_ZThn20_N3bbb9GG11111013fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11111013barEv,_ZThn28_N3bbb9GG11111013barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11111013fooEv,_ZThn28_N3bbb9GG11111013fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1111101E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111101E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11111013barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11111013fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11111013barEv,_ZThn8_N3bbb9GG11111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11111013fooEv,_ZThn8_N3bbb9GG11111013fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11111013barEv,_ZThn20_N3bbb9GG11111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11111013fooEv,_ZThn20_N3bbb9GG11111013fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111101E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11111013barEv,_ZThn28_N3bbb9GG11111013barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11111013fooEv,_ZThn28_N3bbb9GG11111013fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1111101E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1111101E[];
Class_Descriptor cd__ZN3bbb9GG1111101E = {  "_ZN3bbb9GG1111101E", // class name
  bases__ZN3bbb9GG1111101E, 6,
  &(vtc__ZN3bbb9GG1111101E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1111101E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1111101E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1111110  : ::bbb::EE111 , ::bbb::FF111 {
  int pg;
  virtual void  foo(); // _ZN3bbb9GG11111103fooEv
  virtual void  bar(); // _ZN3bbb9GG11111103barEv
  ~GG1111110(); // tgen
  GG1111110(); // tgen
};
//SIG(1 _ZN3bbb9GG1111110E) C1{ BC2{ BC3{ v2 v1 Fi} BC4{ v2 v1 Fi} v2 v1 Fi} BC5{ BC3 BC4 v2 v1 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1111110 ::foo(){vfunc_called(this, "_ZN3bbb9GG11111103fooEv");}
void  bbb::GG1111110 ::bar(){vfunc_called(this, "_ZN3bbb9GG11111103barEv");}
bbb::GG1111110 ::~GG1111110(){ note_dtor("_ZN3bbb9GG1111110E", this);} // tgen
bbb::GG1111110 ::GG1111110(){ note_ctor("_ZN3bbb9GG1111110E", this);} // tgen
}
static void Test__ZN3bbb9GG1111110E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1111110E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1111110E, buf);
    ::bbb::GG1111110 *dp, &lv = *(dp=new (buf) ::bbb::GG1111110());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1111110E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1111110E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1111110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1111110E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1111110E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1111110E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG1111110E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1111110E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1111110E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1111110E);
    dp->::bbb::GG1111110::~GG1111110();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1111110E(Test__ZN3bbb9GG1111110E, "_ZN3bbb9GG1111110E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1111110C1Ev();
extern void _ZN3bbb9GG1111110D1Ev();
Name_Map name_map__ZN3bbb9GG1111110E[] = {
  NSPAIR(_ZN3bbb9GG1111110C1Ev),
  NSPAIR(_ZN3bbb9GG1111110D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG1111110E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1111110E[];
extern void _ZN3bbb9GG11111103barEv();
extern void _ZN3bbb9GG11111103fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11111103barEv,_ZThn8_N3bbb9GG11111103barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11111103fooEv,_ZThn8_N3bbb9GG11111103fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11111103barEv,_ZThn20_N3bbb9GG11111103barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11111103fooEv,_ZThn20_N3bbb9GG11111103fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11111103barEv,_ZThn28_N3bbb9GG11111103barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11111103fooEv,_ZThn28_N3bbb9GG11111103fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1111110E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111110E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11111103barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11111103fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11111103barEv,_ZThn8_N3bbb9GG11111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11111103fooEv,_ZThn8_N3bbb9GG11111103fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11111103barEv,_ZThn20_N3bbb9GG11111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11111103fooEv,_ZThn20_N3bbb9GG11111103fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111110E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11111103barEv,_ZThn28_N3bbb9GG11111103barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11111103fooEv,_ZThn28_N3bbb9GG11111103fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1111110E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1111110E[];
Class_Descriptor cd__ZN3bbb9GG1111110E = {  "_ZN3bbb9GG1111110E", // class name
  bases__ZN3bbb9GG1111110E, 6,
  &(vtc__ZN3bbb9GG1111110E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1111110E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1111110E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

#ifdef __cplusplus
namespace bbb { 
struct  GG1111111  : ::bbb::EE111 , ::bbb::FF111 {
  int pg;
  virtual void  bar(); // _ZN3bbb9GG11111113barEv
  virtual void  foo(); // _ZN3bbb9GG11111113fooEv
  ~GG1111111(); // tgen
  GG1111111(); // tgen
};
//SIG(1 _ZN3bbb9GG1111111E) C1{ BC2{ BC3{ v1 v2 Fi} BC4{ v1 v2 Fi} v1 v2 Fi} BC5{ BC3 BC4 v1 v2 Fi} v1 v2 Fi}
}
namespace bbb { 
void  bbb::GG1111111 ::bar(){vfunc_called(this, "_ZN3bbb9GG11111113barEv");}
void  bbb::GG1111111 ::foo(){vfunc_called(this, "_ZN3bbb9GG11111113fooEv");}
bbb::GG1111111 ::~GG1111111(){ note_dtor("_ZN3bbb9GG1111111E", this);} // tgen
bbb::GG1111111 ::GG1111111(){ note_ctor("_ZN3bbb9GG1111111E", this);} // tgen
}
static void Test__ZN3bbb9GG1111111E()
{
  extern Class_Descriptor cd__ZN3bbb9GG1111111E;
  void *lvp;
  {
    ABISELECT(double,int) buf[ABISELECT(10,12)];
    init_test(&cd__ZN3bbb9GG1111111E, buf);
    ::bbb::GG1111111 *dp, &lv = *(dp=new (buf) ::bbb::GG1111111());
    lvp = (void*)&lv;
    check2(sizeof(lv), ABISELECT(72,44), "sizeof(_ZN3bbb9GG1111111E)");
    check2(__alignof__(lv), ABISELECT(8,4), "__alignof__(_ZN3bbb9GG1111111E)");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::EE111*), 0, "_ZN3bbb9GG1111111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::EE111*), ABISELECT(16,8), "_ZN3bbb9GG1111111E");
    check_base_class_offset(lv, (::bbb::EE111*), 0, "_ZN3bbb9GG1111111E");
    check_base_class_offset(lv, (::bbb::AA1*)(::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1111111E");
    check_base_class_offset(lv, (::bbb::BB1*)(::bbb::FF111*), ABISELECT(48,28), "_ZN3bbb9GG1111111E");
    check_base_class_offset(lv, (::bbb::FF111*), ABISELECT(32,20), "_ZN3bbb9GG1111111E");
    check_field_offset(lv, pg, ABISELECT(64,40), "_ZN3bbb9GG1111111E.pg");
    test_class_info(&lv, &cd__ZN3bbb9GG1111111E);
    dp->::bbb::GG1111111::~GG1111111();
  }
  Check_Ctor_Dtor_Calls(lvp);
}
static Arrange_To_Call_Me v_ZN3bbb9GG1111111E(Test__ZN3bbb9GG1111111E, "_ZN3bbb9GG1111111E", ABISELECT(72,44));

#else // __cplusplus

extern void _ZN3bbb9GG1111111C1Ev();
extern void _ZN3bbb9GG1111111D1Ev();
Name_Map name_map__ZN3bbb9GG1111111E[] = {
  NSPAIR(_ZN3bbb9GG1111111C1Ev),
  NSPAIR(_ZN3bbb9GG1111111D1Ev),
  {0,0}
};
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5EE111E;
extern VTBL_ENTRY _ZTIN3bbb5EE111E[];
extern  VTBL_ENTRY _ZTVN3bbb5EE111E[];
extern Class_Descriptor cd__ZN3bbb3AA1E;
extern VTBL_ENTRY _ZTIN3bbb3AA1E[];
extern  VTBL_ENTRY _ZTVN3bbb3AA1E[];
extern Class_Descriptor cd__ZN3bbb3BB1E;
extern VTBL_ENTRY _ZTIN3bbb3BB1E[];
extern  VTBL_ENTRY _ZTVN3bbb3BB1E[];
extern Class_Descriptor cd__ZN3bbb5FF111E;
extern VTBL_ENTRY _ZTIN3bbb5FF111E[];
extern  VTBL_ENTRY _ZTVN3bbb5FF111E[];
static Base_Class bases__ZN3bbb9GG1111111E[] = {
  // ofst, vfto, nneg, vtt_idx, base_vtt_idx, init_seq, direct, virtual
  {&cd__ZN3bbb3AA1E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    1, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(16,8), //bcp->offset
    4, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    2, //init_seq
    2, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5EE111E,    0, //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    3, //init_seq
    -1, //immediately_derived
  1, 0},
  {&cd__ZN3bbb3AA1E,    ABISELECT(32,20), //bcp->offset
    -1, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    4, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb3BB1E,    ABISELECT(48,28), //bcp->offset
    12, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    5, //init_seq
    5, //immediately_derived
  0, 0},
  {&cd__ZN3bbb5FF111E,    ABISELECT(32,20), //bcp->offset
    8, //bcp->virtual_function_table_offset
    2, //num_negative_vtable_entries(t, bcp)
    0, //bcp->index_in_construction_vtbl_array
    0, //bcp->base_subarray_index_in_construction_vtbl_array
    6, //init_seq
    -1, //immediately_derived
  1, 0},
  {0}};
extern VTBL_ENTRY _ZTIN3bbb9GG1111111E[];
extern void _ZN3bbb9GG11111113barEv();
extern void _ZN3bbb9GG11111113fooEv();
extern void ABISELECT(_ZThn16_N3bbb9GG11111113barEv,_ZThn8_N3bbb9GG11111113barEv)();
extern void ABISELECT(_ZThn16_N3bbb9GG11111113fooEv,_ZThn8_N3bbb9GG11111113fooEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11111113barEv,_ZThn20_N3bbb9GG11111113barEv)();
extern void ABISELECT(_ZThn32_N3bbb9GG11111113fooEv,_ZThn20_N3bbb9GG11111113fooEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11111113barEv,_ZThn28_N3bbb9GG11111113barEv)();
extern void ABISELECT(_ZThn48_N3bbb9GG11111113fooEv,_ZThn28_N3bbb9GG11111113fooEv)();
static  VTBL_ENTRY vtc__ZN3bbb9GG1111111E[] = {
  0,
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111111E[0]),
  (VTBL_ENTRY)&_ZN3bbb9GG11111113barEv,
  (VTBL_ENTRY)&_ZN3bbb9GG11111113fooEv,
  ABISELECT(-16,-8),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11111113barEv,_ZThn8_N3bbb9GG11111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn16_N3bbb9GG11111113fooEv,_ZThn8_N3bbb9GG11111113fooEv),
  ABISELECT(-32,-20),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11111113barEv,_ZThn20_N3bbb9GG11111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn32_N3bbb9GG11111113fooEv,_ZThn20_N3bbb9GG11111113fooEv),
  ABISELECT(-48,-28),
  (VTBL_ENTRY)&(_ZTIN3bbb9GG1111111E[0]),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11111113barEv,_ZThn28_N3bbb9GG11111113barEv),
  (VTBL_ENTRY)&ABISELECT(_ZThn48_N3bbb9GG11111113fooEv,_ZThn28_N3bbb9GG11111113fooEv),
};
extern VTBL_ENTRY _ZTIN3bbb9GG1111111E[];
extern  VTBL_ENTRY _ZTVN3bbb9GG1111111E[];
Class_Descriptor cd__ZN3bbb9GG1111111E = {  "_ZN3bbb9GG1111111E", // class name
  bases__ZN3bbb9GG1111111E, 6,
  &(vtc__ZN3bbb9GG1111111E[0]), // expected_vtbl_contents
  0, //no vtt
  ABISELECT(72,44), // object size
  NSPAIRA(_ZTIN3bbb9GG1111111E),ABISELECT(56,32), //typeinfo_var
  NSPAIRA(_ZTVN3bbb9GG1111111E),16, //virtual function table var
  2, // offset into main vftv pointed to by object[0]
  {0,0},0, // virtual table table var
  6, // n_initialized_bases
  0, // has_virtual_bases
  0, // has_class_type_fields
  0, // alt-thunk-names
};
#endif // __cplusplus

//============================================================================

