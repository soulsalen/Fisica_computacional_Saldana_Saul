
f(x) = sqrt(complex(A-x^2))-x*tan(x)
h(x) = x*(sec(x))^2 + tan(x) + x*(1/sqrt(complex(A-x^2)))

 A= 10.0
function raiz_Newton()
    for x in 1:10
        x0 = 0.1 +x 
        s = x0 -(f(x0)/h(x0))
        return x,f(x0)
    end
end



raiz_Newton()






