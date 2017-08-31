#! /bin/sh

DATADIR=/nethack/data
DATADIR_ORIG=/nethack/data.orig

cd "$DATADIR_ORIG"
for f in *; do
  if [ -d "$f" ]; then
    if [ ! -d "$DATADIR/$f" ]; then
      cp -rp "$f" "$DATADIR"
    fi
  elif [ ! -f "$DATADIR/$f" ]; then
    cp -p "$f" "$DATADIR"
  fi
done

export MAIL=/var/mail/root
cd "$DATADIR"
exec "$@"
