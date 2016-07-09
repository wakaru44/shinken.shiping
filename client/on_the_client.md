#Notes

Now, on the machine, you need to

Install the snmp daemon

    sudo apt-get install -y snmpd

on the file

    sudo nano /etc/snmp/snmpd.conf

comment 

    #agentAddress  udp:127.0.0.1:161

and uncomment

    agentAddress udp:161,udp6:[::1]:161

TODO: how the hell do you comment and uncomment with ansible? with fabric was easy...

configure a password, the same one you have configured in the server. on the line

     rocommunity P@ssw0rd  default    -V systemonly


now restart snmpd

    sudo service snmpd restart

And hope for the best. the host should appear now

# Issues

- SNMP daemon, has some issues with virtuozo. en el VPS jenkins no chuta
