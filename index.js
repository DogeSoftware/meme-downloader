const fs = require('fs');
const imageDownload = require('image-download');
const imageType = require('image-type');
const meme = require("memejs-c456");

meme((data, err) => {
  if (!err && data && data.url) {
    imageDownload(data.url[0]).then(buffer => {
      const type = imageType(buffer);
      fs.writeFileSync(`${fs.readdirSync("./").length + 1}.${type.ext}`, buffer, "utf8"); 
	  }).catch(err => {});
  }
});