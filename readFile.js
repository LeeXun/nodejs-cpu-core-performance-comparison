const fs = require('node:fs');

const files = Array(100).fill("./1mb.js")

const readAllFiles = async () => {
    let promises = [];
    for (const f of files) {
        promises.push(fs.promises.readFile(f, "utf8"));
    }
    console.time("readFile");
    return Promise.all(promises);
};

async function run() {
    readAllFiles()
        .then((files) => {
            console.log(files.length)
            console.timeEnd("readFile");
        })
        .catch((err) => {
            console.error(err);
        });
}

run();