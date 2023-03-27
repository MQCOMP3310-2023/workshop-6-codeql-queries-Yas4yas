/**
 * @name Comp3310 workshop 6.3.2 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

import java

from LoopStmt loop , MethodAccess call , Method method
where
    loop . getAChild *() = call . getEnclosingStmt () and
    call . getMethod () = method and
    method . hasName (" scanner ") and
    method . getDeclaringType () . hasQualifiedName (" java .io", "nextLine ")
select call , " all calls to method nextLine of a Scanner, which reside inside of a loop ."
