#!/usr/bin/env python 

def main():
    import sys
    import os.path
    import subprocess

    cmd = os.path.join(os.path.dirname(__file__),"bcachefs_bin")
    subprocess.call([cmd] + sys.argv[1:])
