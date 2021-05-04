const Migrations = artifacts.require("Migrations");
const Adverts = artifacts.require("AdvertContract");


module.exports = function (deployer) {
  deployer.deploy(Adverts);
};
