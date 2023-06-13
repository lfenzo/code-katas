using Test

include("./fizzbuzz.jl")

@testset "Test dispatch correctness" begin
    @test_throws MethodError fizzbuzz()
    @test_throws MethodError fizzbuzz("foo")
    @test_throws MethodError fizzbuzz(("foo"))
    @test_throws MethodError fizzbuzz(Dict("foo" => "bar"))
    @test_throws MethodError fizzbuzz(["foo", "bar"])
    @test fizzbuzz(123) isa String
end

@testset "Fizz (number divisible by 3)" begin
    @test fizzbuzz(3) == "Fizz"
    @test fizzbuzz(-3) == "Fizz"
    @test fizzbuzz(9) == "Fizz"
end

@testset "Buzz (number divisible by 5)" begin
    @test fizzbuzz(-5) == "Buzz"
    @test fizzbuzz(5) == "Buzz"
    @test fizzbuzz(25) == "Buzz"
end

@testset "FizzBuzz (number divisible by 5 and 3)" begin
    @test fizzbuzz(0) == "FizzBuzz"
    @test fizzbuzz(15) == "FizzBuzz"
    @test fizzbuzz(150) == "FizzBuzz"
    @test fizzbuzz(-15) == "FizzBuzz"
end

@testset "FizzBuzz returning numbers" begin
    @test fizzbuzz(-1) == "-1"
    @test fizzbuzz(1) == "1"
    @test fizzbuzz(2) == "2"
    @test fizzbuzz(4) == "4"
    @test fizzbuzz(5.5) == "5.5"
    @test fizzbuzz(127) == "127"
end
