BEGIN {
RS="\n"
FS="="
i=1
}
{
if ($1=="Name") {name[i]=$2}
if ($1=="Middle Name") {mname[i]=$2}
if ($1=="Last Name") {lname[i]=$2}
if ($1=="Organization") {org[i]=$2}
if ($1=="E-mail") {email[i]=$2}
if ($1=="City") {city[i]=$2;i++}
}
END{
for (j=1;j<i;j++) {
print lname[j],",",mname[j],name[j]
print email[j]
print org[j]
print city[j]
print ""
print ""
}
}
