pragma solidity 0.8.0;

import "./Ownable.sol";


/* My Solution
contract toBeDestroyed is Ownable{
    function destroy() public onlyOwner{
        selfdestruct(msg.sender);
    }
}
*/

contract Destroyable is Ownable {

  function destroy() public onlyOwner {
    address payable receiver = msg.sender;
    selfdestruct(receiver);
  }
}
