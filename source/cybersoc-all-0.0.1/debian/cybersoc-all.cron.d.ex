#
# Regular cron jobs for the cybersoc-all package
#
0 4	* * *	root	[ -x /usr/bin/cybersoc-all_maintenance ] && /usr/bin/cybersoc-all_maintenance
