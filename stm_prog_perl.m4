# -*- autoconf -*-
#
# Copyright (C) 2013 Khaled Hosny and Barry Schwartz
# 
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

# serial 4

# StM_PROG_PERL
# -------------
#
# Set PERL to the path of the first perl in the PATH, or to an empty
# string if perl is not found. The result is cached in
# ac_cv_path_PERL. The test may be overridden by setting PERL or the
# cache variable.
#
AC_DEFUN([StM_PROG_PERL],[{ :;
   AC_REQUIRE([AC_PROG_EGREP])
   StM_PATH_PROGS_CACHED_AND_PRECIOUS([PERL],[Perl interpreter command],
      [perl],[
         if LC_ALL=C LANG=C ${ac_path_PERL} --version 2>&1 | \
                 LC_ALL=C LANG=C ${EGREP} -i '^This is perl' 2> /dev/null > /dev/null; then
            ac_cv_path_PERL=${ac_path_PERL}
            ac_path_PERL_found=:
         fi
      ])
}])
