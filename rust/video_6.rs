fn main() {
    let x: u8 = 9;
    // let y: i8 = 10;
    let y2: u8 = 13;

    // let z = x + y; // fails! can't do arithmetic with 2 different types
    let z = x + y2;
    println!("{}", z);

    // let x3: u8 = 255;
    // let y3: u8 = 1;
    // let z3 = x3 + y3; // error: overflow
    // println!("{}", z3);

    let x_div: f32 = 255.0;
    let y_div: f32 = 10.0;
    let z_div = x_div / y_div;
    println!("{}", z_div);

    let x_convert = 10_000 as u64; // type conversion from float to u8 + _ is used as , for separating 0s in numbers
    println!("{}", x_convert);
    
    let x4: u64 = 1200;
    let y4: u8 = 12;
    let z4 = x4 / (y4 as u64); // promoting from smaller types to larger avoids overflow
    println!("{}", z4);
}
