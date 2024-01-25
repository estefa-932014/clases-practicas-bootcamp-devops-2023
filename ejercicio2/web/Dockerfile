FROM php:apache
COPY ./web/app-295devops-travel/ /var/www/html/
ARG config_apache="/etc/apache2/mods-enabled/dir.conf"
RUN <<EOF > $config_apache
        <IfModule mod_dir.c>
            DirectoryIndex index.php index.cgi index.pl index.html index.xhtml index.htm
        </IfModule>

        # vim: syntax=apache ts=4 sw=4 sts=4 sr noet
EOF
