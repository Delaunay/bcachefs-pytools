
build-bcachefs:
	sed -i -e 's/@echo "WARNING: no RST2MAN found!"//g' dependencies/bcachefs-tools/Makefile
	sed -i -e 's/CFLAGS+=-DCONFIG_VALGRIND=y//g' dependencies/bcachefs-tools/Makefile
	CFLAGS='-D__attribute_const__=__attribute__\(\(const\)\) -DPAGE_SHIFT=12'
	BCACHEFS_FUSE=1 $(MAKE) -C dependencies/bcachefs-tools bcachefs
	mv dependencies/bcachefs-tools/bcachefs pybcachefs/bcachefs_bin
