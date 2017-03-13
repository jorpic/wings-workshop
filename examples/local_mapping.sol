
contract Mapping {
  mapping(address => uint) X;
  mapping(address => uint) Y;

  function Mapping() {
    X[msg.sender] = 100;
    Y[msg.sender] = 200;
  }

  function getXYZ() returns(uint, uint) {
    mapping(address => uint) Z;
    Z[msg.sender] = 500;
    return (X[msg.sender], Y[msg.sender]);
  }
}
