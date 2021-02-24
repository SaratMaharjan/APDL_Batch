# APDL_Batch

Main Contents are batch files to run ansys apdl calculation. Additionally contains tools and notes used often.

<!-- TOC -->autoauto- [APDL_Batch](#apdl_batch)auto  - [Notes](#notes)auto  - [Sysinternal](#sysinternal)autoauto<!-- /TOC -->

## Notes

- To use macros.xla: In excel: start-add-ins and add macros.xla
- Word template location : %appdata%\Microsoft\Templates\
- Windows 10 startup location : windows+R -> shell:startup

- If Spaceclaim is slow: Right click on "My Computer" and go to
  Properties > Advanced System Settings > Environment Variables
  and create a new System Variable called SPACECLAIM_STARTUP_TRACE and set the value to 1.

## Javascript

- source: light-fs getify
- Arguments are the values you pass in, and parameters are the named variables inside the function that receive those passed in values.

<pre>
  function foo(x,y,z) {
    // ..
  }
</pre>

- foo(..) expects three arguments, because it has three declared parameters.
- This count has a special term: arity. Arity is the number of parameters in a function declaration.
- The arity of foo(..) is 3.

## Sysinternal

live.sysinternals.com
<pre>
  %_NT_SYMBOL_PATH% -> srv*c:\symbols*http://msdl.microsoft.com/download/symbols
  sysdm.cpl
  psexec /accepteula
  taskmgr
  set
</pre>

## delete orphan file google drive

is:unorganized owner:me
