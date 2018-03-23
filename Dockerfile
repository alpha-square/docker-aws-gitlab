from python:slim

run set -ex; \
pip install --no-cache-dir awscli;\
find /usr/local -depth \
\( \
	\( -type d -a \( -name test -o -name tests \) \) \
	-o \
	\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \
\) -exec rm -rf '{}' +;

