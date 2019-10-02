const colors = require("colors/safe");
const fs = require("fs");

console.log("\n" +
  colors.brightGreen("                ______    \n") +
  colors.brightGreen("               |      |   \n") +
  colors.brightGreen("               |      |   \n") +
  colors.brightGreen("               |      |   \n") +
  colors.brightGreen("            ___|      |___\n") +
  colors.brightGreen("            \\            /") + colors.bold(`     ${fs.readFileSync("../HighestNumber.txt", "utf8")} memes saved\n`) +
  colors.brightGreen("             \\          / \n") +
  colors.brightGreen("              \\        /  \n") +
  colors.brightGreen("               \\      /   \n") +
  colors.brightGreen("                \\    /    \n") +
  colors.brightGreen("                 \\  /     \n") +
  colors.brightGreen("                  \\/      \n")
)