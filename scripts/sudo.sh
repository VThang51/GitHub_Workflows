#!/bin/bash

# Usage: bash sudo.sh -freespace -setuptwrp

freespace=false
installrepo=false
skip=false
setuptwrp=false

while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -freespace)
            freespace=true
            shift
            ;;
        -installrepo)
            installrepo=true
            shift
            ;;
        -skip)
            skip=true
            shift
            ;;
        -setuptwrp)
            setuptwrp=true
            shift
            ;;
        *)
            echo "Error: $key"
            exit 1
            ;;
    esac
done

if $freespace; then
  du -sh /var/cache/apt/archives
  sudo apt clean
  sudo apt autoremove
  sudo apt remove clang moby-buildx moby-cli moby-compose moby-containerd moby-engine moby-runc podman buildah skopeo containers-common temurin-*-jdk adoptopenjdk-* adoptium-ca-certificates openjdk-* ant ant-optional postgresql-* libpq-dev libmysqlclient* msodbcsql* mssql-tools unixodbc-dev mysql-client* mysql-common mysql-server* php*-*sql sphinxsearch mongodb* firefox google-chrome-stable microsoft-edge-stable xvfb apache2 apache2-* nginx nginx-* php-* php7* php8* session-manager-plugin azure-cli google-cloud-sdk gh subversion mercurial vim vim-* dotnet* aspnetcore* mono-* mono* libmono-* libmono* monodoc* msbuild nuget ruby* rake ri g++-10 g++-12 gcc-10 gcc-12 gfortran-* clang-* libclang* llvm-* libllvm* lldb-* lld-* clang-format-* clang-tidy-* powershell r-base* r-cran* r-doc* r-recommended snapd man-db manpages libgtk-3-* ubuntu-mono *-icon-theme esl-erlang imagemagick imagemagick-6-common libgl1-mesa-dri firebird* hhvm python python2
  sudo rm -rf /home/linuxbrew
  sudo rm -rf /usr/bin/docker-credential-ecr-login
  sudo rm -rf /usr/local/bin/docker-compose
  sudo rm -rf /usr/bin/docker-credential-ecr-login
  sudo rm -rf /usr/local/bin/kind
  sudo rm -rf /usr/local/bin/kubectl
  sudo rm -rf /usr/local/bin/minikube
  sudo rm -rf /usr/local/bin/kusomize
  sudo rm -rf /usr/local/bin/helm
  sudo rm -rf /usr/local/bin/terraform
  sudo rm -rf /usr/local/lib/android/sdk/build-tools
  sudo rm -rf /usr/local/lib/android/sdk/cmdline-tools
  sudo rm -rf /usr/local/lib/android/sdk/cmake
  sudo rm -rf /usr/local/lib/android/sdk/emulator
  sudo rm -rf /usr/local/lib/android/sdk/licenses
  sudo rm -rf /usr/local/lib/android/sdk/extras
  sudo rm -rf /usr/local/lib/android/sdk/ndk
  sudo rm -rf /usr/local/lib/android/sdk/patcher
  sudo rm -rf /usr/local/lib/android/sdk/platorm-tools
  sudo rm -rf /usr/local/lib/android/sdk/tools
  sudo rm -rf /usr/local/lib/android/sdk/platforms
  sudo rm -rf /usr/local/lib/android
  sudo rm -rf /usr/lib/jvm/
  sudo rm -rf /usr/local/graalvm
  sudo rm -rf /usr/share/java/selenium-server.jar
  sudo rm -rf /usr/share/gradle-8.0.2
  sudo rm -rf /usr/bin/gradle
  sudo rm -rf /usr/share/apache-maven-3.8.8
  sudo rm -rf /usr/bin/mvn
  sudo rm -rf /usr/share/mysql\*
  sudo rm -rf /opt/mssql-tools
  sudo rm -rf /usr/lib/firefox
  sudo rm -rf /usr/local/sqlpackage
  sudo rm -rf /usr/local/share/gecko_driver
  sudo rm -rf /usr/bin/google-chrome
  sudo rm -rf /usr/bin/geckodriver
  sudo rm -rf /usr/local/share/chrome_driver
  sudo rm -rf /usr/bin/chromedriver
  sudo rm -rf /usr/local/share/chromium
  sudo rm -rf /usr/bin/chromium-browser
  sudo rm -rf /usr/bin/chromium
  sudo rm -rf /usr/local/share/edge_driver
  sudo rm -rf /usr/bin/msedgedriver
  sudo rm -rf /usr/share/php
  sudo rm -rf /etc/php
  sudo rm -rf /usr/local/bin/phpunit
  sudo rm -rf /usr/bin/composer
  sudo rm -rf /home/runner/.config/composer
  sudo rm -rf /etc/.composer
  sudo rm -rf /etc/skel/.composer
  sudo rm -rf /usr/local/bin/aliyun
  sudo rm -rf /usr/local/bin/aws
  sudo rm -rf /usr/local/bin/aws_completer
  sudo rm -rf /usr/local/aws
  sudo rm -rf /usr/local/aws-cli
  sudo rm -rf /usr/local/bin/azcopy
  sudo rm -rf /usr/local/bin/azcopy10
  sudo rm -rf /usr/share/az_3.1.0.zip
  sudo rm -rf /usr/share/az_4.4.0.zip
  sudo rm -rf /usr/share/az_5.9.0.zip
  sudo rm -rf /usr/share/az_6.6.0.zip
  sudo rm -rf /usr/share/az_7.5.0.zip
  sudo rm -rf /usr/share/az_9.3.0
  sudo rm -rf /opt/az
  sudo rm -rf /usr/bin/az
  sudo rm -rf /usr/share/google-cloud-sdk
  sudo rm -rf /usr/local/bin/bicep
  sudo rm -rf /usr/local/bin/oc
  sudo rm -rf /usr/local/bin/oras
  sudo rm -rf /usr/local/bin/hub
  sudo rm -rf /usr/share/dotnet
  sudo rm -rf /home/runner/.dotnet
  sudo rm -rf /etc/skel/.dotnet/tools
  sudo rm -rf /etc/.dotnet/tools
  sudo rm -rf /usr/local/aws-sam-cli
  sudo rm -rf /usr/local/bin/vcpkg
  sudo rm -rf /usr/share/ri
  sudo rm -rf /usr/local/n
  sudo rm -rf /usr/local/bin/n
  sudo rm -rf /usr/local/lib/node_modules
  sudo rm -rf /etc/skel/.nvm
  sudo rm -rf /home/runner/.nvm
  sudo rm -rf /opt/pipx
  sudo rm -rf /opt/pipx_bin
  sudo rm -rf /opt/hostedtoolcache/CodeQL
  sudo rm -rf /opt/hostedtoolcache/Java_Adopt_jdk
  sudo rm -rf /opt/hostedtoolcache/Java_Temurin-Hotspot_jdk
  sudo rm -rf /opt/hostedtoolcache/PyPy
  sudo rm -rf /opt/hostedtoolcache/Python
  sudo rm -rf /opt/hostedtoolcache/Ruby
  sudo rm -rf /usr/local/share/vcpkg
  sudo rm -rf /opt/hostedtoolcache/node
  sudo rm -rf /usr/lib/llvm-10
  sudo rm -rf /usr/local/bin/ccmake
  sudo rm -rf /usr/local/bin/cmake
  sudo rm -rf /usr/local/bin/cmake-gui
  sudo rm -rf /usr/local/bin/ctest
  sudo rm -rf /usr/local/bin/cpack
  sudo rm -rf /usr/local/share/cmake-3.26
  sudo rm -rf /usr/local/\*cmake\*
  sudo rm -rf /usr/local/bin/ccmake
  sudo rm -rf /usr/local/bin/cmake
  sudo rm -rf /usr/local/bin/cmake-gui
  sudo rm -rf /opt/hostedtoolcache/go
  sudo rm -rf /usr/local/doc/cmake
  sudo rm -rf /usr/local/share/cmake-3.26
  sudo rm -rf /opt/microsoft/powershell
  sudo rm -rf /usr/share/rust
  sudo rm -rf /home/runner/.cargo
  sudo rm -rf /home/runner/.rustup
  sudo rm -rf /etc/skel/.rustup
  sudo rm -rf /etc/skel/.cargo
  sudo rm -rf /etc/.rustup
  sudo rm -rf /etc/.cargo
  sudo rm -rf /usr/local/bin/stack
  sudo rm -rf /home/runner/.ghcup
  sudo rm -rf /usr/local/.ghcup
  sudo rm -rf /usr/share/kotlinc
  sudo rm -rf /usr/bin/kotlin
  sudo rm -rf /usr/bin/kotlin-dce-js
  sudo rm -rf /usr/local/share/powershell
  sudo rm -rf /usr/bin/kotlinc
  sudo rm -rf /usr/bin/kotlinc-js
  sudo rm -rf /usr/bin/kotlinc-jvm
  sudo rm -rf /usr/bin/julia
  sudo rm -rf /usr/share/swift
  sudo rm -rf /usr/local/bin/swift
  sudo rm -rf /usr/local/bin/swiftc
  sudo rm -rf /var/cache/snapd
  sudo rm -rf /home/runner/snap
  sudo rm -rf /usr/local/bin/rebar3
  sudo rm -rf /usr/share/firebird\*
  sudo rm -rf /opt/hhvm
  sudo rm -rf /usr/share/sbt
  sudo rm -rf /usr/bin/sbt
  sudo rm -rf /usr/local/share/phantomjs-2.1.1-linux-x86_64
  sudo rm -rf /usr/local/bin/phantomjs
  sudo rm -rf /usr/local/bin/packer
  sudo rm -rf /usr/local/lib/lein
  sudo rm -rf /usr/local/bin/lein
  sudo rm -rf /usr/local/bin/pulumi
  sudo rm -rf /usr/local/bin/pulumi-analyzer-policy
  sudo rm -rf /usr/local/bin/pulumi-analyzer-policy-python
  sudo rm -rf /usr/local/bin/pulumi-language-dotnet
  sudo rm -rf /usr/local/bin/pulumi-language-go
  sudo rm -rf /usr/local/bin/pulumi-language-java
  sudo rm -rf /usr/local/bin/pulumi-language-nodejs
  sudo rm -rf /usr/local/bin/pulumi-language-python
  sudo rm -rf /usr/local/bin/pulumi-language-python-exec
  sudo rm -rf /usr/local/bin/pulumi-language-yaml
  sudo rm -rf /usr/local/bin/pulumi-resource-pulumi-nodejs
  sudo rm -rf /usr/local/bin/pulumi-resource-pulumi-python
  sudo rm -rf /usr/local/bin/pulumi-watch
  sudo rm -rf /usr/local/julia1.8.5
  sudo rm -rf /usr/bin/conda
  sudo rm -rf /usr/share/miniconda
  sudo rm -rf /usr/share/dotnet
  sudo rm -rf /opt/ghc
  sudo rm -rf /usr/local/share/boost
  sudo rm -rf "$AGENT_TOOLSDIRECTORY"
  df -h
fi

if $skip; then
    echo "Skip sudo.sh file"
fi

if $installrepo; then
    export REPO=$(mktemp /tmp/repo.XXXXXXXXX)
    curl -o ${REPO} https://storage.googleapis.com/git-repo-downloads/repo
    gpg --recv-key 8BB9AD793E8E6153AF0F9A4416530D5E920F5C65
    curl -s https://storage.googleapis.com/git-repo-downloads/repo.asc | gpg --verify - ${REPO} && install -m 755 ${REPO} ~/bin/repo
fi

if $setuptwrp; then
    sudo apt update
    sudo apt upgrade
    sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev libc6-dev-i386 libncurses5 x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig
fi
