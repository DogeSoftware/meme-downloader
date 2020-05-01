const fs = require('fs');
const imageDownload = require('image-download');
const imageType = require('image-type');
const randomPuppy = require("random-puppy");
const highestNumber = parseInt(fs.readFileSync("../HighestNumber.txt", "utf8"));
const subReddits = ['dankmemes', 'meme', 'me_irl', 'crappydesign'];
const random = subReddits[Math.floor(Math.random() * subReddits.length)];

randomPuppy(random)
  .then(url => {
    imageDownload(url).then(buffer => {
      const type = imageType(buffer);
      fs.writeFileSync(`${highestNumber + 1}.${type.ext}`, buffer, "utf8");
      fs.writeFileSync("../HighestNumber.txt", highestNumber + 1, "utf8");
    }).catch(err => { });
  });

