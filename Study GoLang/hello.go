package main

import "fmt"

func main() {
	//var angkaku int = 10
	//nilaiku := 100

	//katahatiku := "ada yang jomblo ga?"

	//fmt.Println(angkaku)
	//fmt.Println("nilai ku adalah")
	//fmt.Println(nilaiku)
	//fmt.Println(katahatiku)

	//Luas Segitiga
	// a := 10
	// t := 15
	// L := (a * t) / 2
	// fmt.Println(L)

	//Pergabungan kata / word
	// helloworld := "hallo" + " " + "World"
	// fmt.Println(helloworld)

	// myAge := 17
	// if dadAge := 40; dadAge < myAge {
	// 	fmt.Println(dadAge)
	// } else {
	// 	fmt.Println("gue tua")
	// }

	// input := 5
	// if input%2 != 1 && input > 0 {
	// 	fmt.Println("banana")
	// } else {
	// 	fmt.Println("apple")
	// }

	input := 10

	for i := 1; i <= input; i++ {
		if input%i == 0 && i != 5 {
			fmt.Println(i)
		}
	}

}
