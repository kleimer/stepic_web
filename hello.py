def app(environ, start_response):
    data = environ['QUERY_STRING']
    m= [bytes(i+'\n','ascii') for i in data.split('&')]
    start_response('200 OK', [
        ('Content-Type', 'text/plain'),
        ('Content-Length', str(len(data)))
    ])
    return iter(m)
