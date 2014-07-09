tmux new-session -d -s positive

tmux new-window -t positive:1 -n 'vim'
tmux select-window -t 1
tmux split-window -d -t 0 -h
tmux split-window -d -t 1 -v

tmux send-keys -t 0 'vim -O2 .' enter
tmux send-keys -t 1 'bundle install' enter
tmux send-keys -t 1 'bundle exec rails server' enter
tmux send-keys -t 2 'cd frontend ' enter
tmux send-keys -t 2 'grunt serve' enter

tmux select-pane -t 0
tmux resize-pane -R 60

tmux select-window -t 1

tmux attach

