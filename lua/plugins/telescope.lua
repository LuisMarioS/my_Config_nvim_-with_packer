local tl = require("telescope")

tl.setup({
    defaults = {
        layout_config = {
            horizontal = {
                prompt_position = 'top',
            }
        },
        prompt_prefix = '  ',
        selection_caret = '➤ ',
        prompt_title = 'LuisMarioS',
        sorting_strategy = 'ascending',
        --[[ color_devicons = false ]]
    }
})
