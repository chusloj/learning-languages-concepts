fn main() {
    println!("Hello.");
    test();
    add_numbers(6, 9);
    print_expression();

    let result = add_numbers_return(2, 3);
    println!("{}", result);
}

fn test() {
    println!("This is a test.");
}

fn add_numbers(x: i32, y: i32) {
    println!("The sum is: {}", x+y);
}

fn add_numbers_return(x: i32, y: i32) -> i32 {
    // x + y // NO ; MEANS RETURN - you can think of this similar to python as "[return] x + y"
    return x + y;
}

fn print_expression() {
    let number = {
        let x = 3;
        x + 1 // this not having a ; means this is the return value
    };

    println!("{}", number);
}
