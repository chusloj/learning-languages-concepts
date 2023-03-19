use std::io;

fn convert_string_to_integer() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("expected to read line");

    let int_input: i64 = input.trim().parse().unwrap(); // unwrap extracts the value

    println!("{}", int_input + 2);
}

fn main() {
    convert_string_to_integer();
}
