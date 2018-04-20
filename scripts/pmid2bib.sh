echo "Searching $1..."
echo >> /Users/michi/Dropbox/Pro/BibTex/bib.bib
curl -s "http://www.bioinformatics.org/texmed/cgi-bin/list.cgi?PMID=$1" | tail -n +15 | sed '$d' | sed '$d' | sed '$d' | sed '$d' >> /Users/michi/Dropbox/Pro/BibTex/bib.bib;
echo >> /Users/michi/Dropbox/Pro/BibTex/bib.bib
echo "Appended to bib.bib"

