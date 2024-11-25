set lxpolkitActivo (pgrep lxpolkit)

if [ "$lxpolkitActivo" = "" ]
  lxpolkit
end
