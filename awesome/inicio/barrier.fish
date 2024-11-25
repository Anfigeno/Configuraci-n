set barrierActivo (pgrep barrier)

if [ "$barrierActivo" = "" ]
    barrier
end
