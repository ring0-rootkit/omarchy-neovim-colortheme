local config_path = vim.fn.expand("~/.config/omarchy/current/theme/neovim.lua")
local chunk = loadfile(config_path)
if chunk then
  local config = chunk()

  if config and type(config) == "table" then
    local plugin = nil
    local colorscheme_name = nil

    for _, item in ipairs(config) do
      if type(item) == "table" then
        if item[1] and item[1] ~= "LazyVim/LazyVim" then
          plugin = item[1]
        end

        if item[1] and item[1] == "LazyVim/LazyVim" and item.opts and item.opts.colorscheme then
          colorscheme_name = item.opts.colorscheme
        end
      end
    end

    if plugin then
      vim.pack.add({"https://github.com/" .. plugin})
    end

    if colorscheme_name then
      vim.cmd("colorscheme " .. colorscheme_name)
      print("Colorscheme set to: " .. colorscheme_name)
    end
  end
end
