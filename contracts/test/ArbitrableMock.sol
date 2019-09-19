pragma solidity ^0.4.24;

import "../standards/arbitration/IArbitrable.sol";


contract ArbitrableMock is IArbitrable {
    function rule(uint256 _disputeId, uint256 _ruling) external {
        emit CourtRuling(msg.sender, _disputeId, _ruling);
    }

    function canSubmitEvidence(uint256 /* _disputeId */, address /* _submitter */) public view returns (bool) {
        return true;
    }
}
