{ config, ... }:

{
  # systemd.services.disableTouchscreen = {
  #   script = ''
  #     echo 0018:04F3:2BB0.0004 > /sys/bus/hid/drivers/hid-multitouch/unbind
  #   '';
  #   wantedBy = [ "multi-user.target" ];
  # };
}