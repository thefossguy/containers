#!/usr/bin/env bash
podman exec -u www-data nextcloud-govinda /usr/local/bin/php -f /var/www/html/occ maintenance:mode --on
podman exec -u www-data nextcloud-govinda /usr/local/bin/php -f /var/www/html/occ app:update --all
podman exec -u www-data nextcloud-govinda /usr/local/bin/php -f /var/www/html/occ maintenance:repair
podman exec -u www-data nextcloud-govinda /usr/local/bin/php -f /var/www/html/occ repgrade
podman exec -u www-data nextcloud-govinda /usr/local/bin/php -f /var/www/html/occ maintenance:mode --off
