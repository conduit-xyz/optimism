// SPDX-License-Identifier: MIT
// This file was autogenerated by running `kontrol load-state-diff`. Do not edit this file manually.

pragma solidity ^0.8.13;

import { Vm } from "forge-std/Vm.sol";

import { DeploymentSummaryCode } from "./DeploymentSummaryCode.sol";

contract DeploymentSummary is DeploymentSummaryCode {
    // Cheat code address, 0x7109709ECfa91a80626fF3989D68f67F5b1DD12D
    address private constant VM_ADDRESS = address(uint160(uint256(keccak256("hevm cheat code"))));
    Vm private constant vm = Vm(VM_ADDRESS);

    address internal constant addressManagerAddress = 0xBb2180ebd78ce97360503434eD37fcf4a1Df61c3;
    address internal constant l1CrossDomainMessengerAddress = 0x094e6508ba9d9bf1ce421fff3dE06aE56e67901b;
    address internal constant l1CrossDomainMessengerProxyAddress = 0x20A42a5a785622c6Ba2576B2D6e924aA82BFA11D;
    address internal constant l1ERC721BridgeAddress = 0x5C4F5e749A61a9503c4AAE8a9393e89609a0e804;
    address internal constant l1ERC721BridgeProxyAddress = 0xDeF3bca8c80064589E6787477FFa7Dd616B5574F;
    address internal constant l1StandardBridgeAddress = 0xb7900B27Be8f0E0fF65d1C3A4671e1220437dd2b;
    address internal constant l1StandardBridgeProxyAddress = 0x0c8b5822b6e02CDa722174F19A1439A7495a3fA6;
    address internal constant l2OutputOracleAddress = 0x19652082F846171168Daf378C4fD3ee85a0D4A60;
    address internal constant l2OutputOracleProxyAddress = 0x8B71b41D4dBEb2b6821d44692d3fACAAf77480Bb;
<<<<<<< HEAD
    address internal constant optimismPortalAddress = 0xbdD90485FCbcac869D5b5752179815a3103d8131;
=======
    address internal constant optimismPortalAddress = 0xb7B7121AEcAd4F33131222efFFA34aB6c382ef4c;
>>>>>>> 0cdf179c1 (contracts-bedrock: fix deposit gas limit)
    address internal constant optimismPortalProxyAddress = 0x978e3286EB805934215a88694d80b09aDed68D90;
    address internal constant protocolVersionsAddress = 0xfbfD64a6C0257F613feFCe050Aa30ecC3E3d7C3F;
    address internal constant protocolVersionsProxyAddress = 0x416C42991d05b31E9A6dC209e91AD22b79D87Ae6;
    address internal constant proxyAdminAddress = 0xDB8cFf278adCCF9E9b5da745B44E754fC4EE3C76;
    address internal constant safeProxyFactoryAddress = 0x34A1D3fff3958843C43aD80F30b94c510645C316;
    address internal constant safeSingletonAddress = 0x90193C961A926261B756D1E5bb255e67ff9498A1;
    address internal constant superchainConfigAddress = 0x068E44eB31e111028c41598E4535be7468674D0A;
    address internal constant superchainConfigProxyAddress = 0xDEb1E9a6Be7Baf84208BB6E10aC9F9bbE1D70809;
    address internal constant systemConfigAddress = 0x67866A5052E5302aaD08e9f352331fd8622eB6DC;
    address internal constant systemConfigProxyAddress = 0x1c23A6d89F95ef3148BCDA8E242cAb145bf9c0E4;
    address internal constant systemOwnerSafeAddress = 0x7EA964E5D864b95f6D7d2BD04dA897F6e31084b3;

    function recreateDeployment() public {
        bytes32 slot;
        bytes32 value;
        vm.etch(safeProxyFactoryAddress, safeProxyFactoryCode);
        vm.etch(safeSingletonAddress, safeSingletonCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000004";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(safeSingletonAddress, slot, value);
        vm.etch(systemOwnerSafeAddress, systemOwnerSafeCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"00000000000000000000000090193c961a926261b756d1e5bb255e67ff9498a1";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"e90b7bceb6e7df5418fb78d8ee546e97c83a08bbccc01a0644d599ccd2a7c2e0";
        value = hex"0000000000000000000000001804c8ab1f12e6bbf3894d4083f33e07309d1f38";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"d1b0d319c6526317dce66989b393dcfb4435c9a65e399a088b63bbf65d7aee32";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000003";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000004";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"cc69885fda6bcc1a4ace058b4a62bf5e179ea78fd58a1ccd71c22cc9b688792f";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemOwnerSafeAddress, slot, value);
        vm.etch(addressManagerAddress, addressManagerCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000001804c8ab1f12e6bbf3894d4083f33e07309d1f38";
        vm.store(addressManagerAddress, slot, value);
        vm.etch(proxyAdminAddress, proxyAdminCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000001804c8ab1f12e6bbf3894d4083f33e07309d1f38";
        vm.store(proxyAdminAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000003";
        value = hex"000000000000000000000000bb2180ebd78ce97360503434ed37fcf4a1df61c3";
        vm.store(proxyAdminAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000007ea964e5d864b95f6d7d2bd04da897f6e31084b3";
        vm.store(proxyAdminAddress, slot, value);
        vm.etch(superchainConfigProxyAddress, superchainConfigProxyCode);
        slot = hex"b53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(superchainConfigProxyAddress, slot, value);
        vm.etch(superchainConfigAddress, superchainConfigCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(superchainConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(superchainConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(superchainConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc";
        value = hex"000000000000000000000000068e44eb31e111028c41598e4535be7468674d0a";
        vm.store(superchainConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(superchainConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(superchainConfigProxyAddress, slot, value);
        slot = hex"d30e835d3f35624761057ff5b27d558f97bd5be034621e62240e5c0b784abe68";
        value = hex"0000000000000000000000009965507d1a55bcc2695c58ba16fb37d819b0a4dc";
        vm.store(superchainConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(superchainConfigProxyAddress, slot, value);
        vm.etch(protocolVersionsProxyAddress, protocolVersionsProxyCode);
        slot = hex"b53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(protocolVersionsProxyAddress, slot, value);
        vm.etch(protocolVersionsAddress, protocolVersionsCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(protocolVersionsAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(protocolVersionsAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000033";
        value = hex"0000000000000000000000004e59b44847b379578588920ca78fbf26c0b4956c";
        vm.store(protocolVersionsAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000033";
        value = hex"000000000000000000000000000000000000000000000000000000000000dead";
        vm.store(protocolVersionsAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(protocolVersionsAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000002";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc";
        value = hex"000000000000000000000000fbfd64a6c0257f613fefce050aa30ecc3e3d7c3f";
        vm.store(protocolVersionsProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(protocolVersionsProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(protocolVersionsProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000033";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(protocolVersionsProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000033";
        value = hex"0000000000000000000000009965507d1a55bcc2695c58ba16fb37d819b0a4dc";
        vm.store(protocolVersionsProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(protocolVersionsProxyAddress, slot, value);
        vm.etch(optimismPortalProxyAddress, optimismPortalProxyCode);
        slot = hex"b53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(optimismPortalProxyAddress, slot, value);
        vm.etch(l2OutputOracleProxyAddress, l2OutputOracleProxyCode);
        slot = hex"b53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(l2OutputOracleProxyAddress, slot, value);
        vm.etch(systemConfigProxyAddress, systemConfigProxyCode);
        slot = hex"b53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(systemConfigProxyAddress, slot, value);
        vm.etch(l1StandardBridgeProxyAddress, l1StandardBridgeProxyCode);
        slot = hex"b53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(l1StandardBridgeProxyAddress, slot, value);
        vm.etch(l1CrossDomainMessengerProxyAddress, l1CrossDomainMessengerProxyCode);
        slot = hex"540cf4e2f45b866b44f44bde51e109474016dc46a0670fbe1684ad8eaf90fdc3";
        value = hex"000000000000000000000000bb2180ebd78ce97360503434ed37fcf4a1df61c3";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        slot = hex"4505be7acf20898edfef2b5289635349881ad9bf4b57316a74e81e2abec2be52";
        value = hex"4f564d5f4c3143726f7373446f6d61696e4d657373656e676572000000000034";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        vm.etch(l1ERC721BridgeProxyAddress, l1ERC721BridgeProxyCode);
        slot = hex"b53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(l1ERC721BridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(addressManagerAddress, slot, value);
        vm.etch(optimismPortalAddress, optimismPortalCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(optimismPortalAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(optimismPortalAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000032";
        value = hex"000000000000000000000000000000000000000000000000000000000000dead";
        vm.store(optimismPortalAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000001";
        value = hex"000000000000000100000000000000000000000000000000000000003b9aca00";
        vm.store(optimismPortalAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(optimismPortalAddress, slot, value);
        vm.etch(l1CrossDomainMessengerAddress, l1CrossDomainMessengerCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000010000000000000000000000000000000000000000";
        vm.store(l1CrossDomainMessengerAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000001010000000000000000000000000000000000000000";
        vm.store(l1CrossDomainMessengerAddress, slot, value);
        slot = hex"00000000000000000000000000000000000000000000000000000000000000cc";
        value = hex"000000000000000000000000000000000000000000000000000000000000dead";
        vm.store(l1CrossDomainMessengerAddress, slot, value);
        slot = hex"00000000000000000000000000000000000000000000000000000000000000cf";
        value = hex"0000000000000000000000004200000000000000000000000000000000000007";
        vm.store(l1CrossDomainMessengerAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000010000000000000000000000000000000000000000";
        vm.store(l1CrossDomainMessengerAddress, slot, value);
        vm.etch(l2OutputOracleAddress, l2OutputOracleCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l2OutputOracleAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(l2OutputOracleAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000004";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l2OutputOracleAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l2OutputOracleAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l2OutputOracleAddress, slot, value);
        vm.etch(systemConfigAddress, systemConfigCode);
        slot = hex"a11ee3ab75b40e88a0105e935d17cd36c8faee0138320d776c411291bdbbb19f";
        value = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
        vm.store(systemConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(systemConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000033";
        value = hex"0000000000000000000000004e59b44847b379578588920ca78fbf26c0b4956c";
        vm.store(systemConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000033";
        value = hex"000000000000000000000000000000000000000000000000000000000000dead";
        vm.store(systemConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000066";
        value = hex"0100000000000000000000000000000000000000000000000000000000000000";
        vm.store(systemConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000068";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000069";
        value = hex"0000000000000000000000000000000000000000000000000000020100000001";
        vm.store(systemConfigAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemConfigAddress, slot, value);
        vm.etch(l1StandardBridgeAddress, l1StandardBridgeCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l1StandardBridgeAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(l1StandardBridgeAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000004";
        value = hex"0000000000000000000000004200000000000000000000000000000000000010";
        vm.store(l1StandardBridgeAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l1StandardBridgeAddress, slot, value);
        vm.etch(l1ERC721BridgeAddress, l1ERC721BridgeCode);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l1ERC721BridgeAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(l1ERC721BridgeAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000002";
        value = hex"0000000000000000000000004200000000000000000000000000000000000014";
        vm.store(l1ERC721BridgeAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l1ERC721BridgeAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000003";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc";
        value = hex"00000000000000000000000067866a5052e5302aad08e9f352331fd8622eb6dc";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000033";
        value = hex"000000000000000000000000db8cff278adccf9e9b5da745b44e754fc4ee3c76";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000033";
        value = hex"0000000000000000000000009965507d1a55bcc2695c58ba16fb37d819b0a4dc";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000067";
        value = hex"0000000000000000000000003c44cdddb6a900fa2b585dd299e03d12fa4293bc";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000068";
        value = hex"00000000000000000000000000000000000c5fc5000005580000000000000000";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000066";
        value = hex"010000000000000000000000000000000000000000000000000c5fc500000558";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000068";
        value = hex"00000000000000000000000000000000000c5fc50000055800000000017d7840";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"65a7ed542fb37fe237fdfbdd70b31598523fe5b32879e307bae27a0bd9581c08";
        value = hex"0000000000000000000000009965507d1a55bcc2695c58ba16fb37d819b0a4dc";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"71ac12829d66ee73d8d95bff50b3589745ce57edae70a3fb111a2342464dc597";
        value = hex"000000000000000000000000ff00000000000000000000000000000000000000";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"383f291819e6d54073bc9a648251d97421076bdd101933c0c022219ce9580636";
        value = hex"00000000000000000000000020a42a5a785622c6ba2576b2d6e924aa82bfa11d";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"46adcbebc6be8ce551740c29c47c8798210f23f7f4086c41752944352568d5a7";
        value = hex"000000000000000000000000def3bca8c80064589e6787477ffa7dd616b5574f";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"9904ba90dde5696cda05c9e0dab5cbaa0fea005ace4d11218a02ac668dad6376";
        value = hex"0000000000000000000000000c8b5822b6e02cda722174f19a1439a7495a3fa6";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"4b6c74f9e688cb39801f2112c14a8c57232a3fc5202e1444126d4bce86eb19ac";
        value = hex"000000000000000000000000978e3286eb805934215a88694d80b09aded68d90";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"a11ee3ab75b40e88a0105e935d17cd36c8faee0138320d776c411291bdbbb19f";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000069";
        value = hex"0000ffffffffffffffffffffffffffffffff000f42403b9aca00080a01312d00";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(systemConfigProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000004";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"a8f0d50211ac8ff1a40793a899dff3ced4762e0466f69b0078ab7b00d037835c";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(proxyAdminAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000005";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc";
        value = hex"000000000000000000000000b7900b27be8f0e0ff65d1c3a4671e1220437dd2b";
        vm.store(l1StandardBridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l1StandardBridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(l1StandardBridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000032";
        value = hex"000000000000000000000000deb1e9a6be7baf84208bb6e10ac9f9bbe1d70809";
        vm.store(l1StandardBridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000033";
        value = hex"0000000000000000000000001c23a6d89f95ef3148bcda8e242cab145bf9c0e4";
        vm.store(l1StandardBridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000003";
        value = hex"00000000000000000000000020a42a5a785622c6ba2576b2d6e924aa82bfa11d";
        vm.store(l1StandardBridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000004";
        value = hex"0000000000000000000000004200000000000000000000000000000000000010";
        vm.store(l1StandardBridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l1StandardBridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000006";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc";
        value = hex"0000000000000000000000005c4f5e749a61a9503c4aae8a9393e89609a0e804";
        vm.store(l1ERC721BridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l1ERC721BridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(l1ERC721BridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000032";
        value = hex"000000000000000000000000deb1e9a6be7baf84208bb6e10ac9f9bbe1d70809";
        vm.store(l1ERC721BridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000001";
        value = hex"00000000000000000000000020a42a5a785622c6ba2576b2d6e924aa82bfa11d";
        vm.store(l1ERC721BridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000002";
        value = hex"0000000000000000000000004200000000000000000000000000000000000014";
        vm.store(l1ERC721BridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(l1ERC721BridgeProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000007";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"540cf4e2f45b866b44f44bde51e109474016dc46a0670fbe1684ad8eaf90fdc3";
        value = hex"0000000000000000000000000000000000000000000000000000000000000002";
        vm.store(proxyAdminAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000008";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"17eb2365d570ef4d1cc4abe9e522ed8632b11233db9c15f3c2c8aa32407b981b";
        value = hex"4f564d5f4c3143726f7373446f6d61696e4d657373656e676572000000000034";
        vm.store(proxyAdminAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"0000000000000000000000000000000000000000000000000000000000000009";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"515216935740e67dfdda5cf8e248ea32b3277787818ab59153061ac875c9385e";
        value = hex"000000000000000000000000094e6508ba9d9bf1ce421fff3de06ae56e67901b";
        vm.store(addressManagerAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000010000000000000000000000000000000000000000";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000001010000000000000000000000000000000000000000";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        slot = hex"00000000000000000000000000000000000000000000000000000000000000fb";
        value = hex"000000000000000000000000deb1e9a6be7baf84208bb6e10ac9f9bbe1d70809";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        slot = hex"00000000000000000000000000000000000000000000000000000000000000fc";
        value = hex"000000000000000000000000978e3286eb805934215a88694d80b09aded68d90";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        slot = hex"00000000000000000000000000000000000000000000000000000000000000fd";
        value = hex"0000000000000000000000001c23a6d89f95ef3148bcda8e242cab145bf9c0e4";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        slot = hex"00000000000000000000000000000000000000000000000000000000000000cc";
        value = hex"000000000000000000000000000000000000000000000000000000000000dead";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        slot = hex"00000000000000000000000000000000000000000000000000000000000000cf";
        value = hex"0000000000000000000000004200000000000000000000000000000000000007";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000010000000000000000000000000000000000000000";
        vm.store(l1CrossDomainMessengerProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000005";
        value = hex"000000000000000000000000000000000000000000000000000000000000000a";
        vm.store(systemOwnerSafeAddress, slot, value);
        slot = hex"360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc";
        value = hex"000000000000000000000000bdd90485fcbcac869d5b5752179815a3103d8131";
        vm.store(optimismPortalProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(optimismPortalProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000101";
        vm.store(optimismPortalProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000036";
        value = hex"0000000000000000000000008b71b41d4dbeb2b6821d44692d3facaaf77480bb";
        vm.store(optimismPortalProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000037";
        value = hex"0000000000000000000000001c23a6d89f95ef3148bcda8e242cab145bf9c0e4";
        vm.store(optimismPortalProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000035";
        value = hex"0000000000000000000000deb1e9a6be7baf84208bb6e10ac9f9bbe1d7080900";
        vm.store(optimismPortalProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000032";
        value = hex"000000000000000000000000000000000000000000000000000000000000dead";
        vm.store(optimismPortalProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000001";
        value = hex"000000000000000100000000000000000000000000000000000000003b9aca00";
        vm.store(optimismPortalProxyAddress, slot, value);
        slot = hex"0000000000000000000000000000000000000000000000000000000000000000";
        value = hex"0000000000000000000000000000000000000000000000000000000000000001";
        vm.store(optimismPortalProxyAddress, slot, value);
    }
}
