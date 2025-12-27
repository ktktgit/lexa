# { pkgs, stdenv, fetchFromGitHub, nixVersions, cmake, bdwgc }:
# 
# stdenv.mkDerivation (finalAttrs: {
#     pname = "libmprompt";
#     version = "0.6.3";
# 
#     src = fetchFromGitHub {
#         owner = "koka-lang";
#         repo = "libmprompt";
#         rev = "f03f534ca9ceaa95d7744025fd1a6cfa625ed7bd";
#         sha256 = "sha256-46kdBslF89vTCiA59UEsdKtztSIK4dnQoi0T+V6vRt0=";
#     };
# 
#     patches = [ ./libmprompt.patch ];
# 
#     nativeBuildInputs = [ cmake ];
#     buildInputs = [ bdwgc ];
# 
#     cmakeFlags = [ 
#         "-DMP_USE_C=ON"
#     ];
# 
#     doCheck = false;
# 
#     installPhase = ''
#         mkdir -p $out/include
#         cp -r ../include/* $out/include/
# 
#         mkdir -p $out/lib
#         cp libmprompt.a $out/lib/
#     '';
# })

{ pkgs, stdenv, fetchFromGitHub, nixVersions, cmake, bdwgc }:

stdenv.mkDerivation (finalAttrs: {
    pname = "libmprompt";
    version = "0.6.3";

    src = fetchFromGitHub {
        owner = "ktktgit";
        repo = "libmprompt";
        rev = "my-base";
        sha256 = "sha256-oAz2fvi3YlMD4EkYKq0pimmU2ZJsPVb97zt3ZXvswlI=";
    };

    patches = [ ./libmprompt.patch ];

    nativeBuildInputs = [ cmake ];
    buildInputs = [ bdwgc ];

    cmakeFlags = [ 
        "-DMP_USE_C=ON"
    ];

    doCheck = false;

    installPhase = ''
        mkdir -p $out/include
        cp -r ../include/* $out/include/

        mkdir -p $out/lib
        cp libmprompt.a $out/lib/
    '';
})
