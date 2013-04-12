#
# Cookbook Name:: aliases
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# Alias `l` 
magic_shell_alias 'l' do
  command 'ls -F '
end

# Alias `ls` 
magic_shell_alias 'll' do
  command 'ls -F -lh '
end

# Alias `la` 
magic_shell_alias 'la' do
  command 'ls -F -a '
end

# Alias `lla` 
magic_shell_alias 'lla' do
  command 'ls -F -lh -a '
end

# Alias `..` 
magic_shell_alias '..' do
  command 'cd .. '
end

# Set Vim as the default editor
magic_shell_environment 'EDITOR' do
  value 'vim'
end
