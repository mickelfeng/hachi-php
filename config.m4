dnl $Id$
dnl config.m4 for extension hachi

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(hachi, for hachi support,
Make sure that the comment is aligned:
[  --with-hachi             Include hachi support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(hachi, whether to enable hachi support,
dnl Make sure that the comment is aligned:
dnl [  --enable-hachi           Enable hachi support])

if test "$PHP_HACHI" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-hachi -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/hachi.h"  # you most likely want to change this
  dnl if test -r $PHP_HACHI/$SEARCH_FOR; then # path given as parameter
  dnl   HACHI_DIR=$PHP_HACHI
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for hachi files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       HACHI_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$HACHI_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the hachi distribution])
  dnl fi

  dnl # --with-hachi -> add include path
  dnl PHP_ADD_INCLUDE($HACHI_DIR/include)

  dnl # --with-hachi -> check for lib and symbol presence
  dnl LIBNAME=hachi # you may want to change this
  dnl LIBSYMBOL=hachi # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $HACHI_DIR/lib, HACHI_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_HACHILIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong hachi lib version or lib not found])
  dnl ],[
  dnl   -L$HACHI_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(HACHI_SHARED_LIBADD)

  PHP_NEW_EXTENSION(hachi, hachi.c, $ext_shared)
fi
