%PKG-CONFIG

General Info
------------

Each package name is determined through filename of pkg-config metadata file

libfoo.so => libfoo.pc

Variables:

- Requires : defines required libraries, exposes link flags so it becomes direct dependency.
- Requires.private : libraries with symbols not exposed to clients. Still used for static linking.
- Cflags: compiler flags for using the library.

Paths
-----

Searches for libraries in PKG\_CONFIG\_PATH (make sure to define it using 'export' so that it becomes an env variable) and in directories listed in:

> pkg-config --variable pc\_path pkg-config

Command Line
------------

    --modversion
    --libs [--static]. Can specify versions:
        --libs "bar >= 2.3"
    --exists
