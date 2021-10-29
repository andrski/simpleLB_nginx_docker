import express from 'express';
import { Application, Request, Response } from 'express';
import fs from 'fs';
import path from 'path';
import cors from 'cors';

const port = process.env.PORT || 3000;
const name = process.env.NAME || 'Server';

const app: Application = express();
// const accessLogStream = fs.createWriteStream(path.join(__dirname, 'logs/logs.log'), { flags: 'a' });

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cors());
app.use(express.static(path.join('dist')));

app.get('/', (req: Request, res: Response): void => {
    res.send(`<h1>hello from ${name}!!!!!!!</h1>`);
    res.end();
});


async function start() {
    app.listen(port, () => {
        console.log(`
    -------------------------------
    Server on: ${port}
    http://localhost:${port}/
    -------------------------------
    `);
        });
  }
  start();
