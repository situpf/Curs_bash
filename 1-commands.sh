#!/bin/bash

### Connection
ssh -X username@marvin.s.upf.edu
interactive -r training

### 1. Introduction
#### First steps
pwd
ls
cd ..
cd ~/
history

#### Creation and Inspection
mkdir test_path
touch test_file.txt
echo "Hello world"
echo "Hello world" > test_file.txt
cat test_file.txt
less test_file.txt
more test_file.txt
head test_file.txt
tail test_file.txt
echo "Hello world" >> test_file.txt
cat test_file.txt
less test_file.txt
more test_file.txt
head test_file.txt
tail test_file.txt
wc test_file.txt
wc -l test_file.txt

#### Migration and Destruction
mv test_file.txt test_path/
ls
ls test_path/
cp test_path/test_file.txt .
ls
rm test_file.txt
ls
rm -r test_path/
ls


### 2.	Command line utilities
#### grep
cat column-row.tsv 
grep row1 column-row.tsv 
egrep row1. column-row.tsv 
egrep row.0 column-row.tsv 
egrep row10* column-row.tsv 
egrep "\wow10" column-row.tsv 
egrep "row1\s" column-row.tsv 
egrep "row[4-6]" column-row.tsv 
egrep "row[^4-6]" column-row.tsv 
egrep "row7$" column-row.tsv 
egrep "row7|row8" column-row.tsv 


#### find
find . -name "column-row.tsv"

#### awk
awk 'BEGIN{FS="\t"; n=0} {print $1,$3,$5; n+=1} END{print n}' column-row.tsv 

#### sed
sed 's/row/line/g' column-row.tsv 


#### Piping commands
ls -1 | grep "tsv"
sed 's/row/line/g' column-row.tsv | egrep line.0 



### 3. Bash programming
#### Arrays
colors=(red blue pink white grey green purple brown)

echo ${colors[4]}
echo ${colors[*]}
colors[3]=light_blue
echo ${colors[*]:5:3}
echo ${#colors[*]}
colors+=(salmon orange golden)
echo ${#colors[*]}

### 3. Bash programming
bash 2-script.sh a b c

#### Conditional
bash 3-conditional.sh Marc
bash 3-conditional.sh Juanma
bash 3-conditional.sh 4
bash 3-conditional.sh 5

#### Loops
bash 3-loop1.sh
bash 3-loop2.sh

#### functions
function addseq {
  sum=0
  for element in $@
  do
    let sum=sum+$element
  done

  echo $sum
}

addseq 3 4 5 6

#### change permissions
chmod [u|g|o|a][+|-|=][r|w|x] filename 

VIM

4. VIM
Open/create file: vim filename.txt
Command mode: default when we open vim.
Moving commands (cursor)
Searching and replacing commands ( / and :s///g)
u = Undo
Cutting and pasting commands (y, d, p)
Saving and quitting commands ( wq, q! )
Insert mode: press the “i” key to enter it. Then start typing! Exit insert mode typing Esc


Wget / Git

5. Wget
Download files via HTTP, HTTPS, FTP and FTPS. https://www.gnu.org/software/wget/
$ wget https://… (we will download files later)
5. Git/Github
Download files from github repositories. https://help.github.com/
$ git clone https://github.com/situpf/sbatch_header.git

