const express = require('express');
const AWS = require('aws-sdk');
const app = express();

const metadata = new AWS.MetadataService();

app.get('/', async (req, res) => {
  try {
    const data = await metadata.request('/latest/meta-data/instance-id');
    const instanceId = data.split('\n')[0];
    res.send(`AWS EC2 Instance ID: ${instanceId}`);
  } catch (error) {
    console.error('Error retrieving instance ID:', error);
    res.status(500).send('Internal Server Error');
  }
});

const port = 3000;
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});