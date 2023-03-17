fn main() {
    const TEST_CONSTANT: u32 = 60;

    let x = 4;
    println!("x is : {}", x);

    {
        let x = x - 2;
        println!("x is: {}", x);
    }

    let x = "hello";
    println!("x is : {}", x);

    println!("constant is: {}", TEST_CONSTANT);

}
