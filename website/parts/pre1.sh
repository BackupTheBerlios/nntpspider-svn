# need to generate pages with preformated text (e.g. README, TODO)
# usage: . ./pre.sh title-text
cat <<EOF
<div id="dfpreamble">
	<h3><span>$1</span></h3>
	<p class="p1"><span>
<pre>
EOF
