if which jenv > /dev/null; then eval "$(jenv init -)"; fi

export NVM_DIR="/Users/paul/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Set docker-machine environment variables, e.g. dme my-machine-name
dme () { eval $(docker-machine env $1); docker-machine ls; }
export -f dme

# Don't let Java use a proxy for local addresses
export _JAVA_OPTIONS='-DsocksProxyHost=10.40.212.118 -DsocksProxyPort=1080 -DsocksNonProxyHosts="local|127.0.0.1|*.local|169.254/16|*.169.254/16|192.168.0.*|192.168.99.*|*.org|*.com|*.de|*.io|*.ee.co.uk|*.t-zones.co.uk|*.mozilla.com|*.mozilla.net"'
export JAVA_TOOL_OPTONS=$_JAVA_OPTIONS
export MAVEN_OPTS='-DsocksProxyHost=10.40.212.118 -DsocksProxyPort=1080 -DsocksNonProxyHosts="local|127.0.0.1|*.local|169.254/16|*.169.254/16|192.168.0.*|192.168.99.*|*.org|*.com|*.de|*.io|*.ee.co.uk|*.t-zones.co.uk|*.mozilla.com|*.mozilla.net"'

# For brew scalaenv https://github.com/mazgi/scalaenv
eval "$(scalaenv init -)"

SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"

if [ -n "${TERM}" ]; then
	export LINES COLUMNS
fi