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
  Q
当调用`song.new`创建一个song对象时，Ruby首先分配一些内存来保存未初始化的对象，然后调用对象的`initialize`方法，并把调用`new`时所使用的参数传入该方法。这提供了机会来编写代码设置对象的状态。

### 3.1 Inheritance and Messages 继承和消息

### 3.2 Objects and Attributes 对象和属性
#### 3.2.1 Writable Attributes 可写属性

```
attr_writer :name
```

#### 3.2.2 Virtual Attributes 虚拟属性

#### 3.2.3 Attributes, Instance Variables, and Methods 属性，实例变量及方法

通过方法暴露出来的外部状态，称之为属性(attributes), 类可以执行的其他动作，就是一般的方法。
（作者自己理解）

### 3.3 Class Variables and Class Methods 类变量和类方法

#### 3.3.1 Class Variables 类变量

类变量能被类的所有对象所共享，类变量只存在一份拷贝。必须被初始化

#### 3.3.2 Class Methods 类方法

通过再方法名之前放置类名以及一个句点，来定义类方法

```
class Example
    def instance_method         # instance method
    end
    def Example.class_methods   # class method
    end
end
```

**还有如下类方法定义方式:**

```
class Demo
    def Demo.meth1
        # ...
    end
    def self.meth2
        # ...
    end
    class <<self
        def meth3
            # ...
        end
    end
end
```

#### 3.3.3 Singletons and Other Constructors 单件与其他构造函数

### 3.4 Access Control 访问控制

**永远不要暴露会导致对象处于无效状态的方法**

- Public 方法可以被任何人调用，没有限制访问控制。方法没人是public,`initiaize`除外，它是`private`
- Protected 方法只能被定义了该方法的类或其子类的对象所调用。整个家族均可访问。
- Private 方法不能呗明确的接受者调用，其接受者只能是`self`.这意味着`Private`方法只能在当前对象的上下文中被调用；你不能调用另一个对象的私有方法。

#### 3.4.1 Specifying Access Control 指定访问控制

```
class MyClass
  def method1 # default is 'public'
    # ...
  end
  protected # subsequent methods will be 'protected'
  def method2 # will be 'protected'
    # ...
  end
  private # subsequent methods will be 'private'
  def method3 # will be 'private'
    # ...
  end
  public # subsequent methods will be 'public'
  def method4 # and this will be 'public'
    # ...
  end
end
```

或者:

```
class MyClass
    def method1
    end
    # ... and so on
    public :method1, :method4
    protected :method2
    private :method3
end
```

当对象需要访问同属类的其他对象的内部状态时，使用保护访问(protected access)方式。

### 3.5 Variables 变量





