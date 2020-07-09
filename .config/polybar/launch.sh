BAR_NAME="topbar"

killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar $BAR_NAME --reload  &
  done
else
  polybar --reload $BAR_NAME &
fi
