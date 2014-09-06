#!/bin/bash

linclude="./_includes"
include="../_includes"
includes="chapter_contents.html head.html footer.html navbar.html sidebar.html"
llayout="./_layouts"
layout="../_layouts"
layouts="default.html intro.html"
lcss="./css"
css="../css"
cssitems="styles.css"
lchapter="./chapters"
chapter="../chapters"
chapters="chapter0.md"
config="../_config.yml"
lconfig="./_config.yml"
test_config="../_test_config.yml"
ltest_config="./_test_config.yml"

if [ ! -e "$include" ]
then
    echo "creating include directory"
    mkdir $include
else
    if [ ! -d "$include" ]; then
	echo "file exists for include, but is not a directory"
    fi
    echo "include directory exists"
fi
if [ ! -e "$layout" ]
then
    echo "creating layout directory"
    mkdir $layout
else
    echo "layout directory exists"
fi
if [ ! -e "$css" ]
then
    echo "creating CSS directory"
    mkdir $css
else
    echo "CSS directory exists"
fi
if [ ! -e "$chapter" ]
then
    echo "creating chapters directory"
    mkdir $chapter
else
    echo "chapters directory exists"
fi

for item in $includes
do
    cp "$linclude/$item" "$include/$item"
done
for item in $layouts
do
    cp "$llayout/$item" "$layout/$item"
done
for item in $cssitems
do
    cp "$lcss/$item" "$css/$item"
done

if [ ! -e "$chapter/chapter1.md" ]
then
    cp "$lchapter/chapter0.md" "$chapter/chapter0.md"
fi

if [ ! -d "$chapter/chapter0" ]
then
    mkdir "$chapter/chapter0"
fi

if [ ! -e "$config" ]
then
    cp "$lconfig" "$config"
fi

if [ ! -e "$test_config" ]
then
    cp "$ltest_config" "$test_config"
fi

cp "./test.sh ../test.sh"
if [ ! -e "../Gemfile" ]
then
    cp "./Gemfile ../Gemfile"
fi
