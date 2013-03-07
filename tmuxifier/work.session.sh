# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/devel/cms_dev/src"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "work"; then
  med db ensure
  find ./ -name "*.pyc" -delete

  # Create a new window inline within session layout definition.
  load_window "work-vim"
  load_window "work-shell"
  load_window "work-python"
  load_window "work-rs"

#  new_window "vim"
#	run_cmd "/Applications/MacVim.app/Contents/MacOS/Vim"     # runs in active pane
#	split_h 30
#	run_cmd "med sv"
#	run_cmd "workon work"
#	select_pane 0
#  new_window "shell"
#	run_cmd "med sv"
#	run_cmd "workon work"
#  new_window "python"
#	run_cmd "med sv"
#	run_cmd "workon work"
#	run_cmd "med d shell"
#  new_window "runserver"
#  	run_cmd "source ~/devel/cms_dev/bin/activate"
#	run_cmd "workon work"
#	run_cmd "med rs"

  # Select the default active window on session creation.
  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
