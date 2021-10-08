#!/usr/bin/env python

from setuptools import setup
import subprocess


if __name__ == '__main__':
    subprocess.run("make", shell=True, check=True)

    setup(
        name='pybcachefs',
        version='0.0.0',
        description='BCacheFS tools',
        author='Pierre Delaunay',
        package_data={
            'pybcachefs': ['bcachefs_bin']
        },
        packages=[
            'pybcachefs',
        ],
        scripts=['pybcachefs/bcachefs'],
        setup_requires=['setuptools'],
    )
