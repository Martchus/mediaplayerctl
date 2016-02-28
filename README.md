# Media player control
Bash script to control media player applications using qdbus.

## OpenBox configuration
```
<keybind key="XF86AudioPlay">
  <action name="Execute">
    <startupnotify>
      <enabled>true</enabled>
      <name>Audio play</name>
    </startupnotify>
    <command>mediaplayerctl PlayPause</command>
  </action>
</keybind>
<keybind key="XF86AudioStop">
  <action name="Execute">
    <startupnotify>
      <enabled>true</enabled>
      <name>Audio play</name>
    </startupnotify>
    <command>mediaplayerctl Stop</command>
  </action>
</keybind>
<keybind key="XF86AudioNext">
  <action name="Execute">
    <startupnotify>
      <enabled>true</enabled>
      <name>Audio play</name>
    </startupnotify>
    <command>mediaplayerctl Next</command>
  </action>
</keybind>
<keybind key="XF86AudioPrev">
  <action name="Execute">
    <startupnotify>
      <enabled>true</enabled>
      <name>Audio play</name>
    </startupnotify>
    <command>mediaplayerctl Previous</command>
  </action>
</keybind>
```

## KDE configuration
Simply import mediaplayerctl.khotkeys via system settings.

(KDE supports controlling media player applications. However, the lastest
versions of Plasma/Spotify doesn't work for me. This script can be
used as a workaround.)

## Requirements
qdbus is required to run the script.
The repository PKGBUILDs (also on my GitHub page) contains files for building an Arch Linux package.
