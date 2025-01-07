sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-8.0

sudo useradd -m -d /var/lib/nopCommerce nop

wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.70.5/nopCommerce_4.70.5_NoSource_linux_x64.zip

unzip nopCommerce_4.70.5_NoSource_linux_x64.zip

mkdir bin logs

sudo chown -R nop:nop /var/lib/nopCommerce # change all file owner from the nopCommarce folder

# create a service file
sudo systemctl daemon-reload

sudo systemctl enable nopCommerce.service

sudo systemctl start nopCommerce.service