contract C {
    uint[] x; // storage

    // memoryArray is in memory
    function f(uint[] memoryArray) {
        x = memoryArray; // copy to storage
        var y = x; // assigns a pointer

        // creates new array in storage, not accessible in outer scope
        y = memoryArray; // ERR

        g(x); // reference to x
        h(x); // temporary copy in memory
    }

    function g(uint[] storage storageArray) internal {}
    function h(uint[] memoryArray) {}
}
