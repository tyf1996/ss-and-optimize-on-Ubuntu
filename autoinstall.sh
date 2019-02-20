#This is a auto script to set up shadowsocks and some optimize.
apt-get update
apt-get install python-pip
pip install shadowsocks
touch /etc/shadowsocks.json
echo -e {\\n\\t'"server":"0.0.0.0",'\\n\\t'"local_address":"127.0.0.1",'\\n\\t'"local_port":1080,'\\n\\t'"port_password":{'\\n\\t\\t'"15677" : "hello!@#",'\\n\\t\\t'"15676" : "hello!@#",'\\n\\t\\t'"15675" : "hello!@#",'\\n\\t\\t'"15674" : "hello!@#",'\\n\\t\\t'"15673" : "hello!@#"'\\n\\t'},'\\n\\t'"timeout":150,'\\n\\t'"method":"rc4-md5",'\\n\\t'"fast_open": true'\\n} > /etc/shadowsocks.json
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh
