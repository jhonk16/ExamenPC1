pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Biblioteca000244661 {
    struct Libro {
        uint256 id;
        string titulo;
        string autor;
        bool estado;
    }

    Libro[] public libros;

    address public dirContrato = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    modifier ejecutadoPor() {
        console.log("Ejecutado por: 000244661 - Jhon Kevin Castro Mendez");
        _;
    }

    constructor() ejecutadoPor {}

    function agregarElemento(
        uint256 _id,
        string memory _titulo,
        string memory _autor,
        bool _estado
    ) public ejecutadoPor {
        require(!existeId(_id), "Libro con ese ID ya existe");
        require(bytes(_titulo).length > 0, "El titulo no puede estar vacio");

        libros.push(Libro(_id, _titulo, _autor, _estado));
    }

    function contarElementos() public ejecutadoPor returns (uint256) {
        console.log("Cantidad de elementos:", libros.length);
        return libros.length;
    }

    function inactivarElemento(uint256 _posicion) public ejecutadoPor {
        require(_posicion < libros.length, "La posicion no existe");

        libros[_posicion].estado = false;
    }

    function pintarElementosActivos() public ejecutadoPor {
        for (uint256 i = 0; i < libros.length; i++) {
            if (libros[i].estado == true) {
                console.log("Libro activo:", libros[i].id, libros[i].titulo);
            }
        }
    }

    function existeId(uint256 _id) private view returns (bool) {
        for (uint256 i = 0; i < libros.length; i++) {
            if (libros[i].id == _id) {
                return true;
            }
        }

        return false;
    }
}