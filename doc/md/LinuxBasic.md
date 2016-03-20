% Linux Basic
% Jean Monlong
% 29 March 2016

# What is Linux ?

## Linux

- Free **operating system** for computers, similar to Unix (proprietary).
- Many bioinformatics programs run on Linux.
- Leading operating system on supercomputers and servers.

## Why is it good ?

- Powerful and flexible.
- Command-line instructions can easily:
	- Explore big files.
	- Combined for custom analysis.
	
# What is a command ?

## The terminal

- This is where you write and execute commands.
- Open a Terminal.
- A command looks like this: `commandName arg1 arg2`
- Press *Enter* to run a command.

## Try some commands

~~~sh
> ls
> echo Hello
> man echo
~~~

- `ls` **L**i**S**t the files in the current directory.
- `man` open the **MAN**ual of a command. Useful to find details on arguments. Quit by pressing `q`.

## Tips

- Press **Tab** to auto-complete commands or paths.
- **Up/Down arrows** to navigate through previous commands.
- `clear` or **Ctrl-L** clear the screen.

# Files and folders

## Folder structure

At any moment you are in a directory, the *working directory*.

![](../img/unixFileSystem.png)

## Moving through folders

- `pwd` to **P**rint the **W**ordking **D**irectory.
- `cd` to **C**hange **D**irectory.
	- `..` represents the previous directory.
	- `/` is the directory separator.
	- `~` represents your root folder.

~~~sh
> pwd
/home/jmonlong
> ls
Documents  Dowloads  Pictures
> cd Documents
> pwd
/home/jmonlong/Documents
> cd ..
> cd Documents/workshop
~~~

## Exercise

- Go to your `Documents` folder.
- Create a directory `workshop`.
- Go to the `workshop` folder.
- Create a directory `linux`.

\

Note: `mkdir` to **M**a**K**e a **DIR**ectory.

## Solution

~~~sh
> cd ~/Documents
> mkdir workshop
> cd workshop
> mkdir linux
~~~

## Manipulate files

- `rm` **R**e**M**ove a file.
- `cp` **C**o**P**y a file.
- `mv` **M**o**V**e a file.

~~~sh
> cp file1 file2
> rm file1
> mv file2 file3
~~~

## Exercise

- Move to your `Downloads` folder.
- Download an annotation file using `wget LINK`.
- Copy the file to the `linux` folder.
- Remove the file in the `Downloads` folder.

## Solution

~~~sh
> cd ~/Downloads
> wget LINK
> cp FILE ../Documents/workshop/linux
> rm FILE
~~~

# Text files

## Commands

- `head`/`tail` print the first/last lines of a file.
- `cat` print the entire file.
- `less` to explore the text file.
- `nano` is a text editor. To open, change and save a file.
- `grep` retrieves lines containing a word or expression.

## Exercise

- Print the first lines of the annotation file.
- Explore the file using `less`.
- Find the lines containing *GENE*.

## Solution

~~~sh
> cd ~/Documents/workshop/linux
> head FILE
> less FILE
> grep GENE FILE
~~~

# Compression

## Commands

- `gzip` to compress a file.
- `gunzip` to secompress a `.gz` file.
- `tar -xzvf file.tar.gz` to decompress and extract a `.tar.gz` file.
- zless, zcat, zgrep

# Pipes

## Pipes

- To *"pipe"* the output of a command into another command.
- Using `|`.
- More than two commands can be piped.

~~~sh
zcat bigFile.gz | grep GENE
zcat bigFile.gz | grep GENE | head 
~~~



# What's next ?

## What's next ?

- ssh and scp.
- `*` wildcard.
- Piping, Input/Output redirection.
- Scripting.
- Custom batch profile (`.bachrc` file).
