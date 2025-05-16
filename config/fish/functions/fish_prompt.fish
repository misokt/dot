# own/bash-like
function fish_prompt
    set -l last_status $status
    set -l yellow (set_color -o yellow)
    set -l red (set_color -o red)
    set -l blue (set_color -o blue)
    set -l normal (set_color normal)

    set -l ahead (_git_ahead)
    set -l whitespace ' '

    set -l cwd $blue(basename (prompt_pwd))
    set -l username $yellow(echo $USER)
    set -l host $red(basename (prompt_hostname))
    set -l at $normal(echo '@')
    set -l open $normal(echo '[')
    set -l close $normal(echo ']')

    if [ (_git_branch_name) ]

        if test (_git_branch_name) = "master"
            set -l git_branch (_git_branch_name)
            set git_info "$normal git:($red$git_branch$normal)"
        else
            set -l git_branch (_git_branch_name)
            set git_info "$normal git:($blue$git_branch$normal)"
        end

        if [ (_is_git_dirty) ]
            set -l dirty "$yellow ✗"
            set git_info "$git_info$dirty"
        end
    end

    if [ (_git_ahead) ]
       echo -n -s $open $username $at $host $whitespace $cwd $close $git_info $whitespace $ahead $whitespace
    else
        echo -n -s $open $username $at $host $whitespace $cwd $close $git_info $whitespace $ahead
    end

end

function _git_ahead
    set -l commits (command git rev-list --left-right '@{upstream}...HEAD' 2>/dev/null)
    if [ $status != 0 ]
        return
    end
    set -l behind (count (for arg in $commits; echo $arg; end | grep '^<'))
    set -l ahead  (count (for arg in $commits; echo $arg; end | grep -v '^<'))
    switch "$ahead $behind"
        case ''     # no upstream
        case '0 0'  # equal to upstream
            return
        case '* 0'  # ahead of upstream
            echo "$blue↑$normal_c$ahead$whitespace"
        case '0 *'  # behind upstream
            echo "$red↓$normal_c$behind$whitespace"
        case '*'    # diverged from upstream
            echo "$blue↑$normal$ahead $red↓$normal_c$behind$whitespace"
    end
end

function _git_branch_name
    echo (command git symbolic-ref HEAD 2>/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
    echo (command git status -s --ignore-submodules=dirty 2>/dev/null)
end
