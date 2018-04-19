#include <stdio.h>

#ifndef DEBUG
#define DEBUG (0)
#endif

#if DEBUG
#define debug_printf(...) printf(__VA_ARGS__)
#else
#define debug_printf(...) {}
#endif

