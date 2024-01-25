#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Info:
#   author:    Miroslav Vidovic
#   file:      web-search.sh
#   created:   24.02.2017.-08:59:54
#   revision:  ---
#   version:   1.0
# -----------------------------------------------------------------------------
# Requirements:
#   rofi
# Description:
#   Use rofi to search the web.
# Usage:
#   web-search.sh
# -----------------------------------------------------------------------------
# Script:

declare -A URLS

URLS=(
  ["YouTube"]="https://www.youtube.com/results?search_query="
  ["DuckDuckGo"]="https://www.duckduckgo.com/?q="
  ["imdb"]="http://www.imdb.com/find?ref_=nv_sr_fn&q="
  ["Google"]="https://www.google.com/search?q="
  ["GitHub"]="https://github.com/search?q="
  ["Wikipedia (en)"]="https://en.wikipedia.org/w/index.php?search="
  ["Wikipedia (tr)"]="https://tr.wikipedia.org/w/index.php?search="
  ["YouTube Music"]="https://music.youtube.com/search?q="
)

# List for rofi
gen_list() {
    for i in "${!URLS[@]}"
    do
      echo "$i"
    done
}

main() {
  # Pass the list to rofi
  platform=$( (gen_list) | rofi -dmenu -matching fuzzy -no-custom -location -theme ~/.config/rofi/launchers/type-1/style-7.rasi 0 -p "Search > " )

  if [[ -n "$platform" ]]; then
    query=$( (echo ) | rofi  -dmenu -matching fuzzy -location -theme ~/.config/rofi/launchers/type-1/style-7.rasi 0 -p "Query > " )

    if [[ -n "$query" ]]; then
      url=${URLS[$platform]}$query
      xdg-open "$url"
    else
      exit
    fi

  else
    exit
  fi
}

main

exit 0
