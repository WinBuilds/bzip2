@echo off
echo Doing 6 tests (3 compress, 3 uncompress) ...
echo If there's a problem, things might stop at this point.

bzip2 -1  < sample1.ref > sample1.rb2
bzip2 -2  < sample2.ref > sample2.rb2
bzip2 -3  < sample3.ref > sample3.rb2
bzip2 -d  < sample1.bz2 > sample1.tst
bzip2 -d  < sample2.bz2 > sample2.tst
bzip2 -ds < sample3.bz2 > sample3.tst

fc sample1.bz2 sample1.rb2 
fc sample2.bz2 sample2.rb2
fc sample3.bz2 sample3.rb2
fc sample1.tst sample1.ref
fc sample2.tst sample2.ref
fc sample3.tst sample3.ref

pause