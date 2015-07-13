XSLT_OPT = -stringparam use.id.as.filename "yes" \
	-stringparam chunk.quietly "1"
WEB = web
STYLESHEETS = /usr/share/xml/docbook/stylesheet
MAINBOOK = book-ui.docbook

output/index.html: *.docbook manitou-mail.xsl
	test -d output/ || mkdir output
	xsltproc $(XSLT_OPT) -o output/ manitou-mail.xsl $(MAINBOOK)

manitou-mail-documentation.pdf: *.docbook
	xsltproc $(XSLT_OPT) $(STYLESHEETS)/nwalsh/fo/docbook.xsl $(MAINBOOK) >out.fo
	fop -pdf $@ -fo out.fo 

web: *.docbook web-manitou-mail.xsl
	xsltproc $(XSLT_OPT) \
		 -stringparam base.dir $(WEB)/ web-manitou-mail.xsl $(MAINBOOK)
	cp manitou-docbook.css $(WEB)

backup:
	tar czvf backup-doc-ui.tar.gz *.docbook *.css Makefile *.xsl

.PHONY: backup
