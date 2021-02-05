local vim = vim
local api = vim.api
local fillchars = 'vert:|'
vim.o.fillchars = fillchars
vim.wo.fillchars = fillchars
vim.g.colors_name = 'nvim-hybrid'
vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then vim.cmd('syntax reset') end

vim.o.termguicolors=true
local bg0         = '#213039'
local bg1         = '#242B48'
local bg2         = '#343F4C'
local dark0       = '#374D51'
local dark1       = '#1e272e'
local white       = '#dff9fb'
local red         = '#ee5253'
local darkred     = '#b33939'
local green       = '#BBE67E'
local darkgreen   = '#218c74'
local purple      = '#D4BFFF'
local lightblue   = '#34ace0'
local blue        = '#227093'
local darkblue    = '#3B3B98'
local orange      = '#FEA47F'
local darkorange  = '#F97F51'
local lightyellow = '#f9ca24'
local yellow      = '#ffeaa7'
local darkyellow  = '#ffb142'
local gary1       = '#84817a'
local gary2       = '#747d8c'

local highlight_group = {
  -- default
  {group = 'Normal',                 bg=bg0, fg=yellow},
  -- Cursor
  {group = 'Cursor',                 bg=white, fg=darkblue},
  {group = 'lCursor',                bg=white, fg=darkblue},
  -- detail
  {group = 'MatchParen',             bg=bg0, fg=white, style='underline'},
  {group = 'CursorLine',             bg=bg2},
  {group = 'VertSplit',              bg=lightyellow, fg=bg0},
  {group = 'StatusLine',             bg=bg0, fg=bg0},
  {group = 'StatusLineNC',           bg=bg0, fg=bg0},
  -- LineNumber
  {group = 'Line',                   fg=white},
  {group = 'LineNr',                 fg=dark0},
  -- TabLine
  {group='TabLine',                  bg=bg1, fg=gary2, style='reverse'},
  {group='TabLineFill',              bg=gary2, fg=bg0},
  {group='TabLineSel',               bg=dark1, fg=white, style='bold'},
  -- Folder
  {group = 'Folded',                 bg=bg2, fg=green, styple='bold'},
  {group = 'FoldColumn',             bg=bg2, fg=green, styple='bold'},
  -- Sign
  {group = 'SignColumn',             bg=bg0},
  {group = 'EndOfBuffer',            fg=bg0},
  -- Git
  {group = 'GitAdd',                 fg=darkgreen},
  {group = 'GitDelete',              fg=darkred},
  {group = 'GitChange',              fg=blue},
  -- Lsp
  {group = 'ErrorSign',              bg=bg0, fg=red},
  {group = 'ErrorVirtualText',       fg=red, bg=bg0},
  {group = 'ErrorFloating',          fg=red, bg=bg0},
  {group = 'ErrorUnderline',         fg=red, bg=bg0},
  {group = 'WarningSign',            fg=darkorange, bg=bg0},
  {group = 'WarningVirtualText',     fg=darkorange, bg=bg0},
  {group = 'WarningFloating',        fg=darkorange, bg=bg0},
  {group = 'WarningUnderline',       fg=darkorange, bg=bg0},
  {group = 'HintSign',               fg=gary2, bg=bg0},
  {group = 'HintVirtualText',        fg=gary2,bg=bg0},
  {group = 'HintFloating',           fg=gary2,bg=bg0},
  {group = 'HintUnderline',          fg=gary2,bg=bg0},
  {group = 'InformationSign',        fg=darkyellow, bg=bg0},
  {group = 'InformationVirtualText', fg=darkyellow, bg=bg0},
  {group = 'InformationFloating',    fg=darkyellow, bg=bg0},
  {group = 'InformationUnderline',   fg=darkyellow, bg=bg0},
  -- syntax
  -- Contant
  {group = 'Character',              fg=purple},
  {group = 'Number',                 fg=orange},
  {group = 'String',                 fg=green},
  {group = 'Booleans',               fg=purple},
  {group = 'Float',                  fg=lightblue},
  -- Indentifier
  {group = 'Function',               fg=orange, style="bold"},
  -- Statement
  {group = 'Conditinal',             fg=orange},
  {group = 'Repeat',                 fg=orange, cfg=167},
  {group = 'Label',                  fg=orange},
  {group = 'Operator',               fg=lightblue, ctermfg=1},
  {group = 'Keyword',                fg=orange},
  {group = 'Exception',              fg=orange},
  -- PreProc
  {group = 'Include',                fg=lightblue},
  {group = 'Defind',                 fg=lightblue},
  {group = 'Marco',                  fg=lightblue},
  {group = 'PreCondit',              fg=lightblue},
  -- Type
  {group = 'StorageClass',           fg=lightblue},
  {group = 'Structure',              fg=lightblue},
  {group = 'Typedef',                fg=lightblue},
  -- Special
  {group = 'SpecialChar',            fg=lightblue},
  {group = 'Tag',                    fg=lightblue},
  {group = 'Delimiter',              fg=lightblue},
  {group = 'SpecialComment',         fg=lightblue},
  {group = 'Debug',                  fg=lightblue},
  -- nvim-tree
  {group = 'NvimTreeFolderName',     fg=yellow},
  {group = 'NvimTreeRootFolder',     fg=yellow},
  {group = 'NvimTreeSpecialFile',    fg=yellow},
  -- dashboard
  {group = 'dashboardHeader',        fg=yellow},
  {group = 'dashboardFooter',        fg=darkorange},
  {group = 'dashboardCenter',        fg=darkgreen},
  {group = 'dashboardShortCut',      fg=darkorange},
  -- Pmenu
  {group = 'Pmenu',                  bg=bg2},
  {group = 'PmenuSel',               bg=bg1, style='bold'},
  {group = 'PmenuSBar',              bg=bg2, fg=bg2},
  {group = 'PmenuThumb',             bg=gary1},
  -- Search
  {group = 'Search',                 fg=purple,bg=darkgreen},
  {group = 'MatchParen',             fg=white, bg=darkgreen},
  -- Visual
  {group = 'Visual',                 style='inverse'},
  {group = 'VisualNOS',              bg=gary1,},
  -- More
  {group='More',                     fg=lightblue},
  {group='MoreMsg',                  fg=lightblue},
  -- Mode
  {group='ModeMsg',                  fg=lightblue},
  {group='Statements',               fg="#40ffff"},
  -- nvim-bufferline
  {group='BufferLineFill',           bg=bg0, fg=white},
  -- lspsaga
  {group='LspSaga',                  bg=dark0, fg=yellow},
}
local link_group = {
  -- Diff
  {'DiffAdd',                                         'GitAdd'},
  {'DiffChange',                                      'GitChange'},
  {'DiffDelete',                                      'GitDelete'},
  -- barbar.nvim
  {'BufferTabpageFill',                               'Normal'},
  {'BufferTabpages',                                  'Normal'},
  -- lspconfig
  {'LspDiagnosticsSignError',                         'ErrorSign'},
  {'LspDiagnosticsVirtualTextInformationError',       'ErrorVirtualText'},
  {'LspDiagnosticsFloatingError',                     'ErrorFloating'},
  {'LspDiagnosticsUnderlineError',                    'ErrorUnderline'},
  {'LspDiagnosticsSignWarning',                       'WarningSign'},
  {'LspDiagnosticsVirtualTextInformationWarning',     'WarningVirtualText'},
  {'LspDiagnosticsFloatingWarning',                   'WarningFloating'},
  {'LspDiagnosticsUnderlineWarning',                  'WarningUnderline'},
  {'LspDiagnosticsSignHint',                          'HintSign'},
  {'LspDiagnosticsVirtualTextInformationHint',        'HintVirtualText'},
  {'LspDiagnosticsFloatingHint',                      'HintFloating'},
  {'LspDiagnosticsUnderlineHint',                     'HintUnderline'},
  {'LspDiagnosticsSignInformation',                   'InformationSign'},
  {'LspDiagnosticsVirtualTextInformationInformation', 'InformationVirtualText'},
  {'LspDiagnosticsFloatingInformation',               'InformationFloating'},
  {'LspDiagnosticsUnderlineInformation',              'InformationUnderline'},
  -- gitgutter
  {'GitGutterAdd',                                    'GitAdd'},
  {'GitGutterChange',                                 'GitChange'},
  {'GitGutterDelete',                                 'GitDelete'},
  -- coc-git
  {'CocGitSign',                                      'GitAdd'},
  {'CocGitChangedSign',                               'GitChange'},
  {'CocGitChangeRemoveSign',                          'GitChange'},
  {'CocGitRemoveSign',                                'GitDelete'},
  {'CocGitTopRemoveSign',                             'GitDelete'},
  -- nvim-treesitter
  {'TSCharacter',                                     'Character'},
  {'TSNumber',                                        'Number'},
  {'TSString',                                        'String'},
  {'TSFloat',                                         'Float'},
  -- LspSaga
  {'LspSagaAutoPreview',                     'LspSaga'},
  {'LspSagaBorderTitle',                     'LspSaga'},
  {'LspSagaCodeActionBorder',                'LspSaga'},
  {'LspSagaCodeActionContent',               'LspSaga'},
  {'LspSagaCodeActionTitle',                 'LspSaga'},
  {'LspSagaCodeActionTitleDefPreviewBorder', 'LspSaga'},
  {'LspSagaCodeActionTrucateLine',           'LspSaga'},
  {'LspSagaContent',                         'LspSaga'},
  {'LspSagaFinderSelection',                 'LspSaga'},
  {'LspSagaRenameBorder',                    'LspSaga'},
  {'LspSagaRenamePromptPrefix',              'LspSaga'},
  {'LspSagaLspFinderBorder',                 'LspSaga'},
}
local value_group = {
  {'gitgutter_sign_added', '▊'},
  {'gitgutter_sign_modified', '▊'},
  {'gitgutter_sign_modified_removed', '▊'},
  {'gitgutter_sign_removed', '▊'},
  {'gitgutter_sign_removed_above_and_below', '▊'},
  {'gitgutter_sign_removed_first_line', '▊'},
  {'gitgutter_map_keys', 0}
}

local Set_Color =  function(group)
  for _, value in pairs(group) do
    if value['bg'] == nil then
      value['bg'] = 'NONE'
    end
    if value['fg'] == nil then
      value['fg'] = 'NONE'
    end
    if value['style'] == nil and value['cfg'] == nil then
      vim.cmd('hi! ' .. value["group"] .. " guibg=" .. value['bg'] .. " guifg=" .. value['fg'])
    elseif value['style'] ~= nil and value['cfg'] == nil then
      vim.cmd('hi! ' .. value["group"] .. " guibg=" .. value['bg'] .. " guifg=" .. value['fg'] .. ' gui=' .. value['style'])
    elseif value['style'] == nil and value['cfg'] ~= nil then
      vim.cmd('hi! ' .. value["group"] .. " guibg=" .. value['bg'] .. " guifg=" .. value['fg'] .. ' ctermfg=' .. value['cfg'])
    else
      vim.cmd('hi! ' .. value["group"] .. " guibg=" .. value['bg'] .. " guifg=" .. value['fg'] .. ' gui=' .. value['style'] .. " ctermfg=" .. value['cfg'])
    end
  end
end
local Link_group = function(group)
  for _, value in pairs(group) do
    vim.cmd('hi! link ' .. value[1] .. " " .. value[2])
  end
end

local Set_g_value = function (group)
  for _, v in pairs(group) do
    vim.g[v[1]] = v[2]
  end
end
Set_g_value(value_group)
Set_Color(highlight_group)
Link_group(link_group)

-- Setting Lsp sign text
vim.fn['sign_define']('LspDiagnosticsSignError',{
  text=' ▊',
  texthl='LspDiagnosticsSignError',
  numhl='LspDiagnosticsSignError',
})
vim.fn['sign_define']('LspDiagnosticsSignWarning', {
  text=' ▊',
  texthl='LspDiagnosticsSignWarning',
  numhl='LspDiagnosticsSignWarning',
})
vim.fn['sign_define']('LspDiagnosticsSignHint', {
  text=' ▊',
  texthl='LspDiagnosticsSignHint',
  numhl='LspDiagnosticsSignHint',
})
vim.fn['sign_define']('LspDiagnosticsSignInformation', {
  text=' ▊',
  texthl='LspDiagnosticsSignInformation',
  numhl='LspDiagnosticsSignInformation',
})

