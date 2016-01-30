#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Hari Sekhon
#  Date: 2015-11-05 23:29:15 +0000 (Thu, 05 Nov 2015)
#
#  https://github.com/harisekhon/bash-tools
#
#  License: see accompanying Hari Sekhon LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help improve or steer this or other code I publish
#
#  http://www.linkedin.com/in/harisekhon
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
srcdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. "$srcdir/utils.sh"

section "Running Bash Tools ALL"

#"$srcdir/whitespace.sh"

#"$srcdir/compile.sh"

#"$srcdir/syntax.sh"
#"$srcdir/pylint.sh"

#"$srcdir/python3.sh"

"$srcdir/perl_syntax.sh"

"$srcdir/python-compile.sh"

#for script in $(find . -name 'test*.sh'); do
#    "$srcdir/$script" -vvv
#done

# do help afterwards for Spark to be downloaded, and then help will find and use downloaded spark for SPARK_HOME
#"$srcdir/help.sh"

"$srcdir/check_makefile.sh"
"$srcdir/check_shell_syntax.sh"
"$srcdir/check_travis_yml.sh"

section "Bash Tools All Checks Completed"
