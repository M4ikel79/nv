" tests/minimal_init.vim
" Minimal Neovim configuration for running tests

set rtp+=.
set rtp+=~/.local/share/nvim/site/pack/plenary/start/plenary.nvim

" Set up some basic Neovim configuration
set noswapfile
set hidden

" Ensure Lua can find our modules
lua << LUA
  package.path = package.path .. ";./lua/?.lua;./lua/?/init.lua"
  
  -- Mock vim.fn.stdpath for tests
  if not vim.fn.stdpath then
    vim.fn.stdpath = function(what)
      return "/tmp/nvim-test-" .. what
    end
  end
  
  -- Mock vim.uv if not available
  if not vim.uv then
    vim.uv = vim.loop or {}
  end
LUA

runtime! plugin/plenary.vim