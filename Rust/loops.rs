fn main() {
    loop {
        println!("Again!");
        break;
    }

    let mut number = 3;

    while number != 0 {
        println!("{}!", number);

        number = number - 1;
    }
}
