alias jps="jps -l"
if whence mvn-color > /dev/null; then
    alias mvn=mvn-color
fi

function switchJdk() {
    # If we're on a mac, allow passing just the version (e.g. 1.7)
    if [[ $(uname) == "Darwin" && ! -d $1 ]]; then
        newJavaHome=$(/usr/libexec/java_home -v $1)
    else 
        # Otherwise we need the directory
        newJavaHome=$1
    fi
    if [[ ! -d $newJavaHome ]]; then
        print "$newJavaHome is not a valid JAVA_HOME"
        return 1
    fi
    let index=${path[(I)$JAVA_HOME/bin]}
    if (($index)); then
        path[$index]=$newJavaHome/bin
    else 
        path=($newJavaHome/bin $path)
    fi
    export JAVA_HOME=$newJavaHome
}
