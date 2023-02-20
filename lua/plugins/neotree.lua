local neotree = require("neo-tree")

neotree.setup({
    default_component_configs = {
        indent = {
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "╰",
            indent_size = 1,
        }
    },
    window = {
        width = '25',
        position = 'right'
    }
})
