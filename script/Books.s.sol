// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Books.sol";

contract CounterScript is Script {
    Books public books;
    Books.Book public book;

    function setUp() public {
        books = new Books("Programming Foundry", "Ria Thapa", 100);
    }

    function run() public {
        log_books();
    }

    function log_books() public{
        book = books.get_book();
        console.log("Book Title: ", book.title);
    }
}