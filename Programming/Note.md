@: Programming Ruby 第二版

# 路线图 Rad Map
- Facets of Ruby.
- Ruby in Its Setting
- Ruby Crystallized
- Ruby Library Reference

# 第一部分 Facets Of Ruby
## 第一章 Getting Started

### 1.1 install Ruby

推荐`rbenv install`

#### 1.1.1 二进制发行版
#### 1.1.2 从源码编译Ruby
#### 1.1.3 本书的源代码

[source code from this book](http://pragmaticprogrammer.com/titles/ruby/code)

### 1.2 Running Ruby
- irb
- ruby test.rb

#### 1.2.1 Interactive Ruby

#### 1.2.2 Ruby Programs

```
$ ruby myprog.rb
```

### 1.3 RDoc and Ri

```
ri GC

ri enable

ri start

ri GC.start
```

```
export RI="--format ansi --width 70"
```

如果一个类或者模块还没有RDoc文档，可以发送请求到[suggestions@ruby-doc.org](mailto:suggestions@ruby-doc.org)

## 第二章 Ruby.new

### 2.1 Ruby is an object-oriented language

### 2.2 Some Basic Ruby

### 2.3 Arrays and Hashes

### 2.4 Control Structures 控制结构

```
if count > 10
    puts "Try again"
elsif tries == 3
    puts "You lose"    
else
    puts "Enter a number"
end
```

```
radiation = 1
if radiation > 3000
    puts "Danger, Will Robinson"
end

以下同

puts "Danger, Will Robinson" if radiation > 3000
```

```
while weight < 100 and num_pallets <= 30
    pallet = next_pallet()
    weight += pallet.weight
    num_pallets += 1
end
```

```
while line = gets
    puts line.downcase
end
```


### 2.5 Begular Expressions 正则表达式

### 2.6 Blocks and Iterators Block和迭代器

```
{puts "Hello"}              # this is a block
do                          ###
    club.enroll(person)       # and so is this
    person.socialize
end
```

单行block`{}` 多行block`do...end`

方法调用相关联，放在方法结尾处

```
greet { puts "Hi"}
```

方法有参数，出现在block之前

```
verbose_greet("Dave", "loyal customer") {puts "Hi"}
```

`yield`调用

```
def call_block
    puts "Start of method"
    yield
    yield
    puts "End of method"
end
call_block {puts "In the block"}
```

### 2.7 Reading and Writing 读/写文件

### 2.8 Onward and Upward 更高更远

## 第三章 Classes, Objects, and Variables 类，对象和变量

`initialize`是一个特殊的方法。

当调用`song.new`创建一个song对象时，Ruby首先分配一些内存来保存未初始化的对象，然后调用对象的`initialize`方法，并把调用`new`时所使用的参数传入该方法。这提供了机会来编写代码设置对象的状态。

### 3.1 Inheritance and Messages 继承和消息

















