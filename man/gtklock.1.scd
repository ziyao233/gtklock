gtklock(1)

# NAME

gtklock - GTK-based lockscreen for Wayland

# SYNOPSIS

gtklock [options...]

# OPTIONS

*-h, --help*
	Show help options

*--help-config*
	Show options available in the config.
	See *CONFIGURATION*.

*-d, --daemonize*
	Detach from controlling terminal.

*-c, --config* <path>
	Specify config file to use. By default, the following paths are checked
	in the following order: $XDG_CONFIG_HOME/gtklock/config.ini and
	gtklock/config.ini under each directory in $XDG_CONFIG_DIRS.

# CONFIGURATION

Configuration is stored in glib key file format. Options are specified as
name=value and can be used from the command-line as --name=value. All options
should be under the main group.

All available options are:

*-g, --gtk-theme* <string>
	Set the GTK theme.

*-s, --style* <path>
	Load CSS style file.

*-m, --module* <path>
	Load gtklock module.

*-b, --background* <path>
	Load background. Specified background can be overwritten by CSS.

*-t, --time-format* <string>
	Set time format. See date(1).

*-H, --idle-hide*
	Hide input form when idle.

*-T, --idle-timeout* <int>
	Idle timeout in seconds.

*-S, --start-hidden*
	Start with input form hidden.

# EXAMPLE

Example config:

```
[main]
gtk-theme=Adwaita-dark
```

Example style:

```
window {
   background-image: url("background.png");
   background-size: cover;
   background-repeat: no-repeat;
   background-position: center;
   background-color: black;
}
```

# AUTHORS

Maintained by Jovan Lanik <jox969@gmail.com>, who is assisted by other
contributors. For more information about gtklock development,
see <https://github.com/jovanlanik/gtklock>.
