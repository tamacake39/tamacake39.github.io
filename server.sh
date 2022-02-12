docker run --rm -it -p 1313:1313 -v $(pwd):/src my_hugo hugo server --bind=0.0.0.0
sudo chmod -R 755 ./public