# -*- coding: utf-8 -*-
import re

path = r'f:\Guest guider\index.html'
with open(path, 'r', encoding='utf-8') as f:
    html = f.read()

# Remove redundant middle part (curly apostrophe = \u2019)
old = "Explore — you\u2019re a short walk from the beach, cafés, and tavernas. We\u2019ve put together a few favourites in "
new = "Explore "
html = html.replace(old, new)

# Remove quick-tips block (non-greedy match)
html = re.sub(
    r'\s*<div class="quick-tips">[\s\S]*?</div>\s*</div>',
    '',
    html,
    count=1
)

with open(path, 'w', encoding='utf-8') as f:
    f.write(html)
print('Done')
