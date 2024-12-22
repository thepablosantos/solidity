/*

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract pessoa {

    string public name;
    uint private age;
    bool internal brasileiro;

    function setName(string memory _name) public {
        name = _name;
    }

    function setAge(uint _age) public {
        age = _age;
    }

    function getAge() public view returns (uint) {
        return age;
    }

    function setNacionality (bool _brasileiro) public {
        brasileiro = _brasileiro; 
    }

    function getNacionality() public view returns (bool) {
        return brasileiro;
    }
}

*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract person {

    string public name = "Pablo";
    uint private age = 31;
    bool internal brazilian = true;

}