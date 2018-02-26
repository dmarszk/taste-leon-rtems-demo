MKDIR_P := mkdir -p
INSTALL_LIB_DIR := install/lib
INSTALL_INCLUDE_DIR := install/include

SUBDIRS := libutil

default_target: all

all:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir all; \
	done

clean:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clean; \
	done
	rm -rf $(INSTALL_LIB_DIR) $(INSTALL_INCLUDE_DIR)

install: directories all
	cp -r $(SUBDIRS)/lib/* $(INSTALL_LIB_DIR)/.
	cp -r $(SUBDIRS)/include/* $(INSTALL_INCLUDE_DIR)/.

directories: $(INSTALL_LIB_DIR) $(INSTALL_INCLUDE_DIR)


$(INSTALL_INCLUDE_DIR) $(INSTALL_LIB_DIR):
	$(MKDIR_P) $@

.PHONY: $(MAKE_SUBDIRS) all clean directories
