from urllib2 import Request, urlopen, URLError

def run():
    request = Request('https://www.quandl.com/api/v1/datasets/DOE/RWTC.csv?collapse=quarterly')

    try:
            response = urlopen(request)
            prices = response.read()
            print len(prices)
            print prices[0]
    except URLError, e:
        print 'No prices. Got an error code:', e
