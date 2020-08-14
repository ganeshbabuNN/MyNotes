fn main() {
    let refers_nothing = dangle();

    println!("{}", refers_nothing);
}

fn dangle() -> String {
    let s = String::from("hello");

    s
}
