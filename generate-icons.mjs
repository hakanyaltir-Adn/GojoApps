// GOJOAPPs favicon & PWA icon generator
import sharp from "sharp";

const SRC = "./gogoapps_org.png"; // kaynak görsel (transparan PNG)

const jobs = [
  { out: "favicon-16.png", size: 16 },
  { out: "favicon-32.png", size: 32 },
  { out: "favicon-48.png", size: 48 },
  { out: "icon-192.png", size: 192 },
  { out: "icon-512.png", size: 512 },
  { out: "apple-touch-icon.png", size: 180 },
  { out: "maskable-icon-512.png", size: 512 },
];

for (const { out, size } of jobs) {
  await sharp(SRC)
    .resize(size, size, {
      fit: "contain",
      background: { r: 0, g: 0, b: 0, alpha: 0 }, // transparan arka plan
    })
    .png()
    .toFile(out);
  console.log("✔", out);
}

// Modern favicons: PNG kullanılacak (çoğu tarayıcı destekler)
await sharp(SRC)
  .resize(32, 32, { fit: "contain", background: { r:0, g:0, b:0, alpha:0 } })
  .png()
  .toFile("favicon.png");
console.log("✔ favicon.png");

console.log("✅ All icons ready.");
