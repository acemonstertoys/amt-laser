## README

## How to deploy changes

    ssh -p 44160 <user>@space.acemonstertoys.org
    sudo su - laser
    cd public_html/log/
    git pull origin master

If making changes to database

    RAILS_ENV=production rake db:migrate

If making changes to assets

    rm -fr public/~laser/
    RAILS_ENV=production assets:precompile

Restart server
    
    rake stop
    RAILS_ENV=production rails s -d
