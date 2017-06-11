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
                m[k] = v
        else: break
    f.close()

m = {}

if len(sys.argv) < 4:
	print >>sys.stderr,  "Usages: python merge-config.py project version_code variant\n"
	sys.exit(0)

project=sys.argv[1]
version_code=sys.argv[2]
#version_code=version_code[0:2] + '0' + version_code[3] + 'X'
version_code=version_code[:4]+'X'
variant=sys.argv[3]


custom_prj="device/topwise/%s/ProjectConfig/%s/kconfig" % (project,version_code)
if variant == 'user':
	project_prj='kernel-3.18/arch/arm/configs/%s_defconfig' % project
else:
	project_prj='kernel-3.18/arch/arm/configs/%s_debug_defconfig' % project

project_prj_bck='kernel-3.18/arch/arm/configs/%s_defconfig_bck' % project

if not os.path.isfile(custom_prj):
	print >>sys.stderr,  custom_prj + " not exist,Skip"
	sys.exit(1)


parse_mk(custom_prj, m)
print m

d = open(project_prj).read()
open(project_prj_bck, 'w').write(d)

for k, v in m.items():	
    	i = d.find(k)
    	j = d.find('\n', i)
    	if i > 0:
		if '=' in d[i:j]:
			if v == 'n':
    				d = d[:i] + '# '+k + ' is not set\n'+ d[j:]
			else:
				d = d[:i] + k + '=' + v + d[j:]
		else:
			d = d[:j]+'\n'+k + '=' + v + '\n'
    	else:
		d = d[:j]+'\n'+k + '=' + v + '\n'
f = open(project_prj, 'w')
f.write(d)
f.close()
