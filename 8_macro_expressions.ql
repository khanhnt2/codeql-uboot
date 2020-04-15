import cpp

from MacroInvocation invocation
where invocation.getMacro().getName().regexpMatch("ntoh.*")
select invocation.getExpr()
