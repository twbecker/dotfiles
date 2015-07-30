export JAVA_HOME=/opt/jdk1.8
alias jps="jps -l"
if whence mvn-color > /dev/null; then
    alias mvn=mvn-color
fi

function switchJdk() {
    if [ ! -d $1 ]; then
        print "$1 is not a valid JAVA_HOME"
        return 1
    fi
    let index=${path[(I)$JAVA_HOME/bin]}
    if (($index)); then
        path[$index]=$1/bin
    else 
        path=($1/bin $path)
    fi
    export JAVA_HOME=$1
}
