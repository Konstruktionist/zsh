# Mac OS X uses path_helper and /etc/paths.d to preload PATH, clear it out first
if [ -x /usr/libexec/path_helper ]; then
    PATH=''
    eval `/usr/libexec/path_helper -s`
fi

# Put Homebrew at the head of the path
# /usr/local/bin is also first in /etc/paths
export PATH="/usr/local/bin:$PATH"
