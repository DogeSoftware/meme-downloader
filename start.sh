# If it works, it works.
echo "Meme Downloader - Linux port"
echo "The download process will start in 60 seconds. If you haven't installed Node.JS, NPM, and haven't created an alias, click CTRL+C to (safely) kill this script."
sleep 60

echo "Updating Libraries..."
npm i image-download image-type memejs-c456 colors
wait
echo "If you safely close the script with CTRL+C, it will be possible to resume the process."

# Create the folder and clear the terminal
mkdir memes
cd memes
clear

# Start the loop
while true
do
    node ../scripts/writeHeader.js
    wait
    node ../scripts/writeDownloadCounter.js
    wait
    node ../index.js
    clear
done
