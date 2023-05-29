const express = require('express');
const http = require('http');
const mongoose  = require('mongoose');


const app = express();
const port = process.env.PORT || 3000;
let server = http.createServer(app);
let io = require('socket.io')(server);


//middleware
app.use(express.json());

const DB = 'mongodb+srv://sicx:17Mei1995@cluster2.pup5lt8.mongodb.net/?retryWrites=true&w=majority';

io.on('connection', (socket) => {
    console.log('connected');
    socket.on('createRoom',  ({username}) => {
        console.log(username);
    })
})


mongoose.connect(DB).then(()=> {
    console.log('connection succesful');
}).catch((e) =>{
    console.log(e);
})


server.listen(port, '0.0.0.0', () =>{
    console.log(`Server running on port ${port}`);
})