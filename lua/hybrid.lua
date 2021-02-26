local fn = vim.fn
local hybird = {}

local bg0 = "#213039"
local bg1 = "#242B48"
local bg2 = "#343F4C"
local dark0 = "#374D51"
local dark1 = "#1e272e"
local dark2 = "#34495e"
local white = "#dff9fb"
local red = "#ee5253"
local darkred = "#b33939"
local green = "#BBE67E"
local darkgreen = "#218c74"
local purple = "#D4BFFF"
local clearblue = "#40ffff"
local lightblue = "#34ace0"
local blue = "#227093"
local darkblue = "#3B3B98"
local orange = "#FEA47F"
local darkorange = "#F97F51"
local lightyellow = "#f9ca24"
local yellow = "#ffeaa7"
local darkyellow = "#ffb142"
local gary1 = "#84817a"
local gary2 = "#747d8c"

hybird["hi"] = {
  -- default
  {"Normal", bg = bg0, fg = yellow},
  -- Cursor
  {"Cursor", bg = white, fg = darkblue},
  {"lCursor", bg = white, fg = darkblue},
  -- detail
  {"MatchParen", bg = bg0, fg = white, style = "underline"},
  {"CursorLine", bg = bg2},
  {"VertSplit", bg = lightyellow, fg = bg0},
  {"StatusLine", bg = bg0, fg = bg0},
  {"StatusLineNC", bg = bg0, fg = bg0},
  -- LineNumber
  {"LineNr", fg = dark0},
  {"CursorLineNr", fg = purple},
  -- TabLine
  {"TabLine", bg = dark1, fg = white, style = "bold"},
  {"TabLineSel", bg = gary2, fg = bg1, style = "bold"},
  {"TabLineFill", fg = bg0},
  {"SepTabLine", bg = gary2, fg = bg1},
  {"SepTabLineSel", bg = gary2, fg = dark1},
  -- Folder
  {"Folded", bg = bg2, fg = green, styple = "bold"},
  {"FoldColumn", bg = bg2, fg = green, styple = "bold"},
  -- Sign
  {"SignColumn", bg = bg0},
  {"EndOfBuffer", fg = bg0},
  -- Git
  {"GitAdd", fg = darkgreen},
  {"GitDelete", fg = darkred},
  {"GitChange", fg = blue},
  -- Lsp
  {"ErrorSign", bg = bg0, fg = red},
  {"ErrorVirtualText", fg = red, bg = bg0},
  {"ErrorFloating", fg = red, bg = bg0},
  {"ErrorUnderline", fg = red, bg = bg0},
  {"WarningSign", fg = darkorange, bg = bg0},
  {"WarningVirtualText", fg = darkorange, bg = bg0},
  {"WarningFloating", fg = darkorange, bg = bg0},
  {"WarningUnderline", fg = darkorange, bg = bg0},
  {"HintSign", fg = gary2, bg = bg0},
  {"HintVirtualText", fg = gary2, bg = bg0},
  {"HintFloating", fg = gary2, bg = bg0},
  {"HintUnderline", fg = gary2, bg = bg0},
  {"InformationSign", fg = darkyellow, bg = bg0},
  {"InformationVirtualText", fg = darkyellow, bg = bg0},
  {"InformationFloating", fg = darkyellow, bg = bg0},
  {"InformationUnderline", fg = darkyellow, bg = bg0},
  -- syntax
  {"Title", fg = lightyellow},
  -- Contant
  {"Character", fg = purple},
  {"Number", fg = orange},
  {"String", fg = green},
  {"Booleans", fg = purple},
  {"Float", fg = lightblue},
  -- Indentifier
  {"Function", fg = orange, style = "bold"},
  -- Statement
  {"Conditinal", fg = orange},
  {"Repeat", fg = orange, cfg = 167},
  {"Label", fg = orange},
  {"Operator", fg = lightblue, ctermfg = 1},
  {"Keyword", fg = orange},
  {"Exception", fg = orange},
  -- PreProc
  {"Include", fg = lightblue},
  {"Defind", fg = lightblue},
  {"Marco", fg = lightblue},
  {"PreCondit", fg = lightblue},
  -- Type
  {"StorageClass", fg = lightblue},
  {"Structure", fg = lightblue},
  {"Typedef", fg = lightblue},
  -- Special
  {"SpecialChar", fg = lightblue},
  {"Tag", fg = lightblue},
  {"Delimiter", fg = lightblue},
  {"SpecialComment", fg = lightblue},
  {"Debug", fg = lightblue},
  -- nvim-tree
  {"NvimTreeFolderName", fg = yellow},
  {"NvimTreeRootFolder", fg = yellow},
  {"NvimTreeSpecialFile", fg = yellow},
  -- dashboard
  {"dashboardHeader", fg = yellow},
  {"dashboardFooter", fg = darkorange},
  {"dashboardCenter", fg = darkgreen},
  {"dashboardShortCut", fg = darkorange},
  -- Pmenu
  {"Pmenu", bg = bg2},
  {"PmenuSel", bg = bg1, style = "bold"},
  {"PmenuSBar", bg = bg2, fg = bg2},
  {"PmenuThumb", bg = gary1},
  -- Search
  {"Search", fg = purple, bg = darkgreen},
  {"MatchParen", fg = white, bg = darkgreen},
  -- Visual
  {"Visual", style = "inverse"},
  {"VisualNOS", bg = gary1},
  -- More
  {"More", fg = lightblue},
  {"MoreMsg", fg = lightblue},
  -- Mode
  {"ModeMsg", fg = lightblue},
  {"Statements", fg = clearblue},
  -- barbar.nvim
  {"BufferCurrent", bg = bg0, fg = white},
  {"BufferInactive", bg = bg0, fg = yellow},
  -- lspsaga
  {"TargetWord", bg = bg0, fg = purple},
  -- flutter-tools.nvim
  {"FlutterCloseTag", bg = bg0, fg = gary2},
  {"FlutterToolsOutlinevertical", bg = bg0, fg = green},
  {"FlutterToolsOutlinemiddle", bg = bg0, fg = green},
  {"FlutterToolsOutlinemiddlehorizontal", bg = bg0, fg = green},
  {"FlutterToolsOutlinebottom", bg = bg0, fg = green},
  -- Telescope
  {"TelescopeSelection", bg = dark2, fg = white},
}

hybird['li'] = {
  -- Diff
  {"DiffAdd", "GitAdd"},
  {"DiffChange", "GitChange"},
  {"DiffDelete", "GitDelete"},
  -- barbar.nvim
  {"BufferCurrentIndex", "BufferCurrent"},
  {"BufferCurrentMod", "BufferCurrent"},
  {"BufferCurrentSign", "BufferCurrent"},
  {"BufferCurrentTarget", "BufferCurrent"},
  {"BufferVisible", "BufferInactive"},
  {"BufferVisibleIndex", "BufferInactive"},
  {"BufferVisibleMod", "BufferInactive"},
  {"BufferVisibleSign", "BufferInactive"},
  {"BufferVisibleTarget", "BufferInactive"},
  {"BufferInactive", "BufferInactive"},
  {"BufferInactiveMod", "BufferInactive"},
  {"BufferInactiveSign", "BufferInactive"},
  {"BufferInactiveIndex", "BufferInactive"},
  {"BufferInactiveTarget", "BufferInactive"},
  {"BufferTabpageFill", "Normal"},
  {"BufferTabpages", "Normal"},
  -- lspconfig
  {"LspDiagnosticsSignError", "ErrorSign"},
  {"LspDiagnosticsVirtualTextInformationError", "ErrorVirtualText"},
  {"LspDiagnosticsFloatingError", "ErrorFloating"},
  {"LspDiagnosticsUnderlineError", "ErrorUnderline"},
  {"LspDiagnosticsSignWarning", "WarningSign"},
  {"LspDiagnosticsVirtualTextInformationWarning", "WarningVirtualText"},
  {"LspDiagnosticsFloatingWarning", "WarningFloating"},
  {"LspDiagnosticsUnderlineWarning", "WarningUnderline"},
  {"LspDiagnosticsSignHint", "HintSign"},
  {"LspDiagnosticsVirtualTextInformationHint", "HintVirtualText"},
  {"LspDiagnosticsFloatingHint", "HintFloating"},
  {"LspDiagnosticsUnderlineHint", "HintUnderline"},
  {"LspDiagnosticsSignInformation", "InformationSign"},
  {"LspDiagnosticsVirtualTextInformationInformation", "InformationVirtualText"},
  {"LspDiagnosticsFloatingInformation", "InformationFloating"},
  {"LspDiagnosticsUnderlineInformation", "InformationUnderline"},
  -- gitgutter
  {"GitGutterAdd", "GitAdd"},
  {"GitGutterChange", "GitChange"},
  {"GitGutterDelete", "GitDelete"},
  -- coc-git
  {"CocGitSign", "GitAdd"},
  {"CocGitChangedSign", "GitChange"},
  {"CocGitChangeRemoveSign", "GitChange"},
  {"CocGitRemoveSign", "GitDelete"},
  {"CocGitTopRemoveSign", "GitDelete"},
  -- nvim-treesitter
  {"TSCharacter", "Character"},
  {"TSNumber", "Number"},
  {"TSString", "String"},
  {"TSFloat", "Float"},
  -- coc.nvim
  {"CocErrorSign", "ErrorSign"},
  {"CocWarningSign", "WarningSign"},
  {"CocInformationSign", "InformationSign"},
  {"CocHintSign", "HintSign"},
  -- vim-translator
  {"TranslatorBorder", "Normal"},
  -- flutter-tools.nvim
  {"FlutterToolsOutlinemiddle", "FlutterToolsOutlinevertical"},
  {"FlutterToolsOutlinemiddlehorizontal", "FlutterToolsOutlinevertical"},
  {"FlutterToolsOutlinebottom", "FlutterToolsOutlinevertical"}
}

hybird["sign"] = {
  {"LspDiagnosticsSignError",       text = " ▊", hl = "LspDiagnosticsSignError", nhl = "LspDiagnosticsSignError"},
  {"LspDiagnosticsSignWarning",     text = " ▊", hl = "LspDiagnosticsSignError", nhl = "LspDiagnosticsSignError"},
  {"LspDiagnosticsSignHint",        text = " ▊", hl = "LspDiagnosticsSignError", nhl = "LspDiagnosticsSignError"},
  {"LspDiagnosticsSignInformation", text = " ▊", hl = "LspDiagnosticsSignError", nhl = "LspDiagnosticsSignError"},
  {"GitSignsAdd",                   text = "▊", hl = "GitAdd"},
  {"GitSignsChange",                text = "▊", hl = "GitChange"},
  {"GitSignsDelete",                text = "▊", hl = "GitDelete"},
  {"GitSignsTopDelete",             text = "▊", hl = "GitDelete"},
  {"GitSignsChangeDelete",          text = "▊", hl = "GitDelete"}
}


function hybird:load_hi_group()
  for _, v in ipairs(self['hi']) do
    local command = "hi! " .. v[1] .. " "
    if v['bg'] ~= nil then
      command = command .. "guibg=" .. v['bg'] .. " "
    end
    if v['fg'] ~= nil then
      command = command .. "guifg=" .. v['fg'] .. " "
    end
    if v['style'] ~= nil then
      command = command .. "gui=" .. v['style'] .. " "
    end
    vim.cmd(command)
  end
end

function hybird:load_li_group()
  for _, v in ipairs(self['li']) do
    local command = 'hi! link ' .. v[1] .. " ".. v[2]
    vim.cmd(command)
  end
end

function hybird:load_sign_group()
  for _, v in ipairs(self['sign']) do
    local t = {}
    if v['text']~= nil then
      t['text'] = v['text']
    end
    if v['hl']~= nil then
      t['texthl'] = v['hl']
    end
    if v['nhl']~= nil then
      t['numhl'] = v['nhl']
    end
    fn['sign_define'](v[1], t)
  end
end
local async

async = vim.loop.new_async(vim.schedule_wrap(function ()
  hybird:load_hi_group()
  hybird:load_li_group()
  hybird:load_sign_group()
  async:close()
end))

function hybird.config()
  vim.g.colors_name = "nvim-hybrid"
  vim.cmd("highlight clear")
  vim.o.termguicolors = true
  if fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.g.gitgutter_sign_added = "▊"
  vim.g.gitgutter_sign_modified = "▊"
  vim.g.gitgutter_sign_removed = "▊"
  vim.g.gitgutter_sign_removed_first_line = "▊"
  vim.g.gitgutter_sign_removed_above_and_below = "▊"
  async:send()
end

return hybird
