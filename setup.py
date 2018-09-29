#!/usr/bin/env python
import setuptools  # noqa: F401
from numpy.distutils.core import setup, Extension

setup(name = 'mymodule',
      ext_modules=[Extension(name='mymodule',
                             sources=['mymodule.f90'],
                             )])
