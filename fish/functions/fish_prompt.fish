function fish_prompt
  # Cache exit status
  set -l last_status $status

  # Just calculate these once, to save a few cycles when displaying the prompt
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end
  if not set -q __fish_prompt_char
    switch (id -u)
      case 0
	set -g __fish_prompt_char '#'
      case '*'
	set -g __fish_prompt_char '>'
    end
  end

  # Setup colors
  set -l normal (set_color normal)
  set -l red (set_color red)
  set -l white (set_color d6d0f6)
  set -l highlight (set_color e92092)

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color d6d0f6
  set -g __fish_git_prompt_color_flags e92092
  set -g __fish_git_prompt_color_prefix e92092
  set -g __fish_git_prompt_color_suffix d6d0f6
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_show_informative_status true
  
  # Line 1
  echo -n $highlight'┌['$white$USER$highlight'@'$white$__fish_prompt_hostname$highlight']'$white'-'$highlight'('$white(prompt_pwd)$highlight')'
  __fish_git_prompt "-[git://%s]-"

  echo

  # Line 2
  echo -n $highlight'    └'$__fish_prompt_char $normal

end
