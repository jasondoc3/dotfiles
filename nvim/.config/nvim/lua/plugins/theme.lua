-- Replaces the theme.lua symlink omarchy's setup/refresh generates, so this
-- file can live in a stowed dotfiles repo. Reloaded on LazyReload by
-- omarchy-theme-hotreload.lua.
-- Load the active Omarchy theme, wherever this config happens to live.
-- Omarchy 4 keeps it under ~/.local/state, 3.x under ~/.config. Resolving at
-- runtime keeps this working from any stow layout or user home.
local home = vim.fn.expand("$HOME")
local candidates = {
  home .. "/.local/state/omarchy/current/theme/neovim.lua",
  home .. "/.config/omarchy/current/theme/neovim.lua",
}
for _, path in ipairs(candidates) do
  if vim.fn.filereadable(path) == 1 then
    local ok, spec = pcall(dofile, path)
    return ok and spec or {}
  end
end
return {}
