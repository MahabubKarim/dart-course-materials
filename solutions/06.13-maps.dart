void main() {
    // Using a Map with String keys and Dynamic values
    // Dynamic allows for any type of value to be stored
    
    // name: Max
    // age: 30
    // height: 1.63

    //Map<String, Dynamic> person = {
    var person = <String, Dynamic> {
        'name': 'Max',
        'age': 30,
        'height': 1.63
    }; 
    var name = person['name'] as String;
    // Accessing values from the map
    var age = person['age'];
    print('Name: $name, Age: $age');
    // Output: Name: Max, Age: 30

    // Adding a new key-value pair
    person['isStudent'] = false;
    print(person);

    // Null Values
    var weight = person['weight'] ?? 70; // Default value if 'weight' is not found
    // Using null-aware operator to provide a default value
    print('Weight: $weight');

    // Iterating over the map
    for(var key in person.keys) {
        print('$key: ${person[key]}');
    }
    for(var item in person.values) {
        print('Value: $item');
    }
    person.forEach((key, value) {   
        print('$key: $value');
    });


    // Checking if a key exists
    if (person.containsKey('age')) {   
        print('Age exists: ${person['age']}');
    } else {
        print('Age does not exist');
    }

    // Removing a key-value pair
    person.remove('isStudent');
    print('After removing isStudent: $person');


    // Clearing the map
    person.clear();
    print('After clearing: $person');

    // Using a Map with String keys and String values
    var countries = <String, String> {  
        'USA': 'Washington, D.C.',
        'Canada': 'Ottawa',
        'Mexico': 'Mexico City'
    };  
    // Accessing values from the countries map
    var capitalOfUSA = countries['USA'];
    print('Capital of USA: $capitalOfUSA');

    // Adding a new country
    countries['France'] = 'Paris';
    print('Countries after adding France: $countries');
    // Iterating over the countries map
    // Maps is not iterable, so we use keys and values
    for (var country in countries.keys) {
        print('Country: $country, Capital: ${countries[country]}');
    }
    for(var entry in countries.entries) {
        print('Country: ${entry.key}, Capital: ${entry.value}');
    }
    countries.forEach((country, capital)) {
        print('Country: $country, Capital: $capital');
    }
}
