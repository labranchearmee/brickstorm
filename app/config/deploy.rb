set :application, "Site"
set :domain,      "ssh.cluster003.ovh.net"
set :deploy_to,   "/homez.307/amndrc/www/__brickstorm/Site"

set :user,        "amndrc"
set :use_sudo,    false

set :repository,       "/Users/myskreen10/Sites/brickstorm/Site"
set :deploy_via,       :copy
set :copy_strategy,    :export
set :copy_cache,       "/tmp/#{application}"
set :copy_exclude,     [".git/*"]
set :copy_compression, :gzip

#set :repository,  "git@github.com:brickstorm/brickstorm.git"
set :scm,         :git
#set :branch,      "master"
#set :deploy_via,  :rsync_with_remote_cache
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, `subversion` or `none`

role  :web,           domain
role  :app,           domain
role  :db,            domain, :primary => true

set  :keep_releases,  3

# directories that will be shared between all deployments
#set :shared_children,     [app_path + "/logs", web_path + "/uploads", "vendor"]

# share our database configuration
set :shared_files,      ["app/config/parameters.yml"]

#set :update_vendors, true

set :php_bin, "php.ORIG.5.3.2"