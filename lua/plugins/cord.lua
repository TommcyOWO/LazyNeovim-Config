require('cord').setup {
  usercmds = true,                              -- 啟用用戶命令
  log_level = 'trace',                              -- 設置日誌級別，可以是 'trace', 'debug', 'info', 'warn', 'error', 'off' 中的一個
  timer = {
    interval = 1500,                            -- 更新狀態的時間間隔，以毫秒為單位（最小值500）
    reset_on_idle = false,                      -- 在空閒時重置開始時間戳
    reset_on_change = false,                    -- 在狀態變化時重置開始時間戳
  },
  editor = {
    image = nil,                                -- 如果提供了自定義客戶端ID，這裡可以設置圖片ID或URL
    client = 'neovim',                          -- 編輯器客戶端，可以是 'vim', 'neovim', 'lunarvim', 'nvchad', 'astronvim' 或你的應用程序的客戶端ID
    tooltip = 'The Superior Text Editor',       -- 當鼠標懸停在編輯器圖像上時顯示的文本
  },
  display = {
    show_time = true,                           -- 顯示開始時間戳
    show_repository = true,                     -- 顯示 "View repository" 按鈕，鏈接到倉庫URL（如果有的話）
    show_cursor_position = false,               -- 顯示光標位置的行號和列號
    swap_fields = false,                        -- 如果啟用，工作區首先顯示
    swap_icons = false,                         -- 如果啟用，編輯器圖標顯示在主圖像上
    workspace_blacklist = {},                   -- 要隱藏的工作區名稱列表
  },
  lsp = {
    show_problem_count = false,                 -- 顯示診斷問題的數量
    severity = 1,                               -- 1 = 錯誤, 2 = 警告, 3 = 信息, 4 = 提示
    scope = 'workspace',                        -- 作用範圍，可以是 'buffer' 或 'workspace'
  },
  idle = {
    enable = true,                              -- 啟用空閒狀態
    show_status = true,                         -- 顯示空閒狀態，禁用以在空閒時隱藏豐富狀態
    timeout = 1800000,                          -- 空閒狀態的超時時間，以毫秒為單位，0表示立即顯示
    disable_on_focus = true,                    -- 當Neovim獲得焦點時不顯示空閒狀態
    text = 'Idle',                              -- 空閒時顯示的文本
    tooltip = '💤',                             -- 當鼠標懸停在空閒圖像上時顯示的文本
  },
  text = {
    viewing = 'Viewing {}',                     -- 查看只讀文件時顯示的文本
    editing = 'Editing {}',                     -- 編輯文件時顯示的文本
    file_browser = 'Browsing files in {}',      -- 瀏覽文件時顯示的文本（空字符串表示禁用）
    plugin_manager = 'Managing plugins in {}',  -- 管理插件時顯示的文本（空字符串表示禁用）
    lsp_manager = 'Configuring LSP in {}',      -- 配置LSP服務器時顯示的文本（空字符串表示禁用）
    vcs = 'Committing changes in {}',           -- 使用Git或相關插件時顯示的文本（空字符串表示禁用）
    workspace = 'In {}',                        -- 在工作區時顯示的文本（空字符串表示禁用）
  },
  buttons = {
    {
      label = 'View Repository',                -- 按鈕上顯示的文本
      url = 'git',                              -- 按鈕鏈接的URL（'git' = 自動獲取Git倉庫URL）
    },
    -- {
    --   label = 'View Plugin',
    --   url = 'https://github.com/vyfor/cord.nvim',
    -- }
  },
  assets = nil,                                 -- 自定義文件圖標，詳見wiki*
  -- assets = {
  --   lazy = {                                 -- Vim文件類型或文件名或文件擴展名 = 表或字符串
  --     name = 'Lazy',                         -- 圖標名稱的可選覆蓋，對於語言類型是多餘的
  --     icon = 'https://example.com/lazy.png', -- Rich Presence 資產名稱或URL
  --     tooltip = 'lazy.nvim',                 -- 當鼠標懸停在圖標上時顯示的文本
  --     type = 2,                              -- 0 = 語言, 1 = 文件瀏覽器, 2 = 插件管理器, 3 = lsp管理器, 4 = vcs；默認為語言
  --   },
  --   ['Cargo.toml'] = 'crates',
  -- },
}

