
// implementation ContractPTT; 

    using Address for address;
    using Strings for uint256;
    using Counters for Counters.Counter;
    using EnumerableSet for EnumerableSet.AddressSet;

    
    
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;
    mapping(bytes32 => EnumerableSet.AddressSet) private _roleMembers;
    
    
    Counters.Counter private _tokenIdTracker;

    // Token name
    string private _name;

    // Token symbol
    string private _symbol;

    // Mapping from token ID to owner address
    mapping(uint256 => address) private _owners;

    // Mapping owner address to token count
    mapping(address => uint256) private _balances;

    // Mapping from token ID to approved address
    mapping(uint256 => address) private _tokenApprovals;

    // Mapping from owner to operator approvals
    mapping(address => mapping(address => bool)) private _operatorApprovals;

    // Mapping from owner to list of owned token IDs
    mapping(address => mapping(uint256 => uint256)) private _ownedTokens;

    // Mapping from token ID to index of the owner tokens list
    mapping(uint256 => uint256) private _ownedTokensIndex;

    // Array with all token ids, used for enumeration
    uint256[] private _allTokens;

    // Mapping from token id to position in the allTokens array
    mapping(uint256 => uint256) private _allTokensIndex;

   

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;



    string private _baseTokenURI;



/*
Вы можете определять интерфейсы без импорта кода контракта. Определите интерфейсы функций и оставьте определения функций пустыми:
*/
contract WidgetInterface {

   function doSomething() returns(uint) {}
   function somethingElse() returns(bool isTrue) {}

}
/*
Используйте этот интерфейсный контракт, чтобы общаться с реальными контрактами:
 */
WidgetInterface w = WidgetInterface(actualContractAddress);
/*
На мой взгляд , обычно можно и рекомендуется регистрировать авторизованные / действующие контракты по мере продвижения. Составьте список контрактов, с которыми он может безопасно разговаривать, в том числе:
*/
if(!isAuthorized(actualContractAddress)) throw; 
//where actualContractAddressпредоставляется отправителем и isAuthorized()является функцией, которую вы разработали для запроса внутреннего реестра.
/*
Надеюсь, поможет.
*/

contract ContractsCaller {

    function execute(address contractAt, uint _i, bytes32 _b) returns (bool) {
        return contractAt.call(bytes4(sha3("testMethod(uint256,bytes32)")), _i, _b);
    }
}

contract Test {

    uint256 public i;
    bytes32 public b;

    function testMethod(uint256 _i, bytes32 _b) {
        i = _i;
        b = _b;
    }
}


// https://stackoverflow.com/questions/43106483/calling-external-contract-in-solidity-dynamically
