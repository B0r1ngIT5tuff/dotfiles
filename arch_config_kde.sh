#/bin/bash

# Synchronizes the AUR repos and checks for updates
sudo pacman -Syy && sudo pacman -Syu

# Packages for my workflow & other stuff
$res=""
echo "Do you want to have the plasma session with X11 or Wayland?"
read res

if test $res=="X11" 
then
    sudo pacman -S plasma-desktop xorg qt6-base xf86-video-amdgpu sddm kmix dolphin pipewire pipewire-pulse pipewire-media-session powerdevil gstreamer phonon-qt5-gstreamer gst-plugins-good gst-libav sddm-kcm kcm-wacomtablet akonadi brave kdeconnect 
else
    sudo pacman -S plasma-desktop plasma-wayland-session xwayland qt6-wayland xf86-video-amdgpu sddm kmix dolphin pipewire pipewire-pulse pipewire-media-session powerdevil gstreamer phonon-qt5-gstreamer gst-plugins-good gst-libav sddm-kcm kcm-wacomtablet akonadi brave kdeconnect kwin-lowlatency
fi