hi! link SignColumn LineNr
hi link CocErrorSign Error
hi link CocWarningSign TODO
hi link CocInfoSign LineNr

let s:p = g:lightline#colorscheme#challenger_deep#palette

let s:asphalt_subtle= { "gui": "#100E23", "cterm": "232", "cterm16": "8"}
let s:bg_subtle = s:asphalt_subtle
let s:dark_red = { "gui": "#ff5458", "cterm": "203", "cterm16": "9"}
let s:dark_yellow = { "gui": "#ffb378", "cterm": "215", "cterm16": "11"}
let s:purple = { "gui": "#c991e1", "cterm": "141", "cterm16": "5"}
let s:dark_purple = { "gui": "#906cff", "cterm": "135", "cterm16": "13"}

let s:p.insert.left = s:p.replace.left
let s:p.insert.right = s:p.replace.right
let s:p.replace.left = s:p.normal.left
let s:p.replace.right = s:p.normal.right
let s:p.normal.left = [[s:bg_subtle.gui, s:purple.gui, s:bg_subtle.cterm16, s:purple.cterm16], [s:bg_subtle.gui, s:dark_purple.gui, s:bg_subtle.cterm16, s:dark_purple.cterm16]]
let s:p.normal.right = [[s:bg_subtle.gui, s:purple.gui, s:bg_subtle.cterm16, s:purple.cterm16], [s:bg_subtle.gui, s:dark_purple.gui, s:bg_subtle.cterm16, s:dark_purple.cterm16]]

let s:p.normal.error = [[s:dark_red.gui, s:bg_subtle.gui, s:dark_red.cterm16, s:bg_subtle.cterm16]]
let s:p.normal.warning = [[s:dark_yellow.gui, s:bg_subtle.gui, s:dark_yellow.cterm16, s:bg_subtle.cterm16]]
