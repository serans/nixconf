.TH "CCDB\-HACKS" "" "" "" ""
.SH Promote Fecs
.PP
To select a bunch of fects to be promoted:
.IP
.nf
\f[C]
fecs\ =\ `
cfc\-xxxxx
cfc\-yyyyyy
\&...
`

fec_list\ =\ fecs.split(\[aq]\\n\[aq])

$(\[aq]table\ .uReport\[aq]).find(\[aq]tr\[aq]).each(\ function(id,el)\ {
\ \ \ \ el.children[0].childNodes[0].checked\ =\ fec_list.includes(el.children[1].innerText)
}\ )
\f[]
.fi
.SH Set all to obsolete
.PP
document.getElementsByName(\[aq]f15\[aq]).forEach(function(a,b) {
console.log(a.value=4) })
