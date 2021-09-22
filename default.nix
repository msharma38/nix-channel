{ system ? builtins.currentSystem }:                                                   
                                                                                   
let                                                                                    
   pkgs = import <nixpkgs> { inherit system; };                                         
                                                                                   
   callPackage = pkgs.lib.callPackageWith (pkgs // self);                               
                                                                                   
   self = {                                                                             
      lammps = callPackage ./pkgs/lammps { };    
      sc-hello = callPackage ./pkgs/sc-hello { }; 
   };                                                                                   
in self 
