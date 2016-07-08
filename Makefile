help:
	@echo "shinken experiment"
	@echo "restart - restart shinken and snpmd"
	@echo "config  - verify the shinken config"
	@echo "connect - test a connection to snmp"

restart:
	/etc/init.d/shinken start; service snmpd restart

errors: 
	/usr/bin/shinken-arbiter -v -c /etc/shinken/shinken.cfg | grep ERR

config: 
	/usr/bin/shinken-arbiter -v -c /etc/shinken/shinken.cfg 

connect:
	/usr/lib/nagios/plugins/check_snmp -H kalinstance -o  .1.3.6.1.2.1.1.3.0  -C apachectl

archive:
	cd /var/log/shinken && mv *log archive
