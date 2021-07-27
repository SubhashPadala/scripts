#!/bin/sh

filename=${@: -1}
extension="${filename##*.}"
echo 
if [[ "$extension" == "cc" && $# == 1 ]]; then
   cp -n ~/.scripts/cpp_template.cc ./$filename;
elif [[ "$extension" == "cc" && $# == 2 ]]; then
   cp -n ~/.scripts/cpp_template-t.cc ./$filename;
else
  echo "Template not found"
  exit
fi

nvim $filename
