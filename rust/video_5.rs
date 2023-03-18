use std::io;

fn main() {
    let mut input = String::new(); // :: is path separator

    // mutable reference, references are immutable by default
    println!("type something: ");
    io::stdin().read_line(&mut input).expect("failed to read line"); // note how exceptions are handled 
    println!("you wrote: {}", input);
}
