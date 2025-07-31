#ifndef CONFIG_H
#define CONFIG_H

#include <stdlib.h>
#include <locale.h>
#include <libintl.h>

#define _(STRING) gettext(STRING)
#define N_(STRING) STRING
#define INIT() \
  setlocale(LC_ALL, ""); \
  bindtextdomain("project", "/usr/share/locale"); \
  textdomain("project");

#endif
