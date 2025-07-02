cd excel

rm -rf *.csv
xlsx2csv --all --delimiter tab --ignoreempty . .

