
        Http http = new Http();
        
HttpRequest request = new HttpRequest();

request.setEndpoint('https://postman-echo.com/get?foo1=bar1&foo2=bar2');

request.setMethod('GET');

HttpResponse response = http.send(request);

// If the request is successful, parse the JSON response.

if(response.getStatusCode() == 200) {

    // Deserialize the JSON string into collections of primitive data types.
    
    Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
    
    // Cast the values in the 'animals' key as a list
    
   Map<String, Object> animals = (Map<String, Object>) results.get('args');
   
    List<Object> n =new List<Object>();
        
    n.add(animals.values());
        
    System.debug('Received the following animals:');
        
    for(Object animal: n) {
        
        System.debug(animal);
        
    }
}

