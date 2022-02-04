SCRIPT_DIR=$(cd $(dirname $0); pwd)
~/go/bin/tcardgen \
--fontDir $SCRIPT_DIR/static/fonts/kinto \
--output $SCRIPT_DIR/static/images/$1 \
--template $SCRIPT_DIR/static/ogp/template.png \
$SCRIPT_DIR/content/post/$1.md 
mv $SCRIPT_DIR/static/images/$1/$1.png $SCRIPT_DIR/static/images/$1/ogp.png