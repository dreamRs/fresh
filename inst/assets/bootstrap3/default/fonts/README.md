These fonts were downloaded with [google-font-download](https://github.com/neverpanic/google-font-download), using the following command:

```R
google-font-download -f ttf \
    "Source Sans Pro:300" "Source Sans Pro:400" \
    "Source Sans Pro:400italic" "Source Sans Pro:700" \
    "Roboto:300" "Roboto:400" "Roboto:500" "Roboto:700" \
    "Lato:300" "Lato:400" "Lato:700" \
    "Lato:400italic" \
    "News Cycle:400" "News Cycle:700" \
    "Raleway:400" "Raleway:700" \
    "Open Sans:300" "Open Sans:400" "Open Sans:700" \
    "Open Sans:300italic" "Open Sans:400italic" "Open Sans:700italic" \
    "Ubuntu:400"
```

The fonts downloaded this way are smaller in size than ones downloaded manually from https://fonts.google.com/, because they include fewer glyphs. This can be seen by viewing the font files with http://bluejamesbond.github.io/CharacterMap/. For Source Sans Pro, it's 240 glyphs vs. 1249 glyphs.
