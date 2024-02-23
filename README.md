# Personal Project

We all know how heavy node_modules are and when we don't use or develop the project, they just take sapace in our system. I thought of why not delete them when we don't need them and whenever we need them, we just have to type just one single command: 
> npm install

So, you provide a directory to this script and this script will remove every single node_modules directory inside the provided directory however deep it may be( i.e there may be node_modules within child directories of provided direcotry, then it will also remove them)

## How to use it?

> deleteAllNodeModules.sh DIRECTORY_NAME
