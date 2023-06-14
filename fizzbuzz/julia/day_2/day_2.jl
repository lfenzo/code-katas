mutable struct FizzBuzz
    s::String

    function FizzBuzz(n::Number)
        s = if rem(n, 5) == 0 && rem(n, 3) == 0
            "FizzBuzz"
        elseif rem(n, 3) == 0
            "Fizz"
        elseif rem(n, 5) == 0
            "Buzz"
        else
            string(n)
        end
        return new(s)
    end
end


function get(f::FizzBuzz)
    return f.s
end
