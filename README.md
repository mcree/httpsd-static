Minimal docker image providing an httpd serving static content trough self signed SSL certificates.

Example usage:
<pre>
cd /tmp
mkdir public
echo "&lt;html&gt;&lt;body&gt;This is my static file&lt;/body&gt;&lt;/html&gt;" &gt; public/index.html
docker run -p 443:443 -v $(pwd)/public:/public mcreeiw/httpsd-static
firefox https://localhost
</pre>
