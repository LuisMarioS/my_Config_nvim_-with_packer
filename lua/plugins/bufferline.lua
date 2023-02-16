local buffer = require('bufferline')

buffer.setup({
    options = {
        mode = 'buffers',
        indicator = {
            --[[ style = { 'none' | 'none' | 'none' } ]]
        }
    },
    highlights = {
        buffer_selected = {
            italic = false,
        },
        numbers_selected = {
            italic = false,
        },
        diagnostic_selected = {
            italic = false,
        },
        hint_selected = {
            italic = false,
        },
        hint_diagnostic_selected = {
            italic = false,
        },
        info_selected = {
            italic = false,
        },
        info_diagnostic_selected = {
            italic = false,
        },
        warning_selected = {
            italic = false,
        },
        warning_diagnostic_selected = {
            italic = false,
            },
        error_selected = {
            italic = false,
        },
        error_diagnostic_selected = {
            italic = false,
        },
        duplicate_selected = {
            italic = false,
        },
        duplicate_visible = {
            italic = false
        },
        duplicate = {
            italic = false
        },
        pick_selected = {
            italic = false
        },
        pick_visible = {
            italic = false
        },
        pick = {
            italic = false
        },
    }
})
