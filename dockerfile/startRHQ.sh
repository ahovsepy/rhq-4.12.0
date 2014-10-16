su -l postgres -c " pg_ctl -l server.log -w stop; pg_ctl -l server.log -w start; "
echo "Waiting 30s for DB to startup"
sleep 30s
su root -c '/opt/rhq-server-4.12.0/bin/rhqctl start'

