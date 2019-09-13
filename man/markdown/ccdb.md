%CCDB-HACKS

Promote Fecs
============

To select a bunch of fects to be promoted:

```
fecs = `
cfc-xxxxx
cfc-yyyyyy
...
`

fec_list = fecs.split('\n')

$('table .uReport').find('tr').each( function(id,el) {
    el.children[0].childNodes[0].checked = fec_list.includes(el.children[1].innerText)
} )
```

Set all to obsolete
===================
document.getElementsByName('f15').forEach(function(a,b) { console.log(a.value=4) })

