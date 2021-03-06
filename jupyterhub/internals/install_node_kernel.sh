echo "INSTALLING HASKELL KERNEL"

# Instructions taken from:
# https://github.com/notablemind/jupyter-nodejs

git clone https://github.com/notablemind/jupyter-nodejs.git
cd jupyter-nodejs
mkdir -p ~/.ipython/kernels/nodejs/
npm install && node install.js
npm run build
npm run build-ext
jupyter console --kernel nodejs