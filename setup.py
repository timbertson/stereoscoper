#!/usr/bin/env python

import os
from setuptools import *
here = os.path.dirname(__file__)
setup(
	name='stereoscoper',
	version='0.3.1',
	author='Tim Cuthbertson',
	scripts = ['stereoscoper'],
	install_requires = ['pillow', 'numpy']
)
