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
        // Fetch book details
        (string memory title, string memory author, uint256 pages) = (
            books.book().title,
            books.book().author,
            books.book().pages
        );

        // Assertions
        assertEq(title, "Programming Foundry");
        assertEq(author, "JESHWANTH");
        assertEq(pages, 100);
    }

    function test_updatePages() public {
        // Update pages
        books.update_pages(150);

        // Check if the pages were updated
        uint256 updatedPages = books.book().pages;
        assertEq(updatedPages, 150);
    }
}
