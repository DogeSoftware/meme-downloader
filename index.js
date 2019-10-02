const fs = require('fs');
const imageDownload = require('image-download');
const imageType = require('image-type');
const meme = require("memejs-c456");
const highestNumber = parseInt(fs.readFileSync("../HighestNumber.txt", "utf8"));

meme((data, err) => {
  if (!err && data && data.url) {
    imageDownload(data.url[0]).then(buffer => {
      const type = imageType(buffer);
      fs.writeFileSync(`${highestNumber + 1}.${type.ext}`, buffer, "utf8");
      fs.writeFileSync("../HighestNumber.txt", highestNumber + 1, "utf8");
		}).catch(err => {});
  }
});