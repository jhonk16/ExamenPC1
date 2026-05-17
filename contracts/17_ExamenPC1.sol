pragma solidity ^0.8.20;

import "hardhat/console.sol";

contract Biblioteca000244661 {
    struct Libro {
        uint256 id;
        string titulo;
        string autor;
    }

    Libro[] public libros;

    constructor() {
        console.log("Ejecutado por: 000244661 - Jhon Kevin Castro Mendez");
    }
}