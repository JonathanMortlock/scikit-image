.PHONY: all clean test

all:
	python setup.py build_ext --inplace

clean:
	find . -name "*.so" -o -name "*.pyc" -o -name "*.pyx.md5" | xargs rm -f

test:
	python -c "import skimage; skimage.test_verbose()"

doctest:
	python -c "import skimage; skimage.doctest_verbose()"

coverage:
	nosetests skimage --with-coverage --cover-package=skimage
