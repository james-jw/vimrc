mkdir autoload
mkdir bundle
cd autoload
wget -nv -N https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim --no-check-certificate
cd ..
wget -nv -N https://raw.githubusercontent.com/james-jw/vim/master/vimrc --no-check-certificate
wget -nv -N https://bitbucket.org/ns9tks/vim-autocomplpop/get/tip.zip --no-check-certificate
unzip tip.zip -d bundle/autocomplete.vim
rm tip.zip

git clone --depth=1 git@github.com:tpope/vim-surround.git bundle/vim-surround.vim
git clone --depth=1 git@github.com:james-jw/vim-xquery-syntax.git bundle/xquery-syntax.vim
git clone --depth=1 git@github.com:Townk/vim-autoclose.git bundle/autoclose.vim
git clone --depth=1 git@github.com:bling/vim-airline bundle/airline.vim
git clone --depth=1 git@github.com:vim-scripts/closetag.vim.git bundle/closetag.vim
git clone --depth=1 git@github.com:scrooloose/nerdtree.git bundle/nerdtree.vim
git clone --depth=1 git@github.com:tpope/vim-fugitive.git bundle/fugitive.vim
git clone --depth=1 git@github.com:kien/ctrlp.vim.git bundle/ctrlp.vim
git clone --depth=1 git@github.com:james-jw/xqueryvim.git bundle/xqueryvim.vim
git clone --depth=1 git@github.com:Valloric/YouCompleteMe.git bundle/YouCompleteMe.vim
git clone --depth=1 git@github.com:aquach/vim-http-client.git bundle/http-client.vim

cd bundle/YouCompleteMe.vim/
bash ./install.sh --omnisharp-completer


printf 'Vim configuration complete!'
