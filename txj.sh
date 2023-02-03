#!/bin/sh

echo  '\033[36m ----------------- \033[0m'
echo  '\033[36m |-白羊科技-   | \033[0m'
echo  '\033[36m |-QQ201860506-| \033[0m'
echo  '\033[36m ----------------- \033[0m'


system_path=/private/var/mobile/Containers/Data/Application

app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "Root directory: $app_path"
delete_path=$app_path/Documents/tss_tmp
rm -rf $delete_path
echo -e '\033[35m path_tss  \033[0m'
sleep 0.6
delete_path=$app_path/Documents/tdm.db
rm -rf $delete_path
echo -e '\033[35m path_tdm  \033[0m'
sleep 0.6
delete_path=$app_path/Documents/tss_app_915c.dat
rm -rf $delete_path
echo -e '\033[35m path_tssa  \033[0m'
sleep 0.6
delete_path=$app_path/Documents/tss_cs_stat2.dat
rm -rf $delete_path
echo -e '\033[35m path_tsscs  \033[0m'
sleep 1
delete_path=$app_path/Documents/api.tpns.sh.tencent.com_IPXL3G6EADY4_xgvipiotprivateserialization.b
rm -rf $delete_path
echo -e '\033[35m path_tpns  \033[0m'
sleep 1
delete_path=$app_path/Documents/tss.i.m.dat
rm -rf $delete_path
echo -e '\033[35m path_tssim  \033[0m'
sleep 1
delete_path=$app_path/Documents/tersafe.update
rm -rf $delete_path
echo -e '\033[35m path_tersafe  \033[0m'
sleep 1
delete_path=$app_path/Documents/ShadowTrackerExtra/Saved/Logs
rm -rf $delete_path
echo -e '\033[35m path_logs  \033[0m'
sleep 1
delete_path=$app_path/Documents/ShadowTrackerExtra/Saved/Config
rm -rf $delete_path
echo -e '\033[35m path_config  \033[0m'
sleep 1
delete_path=$app_path/Library/Caches
rm -rf $delete_path
echo -e '\033[35m path_cache  \033[0m'
sleep 1
delete_path=$app_path/Library/'Saved Application State'
rm -rf $delete_path
echo -e '\033[35m path_state  \033[0m'
sleep 1
delete_path=$app_path/Library/MidasLog
rm -rf $delete_path
echo -e '\033[35m path_midaslog  \033[0m'

delete_path=$app_path/Library/WebKit
rm -rf $delete_path
echo -e '\033[35m path_webkit  \033[0m'

delete_path=$app_path/Library/Cookies
rm -rf $delete_path
echo -e '\033[35m path_cookies  \033[0m'

delete_path=$app_path/Library/'Application Support'
rm -rf $delete_path
echo -e '\033[35m path_asupport  \033[0m'

delete_path=$app_path/Library/APWsjGameConfInfo.plist
rm -rf $delete_path
echo -e '\033[35m path_plist  \033[0m'

delete_path=/private/var/gg_address
rm -rf $delete_path
echo -e '\033[35m path_gdress  \033[0m'

delete_path=$app_path/Documents/sp_default.plist
rm -rf $delete_path
echo -e '\033[35m path_daplist  \033[0m'

delete_path=$app_path/Library/'ts.records'
rm -rf $delete_path
echo -e '\033[35m path_tsr  \033[0m'

# de /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo -e '\033[35m path_ts  \033[0m'

echo "-----------"
#  echo -e '\033[36m正在将王者荣耀转64位中... \033[0m'
#  pm path com.tencent.tmgp.sgame|sed -E  's/(.*):(.*)/\2/'|xargs pm install -r --abi arm64-v8a

cp K /storage/emulated/0/Android/data/com.tencent.tmgp.sgame/files/
cd /storage/emulated/0/Android/data/com.tencent.tmgp.sgame/files/

echo -e '\033[31m 正在注入中... \033[0m'

sleep 2
mv K KernelMem.so

echo -e '\033[31m So.File moved successfully \033[0m'
sleep 2
cd /storage/emulated/0/
touch happy

echo -n "338dd45a4d79ba96"  > /storage/emulated/0/happy

echo -e '\033[31m 写入成功 \033[0m'

#----------监控

echo -e '\033[32m 开始监控文件 monitor... \033[0m'

cd /storage/emulated/0/
touch sys.m

echo -n '10bb9bd782a8ab04597c1fb08df3a045' > /storage/emulated/0/sys.m

md5_old=`cat sys.m`
md5_new=`md5sum happy |awk '{print $1}'`
#if [ $md5_old != $md5_new ];then
# echo "md5_old=$md5_old,md5_new=$md5_new"
#  echo "开始检测"
#  echo -n "338dd45a4d79ba96"  > /storage/emulated/0/happy
#  sleep 1
#  echo -e '\033[31m 一次循环完毕 \033[0m'
#fi

COUNTER=0
while [ $COUNTER -lt 50]
do
COUNTER=$((${COUNTER}+1))
sleep 3
echo  '\033[31m -------------- \033[0m'
echo "第 $COUNTER 次监控"
if [ $md5_old != $md5_new ];then
  
  echo -e '\033[34m 一次循环完毕 \033[0m'
  echo -n "338dd45a4d79ba96"  > /storage/emulated/0/happy
  sleep 1
  echo -n "338dd45a4d79ba96"  > /storage/emulated/0/happy



fi
sleep 2

done

echo -e '\033[34m \n已退出循环... \033[0m'
