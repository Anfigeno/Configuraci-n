set flameshotActivo (pgrep flameshot)

if [ "$flameshotActivo" = "" ]
    flameshot
end
