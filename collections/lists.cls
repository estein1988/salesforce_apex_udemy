//indexed array
//store multiple values in one variable
//can be any data type, object or sObjects
//index start at 0

List<Ingeger> intList1 = new List<Integer>();
intList1.add(12);
intList1.add(93);

Integer listSize = intList1.size();
Boolean isEmpty = intList1.isEmpty();

System.debug('List size:' + listSize);
System.debug('Is list empty:' + isEmpty);
System.debug(intList1);

////////////////////////////////////////////////////////////////////
List<Ingeger> intList2 = new List<Integer>{12, 93, 47, 51, 23};

System.debug(intList2);

intList.remove(2); //remove at index 2
intList.add(2, 47); //add number 47 at index 2
intList.set(2, 150); //set number 150 at index 2
Integer element = intList.get(2) //get value at index 2

System.debug(intList2);
System.debug('element at index 2: ' + element);

intList.sort()
System.debug('sorted: ' + intList);

////////////////////////////////////////////////////////////////////
List<Ingeger> intList3 = new List<Integer>{12, 93, 47, 51, 23};
for(Integer element : intList){
    System.debug(element);
}