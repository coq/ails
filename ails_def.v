Require Import Reals.
Require Import trajectory_const.
Require Import constants.

Record Bank : Type := mkBank
  {r :> R; cond1 : (- toDeg MaxBank <= r)%R; cond2 : (r <= toDeg MaxBank)%R}.

Record State : Type := mkState {xt : R; yt : R; heading : R; bank : Bank}.

Definition intruderSpeed : TypeSpeed := V.
Definition evaderSpeed : TypeSpeed := V.