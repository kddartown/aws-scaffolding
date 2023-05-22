#!/bin/sh
#
# dnsmadeeasy-update.sh
#
# This script updates Dynamic DNS records on DNE Made Easy's
# DNS servers. You must have wget installed for this to work.
#
# This script is released as public domain in hope that it will
# be useful to others using DNS Made Easy. It is provided
# as-is with no warranty implied. Sending passwords as a part
# of an HTTP request is inherently insecure. I take no responsibility
# if your password is discovered by use of this script.
#

# This is the e-mail address that you use to login
DMEUSER= #refer to teampass for dnsmadeeasy login details
# This is your password
DMEPASS= #refer to teampass for dnsmadeeasy login details

# This is the unique number for the record that you are updating.
# This number can be obtained by clicking on the DDNS link for the
# record that you wish to update; the number for the record is listed
# on the next page.

# Main Page (www)
DMEID= #fillmein

# Obtain current ip address
IPADDR=$(curl -s  http://checkip.amazonaws.com)

if wget -q -O /proc/self/fd/1 "https://cp.dnsmadeeasy.com/servlet/updateip?username=$DMEUSER&password=$DMEPASS&id=$DMEID&ip=$IPADDR" | grep success > /dev/null; then
	logger -t DNS-Made-Easy -s "DNS Record Updated Successfully"
else
	logger -t DNS-Made-Easy -s "Problem updating DNS record."
fi

# Traefik
DMEID= #fillmein

IPADDR=$(curl -s  http://checkip.amazonaws.com)

if wget -q -O /proc/self/fd/1 "https://cp.dnsmadeeasy.com/servlet/updateip?username=$DMEUSER&password=$DMEPASS&id=$DMEID&ip=$IPADDR" | grep success > /dev/null; then
	logger -t DNS-Made-Easy -s "DNS Record Updated Successfully"
else
	logger -t DNS-Made-Easy -s "Problem updating DNS record."
fi

# Portainer
DMEID= #fillmein

IPADDR=$(curl -s  http://checkip.amazonaws.com)

if wget -q -O /proc/self/fd/1 "https://cp.dnsmadeeasy.com/servlet/updateip?username=$DMEUSER&password=$DMEPASS&id=$DMEID&ip=$IPADDR" | grep success > /dev/null; then
	logger -t DNS-Made-Easy -s "DNS Record Updated Successfully"
else
	logger -t DNS-Made-Easy -s "Problem updating DNS record."
fi