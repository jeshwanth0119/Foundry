// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import "../src/Books.sol";

contract BooksTest is Test {

    Books public books;

    function setUp() public {
        // Initialize the Books contract with test values
        books = new Books("Programming Foundry", "JESHWANTH", 100);
    }

    function test_get_book() public {
        // Fetch book details using the get_book function
        Books.Book memory book = books.get_book();

        // Assertions
        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "JESHWANTH");
        assertEq(book.pages, 100);
    }

    function test_updatePages() public {
        // Update pages
        books.update_pages(150);

        // Fetch updated book details
        Books.Book memory book = books.get_book();

        // Check if the pages were updated
        assertEq(book.pages, 150);
    }
}
