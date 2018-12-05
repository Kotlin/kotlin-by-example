# associateBy, groupBy

Both functions return a `Map` containing the elements from the given collection indexed by the key returned from `keySelector` function applied to each element.
If `valueSelector` is also passed it is applied to each element as well.

The difference between `associateBy` and `groupBy` is the behaviour for values with the same key. `associateBy` takes only last element when `groupBy` takes all elements into collection. 

The returned map preserves the entry iteration order of the original collection.

<div class="language-kotlin" theme="idea" data-min-compiler-version="1.3">

```kotlin
fun main() {

//sampleStart

    data class Person(val name: String, val city: String, val phone: String) // 1

    val people = listOf(                                                     // 2
      Person("John", "Boston", "+1-888-123456"),
      Person("Sarah", "Munich", "+49-777-789123"),
      Person("Svyatoslav", "Saint-Petersburg", "+7-999-456789"),
      Person("Vasilisa", "Saint-Petersburg", "+7-999-123456"))
      
    val phoneBook = people.associateBy { it.phone }                          // 3
    val cityBook = people.associateBy(Person::phone, Person::city)           // 4
    val peopleCities = people.groupBy(Person::city, Person::name)            // 5

//sampleEnd

    println("People: $people")
    println("Phone book: $phoneBook")
    println("City book: $cityBook")
    println("People living in each city: $peopleCities")
}
```

</div>

1. Define data class descirbes a Person.
2. Define collection of known people.
3. Build a map from person's phone number to person information.
4. Build another map from phone number to city where owner lives.
5. Build the third map which contains cities and people living there.
