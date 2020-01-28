echo ======
echo Will stop docsify service with pm2...
pm2 del enl-docs
echo docsify service stopped
echo Will perform git pull...
cd services/ENL-Docs
git pull
echo Repository pulled with git pull
echo Will start docsify service with pm2...
pm2 start docsify -n enl-docs -- serve -p 2999
echo docsify service successfully started
echo Allright, baby, script finished
echo ======