#!/bin/bash

SPACE_SIDS=(0)

# for sid in "${SPACE_SIDS[@]}"
# do
  sketchybar --add space space.1 left                                 \
             --set space.1 space=1                                 \
                              label.font="sketchybar-app-font:Regular:16.0" \
                              label.padding_left=-15 \
                              label.padding_right=15                     \
                              script="$PLUGIN_DIR/space.sh"
                              # label.y_offset=0                          \
# done

sketchybar --add item space_separator left                             \
           --set space_separator icon="􀆊"                                \
                                 icon.color=$PINK \
                                 icon.padding_left=4                   \
                                 label.drawing=off                     \
                                 background.drawing=off                \
                                 script="$PLUGIN_DIR/space_windows.sh" \
           --subscribe space_separator space_windows_change
