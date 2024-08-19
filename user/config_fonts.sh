if grep -qi 'ubuntu' /etc/os-release; then
mkdir -p ~/.config/fontconfig/conf.d/
cat << 'EOF' >> ~/.config/fontconfig/conf.d/10-nix-fonts.conf
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
  <dir>~/.nix-profile/share/fonts/</dir>
</fontconfig>
EOF
fi
