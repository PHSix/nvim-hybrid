# Information
A neovim colorscheme write in pure lua.
# Requirement
neovim(version >= 0.5)
# Screenfetch
![image](https://user-images.githubusercontent.com/57695072/124710554-84d5e780-df2f-11eb-9292-bbd5bd3ddafa.png)
![image](https://user-images.githubusercontent.com/57695072/124710680-af27a500-df2f-11eb-8c3c-c16fc74bb42b.png)
![image](https://user-images.githubusercontent.com/57695072/124710726-ba7ad080-df2f-11eb-88e1-c89f546c8d4e.png)
# Usage
Use [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim) to install.
```lua
use{
  'PHSix/nvim-hybrid',
  config = function()
    require('hybrid').setup()
    -- or use
    -- vim.cmd [[colorscheme nvim-hybrid]]
  end
}
```
# Support plugins
- [coc-git](https://github.com/neoclide/coc-git)
- [airblade/vim-gitgutter](https://github.comairblade/vim-gitgutter)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [dashboard](https://github.com/glepnir/dashboard-nvim)
- [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- coc-diagnostic
## coc setting
If you use `coc.nvim` for your completion plugin and you want have similar with screenfetch(I use `nvim-lspconfig`), you need setting your `coc-setting.json`.

```json
  "git.addedSign.text": "|",
  "git.removedSign.text": "|",
  "git.changeRemovedSign.text": "|",
  "git.topRemovedSign.text": "|",
  "git.changedSign.text": "|",
  "git.addedSign.hlGroup": "DiffAdd",
  "git.changedSign.hlGroup": "DiffChange",
  "git.removedSign.hlGroup": "DiffDelete",
  "git.topRemovedSign.hlGroup": "DiffDelete",
  "git.changeRemovedSign.hlGroup": "DiffChange",
  "diagnostic.enableSign": true,
  "diagnostic.errorSign": "▊",
  "diagnostic.hintSign": "▊",
  "diagnostic.infoSign": "▊",
  "diagnostic.warningSign": "▊",

```

# Inspiration
[glepnir/zephyr-nvim](https://github.com/glepnir/zephyr-nvim) (used async)

# Todo
- [x] [nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
- [x] [nvim-treesitter](https://github.com/akinsho/nvim-treesitter/nvim-treesitter)
