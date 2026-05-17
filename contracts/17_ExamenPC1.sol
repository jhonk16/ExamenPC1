pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Biblioteca000244661 {
    struct Libro {
        uint256 id;
        string titulo;
        string autor;
        bool estado;
    }

    mapping(uint256 => Libro) public libros;

    uint256 public cantidad;

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
        require(_id > 0, "El ID debe ser mayor a cero");
        require(libros[_id].id == 0, "Libro con ese ID ya existe");
        require(bytes(_titulo).length > 0, "El titulo no puede estar vacio");

        libros[_id] = Libro(_id, _titulo, _autor, _estado);
        cantidad++;
    }

    function contarElementos() public ejecutadoPor returns (uint256) {
        console.log("Cantidad de elementos:", cantidad);
        return cantidad;
    }

    function inactivarElemento(uint256 _id) public ejecutadoPor {
        require(libros[_id].id != 0, "El libro no existe");

        libros[_id].estado = false;
    }

    function pintarElementosActivos() public ejecutadoPor {
        for (uint256 i = 1; i <= cantidad; i++) {
            if (libros[i].estado == true) {
                console.log("Libro activo:", libros[i].id, libros[i].titulo);
            }
        }
    }
}