module.exports = {
  app: {
    entry: 'src/main.js',
    template: 'public/index.html',
    filename: 'index.html',
    title: 'App',
  },
  global: {
    entry: 'src/styles/app.js',
    template: 'public/index.html',
    filename: 'index.html',
    title: 'App',
  },
  essentials: {
    entry: 'src/styles/essentials.js',
    template: 'public/index.html',
    filename: 'index.html',
    title: 'Essential',
  },
};
