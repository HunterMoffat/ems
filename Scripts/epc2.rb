require 'fileutils'
file = File.open("/etc/systemd/network/98-nextepc.netdev", 'w+')
File.write(file, "[NetDev]
                Name=pgwtun
                Kind=tun
                ")
system("cd Snow/Scripts && sudo cp 98-nextepc.netdev /etc/systemd/network/")