// Meme Downloader (Made by @lazycouchdoge, github: PhoenixDiscord)
const fs = require('fs');
const imageDownload = require('image-download');
const imageType = require('image-type');
var meme = require("memejs")
console.log("Loading meme data...")
meme(function(data, err) {
  if (err) return console.error(err);
  imageDownload(data.url[0]).then(buffer => {
    const type = imageType(buffer);
    fs.writeFile(data.title + '.' + type.ext, buffer, (err) => console.log(err ? err : 'Meme downloaded successfully!')); 
});
});