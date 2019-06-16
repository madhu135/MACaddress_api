import sys 
import urllib.request 
import json 
import codecs
try:
    APIKEY=sys.argv[1] 
    MACADDRESS=sys.argv[2]
    url = 'https://api.macaddress.io/v1?apiKey='+APIKEY+'&output=json&search='+MACADDRESS
    json_obj = urllib.request.urlopen(url) 
    reader = codecs.getreader("utf-8") 
    data = json.load(reader(json_obj)) 
except NameError:
           print("You have not given API_KEY and MAC_ADDRESS as arguments, Please enter them.")
except Exception:
           print("Enter valid API KEY and MAC Address")
else:    
    print("Mac address " +data['macAddressDetails']['searchTerm'] ,end = '  ')
    print("is associated with company "  +data['vendorDetails']['companyName'])

