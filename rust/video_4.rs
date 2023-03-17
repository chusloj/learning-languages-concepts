fn main() {
    let x: i16 = -2; // signed integer from 0:2^16-1
    // let x_unsigned: u8 = 5; // unsigned integer from 0:2^8-1, for 8 bits
    let x_float: f32 = 20.04; // float, f32 or f64
    let true_or_false: bool = true; // or `false`
    let letter: char = '8'; // must have single quotes
    

    println!("{} and {}", x, x_float);
    println!("{}", true_or_false);
    println!("{}", letter);

    let tup: (i32, bool, char) = (1, true, 's'); // type of tuple is defined by elements and their orderings
    println!("{}", tup.1);

    let mut mut_tup: (i32, bool, char) = (1, true, 's'); // type of tuple is defined by elements and their orderings
    mut_tup.1 = false;
    println!("{}", tup.1);

    // let arr = [1,2,3,4,5];
    let arr: [i32; 5] = [1,2,3,4,5]; // note the semicolon
    println!("{}", arr[2]); // note that this assignment is different than tuples
}
