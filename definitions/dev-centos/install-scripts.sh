sudo -u vagrant mkdir scripts
#rbenvスクリプトの生成
echo <<EOL >> scripts/rbenv.sh
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="\$HOME/.rbenv/bin:\$PATH"' >> ~/.bash_profile
echo 'eval "\$(rbenv init -)"' >> ~/.bash_profile
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
source ~/.bash_profile
rbenv install 1.9.3-p327
rbenv rehash
EOL

# pythonzスクリプトの生成
echo <<EOL >> scripts/pythonz.sh
curl -kL https://raw.github.com/saghul/pythonz/master/pythonz-install | bash
echo '[[ -s \$HOME/.pythonz/etc/bashrc ]] && source \$HOME/.pythonz/etc/bashrc' >> ~/.bashrc
echo 'export PATH=\$HOME/.pythonz/pythons/CPython-2.7.3/bin:\$PATH' >> ~/.bashrc
source ~/.bashrc
pythonz install 2.7.3
curl http://peak.telecommunity.com/dist/ez_setup.py | python
easy_install pip
pip install mercurial
EOL

chmod vagrant. scripts/*.sh
