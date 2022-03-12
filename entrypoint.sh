#!/bin/bash

# Update default apache page with variable

echo "<html><head><title>New Page</title></head><body><h1>${DEVOPS}</h1><h1>${PASSWORD}</h1></body></html>" > /var/www/html/index.html

# Start Apache in foreground

/usr/sbin/apache2ctl -DFOREGROUND
