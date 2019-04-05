[Unit]
Description=csports's distributed currency daemon
After=network.target

[Service]
User=csports
Group=csports

Type=forking
PIDFile=/var/lib/csportsd/csportsd.pid

ExecStart=/usr/bin/csportsd -daemon -pid=/var/lib/csportsd/csportsd.pid \
          -conf=/etc/csports/csports.conf -datadir=/var/lib/csportsd

ExecStop=-/usr/bin/csports-cli -conf=/etc/csports/csports.conf \
         -datadir=/var/lib/csportsd stop

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
