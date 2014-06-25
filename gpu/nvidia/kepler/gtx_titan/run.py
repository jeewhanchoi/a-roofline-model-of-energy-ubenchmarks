#!/usr/bin/env python

import sys
import os

if len(sys.argv) < 8:
	print "Error: not enough arguments"
	print "Usage: ./run.py system benchmark device port freq samples username server"
	sys.exit();

# Get input parameters
targetSystem = sys.argv[1]
targetBenchmark = sys.argv[2]

device = sys.argv[3]
port = sys.argv[4]
freq = sys.argv[5]
samples = sys.argv[6]
username = sys.argv[7]
server = sys.argv[8]

# Create command to execute
outputFile = "%s--%s" % (targetSystem, targetBenchmark)
script = "~/src/powermon/a.out %s %s %s %s >& ~/src/powermon/%s" %  \
					(device, port, freq, samples, outputFile)
command = "ssh %s@%s \'%s\'" % (username, server, script)

# Execute command
os.system(command)
