local keymap = vim.keymap
local api = vim.api
local uv = vim.loop

-- ================================
-- Keymaps - Configuracoes para o modo normal 
-- ================================

keymap.set("n", "<leader>ns", "<cmd>source ~/.config/nvim/init.vim<cr>", 
  { desc = "Reload da configuracao" }
)

keymap.set("n", "<leader>w", "<cmd>w!<cr>",
  { desc = "Salvar o arquivo" } 
)

keymap.set("n", "<leader>up", "<Esc>viwUea<Esc>",
  { desc = "Transformar a palavra do cursor em UpperCase" }
)

keymap.set("n", "<leader>p", "m`o<ESC>p``",
  { desc = "Colar embaixo da linha atual" }
)

keymap.set("n", "<space>o", "printf('m`%so<ESC>``', v:count1)", {
  expr = true,
  desc = "Insere linha embaixo sem colocar o cursor",
})


keymap.set("n", "<leader><cr>", "<cmd>noh<cr>", 
  { desc = "Reload da configuracao" }
)



-- Mapeia para o home e end funcionar como deveria (inicio da linha) 
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap.set("n", "^", "g^")
keymap.set("n", "0", "g0")

-- Deixa para funcionar home e end com as letrad maiusculas do H e L 
keymap.set({ "n", "x" }, "H", "^")
keymap.set({ "n", "x" }, "L", "g_")

-- Buscador mais otimizado
keymap.set("n", "/", [[/\v]])

-- Apaga o texto sem colocar no registro 
keymap.set("n", "<leader>d", '"_d')


-- Move a linha para cima e baixo 
keymap.set("n", "<A-k>", '<cmd>call utils#SwitchLine(line("."), "up")<cr>', { desc = "move line up" })
keymap.set("n", "<A-j>", '<cmd>call utils#SwitchLine(line("."), "down")<cr>', { desc = "move line down" })

-- =========================
-- Keymaps - Visual Mode 
-- =========================
--
-- Nao colocar espaco em branco no modo visual 
keymap.set("x", "$", "g_")

-- Move a selecao pra cima e pra baixo
keymap.set("x", "<A-k>", '<cmd>call utils#MoveSelection("up")<cr>', { desc = "move selection up" })
keymap.set("x", "<A-j>", '<cmd>call utils#MoveSelection("down")<cr>', { desc = "move selection down" })

-- Cola o que ta copiado no selecionado 
keymap.set("x", "p", '"_c<Esc>p')



-- ===========================
-- Insert Mode
-- ===========================

-- Fazer a arrow key com control no modo de insercao
keymap.set("i", "<C-s>", "<End>")
keymap.set("i", "<C-a>", "<Home>")
keymap.set("i", "<C-z>", "<Left>")
keymap.set("i", "<C-x>", "<Right>")
keymap.set("i", "<C-q>", "<Up>")
--  keymap.set("i", "<C-c>", "<Down>")


