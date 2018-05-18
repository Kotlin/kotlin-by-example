---
title: Data Classes
---
Data Classes is one of the amazing feature of kotlin, Most of the time we create classes just to hold the data and define some very common and standard methods that are often mechanically driven by data.

For example let's take a class `Product` and its has two properties `productName` and `productPrice` now when we implement this class we have define all the different type of methods such as :

1. equals()/hashCode() pair;
2. toString() of the form "Product(productName=Laptop, productPrice=23232)";
3. componentN() functions corresponding to the properties in their order of declaration;
4. copy() function

These all methods are pretty common in all the classes and add too much of  boilerplate code in a class.

To Solve this problem **data classes** come to resuce.
We just have to add the keyword **data** in front of the class and rest kotlin will take care for us by generating all this code.

<div class="sample" markdown="1">

```kotlin
//sampleStart
	data class Product(val productName:String , var productPrice:Int)             //1

	fun main(args:Array<String>){

	  val myProduct = Product("Laptop" , 34553) //2

	  println("productName ${myProduct.productName}") //3

	  println("productPrice ${myProduct.productPrice}")  //4

	  println("data class toString ${myProduct.toString()}")  //5

	  println("first component ${myProduct.component1()}") //6

	  println("second component ${myProduct.component2()}")  //6
	
	}
	//sampleEnd
```
</div>

1. Declare a data class named `Product` with all the constructor parameter
2. Instantiate the class as usually.
3. `myProduct` can now call the `productName` propertie .
4. `myProduct` calls the `productPrice` propertie .
5. `myProduct` can call toString method on it
6. `myProduct` can call  componentX

#### Few Requirements
 To ensure consistency and meaningful behavior of the generated code, data classes have to fulfill the following requirements:

1. The primary constructor needs to have at least one parameter;
2. All primary constructor parameters need to be marked as val or var;
3. Data classes cannot be abstract, open, sealed or inner;
4.  Data classes may only implement interfaces.

#### Byte code for data class Product

```java
	public final class Product {

  public final java.lang.String getProductName();

  public final int getProductPrice();

  public final void setProductPrice(int);

  public Product(java.lang.String, int);

  public final java.lang.String component1();

  public final int component2();

  public final Product copy(java.lang.String, int);

  public static Product copy$default(Product, java.lang.String, int, int, java.lang.Object);

  public java.lang.String toString();

  public int hashCode();

  public boolean equals(java.lang.Object);
}
```
So as from the byte code it is clear that kotlin generates lot of boilerplate code.
