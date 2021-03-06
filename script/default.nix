## toolbench scripts, for installation on a running system
# TODO: de-facto 'ghostscript' dependency for merge_pdf is not encoded anywhere
{ writeShellScriptBin ? (import <nixpkgs> {}).writeShellScriptBin }:

{
  tbh_gemset_nix = writeShellScriptBin "tbh_gemset_nix"
    (builtins.readFile ./gemset_nix.sh);
  tbh_install = writeShellScriptBin "tbh_install"
    (builtins.readFile ./install.sh);
  tbh_merge_pdf = writeShellScriptBin "tbh_merge_pdf"
    (builtins.readFile ./merge_pdf.sh);
  tbh_preview = writeShellScriptBin "tbh_preview"
    (builtins.readFile ./preview.sh);
}
