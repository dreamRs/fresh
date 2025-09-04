# fresh 0.2.2

* Fixed documentation to resolve NOTES on CRAN


# fresh 0.2.1 

* Fixed documentation to resolve NOTES on CRAN
* New functions: 
    - `bs_theme_nord_light()` & `bs_theme_nord_dark()` two custom Bootstrap themes based on Nord palette.
    - `bs4Dash_theme()` to create cutom themes for bs4Dash dashboards.


# fresh 0.2.0

* Support for [{bs4Dash}](https://github.com/RinteRface/bs4Dash) custom themes.
* New vignettes to explain how the package works.
* New functions `search_vars_bs()`, `search_vars_adminlte2()`, `search_vars_bs4dash()` to list all available variables usable in shiny, shinydashboard and bs4Dash respectively.
* There's no more fonts included in the package, so if you use Bootswatch theme or want to use a custom font, you have to download the files. This can be done easily with the [gfonts](https://github.com/dreamRs/gfonts) package.
* `vars_file()` has been renamed `bs_vars_file()`.


# fresh 0.1.0

* Initial release : Create Custom 'Bootstrap' Themes to Use in 'Shiny'.
