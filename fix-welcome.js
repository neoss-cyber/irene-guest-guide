const fs = require('fs');
const path = 'f:\\Guest guider\\index.html';
let html = fs.readFileSync(path, 'utf8');

// Match the welcome paragraph (allow curly apostrophe U+2019)
const oldPara = /<p class="welcome-text">Welcome! We[\u2019']re glad you[\u2019']re here\. Free Wi-Fi, pool, 24h reception, and parking — and we[\u2019']re always happy to help with tips and bookings\. Explore — you[\u2019']re a short walk from the beach, cafés, and tavernas\. We[\u2019']ve put together a few favourites in <a href="#eat">Eat & Drink<\/a> and <a href="#beaches">Beaches<\/a> to get started\.<\/p>/;
const newPara = '<p class="welcome-text">Welcome! We\'re glad you\'re here. Free Wi-Fi, pool, 24h reception, and parking — and we\'re always happy to help with tips and bookings. Explore <a href="#eat">Eat & Drink</a> and <a href="#beaches">Beaches</a> to get started.</p>';

html = html.replace(oldPara, newPara);

// Remove quick-tips block (allow curly apostrophe)
const quickTips = /\s*<div class="quick-tips">[\s\S]*?<strong>Quick tips<\/strong>[\s\S]*?we[\u2019']re happy to help with tips and bookings\.\s*<\/div>\s*<\/div>/;
html = html.replace(quickTips, '');

fs.writeFileSync(path, html);
console.log('Done');
