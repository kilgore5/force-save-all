#!/bin/bash

getOS() {
  case "$(uname -s)" in

     Darwin)
       os='Mac OS X'
       ;;

     Linux)
       os='Linux'
       ;;

     CYGWIN*|MINGW32*|MSYS*|MINGW*)
       os='MS Windows'
       ;;

     *)
       os='Other OS'
       ;;
  esac

  echo $os
}


getDefaultInstallerPath() {
  case "$(uname -s)" in

     Darwin)
       path=~"/Library/Application Support/Sublime Text 3/Packages/"
       ;;

     Linux)
       path=~'/.config/sublime-text-3/Packages/'
       ;;

     CYGWIN*|MINGW32*|MSYS*|MINGW*)
       path='%APPDATA%/Sublime Text 3/Packages/'
       ;;

     *)
       path=''
       ;;
  esac

  echo $path
}

echo $(getOS)
echo $(getDefaultInstallerPath)

default_path=$(getDefaultInstallerPath)

echo "Installing Force Saver Sublime Plugin"
echo "type 'default' to use the default path or specify in your Sublime Packages directory"
read -p "Packages Path (default: $default_path): " response

if [ "$response" == "default" ]; then
  response=$default_path
fi

echo "installing to: $response"

if [ ! -d "$response" ]; then
  echo "ERROR: $response is not a valid path"
fi




