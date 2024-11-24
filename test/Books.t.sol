// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Books.sol";

contract CounterTest is Test {
    Books public books;
    Books.Book public book;

    function setUp() public {
        books = new Books("Programming Foundry", "Ria Thapa", 100);
        console.log("Books contract deployed at address: ", address(books));
       
    }

    function test_get_book() public {
        book = books.get_book();
        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "Ria Thapa");
        assertEq(book.pages, 100);
    }

    function test_updatePages() public {
        books.update_pages(101);
        book = books.get_book();
        assertEq(book.pages, 101);
    }
}
