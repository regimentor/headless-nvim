return {
    "lewis6991/gitsigns.nvim",
    opts = {
        signs = {
            add = {
                text = '✚'
            },
            change = {
                text = '✎'
            },
            delete = {
                text = '✖'
            },
            topdelete = {
                text = '↑'
            },
            changedelete = {
                text = '⚡'
            },
            untracked = {
                text = '?'
            }
        },
        signs_staged = {
            add = {
                text = '✓'
            },
            change = {
                text = '✎'
            },
            delete = {
                text = '✖'
            },
            topdelete = {
                text = '↑'
            },
            changedelete = {
                text = '⚡'
            }
        },

        current_line_blame = true, 
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
            delay = 0,
            ignore_whitespace = false,
            virt_text_priority = 100
        },
        current_line_blame_formatter = '<author>, <author_time:%d.%m.%Y> - <summary>'
    }
}
