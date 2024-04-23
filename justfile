home_dir := env_var('HOME')
base_dir := justfile_directory()

all: link_bash link_vim link_lsd
    echo "[OK]"

[unix]
link_bash:
    if [ ! -e "{{home_dir}}/.bashrc" ]; then \
        ln -s {{base_dir}}/.bashrc {{home_dir}}/.bashrc; \
    fi
    if [ ! -e "{{home_dir}}/.bash_aliases" ]; then \
        ln -s {{base_dir}}/.bash_aliases {{home_dir}}/.bash_aliases; \
    fi

[unix]
link_vim:
    if [ ! -e "{{home_dir}}/.vimrc" ]; then \
        ln -s {{base_dir}}/.vimrc {{home_dir}}/.vimrc; \
    fi


[unix]
link_lsd:
    if [ ! -e "{{home_dir}}/.config/lsd/config.yaml" ]; then \
        ln -s {{base_dir}}/.config/lsd/config.yaml {{home_dir}}/.config/lsd/config.yaml; \
    fi
    if [ ! -e "{{home_dir}}/.config/lsd/colors.yaml" ]; then \
        ln -s {{base_dir}}/.config/lsd/colors.yaml {{home_dir}}/.config/lsd/colors.yaml; \
    fi
