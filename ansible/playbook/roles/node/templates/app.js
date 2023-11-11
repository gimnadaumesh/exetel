const express = require('express');
const AWS = require('aws-sdk');
const app = express();

AWS.config = new AWS.Config();
AWS.config.accessKeyId = '{{ ACCESS_KEY }}';
AWS.config.secretAccessKey = '{{ SECRET_KEY }}';
AWS.config.region = "ap-southeast-2";

const metadata = new AWS.MetadataService();

app.get('/', async (req, res) => {
  var ec2 = new AWS.EC2({apiVersion: '2016-11-15'});
  var params = {
    DryRun: false
    };
  ec2.describeInstances(params, function(err, data) {
        if (err) {
            res.status(500).send('Internal Server Error');
        } else {
            console.log("Success", JSON.stringify(data));
            res.send(`########### .......... AWS EC2 Instance ID: ${JSON.stringify(data.Reservations[0].Instances[0].InstanceId)}.......... ########### ..........   AWS EC2 Public IP: ${JSON.stringify(data.Reservations[0].Instances[0].PrivateIpAddress)}..........###########`);
        }
});
});

const port = 3000;
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
