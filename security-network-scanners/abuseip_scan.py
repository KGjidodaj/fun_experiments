import json
import requests
import sys

#Setting up the url and the ApiKey for abuseipdb.com
url = 'https://api.abuseipdb.com/api/v2/check'
ApiKey = str(sys.argv[1])


#Opening the alerts.json file and extracting the ip.
with open('alerts.json', 'r') as file:
    data = json.load(file)
ipv4 = data["ip"]


#Configuring everything needed for the api request
querystring = {
    'ipAddress': ipv4,
    'maxAgeInDays': '90'
}

headers = {
    'Accept': 'application/json',
    'Key': ApiKey
}
#Saving the response
response = requests.request(method='GET', url=url, headers=headers, params=querystring)

#Plucking each data piece needed from the json response and then printing the score and the ip
alert = response.json()
ip = alert["data"]["ipAddress"]
score = alert["data"]["abuseConfidenceScore"]

print(score)
print(ip)
