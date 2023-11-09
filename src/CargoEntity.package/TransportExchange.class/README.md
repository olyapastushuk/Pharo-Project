A container for Cargo entities.

It can add and remove new Cargo instances. It can write a collection of Cargo instances to a file and read them from a file as well. It can add new instances using GUI window dialog.

Created by Olya Pastushuk.

## Usage examples

```
cargoCollection := CargoContainer new addAll: {
	Cargo from: 'Lviv' to: 'Kyiv' withWeight: 2.1 andDist: 3.6.
	Cargo from: 'Kharkiv' to: 'Poltava' withWeight: 2.1 andDist: 3.6.
	AccompanyingCargo from: 'Poltava' to: 'Vinnytsia' withWeight: 2.1 andDist: 3.6 andDiscount: 0.6.
	Cargo from: 'Vinnytsia' to: 'Ivano-Frankivsk' withWeight: 2.1 andDist: 3.6.
	Cargo from: 'Ivano-Frankivsk' to: 'Chernihiv' withWeight: 2.1 andDist: 3.6.
}.

cargoCollection storeToFile: 'file.stc'.
cargoCollection saveToFile: 'file.ston'.

ccLoadedFromCode := CargoContainer loadFromCodeFile: 'file.stc'.
ccLoadedFromSTON := CargoContainer loadFromSTONFile: 'file.ston'.

cargos := CargoContainer new addByGUI: 3.
```