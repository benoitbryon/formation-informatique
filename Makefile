ROOT_DIR=$(PWD)
BUILD_DIR=${ROOT_DIR}/var
CFG_DIR=${ROOT_DIR}
BUILDOUT_BOOTSTRAP_URL="http://svn.zope.org/*checkout*/zc.buildout/tags/1.5.2/bootstrap/bootstrap.py?content-type=text%2Fplain"

install:
	cd ${ROOT_DIR}
	mkdir -p ${ROOT_DIR}/lib/buildout
	wget ${BUILDOUT_BOOTSTRAP_URL} -O ${ROOT_DIR}/lib/buildout/bootstrap.py
	python ${ROOT_DIR}/lib/buildout/bootstrap.py --distribute
	${ROOT_DIR}/bin/buildout -N

uninstall:
	rm -r ${ROOT_DIR}/bin ${ROOT_DIR}/lib

s5:
	mkdir -p ${BUILD_DIR}
	${ROOT_DIR}/bin/landslide ${CFG_DIR}/landslide.cfg

README:
	mkdir -p ${BUILD_DIR}
	${ROOT_DIR}/bin/rst2 html ${ROOT_DIR}/README.rst > ${BUILD_DIR}/README.html
