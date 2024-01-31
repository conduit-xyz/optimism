package genesis

import (
	"context"
	"fmt"
	"math/big"
	"strings"

	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/params"

	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/accounts/abi/bind/backends"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core"

	"github.com/ethereum-optimism/optimism/op-bindings/bindings"
	"github.com/ethereum-optimism/optimism/op-bindings/predeploys"
	"github.com/ethereum-optimism/optimism/op-chain-ops/deployer"
)

var (
	// proxies represents the set of proxies in front of contracts.
	proxies = []string{
		"SystemConfigProxy",
		"L2OutputOracleProxy",
		"L1CrossDomainMessengerProxy",
		"L1StandardBridgeProxy",
		"OptimismPortalProxy",
		"OptimismMintableERC20FactoryProxy",
	}
	// portalMeteringSlot is the storage slot containing the metering params.
	portalMeteringSlot = common.Hash{31: 0x01}
	// zeroHash represents the zero value for a hash.
	zeroHash = common.Hash{}
	// uint128Max is type(uint128).max and is set in the init function.
	uint128Max = new(big.Int)
	// The default values for the ResourceConfig, used as part of
	// an EIP-1559 curve for deposit gas.
	defaultResourceConfig = bindings.ResourceMeteringResourceConfig{
		MaxResourceLimit:            20_000_000,
		ElasticityMultiplier:        10,
		BaseFeeMaxChangeDenominator: 8,
		MinimumBaseFee:              params.GWei,
		SystemTxMaxGas:              1_000_000,
	}
)

func init() {
	var ok bool
	uint128Max, ok = new(big.Int).SetString("ffffffffffffffffffffffffffffffff", 16)
	if !ok {
		panic("bad uint128Max")
	}
	// Set the maximum base fee on the default config.
	defaultResourceConfig.MaximumBaseFee = uint128Max
}

// BuildL1DeveloperGenesis will create a L1 genesis block after creating
// all of the state required for an Optimism network to function.
func BuildL1DeveloperGenesis(config *DeployConfig) (*core.Genesis, error) {
	return nil, nil
}

func deployL1Contracts(config *DeployConfig, backend *backends.SimulatedBackend) ([]deployer.Deployment, error) {
	return nil, nil
}

func l1Deployer(backend *backends.SimulatedBackend, opts *bind.TransactOpts, deployment deployer.Constructor) (*types.Transaction, error) {
	var tx *types.Transaction
	var err error

	switch deployment.Name {
	case "SystemConfig":
		_, tx, _, err = bindings.DeploySystemConfig(
			opts,
			backend,
			deployment.Args[0].(common.Address),
			deployment.Args[1].(*big.Int),
			deployment.Args[2].(*big.Int),
			deployment.Args[3].(common.Hash),
			deployment.Args[4].(uint64),
			deployment.Args[5].(common.Address),
			deployment.Args[6].(bindings.ResourceMeteringResourceConfig),
		)
	case "L2OutputOracle":
		_, tx, _, err = bindings.DeployL2OutputOracle(
			opts,
			backend,
			deployment.Args[0].(*big.Int),
			deployment.Args[1].(*big.Int),
			deployment.Args[2].(*big.Int),
			deployment.Args[3].(*big.Int),
			deployment.Args[4].(common.Address),
			deployment.Args[5].(common.Address),
			deployment.Args[6].(*big.Int),
		)
	case "OptimismPortal":
		_, tx, _, err = bindings.DeployOptimismPortal(
			opts,
			backend,
			deployment.Args[0].(common.Address),
			deployment.Args[1].(common.Address),
			deployment.Args[2].(bool),
			deployment.Args[3].(common.Address),
		)
	case "L1CrossDomainMessenger":
		_, tx, _, err = bindings.DeployL1CrossDomainMessenger(
			opts,
			backend,
			predeploys.DevOptimismPortalAddr,
		)
	case "L1StandardBridge":
		_, tx, _, err = bindings.DeployL1StandardBridge(
			opts,
			backend,
			predeploys.DevL1CrossDomainMessengerAddr,
		)
	case "OptimismMintableERC20Factory":
		_, tx, _, err = bindings.DeployOptimismMintableERC20Factory(
			opts,
			backend,
			predeploys.DevL1StandardBridgeAddr,
		)
	case "AddressManager":
		_, tx, _, err = bindings.DeployAddressManager(
			opts,
			backend,
		)
	case "ProxyAdmin":
		_, tx, _, err = bindings.DeployProxyAdmin(
			opts,
			backend,
			common.Address{},
		)
	case "WETH9":
		_, tx, _, err = bindings.DeployWETH9(
			opts,
			backend,
		)
	case "L1ERC721Bridge":
		_, tx, _, err = bindings.DeployL1ERC721Bridge(
			opts,
			backend,
			predeploys.DevL1CrossDomainMessengerAddr,
			predeploys.L2ERC721BridgeAddr,
		)
	default:
		if strings.HasSuffix(deployment.Name, "Proxy") {
			_, tx, _, err = bindings.DeployProxy(opts, backend, deployer.TestAddress)
		} else {
			err = fmt.Errorf("unknown contract %s", deployment.Name)
		}
	}

	if err != nil {
		err = fmt.Errorf("cannot deploy %s: %w", deployment.Name, err)
	}

	return tx, err
}

func upgradeProxy(backend *backends.SimulatedBackend, opts *bind.TransactOpts, proxyAddr common.Address, implAddr common.Address, callData []byte) (*types.Transaction, error) {
	var tx *types.Transaction

	code, err := backend.CodeAt(context.Background(), implAddr, nil)
	if err != nil {
		return nil, err
	}
	if len(code) == 0 {
		return nil, fmt.Errorf("no code at %s", implAddr)
	}

	proxy, err := bindings.NewProxy(proxyAddr, backend)
	if err != nil {
		return nil, err
	}
	if callData == nil {
		tx, err = proxy.UpgradeTo(opts, implAddr)
	} else {
		tx, err = proxy.UpgradeToAndCall(
			opts,
			implAddr,
			callData,
		)
	}
	return tx, err
}
