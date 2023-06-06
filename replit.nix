{ pkgs }: {
  deps = [
    pkgs.adoptopenjdk-openj9-bin-16
    pkgs.busybox
    pkgs.wget
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}
