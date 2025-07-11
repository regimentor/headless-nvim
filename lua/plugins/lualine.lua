local function get_lsp_status()
        local clients = vim.lsp.get_clients({ bufnr = 0 })
        if #clients == 0 then
                return ""
        end
        local client_names = {}
        for _, client in ipairs(clients) do
                table.insert(client_names, client.name)
        end
        return "  " .. table.concat(client_names, ", ")
end


local my_diagnostics = function()
        local diagnostic_counts = vim.diagnostic.count(0)
        local errors = diagnostic_counts[vim.diagnostic.severity.ERROR] or 0
        local warnings = diagnostic_counts[vim.diagnostic.severity.WARN] or 0
        local info = diagnostic_counts[vim.diagnostic.severity.INFO] or 0
        local hints = diagnostic_counts[vim.diagnostic.severity.HINT] or 0
        if errors == 0 and warnings == 0 and info == 0 and hints == 0 then
                return " OK"
        end
        local result = {}
        if errors > 0 then
                table.insert(result, " " .. errors)
        end
        if warnings > 0 then
                table.insert(result, " " .. warnings)
        end
        if info > 0 then
                table.insert(result, " " .. info)
        end
        if hints > 0 then
                table.insert(result, " " .. hints)
        end
        return table.concat(result, " ")
end

return {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
                local lualine = require("lualine")
                local lazy_status = require("lazy.status")


                local colors = {
                        color0 = "#092236",
                        color1 = "#ff5874",
                        color2 = "#c3ccdc",
                        color3 = "#1c1e26",
                        color6 = "#a1aab8",
                        color7 = "#828697",
                        color8 = "#ae81ff",
                }
                local my_lualine_theme = {
                        replace = {
                                a = { fg = colors.color0, bg = colors.color1, gui = "bold" },
                                b = { fg = colors.color2, bg = colors.color3 },
                        },
                        inactive = {
                                a = { fg = colors.color6, bg = colors.color3, gui = "bold" },
                                b = { fg = colors.color6, bg = colors.color3 },
                                c = { fg = colors.color6, bg = colors.color3 },
                        },
                        normal = {
                                a = { fg = colors.color0, bg = colors.color7, gui = "bold" },
                                b = { fg = colors.color2, bg = colors.color3 },
                                c = { fg = colors.color2, bg = colors.color3 },
                        },
                        visual = {
                                a = { fg = colors.color0, bg = colors.color8, gui = "bold" },
                                b = { fg = colors.color2, bg = colors.color3 },
                        },
                        insert = {
                                a = { fg = colors.color0, bg = colors.color2, gui = "bold" },
                                b = { fg = colors.color2, bg = colors.color3 },
                        },
                }

                local mode = {
                        "mode",
                        fmt = function(str)
                                return " " .. str
                        end,
                }

                local diff = {
                        "diff",
                        colored = true,
                        symbols = { added = " ", modified = " ", removed = " " },
                }

                local filename = {
                        "filename",
                        file_status = true,
                        path = 0,
                }

                local branch = { "branch", icon = { "", color = { fg = "#A6D4DE" } }, "|" }

                lualine.setup({
                        icons_enabled = true,
                        options = {
                                theme = my_lualine_theme,
                                component_separators = { left = "|", right = "|" },
                                section_separators = { left = "|", right = "" },
                        },
                        sections = {
                                lualine_a = { mode },
                                lualine_b = { branch },
                                lualine_c = { diff, filename },
                                lualine_x = {
                                        { my_diagnostics },
                                        { get_lsp_status },
                                        {
                                                lazy_status.updates,
                                                cond = lazy_status.has_updates,
                                                color = { fg = "#ff9e64" },
                                        },
                                        { "filetype" },
                                },
                        },
                })
        end,
}
