# Web 组件目录

31 个组件均在 `index.html` 中以 `component-<id>` 标识。

```bash
npm install
npx playwright install --with-deps chromium
npm test
```

`tests/accessibility.spec.js` 使用 axe。`tests/visual.spec.js` 使用 Playwright screenshot baseline。
