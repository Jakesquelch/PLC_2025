def listFunc(a, b):
    """Create a list of integers from a to b (inclusive)."""
    return [i for i in range(a, b + 1)]

def applicatorFunc(inpFunc, a, b, s):
    """
    Apply the provided function to a range of integers and return sum or average.
    
    Args:
        inpFunc: Function to generate the list of integers.
        a: Start of the range (inclusive).
        b: End of the range (inclusive).
        s: 's' for sum, any other value for average.

    Returns:
        Sum or average of the list of integers.
    """
    if s == 's':
        return sum(inpFunc(a, b))
    else:
        return sum(inpFunc(a, b)) / len(inpFunc(a, b))

# Example usage
a = int(input("Enter the starting number (a): "))
b = int(input("Enter the ending number (b): "))
operation = input("Enter 's' for sum or any other key for average: ")

result = applicatorFunc(listFunc, a, b, operation)
print(f"Result: {result}")
