#This is used for create blog with change log
#$1 is the url of update package, 
#like this:http://u.ancode.org/static/downloads/bacon/anrom-6.0-20160726-bacon-NIGHTLY.zip
#$2 is the path of the change log file

echo $1 
echo $2
CHANGE_LOG=$2 #path of change log
HEXO_DIR='/home/jinwh/rom_os' #path of your HEXO
POSTS_DIR=$HEXO_DIR'/source/_posts' 

echo $CHANGE_LOG
device=`echo $1 | cut -d \/ -f 6`
zip_name=`echo $1 | cut -d \/ -f 7`
url=$1
echo 'device: '$device
echo 'zipname: '$zip_name
echo 'url: '$url
#device=`awk 'NR==1{print $1}' $CHANGE_LOG`
#zip_name=`awk 'NR==2{print $1}' $CHANGE_LOG`
#url=`awk 'NR==3{print $1}' $CHANGE_LOG`
date=`date '+%Y-%m-%d %H:%M:%S'`
echo $date
BLOG=$POSTS_DIR/$zip_name'.md'
echo $BLOG

#begin to write blog
echo '---' >> $BLOG
echo 'title: '$zip_name >> $BLOG
echo 'category: anrom' >> $BLOG
echo 'tags:' >> $BLOG
echo '	- anrom' >> $BLOG
echo '	- '$device >> $BLOG
echo 'date: '$date >> $BLOG
echo '---' >> $BLOG
echo '### download link ###' >> $BLOG
echo '['$zip_name']('$url')' >> $BLOG
echo '### Change Log ###' >> $BLOG
awk 'NR>3{print $1}' $CHANGE_LOG >> $BLOG


