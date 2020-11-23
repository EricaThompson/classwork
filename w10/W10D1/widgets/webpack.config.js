const path = require('path');

module.exports = {
    entry: './frontend/widgets.jsx', //put all of the jsx files in frontend folder
    output: { //where do we want bundle.js file to live
        path: path.resolve(__dirname), //path key uses path variable created above and .resovle on it. give me where this file lives.
        filename: 'bundle.js'
    },
    devtool: 'source-map',
    resolve: {
        extensions: [".js", ".jsx", "*"] //only accept these extensions
    },
    module: {
        rules: [
            {
                test: /\.jsx?$/,
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: ['@babel/env', '@babel/react']
                    }
                },
            }
        ]
    },
};