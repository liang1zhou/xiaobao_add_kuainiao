#!/bin/sh

cd /tmp
echo "Start download install package..."
wget --no-check-certificate --tries=1 --timeout=15 https://www.xueqianduan.cn/soft/kn.tar.gz -O kn.tar.gz
echo "Installing..."
tar -zxf kn.tar.gz
chmod a+x /tmp/kn/install.sh
sh /tmp/kn/install.sh
rm -rf /tmp/install_kuainiao.sh >/dev/null 2>&1
echo "Kuainiao install success!"
echo "Use Kuainiao ,The browser to access:http://192.168.1.1/Module_kuainiao.asp"
cd /koolshare/res
wget --no-check-certificate --tries=1 --timeout=15 https://raw.githubusercontent.com/wangchll/xiaobao_add_kuainiao/master/software_center.png -O software_center.png
wget --no-check-certificate --tries=1 --timeout=15 https://raw.githubusercontent.com/wangchll/xiaobao_add_kuainiao/master/Softerware_center.css -O Softerware_center.css
cd /koolshare/webs
wget --no-check-certificate --tries=1 --timeout=15 https://raw.githubusercontent.com/wangchll/xiaobao_add_kuainiao/master/Main_Soft_center.asp -O Main_Soft_center.asp
echo "All Done~"
