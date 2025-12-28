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
        rev = "742c3c1874e84810c7dfb3444a575e85e4164c79";
        sha256 = "sha256-m/mD13jR2K7cn+YBDq7KSHHB1QJ/i4dLE0jAgIDlk1E=";
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
