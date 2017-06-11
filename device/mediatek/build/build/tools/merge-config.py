#!/usr/bin/env python

import os
import sys

          
def remove_trail(s):
    n = len(s)
    for i in range(n,0,-1):
        if s[i-1] > ' ':
            n = i; break
    return s[:n]

def parse_mk(f, m):
    global mGlobal
    f = open(f)
    while 1:
        l = f.readline()
        if l:
            if l[0] == '#': continue
            a = l.split('=')
            if len(a) == 2:
                k = a[0].replace(':', '')
                k = k.strip()
                v = remove_trail(a[1]).strip()
                if k[:15] == 'AUTO_ADD_GLOBAL':
                    mGlobal[k] = mGlobal.get(k, []) + v.split(' ')
                else: m[k] = v
        else: break
    f.close()

m = {}

if len(sys.argv) < 3:
	print >>sys.stderr,  "Usages: python merge-config.py project version_code\n"
	sys.exit(0)

project=sys.argv[1]
version_code=sys.argv[2]
#version_code=version_code[0:2] + '0' + version_code[3] + 'X'
version_code=version_code[:4]+'X'
print version_code
custom_prj="device/topwise/%s/ProjectConfig/%s/ProjectConfig.mk" % (project,version_code)
print custom_prj
project_prj="device/topwise/%s/ProjectConfig.mk" % project
project_prj_bck="device/topwise/%s/ProjectConfig-BCK.mk" % project

if not os.path.isfile(custom_prj):
	print >>sys.stderr,  custom_prj + " not exist,Skip"
	sys.exit(1)

parse_mk(custom_prj, m)
print m

d = open(project_prj).read()
open(project_prj_bck, 'w').write(d)

for k, v in m.items():
	i=0
	j=0
	while (i >= 0 ):
    		i = d.find(k,j)
    		j = d.find('\n', i)
    		print i
    		print j
    		if i > 0:
			#print d[i:j]
			if '=' in d[i:j]:
    				d = d[:i] + k + ' = ' + v + d[j:]
				break
			else:
				print "Skip AUTO_ADD_GLOBAL--------"
    		else:
			d = d[:j]+'\n'+k + ' = ' + v + '\n'
			break
f = open(project_prj, 'w')
f.write(d)
f.close()
