#ifndef QTCDBVIEWER_GLOBAL_H
#define QTCDBVIEWER_GLOBAL_H

#include <QtGlobal>

#if defined(QTCDBVIEWER_LIBRARY)
#  define QTCDBVIEWERSHARED_EXPORT Q_DECL_EXPORT
#else
#  define QTCDBVIEWERSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // QTCDBVIEWER_GLOBAL_H

