import os
import sys

input_username = os.environ.get('username')
input_password = os.environ.get('password')
if ( input_username == "vpnuser" and input_password == "internet" ):
	sys.exit(0)
else:
	sys.exit(1)
