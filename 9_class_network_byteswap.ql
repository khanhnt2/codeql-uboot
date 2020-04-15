import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation invocation
            | invocation.getMacro().getName().regexpMatch("ntoh.*")
            | this = invocation.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap"
