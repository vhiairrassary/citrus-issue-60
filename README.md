# Citrus issue #60

https://github.com/mjackson/citrus/issues/60


To reproduce the error run the program using: `ruby main.rb` (be sure to use ruby 3.0).

The parser is parsing the same expression indefinitively until it crashes at some point with the following stack trace:

```
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1216: [BUG] Segmentation fault at 0x00000002b1f48000
ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-darwin20]

-- Crash Report log information --------------------------------------------
   See Crash Report log file under the one of following:
     * ~/Library/Logs/DiagnosticReports
     * /Library/Logs/DiagnosticReports
   for more details.
Don't forget to include the above Crash Report log file in bug reports.

-- Control frame information -----------------------------------------------
c:0094 p:---- s:0724 e:000723 CFUNC  :slice!
c:0093 p:0138 s:0718 e:000717 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1216
c:0092 p:0007 s:0707 e:000706 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0091 p:0024 s:0700 e:000699 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0090 p:0078 s:0692 e:000691 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1149
c:0089 p:0007 s:0682 e:000681 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0088 p:0024 s:0675 e:000674 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0087 p:0088 s:0667 e:000666 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206
c:0086 p:0007 s:0656 e:000655 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0085 p:0024 s:0649 e:000648 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0084 p:0019 s:0641 e:000640 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0083 p:0007 s:0634 e:000633 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0082 p:0024 s:0627 e:000626 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0081 p:0088 s:0619 e:000618 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206
c:0080 p:0007 s:0608 e:000607 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0079 p:0024 s:0601 e:000600 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0078 p:0019 s:0593 e:000592 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0077 p:0007 s:0586 e:000585 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0076 p:0024 s:0579 e:000578 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0075 p:0060 s:0571 e:000570 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244
c:0074 p:0007 s:0562 e:000561 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0073 p:0024 s:0555 e:000554 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0072 p:0019 s:0547 e:000546 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0071 p:0007 s:0540 e:000539 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0070 p:0024 s:0533 e:000532 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0069 p:0060 s:0525 e:000524 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244
c:0068 p:0007 s:0516 e:000515 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0067 p:0024 s:0509 e:000508 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0066 p:0019 s:0501 e:000500 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0065 p:0007 s:0494 e:000493 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0064 p:0024 s:0487 e:000486 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0063 p:0060 s:0479 e:000478 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244
c:0062 p:0007 s:0470 e:000469 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0061 p:0024 s:0463 e:000462 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0060 p:0019 s:0455 e:000454 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0059 p:0007 s:0448 e:000447 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0058 p:0024 s:0441 e:000440 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0057 p:0060 s:0433 e:000432 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244
c:0056 p:0007 s:0424 e:000423 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0055 p:0024 s:0417 e:000416 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0054 p:0019 s:0409 e:000408 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0053 p:0007 s:0402 e:000401 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0052 p:0024 s:0395 e:000394 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0051 p:0088 s:0387 e:000386 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206
c:0050 p:0007 s:0376 e:000375 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0049 p:0024 s:0369 e:000368 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0048 p:0019 s:0361 e:000360 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0047 p:0007 s:0354 e:000353 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0046 p:0024 s:0347 e:000346 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0045 p:0060 s:0339 e:000338 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244
c:0044 p:0007 s:0330 e:000329 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0043 p:0024 s:0323 e:000322 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0042 p:0019 s:0315 e:000314 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0041 p:0007 s:0308 e:000307 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0040 p:0024 s:0301 e:000300 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0039 p:0088 s:0293 e:000292 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206
c:0038 p:0007 s:0282 e:000281 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0037 p:0024 s:0275 e:000274 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0036 p:0019 s:0267 e:000266 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0035 p:0007 s:0260 e:000259 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0034 p:0024 s:0253 e:000252 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0033 p:0060 s:0245 e:000244 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244
c:0032 p:0007 s:0236 e:000235 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0031 p:0024 s:0229 e:000228 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0030 p:0019 s:0221 e:000220 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0029 p:0007 s:0214 e:000213 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0028 p:0024 s:0207 e:000206 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0027 p:0088 s:0199 e:000198 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206
c:0026 p:0007 s:0188 e:000187 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0025 p:0024 s:0181 e:000180 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0024 p:0019 s:0173 e:000172 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0023 p:0007 s:0166 e:000165 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0022 p:0024 s:0159 e:000158 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0021 p:0060 s:0151 e:000150 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244
c:0020 p:0007 s:0142 e:000141 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0019 p:0024 s:0135 e:000134 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0018 p:0019 s:0127 e:000126 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0017 p:0007 s:0120 e:000119 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0016 p:0024 s:0113 e:000112 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0015 p:0088 s:0105 e:000104 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206
c:0014 p:0007 s:0094 e:000093 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0013 p:0024 s:0087 e:000086 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0012 p:0019 s:0079 e:000078 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780
c:0011 p:0007 s:0072 e:000071 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0010 p:0024 s:0065 e:000064 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0009 p:0060 s:0057 e:000056 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244
c:0008 p:0007 s:0048 e:000047 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288
c:0007 p:0024 s:0041 e:000040 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250
c:0006 p:0080 s:0033 e:000032 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:665
c:0005 p:0087 s:0022 e:000021 METHOD /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:392
c:0004 p:0015 s:0014 e:000012 BLOCK  main.rb:5 [FINISH]
c:0003 p:---- s:0010 e:000009 CFUNC  :loop
c:0002 p:0024 s:0006 e:000005 EVAL   main.rb:4 [FINISH]
c:0001 p:0000 s:0003 E:001170 (none) [FINISH]

-- Ruby level backtrace information ----------------------------------------
main.rb:4:in `<main>'
main.rb:4:in `loop'
main.rb:5:in `block in <main>'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:392:in `parse'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:665:in `parse'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1244:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:780:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1206:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1149:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:250:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:288:in `apply_rule'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1216:in `exec'
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb:1216:in `slice!'

-- Machine register context ------------------------------------------------
 rax: 0x00000002b1f48000 rbx: 0x00000002b1f49210 rcx: 0x00000001096a3605
 rdx: 0x0000000000000003 rdi: 0x00007fa85a009400 rsi: 0x00000002b1f49210
 rbp: 0x00007ffee6632750 rsp: 0x00007ffee6632740  r8: 0x00007fa859606900
  r9: 0x00007fa859606940 r10: 0x0000000000000000 r11: 0x0000000000000000
 r12: 0x0000000000000059 r13: 0x00007fa85c6daf48 r14: 0x00007fa85a009400
 r15: 0x00007fa85a1f7c28 rip: 0x00000001096b0f34 rfl: 0x0000000000010206

-- C level backtrace information -------------------------------------------
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(rb_vm_bugreport+0x6cf) [0x109866e3f]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(rb_bug_for_fatal_signal+0x1d6) [0x109680ef6]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(sigsegv+0x5b) [0x1097bd09b]
/usr/lib/system/libsystem_platform.dylib(_sigtramp+0x1d) [0x7fff20516d7d]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(gc_mark_ptr+0x24) [0x1096b0f34]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(gc_mark_children+0x9d4) [0x1096a39e4]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(gc_marks_rest+0xa8) [0x1096af208]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(gc_start+0x819) [0x1096ab4e9]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(newobj_slowpath_wb_protected+0xed) [0x1096aa18d]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(rb_wb_protected_newobj_of+0x83) [0x10969c773]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(ary_new+0x55) [0x1095e1605]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(rb_ary_slice_bang+0x1fc) [0x1095eb93c]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(vm_call_cfunc_with_frame+0x14f) [0x10985c9af]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(vm_sendish+0x516) [0x1098545e6]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(vm_exec_core+0x39f0) [0x109839660]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(rb_vm_exec+0xcab) [0x10984fceb]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(invoke_block_from_c_bh+0x70c) [0x109860a5c]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(loop_i+0x4c) [0x10986141c]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(rb_vrescue2+0x181) [0x10968cd71]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(rb_rescue2+0x7b) [0x10968cbcb]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(vm_call_cfunc_with_frame+0x14f) [0x10985c9af]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(vm_sendish+0x516) [0x1098545e6]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(vm_exec_core+0x398d) [0x1098395fd]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(rb_vm_exec+0xcab) [0x10984fceb]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(rb_ec_exec_node+0x136) [0x10968c236]
/Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib(ruby_run_node+0x57) [0x10968c0a7]
/Users/vhiairrassary/.rbenv/versions/3.0.2/bin/ruby(main+0x5d) [0x1095cff0d]

-- Other runtime information -----------------------------------------------

* Loaded script: main.rb

* Loaded features:

    0 enumerator.so
    1 thread.rb
    2 rational.so
    3 complex.so
    4 ruby2_keywords.rb
    5 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
    6 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/trans/transdb.bundle
    7 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/rbconfig.rb
    8 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/compatibility.rb
    9 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/defaults.rb
   10 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/deprecate.rb
   11 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/errors.rb
   12 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/exceptions.rb
   13 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/basic_specification.rb
   14 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/stub_specification.rb
   15 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/text.rb
   16 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/user_interaction.rb
   17 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/specification_policy.rb
   18 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/util/list.rb
   19 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/platform.rb
   20 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/version.rb
   21 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/requirement.rb
   22 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/specification.rb
   23 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/util.rb
   24 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/dependency.rb
   25 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_gem.rb
   26 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/monitor.bundle
   27 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/monitor.rb
   28 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_require.rb
   29 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/core_ext/kernel_warn.rb
   30 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems.rb
   31 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/path_support.rb
   32 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/version.rb
   33 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/core_ext/name_error.rb
   34 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/levenshtein.rb
   35 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/jaro_winkler.rb
   36 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/spell_checker.rb
   37 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/spell_checkers/name_error_checkers/class_name_checker.rb
   38 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/spell_checkers/name_error_checkers/variable_name_checker.rb
   39 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/spell_checkers/name_error_checkers.rb
   40 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/spell_checkers/method_name_checker.rb
   41 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/spell_checkers/key_error_checker.rb
   42 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/spell_checkers/null_checker.rb
   43 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/tree_spell_checker.rb
   44 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/spell_checkers/require_path_checker.rb
   45 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean/formatters/plain_formatter.rb
   46 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/did_you_mean.rb
   47 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/rubygems/bundler_version_finder.rb
   48 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/strscan.bundle
   49 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/pathname.bundle
   50 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/pathname.rb
   51 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus/version.rb
   52 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus.rb
   53 /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/citrus-3.0.2/lib/citrus/file.rb

* Process memory map:

1095cc000-1095d0000 r-x /Users/vhiairrassary/.rbenv/versions/3.0.2/bin/ruby
1095d0000-1095d4000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/bin/ruby
1095d4000-1095d8000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/bin/ruby
1095d8000-1095d9000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/bin/ruby
1095d9000-1095dc000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib
1095dc000-1095dd000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib
1095dd000-10991d000 r-x /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib
10991d000-109925000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib
109925000-109929000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib
109929000-109939000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib
109939000-109a27000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib
109a27000-109a29000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a29000-109a2b000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a2b000-109a2c000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a2c000-109a30000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a30000-109a31000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a31000-109a3a000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a3a000-109a3b000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a3b000-109a3c000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a3c000-109a45000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a45000-109a46000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a46000-109a47000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a47000-109a50000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a50000-109a51000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a51000-109a52000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a52000-109a53000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a53000-109a93000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a93000-109a94000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109a94000-109b35000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109b35000-109b36000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109b36000-109bd7000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109bd7000-109bd8000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109bd8000-109c79000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109c79000-109c7a000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109c7a000-109d1b000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109d1b000-109d1c000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109d1c000-109dbd000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109dbd000-109dbe000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109dbe000-109e5f000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109e5f000-109e60000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109e60000-109f01000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109f01000-109f02000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109f02000-109fa3000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109fa3000-109fa4000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
109fa4000-10a045000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a045000-10a046000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a046000-10a0e7000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a0e7000-10a0e8000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a0e8000-10a189000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a189000-10a18a000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a18a000-10a22b000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a22b000-10a22c000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a22c000-10a2cd000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a2cd000-10a2ce000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a2ce000-10a36f000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a36f000-10a370000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a370000-10a411000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a411000-10a412000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a412000-10a4b3000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a4b3000-10a4b4000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a4b4000-10a555000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a555000-10a556000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a556000-10a5f7000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a5f7000-10a5f8000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a5f8000-10a699000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a699000-10a69a000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a69a000-10a73b000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a73b000-10a73c000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a73c000-10a7dd000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a7dd000-10a7de000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a7de000-10a87f000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a87f000-10a880000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a880000-10a921000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a921000-10a922000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a922000-10a9c3000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a9c3000-10a9c4000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10a9c4000-10aa65000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10aa65000-10aa66000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10aa66000-10ab07000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10ab07000-10ab08000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10ab08000-10aba9000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10aba9000-10abaa000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10abaa000-10ac4b000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10ac4b000-10ac4c000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10ac4c000-10aced000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10aced000-10acee000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10acee000-10ad8f000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10ad8f000-10ad90000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10ad90000-10ae31000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10ae31000-10ae32000 --- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10ae32000-10aed3000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10aed3000-10aed7000 r-x /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10aed7000-10aedb000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10aedb000-10aedf000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10aedf000-10aee0000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/encdb.bundle
10aee0000-10aee3000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/trans/transdb.bundle
10aee3000-10aee7000 r-x /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/trans/transdb.bundle
10aee7000-10aeeb000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/trans/transdb.bundle
10aeeb000-10aeef000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/trans/transdb.bundle
10aeef000-10aef0000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/enc/trans/transdb.bundle
10aef0000-10aef3000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/monitor.bundle
10aef3000-10aef7000 r-x /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/monitor.bundle
10aef7000-10aefb000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/monitor.bundle
10aefb000-10aeff000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/monitor.bundle
10aeff000-10af00000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/monitor.bundle
10af00000-10af03000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/strscan.bundle
10af03000-10af07000 r-x /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/strscan.bundle
10af07000-10af0b000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/strscan.bundle
10af0b000-10af0f000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/strscan.bundle
10af0f000-10af12000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/strscan.bundle
10af12000-10af13000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/pathname.bundle
10af13000-10af1b000 r-x /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/pathname.bundle
10af1b000-10af1f000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/pathname.bundle
10af1f000-10af23000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/pathname.bundle
10af23000-10af28000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/ruby/3.0.0/x86_64-darwin20/pathname.bundle
10af28000-10af2b000 rw- /Users/vhiairrassary/.rbenv/versions/3.0.2/bin/ruby
10af2b000-10af38000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/bin/ruby
10af38000-10b372000 r-- /Users/vhiairrassary/.rbenv/versions/3.0.2/lib/libruby.3.0.dylib
10b372000-10b3dc000 r-- /usr/lib/system/libsystem_platform.dylib
10e910000-10e9ac000 r-x /usr/lib/dyld
10e9ac000-10e9b4000 r-- /usr/lib/dyld
10e9b4000-10e9b8000 rw- /usr/lib/dyld
10e9b8000-10e9ec000 rw- /usr/lib/dyld
10e9ec000-10ea24000 r-- /usr/lib/dyld
10ea24000-10ea28000 r--
70000065c000-70000065d000 ---
70000065d000-7000006df000 rw-
7fa839400000-7fa839500000 rw-
7fa839500000-7fa839600000 rw-
7fa839600000-7fa839700000 rw-
7fa839700000-7fa839800000 rw-
7fa839800000-7fa83a000000 rw-
7fa83a000000-7fa83a800000 rw-
7fa83a800000-7fa83b000000 rw-
7fa83b000000-7fa83b800000 rw-
7fa83b800000-7fa83b900000 rw-
7fa83b900000-7fa83ba00000 rw-
7fa83ba00000-7fa83bb00000 rw-
7fa83bb00000-7fa83bc00000 rw-
7fa83bc00000-7fa83bd00000 rw-
7fa83bd00000-7fa83be00000 rw-
7fa83c000000-7fa83c800000 rw-
7fa83c800000-7fa83d000000 rw-
7fa83d000000-7fa83d800000 rw-
7fa83d800000-7fa83e000000 rw-
7fa83e000000-7fa83e800000 rw-
7fa840000000-7fa840800000 rw-
7fa840800000-7fa841000000 rw-
7fa841000000-7fa841800000 rw-
7fa841800000-7fa842000000 rw-
7fa842000000-7fa842800000 rw-
7fa842800000-7fa843000000 rw-
7fa843000000-7fa843800000 rw-
7fa843800000-7fa844000000 rw-
7fa844000000-7fa844800000 rw-
7fa844800000-7fa845000000 rw-
7fa845000000-7fa845800000 rw-
7fa845800000-7fa846000000 rw-
7fa846000000-7fa846800000 rw-
7fa846800000-7fa847000000 rw-
7fa847000000-7fa847800000 rw-
7fa847800000-7fa848000000 rw-
7fa849400000-7fa849500000 rw-
7fa849800000-7fa84a000000 rw-
7fa850000000-7fa850800000 rw-
7fa850800000-7fa851000000 rw-
7fa851000000-7fa851800000 rw-
7fa851800000-7fa852000000 rw-
7fa852000000-7fa852800000 rw-
7fa852800000-7fa853000000 rw-
7fa853000000-7fa853800000 rw-
7fa853800000-7fa854000000 rw-
7fa854000000-7fa854800000 rw-
7fa854800000-7fa855000000 rw-
7fa855000000-7fa855800000 rw-
7fa855800000-7fa856000000 rw-
7fa856000000-7fa856800000 rw-
7fa856800000-7fa857000000 rw-
7fa857000000-7fa857800000 rw-
7fa857800000-7fa858000000 rw-
7fa859400000-7fa859500000 rw-
7fa859500000-7fa859600000 rw-
7fa859600000-7fa859700000 rw-
7fa859700000-7fa859701000 rw-
7fa859800000-7fa85a000000 rw-
7fa85a000000-7fa85a800000 rw-
7fa85a800000-7fa85c800000 rw-
7fa85c800000-7fa85c900000 rw-
7fa860000000-7fa860800000 rw-
7fa860800000-7fa861000000 rw-
7fa861000000-7fa861800000 rw-
7fa861800000-7fa862000000 rw-
7fa862000000-7fa862800000 rw-
7fa862800000-7fa863000000 rw-
7fa863000000-7fa863800000 rw-
7fa863800000-7fa864000000 rw-
7fa864000000-7fa864800000 rw-
7fa864800000-7fa865000000 rw-
7fa865000000-7fa865800000 rw-
7fa865800000-7fa866000000 rw-
7fa866000000-7fa866800000 rw-
7fa866800000-7fa867000000 rw-
7fa867000000-7fa867800000 rw-
7fa867800000-7fa868000000 rw-
7ffee2634000-7ffee5e34000 ---
7ffee5e34000-7ffee6634000 rw-
7fff00000000-7fff80000000 r--
7fff80000000-7fff801c3000 r--
7fff801c3000-7fff80200000 rw-
7fff80200000-7fff80400000 rw-
7fff80400000-7fff80600000 rw-
7fff80600000-7fff80800000 rw-
7fff80800000-7fff80a00000 rw-
7fff80a00000-7fff80c00000 rw-
7fff80c00000-7fff81200000 r--
7fff81200000-7fff81400000 rw-
7fff81400000-7fff8e000000 r--
7fff8e000000-7fff8e200000 rw-
7fff8e200000-7fffc0000000 r--
7fffc0000000-7fffffe00000 r--
7fffffe00000-7fffffe01000 r--
7ffffff53000-7ffffff54000 r-x
[IMPORTANT]
Don't forget to include the Crash Report log file under
DiagnosticReports directory in bug reports.

zsh: abort      ruby main.rb
```
