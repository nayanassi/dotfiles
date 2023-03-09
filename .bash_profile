export SHELL=/bin/zsh
exec /bin/zsh -l

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
