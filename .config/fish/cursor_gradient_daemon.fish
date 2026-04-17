set steps 60
set delay 0.04

while true
    for i in (seq 0 $steps)
        set t (math "$i / $steps")
        set r (math --scale=0 "51 - 51 * $t")
        set g (math --scale=0 "204 + 51 * $t")
        set b (math --scale=0 "255 - 102 * $t")
        printf "\e]12;#%02x%02x%02x\a" $r $g $b
        sleep $delay
    end
    for i in (seq 0 $steps)
        set t (math "$i / $steps")
        set r (math --scale=0 "51 * $t")
        set g (math --scale=0 "255 - 51 * $t")
        set b (math --scale=0 "153 + 102 * $t")
        printf "\e]12;#%02x%02x%02x\a" $r $g $b
        sleep $delay
    end
end
