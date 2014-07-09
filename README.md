# Positive

Trying out the whole Rails API + Yeoman/Angular interaction. The entire Angular app is in `/frontend`.

Starting:

    $ cd frontend
    $ npm install
    $ bower install
    $ cd ..
    $ rake db:setup
    $ foreman start # Starts Rails at port 3000 and Angular at port 9000.

Start using tmux:

    $ sh ./tmux.sh # Starts Grunt and Rails in different processes.
