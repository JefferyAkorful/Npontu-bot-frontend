[build]
builder = "DOCKERFILE"
dockerfilePath = "./dockerfile"

[deploy]
startCommand = "apache2-foreground"

[env]
APACHE_RUN_USER = "www-data"
APACHE_RUN_GROUP = "www-data"
APACHE_LOG_DIR = "/var/log/apache2"

[watchPatterns]
patterns = [
    "dockerfile",
    "index.php",
    "bg.png",
    "picture.png"
]
