fn main() {
    let s = String::from("Hello, World!");

    let hello = &s[0..5];

    println!("hello contains = {}", hello);
}
