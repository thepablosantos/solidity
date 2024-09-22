// SPDX-License-Identifier: GPL-3.0
// Especifica a licença do código. Neste caso, a licença GPL-3.0.

pragma solidity ^0.8.4; // Especifica a versão do compilador Solidity que deve ser utilizada.

contract construct {
    // Declara uma variável pública do tipo string chamada 'name'.
    string public name;

    // Declara uma variável imutável do tipo uint chamada 'age'.
    // Variáveis imutáveis podem ser atribuídas apenas uma vez, geralmente no construtor.
    uint immutable age;

    // Declara uma variável constante do tipo address chamada 'owner' e a inicializa com um endereço específico.
    // Variáveis constantes devem ser definidas no momento da declaração e não podem ser alteradas.
    address constant owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Declara um construtor que aceita dois parâmetros: um string '_name' e um uint256 '_age'.
    // O construtor é chamado uma vez, no momento da implantação do contrato, para inicializar as variáveis.
    constructor(string memory _name, uint256 _age) {
        name = _name; // Define a variável 'name' com o valor passado no parâmetro '_name'.
        age = _age; // Define a variável imutável 'age' com o valor passado no parâmetro '_age'.
    }

    // Declara uma função externa chamada 'setName' que aceita um parâmetro string '_newName'.
    function setName(string memory _newName) external {
        // Verifica se o remetente da transação é o dono do contrato.
        // Se não for, a transação é revertida com uma mensagem de erro.
        require(msg.sender == owner, "Somente o criador pode definir o nome");

        name = _newName;
    }
}
