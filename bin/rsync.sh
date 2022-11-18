rsync -av --exclude=/AppData --exclude=/OneDrive* --exclude=/anaconda3 --exclude=/vcpkg --exclude=/trash /c/Users/nick/ marat:backups/windows/ --max-size=1m --delete-excluded
rsync -av /home/nick/ marat:backups/windows.home.nick/
rsync -av --exclude=/AppData --exclude=/OneDrive* --exclude=/anaconda3 --exclude=/vcpkg --exclude=/trash /c/Users/nick/ marat:backups/windows/ --max-size=1g --delete-excluded
rsync -av --exclude=/AppData --exclude=/OneDrive* --exclude=/anaconda3 --exclude=/vcpkg --exclude=/trash /c/Users/nick/ marat:backups/windows/ --delete-excluded
