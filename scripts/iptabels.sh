#!/bin/sh 
# 
# Autor: Farid Mesbahi 
# Version: 0.2 
# Beschreibung: Dieses Skript setzt die Firewall-Regeln 
# fuer einen Arbeitsplatzrechner
# Laden notwendiger Kernel-Module 
#01# 
modprobe ip_conntrack_ftp

# Loeschen aller vorhandenen Regeln und selbst 
# definierten Ketten 
#02#
iptables -F iptables -X

# Regeln (Policy) zum Verwerfen aller nicht 
# akzeptierten Pakete 
#03# 
iptables -P INPUT DROP iptables -P OUTPUT DROP iptables -P FORWARD DROP

# Regel fuer das Erlauben des internen 
# (INPUT) Verkehres 
#04#
iptables -A INPUT -i lo -j ACCEPT

# Regel zum Verwerfen eingehender nicht 
# konfomer Datenpakete 
#05# 
iptables -A INPUT -i eth0 -p ALL -m state --state ==> ==> INVALID -j DROP

# Regel zum Akzeptieren eingehender Datenpakete aus 
# selbstinitierten Verbindungen 
#06# 
iptables -A INPUT -i eth0 -m state --state ==> ==> ESTABLISHED,RELATED -j ACCEPT

# Regel fuer das Erlauben des internen (OUTPUT) 
# Verkehres 
#07#
 iptables -A OUTPUT -o lo -j ACCEPT

# Regel zum Akzeptieren neuer ausgehender 
# Verbindungen 
#08# 
iptables -A OUTPUT -o eth0 -m state --state NEW -j ACCEPT

# Regel zum Weiterfuehren selbstinitiierter 
# Verbindungen 
#09# 
iptables -A OUTPUT -o eth0 -m state --state ==> ==> ESTABLISHED,RELATED -j ACCEPT
