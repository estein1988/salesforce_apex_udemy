//collection of key/value pairs

employees.put(101, 'Elliott Stein') //adds or changes key/value pair
employees.remove(101) //removes the 101 key and its value from map
employees.keySet() //returns all keys in map
employees.values() //returns all values in map

Map<Integer, String> employees = new Map<Integer, String>();
employees.put(101, 'Han Solo');
employees.put(102, 'Luke Skywalker');

System.debug(employees);

employees.put(103, 'Princess Leia');

System.debug(employees);

String name = employees.get(102);

System.debug('name: ' + name);

Set<Integer> keySet = employees.keySet();
System.debug(keySet);

<Integer> values = employees.values();
System.debug(values)