# win2unix

File utility that converts ASCII text files with CRLF line terminator into Unix line endings.
win2unix is a simple educational exercise written in Haskell. Inspired by [Real World Haskell](http://book.realworldhaskell.org/)

## Install

First, clone the repository:

```
git clone https://github.com/AlexanderJDupree/win2Unix.git
```

Then with the [Haskell Tool Stack](https://docs.haskellstack.org/en/stable/README/#how-to-install) installed change into the directory and run:

```
stack setup
stack build
stack install win2unix
```

## Usage

Simply run: 

```
win2unix \<CRLF File\> \<Name of output file\> 
```


