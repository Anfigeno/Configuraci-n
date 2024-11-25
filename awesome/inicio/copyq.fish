set copyqActivo (pgrep copyq)

if [ "$copyqActivo" = "" ]
    copyq
end
