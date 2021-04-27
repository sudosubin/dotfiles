#!/bin/sh

player_status="$(playerctl metadata --format "{{ lc(status) }}")";
player_title="$(playerctl metadata --format "{{ title }}")";
player_variant="$(playerctl metadata --format "{{ playerName }}")";

case "$player_variant" in
    "spotify")
        player_icon="";
        ;;
    "chromium")
        player_icon="";
        ;;
    *)
        player_icon="";
        ;;
esac

text="$player_icon $player_title";
class="$player_variant-$player_status";

echo "{\"text\":\"$text\", \"class\":\"$class\"}"
