#
# ~/.bash_profile
#

#
# JVM environmental variables
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export ANT_HOME=/usr/share/apache-ant
export M2_HOME=/opt/maven

#
# Add to path
PATH=$JAVA_HOME/bin:$PATH
PATH=$ANT_HOME/bin:$PATH
PATH=$M2_HOME/bin:$PATH

#
# Add my personal binaries and favour cabal.
PATH=$HOME/bin:$PATH
PATH=$HOME/.cabal/bin:$PATH

export PATH

source $HOME/.bashrc
source $HOME/perl5/perlbrew/etc/bashrc
