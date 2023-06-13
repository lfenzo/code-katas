function fizzbuzz(n::Number) :: String
    if rem(n, 5) == 0 && rem(n, 3) == 0
        return "FizzBuzz"
    elseif rem(n, 3) == 0
        return "Fizz"
    elseif rem(n, 5) == 0
        return "Buzz"
    else
        return string(n)
    end
end
