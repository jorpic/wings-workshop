const ProofOfExistence = artifacts.require("./ProofOfExistence.sol");
const ERC20 = artifacts.require("./ERC20.sol");

module.exports = deployer => {
  deployer.deploy(ProofOfExistence);
  deployer.deploy(ERC20);
};
