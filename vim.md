# Vim


##  Arrow key & mix with number 
u = undo, j = down, k = up, l = Right, h = left
```bash
j 4j
k 6k
l 2l
h 5h
```


## For word 
###  move one word one word first of word
```bash
w 
3w
```
### move one word one word end of word 
```bash
e 
5e
```
##  For back 
```bash
b
```


##  For file 
###  First of file
```bash
gg 
5gg
``` 
##  End of file
shift + g
```bash
G
``` 


## For line
###  Insert mode 
i before cursor
a after cursor
```bash
i
a
```
### First of line
0 or shift + 6
```bash
0
^
``` 
### First line & insert mode
shift + i 
```bash
I
```
###  End of line
shift + 4
```bash
$
``` 
### End line & insert mode
shift + a 
```bash
A
```
### New line in Down & insert mode
o , 10 + o + esc ده تا خط باز میشه
```bash

9o + esc
```
### New line in Up & insert mode
shift + o 
```bash
O
```


## Cut
### For cut one charecter
```bash
x
5x
```

### For cut one word
```bash
dw
5dw
```
### For cut hole text befor cursor in line 
d + shif + 6
```bash
d^
```
### For cut hole text after cursor in line 
d + shif + 4 or shift + d
```bash
d$
D
```
### For cut hole line 

```bash
dd
5dd
```
### For cut a paragraph

```bash
dap
```

## Copy and Paste
### Copy and Paste one line 
copy= yy paste= p
```bash
yy
p
```

### Copy and Paste many lines after next line
```bash
2yy
p
```

### Copy and Paste many lines before next line
2yy shift + p
```bash
2yy
P
```

## Search in File 
### Search a word in command mode
/pattern + Enter for search more word press n
n > from up to down 
shift + n > from down to up
```bash 
/word
```
## Search and Replace 
### Search and Replce one word
:s/pattren/replace word
```bash
:s/used/LINUX
```

### Search and Replce same words in one line
:s/pattren/replace word/g
```bash
:s/used/LINUX/g
```
### Search and Replce same words in whole file
:%s/pattren/replace word/g
```bash
:%s/used/LINUX/g
```

### Search and Replce same words in whole file
:%s/pattren/replace word/gc c for ask you 
```bash
:%s/used/LINUX/gc
```
### Search and Replce same words in whole file
:%s/pattren/replace word/gi i for disable case sensitive
:%s/used/LINUX/gic for combination
```bash
:%s/used/LINUX/gi
```
## Save the file
###  just save
command line enviroment 
:w = save
:w new name = save az
:w /var/test for give location 
```bash
:w
:w new
: /tmp/tst
```
### save and quit
:wq == ZZ == :x save and quit
:q! == ZQ quit without save
:wq! = save and quit but if have not permissin just quit
```bash
:wq
:q!
:wq!
```
### just reload file 
:e! = before saveing, read the file from disk and reload
```bash
:e!
```

## Tab in vim
### tab
```bash
:tabnew
:tabnext
:tabprevious
:new /PATH/TO/filename
```

## Diff in vim
### diffrence two file
ctrl + ww = switch between files
```bash
vimdiff file1.txt file2.txt
```
### get and put between two files
dependence your cursor location
```bash
vimdiff file1 file2
diffput
diffget
```
## more switch in vim in search
### for disable case sensitive in search vim 
after save and quit all of them be cancel  
:set ic + Enter  
:set noic + Enter = cancel ic and turn to before one  
```bash
:set noic
```
### for high light the word in search
after save and quit all of them be cancel  
:set hls  
:set nohls = cancel hls  
```bash
:set hls
```
### for show number lines in search
after save and quit all of them be cancel  
:set number  
:set nonumber = cancel number  
```bash
:set number
```
## configure your vim (.vimrc)
for saving some configuration in vim:  
```bash
vim .vimrc = vim ~/.vimrc 
:set hls
:set number
```
## install plugin for vim in linux
vim-plug  
https://github.com/junegunn/vim-plug  
for Unix:  
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \  
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  
Usage:
Add a vim-plug section to your ~/.vimrc (or ~/.config/nvim/init.vim for Neovim)

    Begin the section with call plug#begin()
    List the plugins with Plug commands
    End the section with call plug#end()
For example:
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'

call plug#end()
Reload the file or restart Vim, then you can,

    :PlugInstall to install the plugins
    :PlugUpdate to install or update the plugins
    :PlugDiff to review the changes from the last update
    :PlugClean to remove plugins no longer in the list
then:
Open vim environment > :PlugInstall > Enter
