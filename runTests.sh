#!/bin/bash

rm -rf luacov.report.out luacov.stats.out

busted --coverage test/ || exit 1
luacov src/

printf '\nCoverage '
awk '/Summary/,/Total/' luacov.report.out

printf '\nView luacov.report.out for detailed coverage information.\n\n'