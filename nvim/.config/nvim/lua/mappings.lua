require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- parity with MacBook cmd + S
-- also "<A-s>" seems to be mapped to delete followed by an insert in my machine, not sure why...
-- so we just override this for convenience
map({"i", "n"}, "<A-s>", "<cmd>w<CR>", { desc = "file save" })
