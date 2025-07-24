#ifndef CONFIG_H
#define CONFIG_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>
#include <libintl.h>

#define _(STRING) gettext(STRING)
#define INIT() \
  setlocale(LC_ALL, ""); \
  bindtextdomain("project", "/usr/share/locale/"); \
  textdomain("project");

#endif
