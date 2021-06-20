#!/bin/bash
#
# Installation script - LaTeX for Malayalam
#
# Alex A.J. <tex@alex.org.in>
#
#
#
#
#
echo -e "\nInstallation script for LaTeX for Malayalam"
echo -e "Alex A.J. <tex@alex.org.in>\n"
echo -e "Starting installation...\n"

echo -e "Please choose the directories for installation"
echo -e "(The defaults should be ok for RedHat/Debian Linux systems)"
echo -e "Caution: DO NOT type / at the end of directory name\n"

echo -e "TEXMF root directory (Press <ENTER> if the default is ok)"
echo -e "(/usr/share/texmf): \c"
read texdir
if [ "$texdir" = "" ]
then
   texdir="/usr/share/texmf"
fi

echo -e "\nDirectory for installing Malayalam TeX files and documentation"
echo -e "(/usr/share/malayalam): \c"
read maldir
if [ "$maldir" = "" ]
then
   maldir="/usr/share/malayalam"
fi

echo -e "\nDirectory for executables"
echo -e "(/usr/local/bin): \c"
read bindir
if [ "$bindir" = "" ]
then
   bindir="/usr/local/bin"
fi

echo -e "\nInstalling packages...\n"

# The directories

mkdir -p $texdir/doc/indic/malayalam
mkdir -p $texdir/tex/latex/malayalam
mkdir -p $texdir/fonts/map/dvips/malayalam
mkdir -p $texdir/fonts/map/pdftex/malayalam
mkdir -p $texdir/fonts/type1/malayalam/rachana
mkdir -p $texdir/fonts/type1/malayalam/keli
mkdir -p $texdir/fonts/tfm/malayalam/rachana
mkdir -p $texdir/fonts/tfm/malayalam/keli
mkdir -p $texdir/fonts/tfm/malayalam/ism
mkdir -p $maldir/cfg
mkdir -p $maldir/examples/pdf

# The files

cp -f ./README $maldir
cp -f ./bin/* $bindir
cp -f ./cfg/* $maldir/cfg
cp -f ./doc/* $texdir/doc/indic/malayalam
cp -f ./examples/* $maldir/examples
cp -f ./examples/pdf/* $maldir/examples/pdf
cp -f ./fonts/malayalam.map $texdir/fonts/map/dvips/malayalam
cp -f ./fonts/malayalam_pdftex.map $texdir/fonts/map/pdftex/malayalam
cp -f ./fonts/keli/*.pfb $texdir/fonts/type1/malayalam/keli
cp -f ./fonts/keli/*.afm $texdir/fonts/type1/malayalam/keli
cp -f ./fonts/keli/*.tfm $texdir/fonts/tfm/malayalam/keli
cp -f ./fonts/rachana/*.pfb $texdir/fonts/type1/malayalam/rachana
cp -f ./fonts/rachana/*.afm $texdir/fonts/type1/malayalam/rachana
cp -f ./fonts/rachana/*.tfm $texdir/fonts/tfm/malayalam/rachana
cp -f ./fonts/ism/*.tfm $texdir/fonts/tfm/malayalam/ism
cp -f ./latex/* $texdir/tex/latex/malayalam


# Post installation commands

texhash
updmap-sys --enable Map malayalam.map

echo -e "\n\nInstallation of 'LaTeX for Malayalam' completed successfully.\n"
echo -e "Documentation can be found in $texdir/doc/indic/malayalam"
echo -e "Examples are provided in $maldir/examples/\n\n"

echo -e "Note: The Malayalam package needs 'ifpdf.sty'. This should normally be\n
available with your TeX distribution. If not, get it from CTAN.\n"


# Alert user to make changes in "mal" if a different directory is chosen
# for installation

if [ ! "$maldir" = "/usr/share/malayalam" ]
then
   echo -e "ALERT: You have chosen \"$maldir\" as the installation directory. Change the line \`mmdir=\"/usr/share/malayalam/cfg\"' to \`mmdir=\"$maldir/cfg\"' in \"$bindir/mal\""
fi


#
#End of file
