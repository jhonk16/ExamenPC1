pragma solidity ^0.8.20;

import "hardhat/console.sol";

contract Biblioteca000244661 {
    struct Libro {
        uint256 id;
        string titulo;
        string autor;
    }

    Libro[] public libros;

    address public dirContrato = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    constructor() {
        console.log("Ejecutado por: 000244661 - Jhon Kevin Castro Mendez");
    }

    function agregarElemento(
        uint256 _id,
        string memory _titulo,
        string memory _autor
    ) public {
        libros.push(Libro(_id, _titulo, _autor));
    }

    function contarElementos() public returns (uint256) {
        console.log("Cantidad de elementos:", libros.length);
        console.log("Ejecutado por: 000244661 - Jhon Kevin Castro Mendez");
        return libros.length;
    }
}