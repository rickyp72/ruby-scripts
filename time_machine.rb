

mac_os_x_userdefaults "enable time machine on NAS" do
  domain "com.apple.systempreferences"
  key "TMShowUnsupportedNetworkVolumes"
  value "1"
end
