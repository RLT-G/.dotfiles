function fish_prompt
    set_color normal

    set_color -o cyan
    echo -n "✨ "(whoami)"@"
    set_color -o cyan
    echo -n (hostname)

    set_color normal
    echo -n " "

    set_color -o cyan
    echo -n (prompt_pwd)

    set_color -o cyan
    echo -n " >>> "

    set_color normal
end
