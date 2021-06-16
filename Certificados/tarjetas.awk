BEGIN {
RS="\n"
FS="="
i=1
print "\\documentclass [13pt,a4paper] {letter}"
print "\\usepackage{latexsym}"
print "\\usepackage[spanish]{babel}"
print "\\usepackage{graphicx}"
print "\\usepackage{color}"
print "\\usepackage{tabularx,array}"
print "\\usepackage[utf8]{inputenc}"
print "\\usepackage{colortbl}"
print ""
print "\\begin {document}"
print "\\fontsize{280pt}{10pt} \\selectfont % sustituye "40 pt", por el tamaño que te interese."
print "\\pagestyle{empty}"
}
{
if ($1=="Name") {name[i]=$2}
if ($1=="Middle Name") {mname[i]=$2}
if ($1=="Last Name") {lname[i]=$2}
if ($1=="Organization") {org[i]=$2}
if ($1=="City") {city[i]=$2;i++}
}
END{
for (j=1;j<i;j++) {
print 
print ""
print ""
print "\\begin{tabular}{m{1.4cm}m{6.4cm}}"
print "{\\scalebox{0.018}{{\\includegraphics{LogoTexto.eps}}}}& \\cellcolor{blue}{\\color{white}\\bf \\begin{center} Participant \\end{center}}\\\\"
print "\\color{black}"
print "&\\\\"
print "\\multicolumn{2}{c}{ \\Large \\bf "name[j]" "mname[j]" "lname[j]"} \\\\"
print "&\\\\"
print "\\multicolumn{2}{c}{ \\large \\bf "org[j]"}\\\\"
print "&\\\\"
print "\\multicolumn{2}{c}{ \\large \\bf "city[j]"} \\\\"
print "&\\\\"
print "\\cellcolor{blue}      & \\cellcolor{blue}\\\\"
print "\\end{tabular}"
print ""
print ""
print ""
}
print "\\end {document}"
}
