ifndef STYLE_DIR
  STYLE_DIR=includes
endif

ifndef STACK_VERSION
  STACK_VERSION=7.4.0
endif

shared = ${STYLE_DIR}/docinfo.html ${STYLE_DIR}/docinfo-footer.html \
${STYLE_DIR}/training.css

all: index.html

index.html: *.asciidoc $(shared)
	asciidoctor -v -a stylesdir=${STYLE_DIR} -a docinfodir=${STYLE_DIR} -a \
stack-version=${STACK_VERSION} index.asciidoc
