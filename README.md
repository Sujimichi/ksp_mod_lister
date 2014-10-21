ksp mod lister
==============
simple script to read a KSP dir and list the mods

##Install 
    git clone https://github.com/Sujimichi/ksp_mod_lister.git
    cd ksp_mod_lister
    bundle install

Or if you're on windows and don't have ruby then [download the exe](https://github.com/Sujimichi/ksp_mod_lister/releases/download/0.0.1/mod_lister.exe)
##Usage
    ruby mod_lister.rb <path_to_KSP_install>
  
Or (windows && !ruby) run the exe

    mod_lister.exe <path_to_KSP_install>

You don't need to supply a path if you run it from inside the root of a KSP install.
It will display the installed mods and also output the list to a text file (located wherever mod_lister is run from)
