set ewwActivo (pgrep eww)

if [ "$ewwActivo" = "" ]
    eww open barraSuperiorA
    eww open barraSuperiorB
end
