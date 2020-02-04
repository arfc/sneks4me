import fileinput
import sys

fname = 'quarter-salt.geo'
opname = 'new'+fname
start=352 #start-line
inc=87
ctr = 1
opf=open(opname,'w')

with open(fname) as f:
    for line in f:
        if ctr<start:
            opf.write(line)
        else:
            idx1=line.find('(')
            if idx1=='-1':
                continue
            else:
                idx2=line.find(')')
                num=line[idx1+1:idx2]
                newnum=str(int(num)+inc)
                old='('+num+')'
                new='('+newnum+')'
                newline=line.replace(old,new)
                opf.write(newline)
        ctr+=1

