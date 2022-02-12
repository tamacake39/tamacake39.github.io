filename=`date +%Y%m%d_%H%M%S`
docker run --rm -it -p 1313:1313 -v $(pwd):/src my_hugo hugo new post/$filename.md
mkdir -p ./static/images/$filename
sudo chmod 755 ./content/post/$filename.md 
sudo chmod -R 755 ./static/images/$filename
