(* $I1: Unison file synchronizer: src/transport.mli $ *)
(* $I2: Last modified by bcpierce on Sun, 22 Aug 2004 22:29:04 -0400 $ *)
(* $I3: Copyright 1999-2004 (see COPYING for details) $ *)

(* Executes the actions implied by the reconItem list. *)
val transportItem :
     Common.reconItem           (* Updates that need to be performed *)
  -> Uutil.File.t               (* id for progress reports *)
  -> (string->string->bool)     (* fn to display title / result of merge *)
  -> unit Lwt.t

(* Print a header to the log file *)
val logStartTime : unit -> unit
val logEndTime   : unit -> unit
