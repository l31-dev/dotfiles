if status is-interactive
	fish_config theme choose "Rosé Pine"
end

alias ls="eza --icons"
alias eza="eza --icons"

alias g="git"
alias gc="git clone"

function fish_greeting
end

function fish_prompt
	set s $status

	set prompt (
		echo -n (set_color "#eb6f92")(prompt_pwd --dir-length=30)" "
		echo -n (set_color "#ebbcba")"("\uf418(fish_git_prompt | sed 's/[()]//g')") "
	)
	
	set prompt (echo (string trim $prompt))
	echo $prompt 🌸" "
end
