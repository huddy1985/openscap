#!/usr/bin/env bash
. $builddir/tests/test_common.sh

result=`mktemp`

set -e
set -o pipefail

$OSCAP oval eval --results $result $srcdir/oval-def_count_function.xml || exit 1

rm $result

