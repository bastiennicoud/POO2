class Queue {
	
	constructor () {
		this.array = []
	}
	
	empty () {
		return this.array.length == 0
	}
	
	length () {
		return this.array.length
	}
	
	enqueue (value) {
		this.array.push(value)
	}
	
	dequeue () {
		return this.array.shift()
	}
}

let tutu = new Queue()

console.time("enqueue")

for (let i = 0; i < 10000000; i++) {
   tutu.enqueue(i)
}

console.timeEnd("enqueue")
console.time("dequeue")

for (let i = 0; i < 10000000; i++) {
   tutu.dequeue
}

console.timeEnd("dequeue")
