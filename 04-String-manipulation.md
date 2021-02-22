## I will use these variables for the examples:
```powershell
$h = "Hello" 
$w = "world"
$sentence1 = "The meaning of life the universe and everything is 42"
$sentence2 = "We are two souls, swimming in a fishbowl"
$words = "this;is,a.list-of_words"
```




## concate/join/split
### concat
```powershell
$h + " " + $w # -> 'Hello world'
"$h  $w"      # -> 'Hello world'"
'$h  $w'      # -> '$h  $w'        just like in Perl or bash!
```
### split
split ias string method. Its parmaeters is list of seperators and return a list of words which seperated by the seperators
```powershell
PS C:\Users\Sagiv> $sentence2.split(",")
We are two souls
 swimming in a fishbowl
PS > $sentence2.split() #  eqvivalent to $sentence2.split(" ")
We
are
two
souls
swimming
in
a
fishbowl


PS > $words_lst=$words.Split(',',':',';','-','_')
PS > $words_lst
this
is
a.list
of
words

PS > $words_lst[1]
a.list
```

## substring
```powershell
```
## cut
```powershell

```

## trim

