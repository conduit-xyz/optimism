import { DeployFunction } from 'hardhat-deploy/dist/types'
import '@eth-optimism/hardhat-deploy-config'
import '@nomiclabs/hardhat-ethers'

import { assertContractVariable, deploy } from '../src/deploy-utils'

const deployFn: DeployFunction = async (hre) => {
  await deploy({
    hre,
    name: 'L2OutputOracle',
    args: [
      600,
      10,
      0,
      0,
      "0x75ACb7ae6C76B3f5cA049431FE2c0797dD002b90",
      "0xEaD041B3ab20744A2C00C44397b9078EafCc33bF",
      3600,
    ],
    postDeployAction: async (contract) => {
    },
  })
}

deployFn.tags = ['L2OutputOracleImpl', 'setup']

export default deployFn

