Manipulating XML

* Show only one device

```
for f in *instance; do
    sed -n '/LOST/,/<\/device-instance>/p' $f > filter/$f; 
done
```

* Side by side diff

    diff --suppress-common-lines  -y A B
