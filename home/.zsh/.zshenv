case "${OSTYPE}" in
    darwin*)
        source ${ZDOTDIR}/.zshenv.darwin
        ;;
    linux*)
        source ${ZDOTDIR}/.zshenv.linux
        ;;
esac
