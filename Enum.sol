// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract OrderStatus {
    enum Status {
        PENDING,
        CANCELLED,
        SHIPPED,
        ACCEPTED,
        REJECTED
    }

    Status public status;

    function ship() public {
        require(Status.PENDING == status, "status not in PENDING");
        status = Status.SHIPPED;
    }

    function acceptDelivery() public {
        require(Status.SHIPPED == status, "status not in SHIPPED");
        status = Status.ACCEPTED;
    }

    function rejectDelivery() public {
        require(Status.SHIPPED == status, "status not in SHIPPED");
        status = Status.REJECTED;
    }

    function cancel() public {
        require(Status.PENDING == status, "status not in PENDING");
        status = Status.CANCELLED;
    }
}