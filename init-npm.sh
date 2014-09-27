cd console.js
npm install
npm link
cd ..


cd validator.js 
npm link component-consoler
npm install
npm link
cd ..


cd remotes.js
npm link component-validator
npm install
npm link
cd ..


cd downloader.js
npm link component-consoler
npm link component-remotes
npm install
npm link
cd ..


cd resolver.js
npm link component-consoler
npm link component-validator
npm link component-flatten
npm link component-downloader
npm link component-remotes
npm install
npm link
cd ..


cd require2
npm install
npm link
cd ..


cd manifest.js
npm link component-resolver
npm install
npm link
cd ..

cd flatten.js
npm install
npm link
cd ..


cd builder2.js
npm link component-flatten
npm link component-manifest
npm link component-require2
npm link component-resolver
npm install
npm link
cd ..


cd builder-autoprefixer
npm install
npm link
cd ..


cd build.js
npm link component-builder
npm link component-builder-autoprefixer
npm link component-resolver
npm install
npm link
cd ..


cd ls.js
npm install 
npm link
cd ..


cd outdated.js
npm link component-consoler
npm link component-flatten
npm link component-remotes
npm install 
npm link
cd ..


cd pin.js
npm link component-consoler
npm link component-flatten
npm link component-remotes
npm link component-resolver
npm install 
npm link
cd ..


cd search.js
npm link component-consoler
npm install
npm link
cd ..


cd update.js
npm link component-consoler
npm link component-flatten
npm link component-remotes
npm link component-resolver
npm install
npm link
cd ..


cd watcher.js
npm install
npm link
cd ..


cd component
npm link component-build
npm link component-consoler
npm link component-flatten
npm link component-ls
npm link component-outdated2
npm link component-pin
npm link component-resolver
npm link component-search2
npm link component-updater
npm link component-watcher
npm link component-remotes
npm install
npm link
cd ..