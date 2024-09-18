_**Soft Assertion**_

Soft assertions are a testing technique that allows test cases to continue execution even after encountering failures. Unlike hard assertions, which immediately terminate the test case upon failure, soft assertions collect all failures and report them at the end of the test/steps. This approach can be particularly useful in scenarios where you want to identify multiple issues within a single test case.

**Key Characteristics of Soft Assertions:**

**Failure Collection:** Soft assertions collect all failures encountered during a test case and store them for later reporting.

**Continued Execution:** The test case continues to run even after failures, allowing you to identify additional issues.

**Deferred Reporting**: All collected failures are reported at the end of the test case, providing a comprehensive overview.

**Overview on hard assertion**

Hard asserts are a type of assertion used in software testing to verify that a specific condition is met. When a hard assert fails, it immediately terminates the execution of the test case. This means that no further test steps will be executed after the failure. 

**When to Use Hard Asserts:**

**Critical conditions:** For conditions that are essential for the application's functionality.

**Early failure detection:** To quickly identify and address critical issues.

**Clear test results:** Hard asserts provide clear and concise test results, making it easy to identify failed tests.



We have tried to implement Soft Assertion which is similar to TestNg Soft Assertion.

Below are the methods 

1. SoftAssert.assert_true
   Asserts that a condition is true. If not, adds the provided message to the errors array.
   Parameters : 
   bool - The condition to check
   message - The error message to record if the assertion fails (Optional)

2. SoftAssert.assert_false
   Asserts that a condition is false. If not, adds the provided message to the errors array.
   Parameters : 
   bool - The condition to check
   message - The error message to record if the assertion fails (Optional)

3. SoftAssert.assert_equals
   Asserts that two values are equal. If not, adds the provided message to the errors array.
   Parameters : 
   expected - The expected value.
   actual -  The actual value.
   message - The error message to record if the assertion fails. (Optional)

4. SoftAssert.assert_not_equals
   Asserts that two values are not equal. If not, adds the provided message to the errors array.
   Parameters :
   expected - The expected value.
   actual -  The actual value.
   message - The error message to record if the assertion fails. (Optional)

4. SoftAssert.assert_contains
   Asserts that a collection includes a certain value. If not, adds the provided message to the errors array.
   Parameters : 
   expected - The value that the collection is expected to contain.
   actual - The collection.
   message - The error message to record if the assertion fails. (Optional)

5. SoftAssert.assert_not_contains
   Asserts that a collection does not include a certain value. If not, adds the provided message to the errors array.
   Parameters : 
   expected - The value that the collection is expected to contain.
   actual - The collection.
   message - The error message to record if the assertion fails. (Optional)

6. SoftAssert.assert_empty
   Asserts that a collection is empty. If not, adds the provided message to the errors array.
   Parameters : 
   actual - The collection.
   message - The error message to record if the assertion fails. (Optional)

7. SoftAssert.assert_not_empty
   Asserts that a collection is not empty. If not, adds the provided message to the errors array.
   Parameters : 
   actual - The collection.
   message - The error message to record if the assertion fails. (Optional)

8. SoftAssert.assert_nil
   Asserts that a value is nil. If not, adds the provided message to the errors array.
   Parameters : 
   actual -The value.
   message - The error message to record if the assertion fails. (Optional)

9. SoftAssert.assert_not_nil
   Asserts that a value is not nil. If not, adds the provided message to the errors array.
   Parameters : 
   actual -The value.
   message - The error message to record if the assertion fails. (Optional)

10. SoftAssert.assert_match
    Asserts that a value matches a regular expression. If not, adds the provided message to the errors array.
    Parameters : 
    regex - The regular expression.
    actual - The string.
    message - The error message to record if the assertion fails. (Optional)

11. SoftAssert.assert_not_match
    Asserts that a value does not match a regular expression. If not, adds the provided message to the errors array.
    Parameters : 
    regex - The regular expression.
    actual - The string.
    message - The error message to record if the assertion fails. (Optional)

12. SoftAssert.assert_array_equals
    Asserts that two arrays are equal (ignoring order). If not, adds the provided message to the errors array.
    Parameters : 
    expected - The expected array.
    actual - The actual array.
    message - The error message to record if the assertion fails. (Optional)

13. SoftAssert.assert_array_not_equals
    Asserts that two arrays are not equal (even when ignoring order). If not, adds the provided message to the errors array.
    Parameters : 
    expected - The expected array.
    actual - The actual array.
    message - The error message to record if the assertion fails. (Optional)

14. SoftAssert.assert_hash_equals
    Asserts that two hashes are equal (ignoring order). If not, adds the provided message to the errors array.
    Parameters :
    expected - The expected hash.
    actual - The actual hash.
    message - The error message to record if the assertion fails. (Optional)

15. SoftAssert.assert_hash_not_equals
    Asserts that two hashes are not equal (even when ignoring order). If not, adds the provided message to the errors array.
    Parameters :
    expected - The expected hash.
    actual - The actual hash.
    message - The error message to record if the assertion fails. (Optional)

16. SoftAssert.assert_map_equals
    Asserts that two maps are equal (ignoring order). If not, adds the provided message to the errors array.
    Parameters :
    expected - The expected map.
    actual - The actual map.
    message - The error message to record if the assertion fails. (Optional)

17. SoftAssert.assert_map_not_equals
    Asserts that two maps are not equal (even when ignoring order). If not, adds the provided message to the errors array.
    Parameters : 
    expected - The expected map.
    actual - The actual map.
    message - The error message to record if the assertion fails. (Optional)

**Key Points :**

1. assert_all(): This method is crucial to report all failures at the end of the test/step/method. If you don't call assert_all(), the soft assertions won't be reflected in the test result.

2. Flexibility: Soft assertions allow you to continue testing even after failures, providing more insights into the test execution.

3. Clarity: By reporting all failures at the end, you can easily identify the root causes of issues without interrupting the test flow.

4. While hard asserts are useful for verifying critical conditions, they can also lead to incomplete testing if they are used excessively. It's important to balance the use of hard and soft asserts to ensure comprehensive testing coverage.



