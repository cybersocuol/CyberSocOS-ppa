SUBDIRS := $(wildcard */.)

all: $(SUBDIRS)
$(SUBDIRS):
	cd $@ && debuild --rootcmd=fakeroot -uc -us
clean:
	$(foreach subdir, $(SUBDIRS),  cd $(subdir) && debuild -T clean -uc -us)
.PHONY: all $(SUBDIRS)
