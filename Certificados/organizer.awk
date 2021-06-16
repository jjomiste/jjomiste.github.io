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
print "\\usepackage{eso-pic}"
print "\\usepackage{colortbl}"
print ""
print "\\begin {document}"
print "\\AddToShipoutPicture{\\put(\\LenToUnit{.19\\paperwidth},\\LenToUnit{.23 "
print "\\paperheight}){\\includegraphics[width=.63 "
print "\\paperwidth]{LogoWaterMark}}} "
print "\\pagestyle{empty} "
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
print"\\begin{verbatim}"
print""
print""
print""
print""
print""
print""
print""
print"\\end{verbatim}"
print"\\pagestyle{empty}"
print"\\begin{center}"
print"{\\bf {\\Huge CERTIFICATE}}"
print""
print"\\vspace {1.5cm}"
print"This is to certify the participation of"
print"\\vspace {1cm}"
print""
print"{\\bf \\Large "name[j]" "mname[j]" "lname[j]" }"
print"\\vspace {1cm}"
print""
print "as a \\emph{member of the Organizing Committee} at the conference { \\textquotedblleft IV Jornadas de Jóvenes Investigadores en Física Atómica y Molecular (J2IFAM2012)\\textquotedblright} "
print"held in Granada (Spain) February 1-3, 2012"
print"\\end{center}"
print"\\vspace {4cm}"
print"\\begin{raggedleft}"
print"Rodrigo Navarro Pérez\\\\"
print"on behalf of the Organizing Committee"
print"\\newpage"
print"\\end{raggedleft}"
}
print"\\end{document}"
}
