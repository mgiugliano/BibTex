sed -n '/article/ p' bib.bib | cut -d',' -f1 | cut -d'{' -f2

