if [ ! "`whoami`" = "root" ]
then
    echo "Use sudo to run this script"
    exit 1
fi

sudo curl -fsSL "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts" --output "/etc/hosts"

sudo systemctl restart NetworkManager.service