// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

    contract X {
    string public name;
    constructor (string memory _name) {
        name = _name;
    }
}

//base filho y
    contract Y {
    string public text;
    constructor (string memory _text) {
        text = _text;
    }
}

    contract B is X ("Pablo"), Y("Maria"){

    }

    contract C is X, Y {
        constructor (string memory _name, string memory _text) X(_name) Y(_text) { }
    }

    contract D is X, Y {
        constructor () X ("X foi chamado") Y("Y foi chamado") { }

}