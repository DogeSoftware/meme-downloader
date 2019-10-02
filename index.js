const fs = require('fs');
const imageDownload = require('image-download');
const imageType = require('image-type');
const meme = require("memejs-c456");

meme((data, err) => {
  if (!err && data && data.url) {
    imageDownload(data.url[0]).then(buffer => {
      const type = imageType(buffer);
      fs.writeFileSync(`${data.title}.${type.ext}`, buffer, "utf8"); 
	  }).catch(err => {});
  }
});