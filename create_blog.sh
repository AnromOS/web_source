#This is used for create blog with change log
#$1 is the path of the change log file

echo $1
CHANGE_LOG=$1 #path of change log
HEXO_DIR='/home/jinwh/rom_os' #path of your HEXO
POSTS_DIR=$HEXO_DIR'/source/_posts' 

echo $CHANGE_LOG
device=`(awk 'NR==1{print $1}' $CHANGE_LOG)`
zip_name=`(awk 'NR==2{print $1}' $CHANGE_LOG)`
url=$1
echo 'device: '$device
echo 'zipname: '$zip_name
echo 'url: '$url

date=`date '+%Y-%m-%d %H:%M:%S'`
echo $date
BLOG=$POSTS_DIR/$zip_name'.md'
echo $BLOG
rm -f $BLOG

#begin to write blog
echo '---' >> $BLOG
echo 'title: '$zip_name >> $BLOG
echo 'category:' >> $BLOG
echo '	- ROM下载' >> $BLOG
echo '	- '$device >> $BLOG
echo 'tags:' >> $BLOG
echo '	- ROM下载' >> $BLOG
echo '	- '$device >> $BLOG
echo 'date: '$date >> $BLOG
echo '---' >> $BLOG
echo '### download link ###' >> $BLOG
echo '['$zip_name']('$url')' >> $BLOG
echo '### Change Log ###' >> $BLOG
awk 'NR>3{print $1}' $CHANGE_LOG >> $BLOG


