struct Rectangle {
     width: u32,
     height: u32,   
    }
fn main() {

    
    let width = 30;
    let height = 50;

    let rect1 = Rectangle {width: 10, height: 20};

    println!("Area is {}", area(&rect1));

    //println!("Area is {}", area(width, height));
}

fn area(rectangle: &Rectangle)-> u32{
    rectangle.width * rectangle.height
}
