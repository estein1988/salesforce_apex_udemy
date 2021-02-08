//list that only contains unique values; no dups
//added values automatically added in spot of ascending order
//remove, removes the value, not the index
//can't get items by their index, doesn't have an index

Set<Integer> intSet = new Set<Integer>(4, 6, 8);
System.debug('initial set: ' + intSet);

intSet.add(10);
System.debug(intSet); //automatically sorts 10, adds to end of the set

intSet.remove(10);
System.debug(intSet);

intSet.add(4);
System.debug('added 4: ' + intSet); //no error is tossed, but set isn't changed

/////////////////////////////////////////////////////////////////
Set<Integer> intSet = new Set<Integer>(4, 6, 8);
    for(Integer element : intSet) {
        System.debug(element);
    }

/////////////////////////////////////////////////////////////////
//turn a list into a set
List<Integer> intList = new List<Integer>(4, 3, 2, 1, 2);
System.debug('list: ' + intList);

Set<Integer> intSet = new Set<intList>

/////////////////////////////////////////////////////////////////
//turn a set into a list
Set<Integer> intSet = new Set<Integer>(1, 2, 3, 4);
System.debug('set: ' + intSet);

List<Integer> intSet = new List<intSet>