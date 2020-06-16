这是一个主要针对前端的nvim配置，主要用于编写html，css，js ,我也添加了对C, C++, Java, Python, Go，bash的支持，现阶段主要针对前端开发



### 要求

`neovim` >= 0.3.1 is required.

`vim` >= 8.0.1453 is required.

Use command `:version` or `$ vim --version` to checkout your vim version.

### 安装


neovim的本地配置主页是~/.config/nvim如果您没有这个目录，可以在安装后手动添加它。关于neovim的另一件事是，您将发现您没有neovim的配置文件，因此$cd~/.config/nvim&&nvim init.vim和init.vim是您的neovim的配置文件，如.vimrc。只需将.vimrc复制到~/.config/nvim或mv.vimrc init.vim中。


当您将vim的配置文件复制到~/.config/nvim中时，您需要再次安装PluginInstall。如果忘记了如何安装插件，可以看到他的[github](https://github.com/junegunn/vim-plug)

只需将此文件复制到您的nvim路径`~/.config/nvim`并且在您的init.vim下运行`: PlugInstall`，插件将会自动加载，针对coc您可能在使用c、c++时缺少依赖，您可以参考这个[文件](https://github.com/neoclide/coc.nvim)，这是一个官方文件有更多的细节。

必要时安装nodejs和pyneovim
