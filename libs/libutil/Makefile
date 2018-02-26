#
# RTEMS library Makefile
#

LIBNAME=libutil.a
LIB_DIR = lib
LIB=$(LIB_DIR)/$(LIBNAME)

MKDIR_P = mkdir -p

# C and C++ source names, if any, go here -- minus the .c or .cc
C_PIECES=$(basename $(wildcard src/*.c))
C_FILES=$(C_PIECES:%=%.c)
C_O_FILES=$(C_PIECES:%=$(ARCH)/%.o)

CC_PIECES=$(basename $(wildcard src/*.cc))
CC_FILES=$(CC_PIECES:%=%.cc)
CC_O_FILES=$(CC_PIECES:%=$(ARCH)/%.o)

H_FILES=$(wildcard include/*/*.h)

# Assembly source names, if any, go here -- minus the .S
S_PIECES=
S_FILES=$(S_PIECES:%=%.S)
S_O_FILES=$(S_FILES:%.S=$(ARCH)/%.o)

OBJ_DIRS=$(dir $(C_O_FILES) $(CC_O_FILES) $(S_O_FILES))


SRCS=$(C_FILES) $(CC_FILES) $(H_FILES) $(S_FILES)
OBJS=$(C_O_FILES) $(CC_O_FILES) $(S_O_FILES)

include $(RTEMS_MAKEFILE_PATH)/Makefile.inc

include $(RTEMS_CUSTOM)
include $(RTEMS_ROOT)/make/lib.cfg

#
# Add local stuff here using +=
#

DEFINES  +=
CPPFLAGS +=
CFLAGS   += -I include/

#
# Add your list of files to delete here.  The config files
#  already know how to delete some stuff, so you may want
#  to just run 'make clean' first to see what gets missed.
#  'make clobber' already includes 'make clean'
#

CLEAN_ADDITIONS += $(LIB_DIR)
CLOBBER_ADDITIONS +=

all:	$(ARCH) $(SRCS) $(LIB)

# Make sure all the output dirs are in place
$(OBJ_DIRS):
	$(MKDIR_P) $(OBJ_DIRS)

$(LIB_DIR):
	$(MKDIR_P) $(LIB_DIR)

$(LIB): $(OBJ_DIRS) $(LIB_DIR) $(OBJS)
	$(make-library)

# Install the library, appending _g or _p as appropriate.
# for include files, just use $(INSTALL_CHANGE)
install:  all
	$(INSTALL_VARIANT) -m 644 $(LIB) $(PROJECT_RELEASE)/lib
