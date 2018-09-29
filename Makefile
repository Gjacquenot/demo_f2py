mymodule: mymodule.f90
	f2py -m mymodule --fcompiler=gfortran --f90flags='-O3 -Wall' -DF2PY_REPORT_ON_ARRAY_COPY=1 -c mymodule.f90
test: mymodule
	python3 test.py
clean:
	rm -rf dist build *.so *dSYM *egg-info
