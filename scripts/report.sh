#1/bin/bash
#zmienna p = podanemu pierwszemu argumentowi
p="${1:-}"
#sprawdzenie czy podany argument jest instniejacym katalogiem
if  [ -d "$p" ]; then
	date -Is
	du -h "$p" | sort -hr | head -5
	exit 0
else
  #wypisanie błędu jeśli katalog nie instnieje
	echo "Katalog $p nie instnieje" >&2
	exit 1
fi
