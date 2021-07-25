const assert = require("assert");
const loader = require("@assemblyscript/loader");
const fs = require("fs");
const path = require("path");

(async () => {
  let wasm = fs.readFileSync(
    path.resolve(__dirname, "../build/optimized.wasm")
  );
  let module = await loader.instantiate(wasm);

  const myModule = module.exports;

  assert.strictEqual(myModule.add(1, 2), 3);
  console.log("ok");
})();
