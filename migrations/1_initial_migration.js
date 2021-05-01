const Migrations = artifacts.require("Migrations");
const HelloWorld = artifacts.require("HelloWorld");


module.exports = function (deployer) {
  deployer.deploy(HelloWorld);
};
