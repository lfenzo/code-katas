using Test

include("./day_2.jl")

@testset "Object instantiation" begin
    @test FizzBuzz(225) isa FizzBuzz
    @test FizzBuzz(-5) isa FizzBuzz
    @test FizzBuzz(0) isa FizzBuzz
    @test FizzBuzz(1.0) isa FizzBuzz
    @test_throws MethodError FizzBuzz()
    @test_throws MethodError FizzBuzz("foo")
    @test_throws MethodError FizzBuzz(["foo", "bar"])
end

@testset "Fizz" begin
    @test get(FizzBuzz(3)) == "Fizz"
    @test get(FizzBuzz(-18)) == "Fizz"
    @test get(FizzBuzz(-27.0)) == "Fizz"
end

@testset "Buzz" begin
    @test get(FizzBuzz(5)) == "Buzz"
    @test get(FizzBuzz(-25)) == "Buzz"
    @test get(FizzBuzz(-50.0)) == "Buzz"
end

@testset "FizzBuzz" begin
    @test get(FizzBuzz(0)) == "FizzBuzz"
    @test get(FizzBuzz(30)) == "FizzBuzz"
    @test get(FizzBuzz(15.0)) == "FizzBuzz"
    @test get(FizzBuzz(-15.0)) == "FizzBuzz"
end

@testset "String" begin
    @test get(FizzBuzz(1)) == "1"
    @test get(FizzBuzz(-1)) == "-1"
    @test get(FizzBuzz(19.0)) == "19.0"
    @test get(FizzBuzz(-19.5)) == "-19.5"
end
