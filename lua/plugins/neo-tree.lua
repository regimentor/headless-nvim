return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim" -- Optional image support for file preview: See `# Preview Mode` for more information.
    -- {"3rd/image.nvim", opts = {}},
    -- OR use snacks.nvim's image module:
    -- "folke/snacks.nvim",
    },
    lazy = true, -- neo-tree will lazily load itself
    cmd = {"Neotree", "NeotreeFloat", "NeotreeReveal", "NeotreeRevealToggle", "NeotreeFocus"},
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
        close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        default_component_configs = {
            container = {
                enable_character_fade = true
            },
            indent = {
                indent_size = 2,
                padding = 1,
                with_markers = true,
                indent_marker = "│",
                last_indent_marker = "└"
            },
            icon = {
                folder_closed = "▸",
                folder_open = "▾",
                folder_empty = "◦",
                default = "▪"
            },
            modified = {
                symbol = "[+]"
            },
            name = {
                trailing_slash = false,
                use_git_status_colors = true
            },
            git_status = {
                align = "left",
                symbols = {
                    added = "✚",
                    modified = "✎",
                    deleted = "✖",
                    renamed = "→",
                    untracked = "?",
                    ignored = "·",
                    unstaged = "○",
                    staged = "✓",
                    conflict = "⚡"
                }
            },
            diagnostics = {
                symbols = {
                    hint = "󰌶",
                    info = "󰋽",
                    warn = "󰀪",
                    error = "󰅚"
                },
                highlights = {
                    hint = "DiagnosticSignHint",
                    info = "DiagnosticSignInfo",
                    warn = "DiagnosticSignWarn",
                    error = "DiagnosticSignError"
                }
            }
        },
        window = {
            position = "left",
            width = 30,
            mapping_options = {
                noremap = true,
                nowait = true
            },
            mappings = {
                ["<space>"] = "toggle_node",
                ["<2-LeftMouse>"] = "open",
                ["<cr>"] = "open",
                ["<esc>"] = "cancel",
                ["P"] = {
                    "toggle_preview",
                    config = {
                        use_float = true
                    }
                },
                ["l"] = "focus_preview",
                ["S"] = "open_split",
                ["s"] = "open_vsplit",
                ["t"] = "open_tabnew",
                ["w"] = "open_with_window_picker",
                ["C"] = "close_node",
                ["z"] = "close_all_nodes",
                ["a"] = {"add"},
                ["A"] = "add_directory",
                ["y"] = "copy_to_clipboard",
                ["d"] = "delete",
                ["r"] = "rename",
                ["x"] = "cut_to_clipboard",
                ["p"] = "paste_from_clipboard",
                ["c"] = "copy",
                ["m"] = "move",
                ["q"] = "close_window",
                ["R"] = "refresh",
                ["?"] = "show_help",
                ["<"] = "prev_source",
                [">"] = "next_source",
                ["i"] = "show_file_details",
                ["<Tab>"] = function(state)
                    local node = state.tree:get_node()
                    if node then
                        vim.cmd("wincmd p") -- Переключиться на предыдущее окно
                    end
                end
            }
        },
        filesystem = {
            filtered_items = {
                visible = false,
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_hidden = false
            },
            follow_current_file = {
                enabled = true,
                leave_dirs_open = false
            },
            group_empty_dirs = false,
            window = {
                mappings = {
                    ["<bs>"] = "navigate_up",
                    ["."] = "set_root",
                    ["H"] = "toggle_hidden",
                    ["/"] = "fuzzy_finder",
                    ["D"] = "fuzzy_finder_directory",
                    ["#"] = "fuzzy_sorter",
                    ["f"] = "filter_on_submit",
                    ["<c-x>"] = "clear_filter",
                    ["[g"] = "prev_git_modified",
                    ["]g"] = "next_git_modified",
                    ["o"] = {
                        "show_help",
                        nowait = false,
                        config = {
                            title = "Order by",
                            prefix_key = "o"
                        }
                    },
                    ["oc"] = {
                        "order_by_created",
                        nowait = false
                    },
                    ["od"] = {
                        "order_by_diagnostics",
                        nowait = false
                    },
                    ["og"] = {
                        "order_by_git_status",
                        nowait = false
                    },
                    ["om"] = {
                        "order_by_modified",
                        nowait = false
                    },
                    ["on"] = {
                        "order_by_name",
                        nowait = false
                    },
                    ["os"] = {
                        "order_by_size",
                        nowait = false
                    },
                    ["ot"] = {
                        "order_by_type",
                        nowait = false
                    }
                }
            },
            commands = {}
        }
    }
}
