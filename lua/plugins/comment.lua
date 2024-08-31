local comment_status_ok, comment = pcall(require,"Comment")
 if not comment_status_ok then
    vim.notify("Comment loading failure")
 end

comment.setup()
-- gcc : 行注释当前行
-- gbc : 使用块级别注释来注释掉当前行
-- ngcc : 使用行级别注释来注释掉当前行往后的几行数据
-- ngbc ： 使用块级别的注释来注释代码行往后的几行数据
-- gcc，gbc [countgcc] [count]gbc gc[count][motion] gb[count][motion]
-- motion自带的w , ( , s ,g，W,e,E,b，B
-- gc2w 注释掉最近的两个单词
